; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_force_move_till_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_force_move_till_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

@SSA_NAME = common dso_local global i64 0, align 8
@tcc_unary = common dso_local global i32 0, align 4
@tcc_binary = common dso_local global i32 0, align 4
@tcc_expression = common dso_local global i32 0, align 4
@tcc_comparison = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.loop*, %struct.loop*)* @force_move_till_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @force_move_till_expr(i32 %0, %struct.loop* %1, %struct.loop* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.loop*, align 8
  %6 = alloca %struct.loop*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.loop* %1, %struct.loop** %5, align 8
  store %struct.loop* %2, %struct.loop** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @TREE_CODE(i32 %11)
  %13 = call i32 @TREE_CODE_CLASS(i64 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @TREE_CODE(i32 %14)
  %16 = load i64, i64* @SSA_NAME, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @SSA_NAME_DEF_STMT(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @IS_EMPTY_STMT(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %64

25:                                               ; preds = %18
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.loop*, %struct.loop** %5, align 8
  %28 = load %struct.loop*, %struct.loop** %6, align 8
  %29 = call i32 @set_level(i32 %26, %struct.loop* %27, %struct.loop* %28)
  br label %64

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @tcc_unary, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @tcc_binary, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @tcc_expression, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @tcc_comparison, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %64

47:                                               ; preds = %42, %38, %34, %30
  %48 = load i32, i32* %4, align 4
  %49 = call i64 @TREE_CODE(i32 %48)
  %50 = call i32 @TREE_CODE_LENGTH(i64 %49)
  store i32 %50, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %61, %47
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @TREE_OPERAND(i32 %56, i32 %57)
  %59 = load %struct.loop*, %struct.loop** %5, align 8
  %60 = load %struct.loop*, %struct.loop** %6, align 8
  call void @force_move_till_expr(i32 %58, %struct.loop* %59, %struct.loop* %60)
  br label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %8, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %51

64:                                               ; preds = %24, %25, %46, %51
  ret void
}

declare dso_local i32 @TREE_CODE_CLASS(i64) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @SSA_NAME_DEF_STMT(i32) #1

declare dso_local i64 @IS_EMPTY_STMT(i32) #1

declare dso_local i32 @set_level(i32, %struct.loop*, %struct.loop*) #1

declare dso_local i32 @TREE_CODE_LENGTH(i64) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
