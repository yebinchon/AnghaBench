; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_block_move_libcall_safe_for_call_parm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_block_move_libcall_safe_for_call_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (i32*, i32, i32*, i32)* }

@PUSH_ARGS = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i32 0, align 4
@void_list_node = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @block_move_libcall_safe_for_call_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_move_libcall_safe_for_call_parm() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i64, i64* @PUSH_ARGS, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %54

10:                                               ; preds = %0
  %11 = call i64 @emit_block_move_libcall_fn(i32 0)
  store i64 %11, i64* %3, align 8
  %12 = load i32, i32* %2, align 4
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @TREE_TYPE(i64 %13)
  %15 = load i32, i32* @NULL_RTX, align 4
  %16 = call i32 @INIT_CUMULATIVE_ARGS(i32 %12, i32 %14, i32 %15, i32 0, i32 3)
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @TREE_TYPE(i64 %17)
  %19 = call i64 @TYPE_ARG_TYPES(i32 %18)
  store i64 %19, i64* %4, align 8
  br label %20

20:                                               ; preds = %50, %10
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @void_list_node, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @TREE_VALUE(i64 %25)
  %27 = call i32 @TYPE_MODE(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @NULL_TREE, align 4
  %31 = call i32 @FUNCTION_ARG(i32 %28, i32 %29, i32 %30, i32 1)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @REG_P(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34, %24
  store i32 0, i32* %1, align 4
  br label %54

39:                                               ; preds = %34
  %40 = load i64 (i32*, i32, i32*, i32)*, i64 (i32*, i32, i32*, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i64 %40(i32* %2, i32 %41, i32* null, i32 1)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %1, align 4
  br label %54

45:                                               ; preds = %39
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @NULL_TREE, align 4
  %49 = call i32 @FUNCTION_ARG_ADVANCE(i32 %46, i32 %47, i32 %48, i32 1)
  br label %50

50:                                               ; preds = %45
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @TREE_CHAIN(i64 %51)
  store i64 %52, i64* %4, align 8
  br label %20

53:                                               ; preds = %20
  store i32 1, i32* %1, align 4
  br label %54

54:                                               ; preds = %53, %44, %38, %9
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare dso_local i64 @emit_block_move_libcall_fn(i32) #1

declare dso_local i32 @INIT_CUMULATIVE_ARGS(i32, i32, i32, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_ARG_TYPES(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i32 @FUNCTION_ARG(i32, i32, i32, i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @FUNCTION_ARG_ADVANCE(i32, i32, i32, i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
