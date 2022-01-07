; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_determine_iv_costs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_determine_iv_costs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i32 }
%struct.iv_cand = type { i32 }

@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Candidate costs:\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"  cand\09cost\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"  %d\09%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivopts_data*)* @determine_iv_costs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @determine_iv_costs(%struct.ivopts_data* %0) #0 {
  %2 = alloca %struct.ivopts_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iv_cand*, align 8
  store %struct.ivopts_data* %0, %struct.ivopts_data** %2, align 8
  %5 = load i64, i64* @dump_file, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i32, i32* @dump_flags, align 4
  %9 = load i32, i32* @TDF_DETAILS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load i64, i64* @dump_file, align 8
  %14 = call i32 (i64, i8*, ...) @fprintf(i64 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* @dump_file, align 8
  %16 = call i32 (i64, i8*, ...) @fprintf(i64 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %12, %7, %1
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %45, %17
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %21 = call i32 @n_iv_cands(%struct.ivopts_data* %20)
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %18
  %24 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call %struct.iv_cand* @iv_cand(%struct.ivopts_data* %24, i32 %25)
  store %struct.iv_cand* %26, %struct.iv_cand** %4, align 8
  %27 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %28 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %29 = call i32 @determine_iv_cost(%struct.ivopts_data* %27, %struct.iv_cand* %28)
  %30 = load i64, i64* @dump_file, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %23
  %33 = load i32, i32* @dump_flags, align 4
  %34 = load i32, i32* @TDF_DETAILS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i64, i64* @dump_file, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %41 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i64, i8*, ...) @fprintf(i64 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %37, %32, %23
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %18

48:                                               ; preds = %18
  %49 = load i64, i64* @dump_file, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32, i32* @dump_flags, align 4
  %53 = load i32, i32* @TDF_DETAILS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i64, i64* @dump_file, align 8
  %58 = call i32 (i64, i8*, ...) @fprintf(i64 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %51, %48
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @n_iv_cands(%struct.ivopts_data*) #1

declare dso_local %struct.iv_cand* @iv_cand(%struct.ivopts_data*, i32) #1

declare dso_local i32 @determine_iv_cost(%struct.ivopts_data*, %struct.iv_cand*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
