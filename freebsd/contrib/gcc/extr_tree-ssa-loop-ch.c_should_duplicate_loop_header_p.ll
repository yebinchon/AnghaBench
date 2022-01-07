; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ch.c_should_duplicate_loop_header_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ch.c_should_duplicate_loop_header_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.loop = type { %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }

@COND_EXPR = common dso_local global i64 0, align 8
@LABEL_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.loop*, i32*)* @should_duplicate_loop_header_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_duplicate_loop_header_p(%struct.TYPE_9__* %0, %struct.loop* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.loop*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.loop* %1, %struct.loop** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %100

15:                                               ; preds = %3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @EDGE_COUNT(i32 %18)
  %20 = icmp sgt i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @gcc_assert(i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = call i64 @single_succ_p(%struct.TYPE_9__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %100

27:                                               ; preds = %15
  %28 = load %struct.loop*, %struct.loop** %6, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = call %struct.TYPE_10__* @EDGE_SUCC(%struct.TYPE_9__* %29, i32 0)
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @flow_bb_inside_loop_p(%struct.loop* %28, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load %struct.loop*, %struct.loop** %6, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = call %struct.TYPE_10__* @EDGE_SUCC(%struct.TYPE_9__* %37, i32 1)
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @flow_bb_inside_loop_p(%struct.loop* %36, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %100

44:                                               ; preds = %35, %27
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = load %struct.loop*, %struct.loop** %6, align 8
  %47 = getelementptr inbounds %struct.loop, %struct.loop* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = icmp ne %struct.TYPE_9__* %45, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = call i32 @single_pred_p(%struct.TYPE_9__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %100

55:                                               ; preds = %50, %44
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = call i32 @last_stmt(%struct.TYPE_9__* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @TREE_CODE(i32 %58)
  %60 = load i64, i64* @COND_EXPR, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %100

63:                                               ; preds = %55
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = call i32 @bsi_start(%struct.TYPE_9__* %64)
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %97, %63
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @bsi_end_p(i32 %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br i1 %70, label %71, label %99

71:                                               ; preds = %66
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @bsi_stmt(i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i64 @TREE_CODE(i32 %74)
  %76 = load i64, i64* @LABEL_EXPR, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %97

79:                                               ; preds = %71
  %80 = load i32, i32* %9, align 4
  %81 = call i64 @get_call_expr_in(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %100

84:                                               ; preds = %79
  %85 = load i32, i32* %9, align 4
  %86 = call i64 @estimate_num_insns(i32 %85)
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = sub nsw i64 %89, %86
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  br label %100

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %78
  %98 = call i32 @bsi_next(i32* %8)
  br label %66

99:                                               ; preds = %66
  store i32 1, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %95, %83, %62, %54, %43, %26, %14
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @EDGE_COUNT(i32) #1

declare dso_local i64 @single_succ_p(%struct.TYPE_9__*) #1

declare dso_local i64 @flow_bb_inside_loop_p(%struct.loop*, i32) #1

declare dso_local %struct.TYPE_10__* @EDGE_SUCC(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @single_pred_p(%struct.TYPE_9__*) #1

declare dso_local i32 @last_stmt(%struct.TYPE_9__*) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @bsi_start(%struct.TYPE_9__*) #1

declare dso_local i32 @bsi_end_p(i32) #1

declare dso_local i32 @bsi_stmt(i32) #1

declare dso_local i64 @get_call_expr_in(i32) #1

declare dso_local i64 @estimate_num_insns(i32) #1

declare dso_local i32 @bsi_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
