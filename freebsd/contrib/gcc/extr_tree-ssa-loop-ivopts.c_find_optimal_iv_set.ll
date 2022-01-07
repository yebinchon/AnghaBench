; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_find_optimal_iv_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_find_optimal_iv_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iv_ca = type { i32 }
%struct.ivopts_data = type { i32 }
%struct.iv_use = type { i32 }
%struct.TYPE_2__ = type { i32 }

@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Unable to substitute for ivs, failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Initial set of candidates:\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Improved to:\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Final cost %d\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iv_ca* (%struct.ivopts_data*)* @find_optimal_iv_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iv_ca* @find_optimal_iv_set(%struct.ivopts_data* %0) #0 {
  %2 = alloca %struct.iv_ca*, align 8
  %3 = alloca %struct.ivopts_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iv_ca*, align 8
  %6 = alloca %struct.iv_use*, align 8
  store %struct.ivopts_data* %0, %struct.ivopts_data** %3, align 8
  %7 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %8 = call %struct.iv_ca* @get_initial_solution(%struct.ivopts_data* %7)
  store %struct.iv_ca* %8, %struct.iv_ca** %5, align 8
  %9 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %10 = icmp ne %struct.iv_ca* %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* @dump_file, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load i32, i32* @dump_flags, align 4
  %16 = load i32, i32* @TDF_DETAILS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i64, i64* @dump_file, align 8
  %21 = call i32 (i64, i8*, ...) @fprintf(i64 %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %14, %11
  store %struct.iv_ca* null, %struct.iv_ca** %2, align 8
  br label %95

23:                                               ; preds = %1
  %24 = load i64, i64* @dump_file, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i32, i32* @dump_flags, align 4
  %28 = load i32, i32* @TDF_DETAILS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i64, i64* @dump_file, align 8
  %33 = call i32 (i64, i8*, ...) @fprintf(i64 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %35 = load i64, i64* @dump_file, align 8
  %36 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %37 = call i32 @iv_ca_dump(%struct.ivopts_data* %34, i64 %35, %struct.iv_ca* %36)
  br label %38

38:                                               ; preds = %31, %26, %23
  br label %39

39:                                               ; preds = %59, %38
  %40 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %41 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %42 = call i64 @try_improve_iv_set(%struct.ivopts_data* %40, %struct.iv_ca* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = load i64, i64* @dump_file, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load i32, i32* @dump_flags, align 4
  %49 = load i32, i32* @TDF_DETAILS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i64, i64* @dump_file, align 8
  %54 = call i32 (i64, i8*, ...) @fprintf(i64 %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %56 = load i64, i64* @dump_file, align 8
  %57 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %58 = call i32 @iv_ca_dump(%struct.ivopts_data* %55, i64 %56, %struct.iv_ca* %57)
  br label %59

59:                                               ; preds = %52, %47, %44
  br label %39

60:                                               ; preds = %39
  %61 = load i64, i64* @dump_file, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i32, i32* @dump_flags, align 4
  %65 = load i32, i32* @TDF_DETAILS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i64, i64* @dump_file, align 8
  %70 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %71 = call i32 @iv_ca_cost(%struct.iv_ca* %70)
  %72 = call i32 (i64, i8*, ...) @fprintf(i64 %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %68, %63, %60
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %90, %73
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %77 = call i32 @n_iv_uses(%struct.ivopts_data* %76)
  %78 = icmp ult i32 %75, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %74
  %80 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call %struct.iv_use* @iv_use(%struct.ivopts_data* %80, i32 %81)
  store %struct.iv_use* %82, %struct.iv_use** %6, align 8
  %83 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %84 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %85 = call %struct.TYPE_2__* @iv_ca_cand_for_use(%struct.iv_ca* %83, %struct.iv_use* %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %89 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %79
  %91 = load i32, i32* %4, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %4, align 4
  br label %74

93:                                               ; preds = %74
  %94 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  store %struct.iv_ca* %94, %struct.iv_ca** %2, align 8
  br label %95

95:                                               ; preds = %93, %22
  %96 = load %struct.iv_ca*, %struct.iv_ca** %2, align 8
  ret %struct.iv_ca* %96
}

declare dso_local %struct.iv_ca* @get_initial_solution(%struct.ivopts_data*) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @iv_ca_dump(%struct.ivopts_data*, i64, %struct.iv_ca*) #1

declare dso_local i64 @try_improve_iv_set(%struct.ivopts_data*, %struct.iv_ca*) #1

declare dso_local i32 @iv_ca_cost(%struct.iv_ca*) #1

declare dso_local i32 @n_iv_uses(%struct.ivopts_data*) #1

declare dso_local %struct.iv_use* @iv_use(%struct.ivopts_data*, i32) #1

declare dso_local %struct.TYPE_2__* @iv_ca_cand_for_use(%struct.iv_ca*, %struct.iv_use*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
