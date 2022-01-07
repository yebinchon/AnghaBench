; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_file_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_file_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@CONFIG_LSM_MMAP_MIN_ADDR = common dso_local global i64 0, align 8
@SECCLASS_MEMPROTECT = common dso_local global i32 0, align 4
@MEMPROTECT__MMAP_ZERO = common dso_local global i32 0, align 4
@selinux_checkreqprot = common dso_local global i64 0, align 8
@MAP_TYPE = common dso_local global i64 0, align 8
@MAP_SHARED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i64, i64, i64, i64, i64)* @selinux_file_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_file_mmap(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %16 = call i32 (...) @current_sid()
  store i32 %16, i32* %15, align 4
  %17 = load i64, i64* %12, align 8
  %18 = load i64, i64* @CONFIG_LSM_MMAP_MIN_ADDR, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %6
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* @SECCLASS_MEMPROTECT, align 4
  %24 = load i32, i32* @MEMPROTECT__MMAP_ZERO, align 4
  %25 = call i32 @avc_has_perm(i32 %21, i32 %22, i32 %23, i32 %24, i32* null)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %7, align 4
  br label %61

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %6
  %32 = load %struct.file*, %struct.file** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* %13, align 8
  %38 = call i32 @cap_file_mmap(%struct.file* %32, i64 %33, i64 %34, i64 %35, i64 %36, i64 %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %31
  %42 = load i64, i64* %13, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41, %31
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %7, align 4
  br label %61

46:                                               ; preds = %41
  %47 = load i64, i64* @selinux_checkreqprot, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i64, i64* %9, align 8
  store i64 %50, i64* %10, align 8
  br label %51

51:                                               ; preds = %49, %46
  %52 = load %struct.file*, %struct.file** %8, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @MAP_TYPE, align 8
  %56 = and i64 %54, %55
  %57 = load i64, i64* @MAP_SHARED, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @file_map_prot_check(%struct.file* %52, i64 %53, i32 %59)
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %51, %44, %28
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @current_sid(...) #1

declare dso_local i32 @avc_has_perm(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @cap_file_mmap(%struct.file*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @file_map_prot_check(%struct.file*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
