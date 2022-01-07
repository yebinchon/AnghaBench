; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arch-utils.c_default_stabs_argument_has_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arch-utils.c_default_stabs_argument_has_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.type = type { i32 }

@processing_gcc_compilation = common dso_local global i32 0, align 4
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_UNION = common dso_local global i64 0, align 8
@TYPE_CODE_SET = common dso_local global i64 0, align 8
@TYPE_CODE_BITSTRING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @default_stabs_argument_has_addr(%struct.gdbarch* %0, %struct.type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca %struct.type*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %4, align 8
  store %struct.type* %1, %struct.type** %5, align 8
  %6 = call i64 (...) @DEPRECATED_REG_STRUCT_HAS_ADDR_P()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %2
  %9 = load i32, i32* @processing_gcc_compilation, align 4
  %10 = load %struct.type*, %struct.type** %5, align 8
  %11 = call i64 @DEPRECATED_REG_STRUCT_HAS_ADDR(i32 %9, %struct.type* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %8
  %14 = load %struct.type*, %struct.type** %5, align 8
  %15 = call i32 @CHECK_TYPEDEF(%struct.type* %14)
  %16 = load %struct.type*, %struct.type** %5, align 8
  %17 = call i64 @TYPE_CODE(%struct.type* %16)
  %18 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %35, label %20

20:                                               ; preds = %13
  %21 = load %struct.type*, %struct.type** %5, align 8
  %22 = call i64 @TYPE_CODE(%struct.type* %21)
  %23 = load i64, i64* @TYPE_CODE_UNION, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = load %struct.type*, %struct.type** %5, align 8
  %27 = call i64 @TYPE_CODE(%struct.type* %26)
  %28 = load i64, i64* @TYPE_CODE_SET, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.type*, %struct.type** %5, align 8
  %32 = call i64 @TYPE_CODE(%struct.type* %31)
  %33 = load i64, i64* @TYPE_CODE_BITSTRING, align 8
  %34 = icmp eq i64 %32, %33
  br label %35

35:                                               ; preds = %30, %25, %20, %13
  %36 = phi i1 [ true, %25 ], [ true, %20 ], [ true, %13 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @DEPRECATED_REG_STRUCT_HAS_ADDR_P(...) #1

declare dso_local i64 @DEPRECATED_REG_STRUCT_HAS_ADDR(i32, %struct.type*) #1

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
