; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcfbsd-tdep.c_ppcfbsd_return_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcfbsd-tdep.c_ppcfbsd_return_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.type = type { i32 }
%struct.regcache = type { i32 }

@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_UNION = common dso_local global i64 0, align 8
@RETURN_VALUE_STRUCT_CONVENTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, %struct.type*, %struct.regcache*, i8*, i8*)* @ppcfbsd_return_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppcfbsd_return_value(%struct.gdbarch* %0, %struct.type* %1, %struct.regcache* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gdbarch*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca %struct.regcache*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %7, align 8
  store %struct.type* %1, %struct.type** %8, align 8
  store %struct.regcache* %2, %struct.regcache** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %12 = load %struct.type*, %struct.type** %8, align 8
  %13 = call i64 @TYPE_CODE(%struct.type* %12)
  %14 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %5
  %17 = load %struct.type*, %struct.type** %8, align 8
  %18 = call i64 @TYPE_CODE(%struct.type* %17)
  %19 = load i64, i64* @TYPE_CODE_UNION, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %16, %5
  %22 = load %struct.type*, %struct.type** %8, align 8
  %23 = call i32 @TYPE_LENGTH(%struct.type* %22)
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %47, label %25

25:                                               ; preds = %21
  %26 = load %struct.type*, %struct.type** %8, align 8
  %27 = call i32 @TYPE_LENGTH(%struct.type* %26)
  %28 = icmp eq i32 %27, 8
  br i1 %28, label %47, label %29

29:                                               ; preds = %25
  %30 = load %struct.type*, %struct.type** %8, align 8
  %31 = call i32 @TYPE_LENGTH(%struct.type* %30)
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %47, label %33

33:                                               ; preds = %29
  %34 = load %struct.type*, %struct.type** %8, align 8
  %35 = call i32 @TYPE_LENGTH(%struct.type* %34)
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = load %struct.type*, %struct.type** %8, align 8
  %39 = call i32 @TYPE_LENGTH(%struct.type* %38)
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = load %struct.type*, %struct.type** %8, align 8
  %43 = call i32 @TYPE_LENGTH(%struct.type* %42)
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @RETURN_VALUE_STRUCT_CONVENTION, align 4
  store i32 %46, i32* %6, align 4
  br label %54

47:                                               ; preds = %41, %37, %33, %29, %25, %21, %16
  %48 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %49 = load %struct.type*, %struct.type** %8, align 8
  %50 = load %struct.regcache*, %struct.regcache** %9, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @ppc_sysv_abi_broken_return_value(%struct.gdbarch* %48, %struct.type* %49, %struct.regcache* %50, i8* %51, i8* %52)
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %47, %45
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @ppc_sysv_abi_broken_return_value(%struct.gdbarch*, %struct.type*, %struct.regcache*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
