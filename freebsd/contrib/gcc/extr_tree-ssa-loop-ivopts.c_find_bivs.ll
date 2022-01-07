; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_find_bivs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_find_bivs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { %struct.loop* }
%struct.loop = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivopts_data*)* @find_bivs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_bivs(%struct.ivopts_data* %0) #0 {
  %2 = alloca %struct.ivopts_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.loop*, align 8
  store %struct.ivopts_data* %0, %struct.ivopts_data** %2, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %10 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %9, i32 0, i32 0
  %11 = load %struct.loop*, %struct.loop** %10, align 8
  store %struct.loop* %11, %struct.loop** %8, align 8
  %12 = load %struct.loop*, %struct.loop** %8, align 8
  %13 = getelementptr inbounds %struct.loop, %struct.loop* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @phi_nodes(i32 %14)
  store i64 %15, i64* %3, align 8
  br label %16

16:                                               ; preds = %66, %1
  %17 = load i64, i64* %3, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %69

19:                                               ; preds = %16
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @PHI_RESULT(i64 %20)
  %22 = call i64 @SSA_NAME_OCCURS_IN_ABNORMAL_PHI(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %66

25:                                               ; preds = %19
  %26 = load i64, i64* %3, align 8
  %27 = call i64 @determine_biv_step(i64 %26)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %66

31:                                               ; preds = %25
  %32 = load i64, i64* %3, align 8
  %33 = load %struct.loop*, %struct.loop** %8, align 8
  %34 = call i32 @loop_preheader_edge(%struct.loop* %33)
  %35 = call i64 @PHI_ARG_DEF_FROM_EDGE(i64 %32, i32 %34)
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @expand_simple_operations(i64 %36)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @contains_abnormal_ssa_name_p(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %31
  %42 = load i64, i64* %4, align 8
  %43 = call i64 @contains_abnormal_ssa_name_p(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %31
  br label %66

46:                                               ; preds = %41
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @PHI_RESULT(i64 %47)
  %49 = call i64 @TREE_TYPE(i32 %48)
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @fold_convert(i64 %50, i64 %51)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %4, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i64 @fold_convert(i64 %56, i64 %57)
  store i64 %58, i64* %4, align 8
  br label %59

59:                                               ; preds = %55, %46
  %60 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @PHI_RESULT(i64 %61)
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @set_iv(%struct.ivopts_data* %60, i32 %62, i64 %63, i64 %64)
  store i32 1, i32* %7, align 4
  br label %66

66:                                               ; preds = %59, %45, %30, %24
  %67 = load i64, i64* %3, align 8
  %68 = call i64 @PHI_CHAIN(i64 %67)
  store i64 %68, i64* %3, align 8
  br label %16

69:                                               ; preds = %16
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i64 @phi_nodes(i32) #1

declare dso_local i64 @SSA_NAME_OCCURS_IN_ABNORMAL_PHI(i32) #1

declare dso_local i32 @PHI_RESULT(i64) #1

declare dso_local i64 @determine_biv_step(i64) #1

declare dso_local i64 @PHI_ARG_DEF_FROM_EDGE(i64, i32) #1

declare dso_local i32 @loop_preheader_edge(%struct.loop*) #1

declare dso_local i64 @expand_simple_operations(i64) #1

declare dso_local i64 @contains_abnormal_ssa_name_p(i64) #1

declare dso_local i64 @TREE_TYPE(i32) #1

declare dso_local i64 @fold_convert(i64, i64) #1

declare dso_local i32 @set_iv(%struct.ivopts_data*, i32, i64, i64) #1

declare dso_local i64 @PHI_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
