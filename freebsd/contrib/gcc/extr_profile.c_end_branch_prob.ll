; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_profile.c_end_branch_prob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_profile.c_end_branch_prob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Total number of blocks: %d\0A\00", align 1
@total_num_blocks = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Total number of edges: %d\0A\00", align 1
@total_num_edges = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Total number of ignored edges: %d\0A\00", align 1
@total_num_edges_ignored = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Total number of instrumented edges: %d\0A\00", align 1
@total_num_edges_instrumented = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Total number of blocks created: %d\0A\00", align 1
@total_num_blocks_created = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"Total number of graph solution passes: %d\0A\00", align 1
@total_num_passes = common dso_local global i32 0, align 4
@total_num_times_called = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"Average number of graph solution passes: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Total number of branches: %d\0A\00", align 1
@total_num_branches = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [45 x i8] c"Total number of branches never executed: %d\0A\00", align 1
@total_num_never_executed = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"%d%% branches in range %d-%d%%\0A\00", align 1
@total_hist_br_prob = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @end_branch_prob() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @dump_file, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %77

4:                                                ; preds = %0
  %5 = load i64, i64* @dump_file, align 8
  %6 = call i32 (i64, i8*, ...) @fprintf(i64 %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load i64, i64* @dump_file, align 8
  %8 = load i32, i32* @total_num_blocks, align 4
  %9 = call i32 (i64, i8*, ...) @fprintf(i64 %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load i64, i64* @dump_file, align 8
  %11 = load i32, i32* @total_num_edges, align 4
  %12 = call i32 (i64, i8*, ...) @fprintf(i64 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %11)
  %13 = load i64, i64* @dump_file, align 8
  %14 = load i32, i32* @total_num_edges_ignored, align 4
  %15 = call i32 (i64, i8*, ...) @fprintf(i64 %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %14)
  %16 = load i64, i64* @dump_file, align 8
  %17 = load i32, i32* @total_num_edges_instrumented, align 4
  %18 = call i32 (i64, i8*, ...) @fprintf(i64 %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %17)
  %19 = load i64, i64* @dump_file, align 8
  %20 = load i32, i32* @total_num_blocks_created, align 4
  %21 = call i32 (i64, i8*, ...) @fprintf(i64 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %20)
  %22 = load i64, i64* @dump_file, align 8
  %23 = load i32, i32* @total_num_passes, align 4
  %24 = call i32 (i64, i8*, ...) @fprintf(i64 %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @total_num_times_called, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %4
  %28 = load i64, i64* @dump_file, align 8
  %29 = load i32, i32* @total_num_passes, align 4
  %30 = load i32, i32* @total_num_times_called, align 4
  %31 = ashr i32 %30, 1
  %32 = add nsw i32 %29, %31
  %33 = load i32, i32* @total_num_times_called, align 4
  %34 = sdiv i32 %32, %33
  %35 = call i32 (i64, i8*, ...) @fprintf(i64 %28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %27, %4
  %37 = load i64, i64* @dump_file, align 8
  %38 = load i32, i32* @total_num_branches, align 4
  %39 = call i32 (i64, i8*, ...) @fprintf(i64 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %38)
  %40 = load i64, i64* @dump_file, align 8
  %41 = load i32, i32* @total_num_never_executed, align 4
  %42 = call i32 (i64, i8*, ...) @fprintf(i64 %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @total_num_branches, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %76

45:                                               ; preds = %36
  store i32 0, i32* %1, align 4
  br label %46

46:                                               ; preds = %72, %45
  %47 = load i32, i32* %1, align 4
  %48 = icmp slt i32 %47, 10
  br i1 %48, label %49, label %75

49:                                               ; preds = %46
  %50 = load i64, i64* @dump_file, align 8
  %51 = load i32*, i32** @total_hist_br_prob, align 8
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** @total_hist_br_prob, align 8
  %57 = load i32, i32* %1, align 4
  %58 = sub nsw i32 19, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %55, %61
  %63 = mul nsw i32 %62, 100
  %64 = load i32, i32* @total_num_branches, align 4
  %65 = sdiv i32 %63, %64
  %66 = load i32, i32* %1, align 4
  %67 = mul nsw i32 5, %66
  %68 = load i32, i32* %1, align 4
  %69 = mul nsw i32 5, %68
  %70 = add nsw i32 %69, 5
  %71 = call i32 (i64, i8*, ...) @fprintf(i64 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %65, i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %49
  %73 = load i32, i32* %1, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %1, align 4
  br label %46

75:                                               ; preds = %46
  br label %76

76:                                               ; preds = %75, %36
  br label %77

77:                                               ; preds = %76, %0
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
