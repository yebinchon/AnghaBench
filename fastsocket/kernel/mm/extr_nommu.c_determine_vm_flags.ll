; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_nommu.c_determine_vm_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_nommu.c_determine_vm_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@VM_MAYREAD = common dso_local global i64 0, align 8
@VM_MAYWRITE = common dso_local global i64 0, align 8
@VM_MAYEXEC = common dso_local global i64 0, align 8
@BDI_CAP_MAP_DIRECT = common dso_local global i64 0, align 8
@PROT_WRITE = common dso_local global i64 0, align 8
@VM_MAYSHARE = common dso_local global i64 0, align 8
@MAP_SHARED = common dso_local global i64 0, align 8
@VM_SHARED = common dso_local global i64 0, align 8
@BDI_CAP_VMFLAGS = common dso_local global i64 0, align 8
@MAP_PRIVATE = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i64, i64)* @determine_vm_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @determine_vm_flags(%struct.file* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @calc_vm_prot_bits(i64 %10)
  %12 = load i64, i64* %7, align 8
  %13 = call i64 @calc_vm_flag_bits(i64 %12)
  %14 = or i64 %11, %13
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* @VM_MAYREAD, align 8
  %16 = load i64, i64* @VM_MAYWRITE, align 8
  %17 = or i64 %15, %16
  %18 = load i64, i64* @VM_MAYEXEC, align 8
  %19 = or i64 %17, %18
  %20 = load i64, i64* %9, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @BDI_CAP_MAP_DIRECT, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %4
  %27 = load %struct.file*, %struct.file** %5, align 8
  %28 = icmp ne %struct.file* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @PROT_WRITE, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i64, i64* @VM_MAYSHARE, align 8
  %36 = load i64, i64* %9, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %34, %29, %26
  br label %65

39:                                               ; preds = %4
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @MAP_SHARED, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i64, i64* @VM_MAYSHARE, align 8
  %46 = load i64, i64* @VM_SHARED, align 8
  %47 = or i64 %45, %46
  %48 = load i64, i64* %9, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %9, align 8
  br label %64

50:                                               ; preds = %39
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %8, align 8
  %53 = and i64 %51, %52
  %54 = load i64, i64* %9, align 8
  %55 = xor i64 %53, %54
  %56 = load i64, i64* @BDI_CAP_VMFLAGS, align 8
  %57 = and i64 %55, %56
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load i64, i64* @VM_MAYSHARE, align 8
  %61 = load i64, i64* %9, align 8
  %62 = or i64 %61, %60
  store i64 %62, i64* %9, align 8
  br label %63

63:                                               ; preds = %59, %50
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64, %38
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @MAP_PRIVATE, align 8
  %68 = and i64 %66, %67
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load i32, i32* @current, align 4
  %72 = call i64 @tracehook_expect_breakpoints(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i64, i64* @VM_MAYSHARE, align 8
  %76 = xor i64 %75, -1
  %77 = load i64, i64* %9, align 8
  %78 = and i64 %77, %76
  store i64 %78, i64* %9, align 8
  br label %79

79:                                               ; preds = %74, %70, %65
  %80 = load i64, i64* %9, align 8
  ret i64 %80
}

declare dso_local i64 @calc_vm_prot_bits(i64) #1

declare dso_local i64 @calc_vm_flag_bits(i64) #1

declare dso_local i64 @tracehook_expect_breakpoints(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
