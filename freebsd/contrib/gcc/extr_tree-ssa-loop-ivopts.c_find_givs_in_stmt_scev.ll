; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_find_givs_in_stmt_scev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_find_givs_in_stmt_scev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { %struct.loop* }
%struct.loop = type { i32 }
%struct.TYPE_4__ = type { i8*, i8* }

@NULL_TREE = common dso_local global i8* null, align 8
@MODIFY_EXPR = common dso_local global i64 0, align 8
@SSA_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivopts_data*, i32, %struct.TYPE_4__*)* @find_givs_in_stmt_scev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_givs_in_stmt_scev(%struct.ivopts_data* %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ivopts_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.loop*, align 8
  store %struct.ivopts_data* %0, %struct.ivopts_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %10 = load %struct.ivopts_data*, %struct.ivopts_data** %5, align 8
  %11 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %10, i32 0, i32 0
  %12 = load %struct.loop*, %struct.loop** %11, align 8
  store %struct.loop* %12, %struct.loop** %9, align 8
  %13 = load i8*, i8** @NULL_TREE, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** @NULL_TREE, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @TREE_CODE(i32 %19)
  %21 = load i64, i64* @MODIFY_EXPR, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %61

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @TREE_OPERAND(i32 %25, i32 0)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @TREE_CODE(i32 %27)
  %29 = load i64, i64* @SSA_NAME, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %61

32:                                               ; preds = %24
  %33 = load %struct.loop*, %struct.loop** %9, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @TREE_OPERAND(i32 %35, i32 1)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = call i32 @simple_iv(%struct.loop* %33, i32 %34, i32 %36, %struct.TYPE_4__* %37, i32 1)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %61

41:                                               ; preds = %32
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @expand_simple_operations(i8* %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @contains_abnormal_ssa_name_p(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %41
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @contains_abnormal_ssa_name_p(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53, %41
  store i32 0, i32* %4, align 4
  br label %61

60:                                               ; preds = %53
  store i32 1, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %59, %40, %31, %23
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @simple_iv(%struct.loop*, i32, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i8* @expand_simple_operations(i8*) #1

declare dso_local i64 @contains_abnormal_ssa_name_p(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
