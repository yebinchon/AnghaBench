; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_subscript_dependence_tester.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_subscript_dependence_tester.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.data_dependence_relation = type { i32 }

@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"(subscript_dependence_tester \0A\00", align 1
@dependence_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data_dependence_relation*)* @subscript_dependence_tester to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subscript_dependence_tester(%struct.data_dependence_relation* %0) #0 {
  %2 = alloca %struct.data_dependence_relation*, align 8
  store %struct.data_dependence_relation* %0, %struct.data_dependence_relation** %2, align 8
  %3 = load i64, i64* @dump_file, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load i32, i32* @dump_flags, align 4
  %7 = load i32, i32* @TDF_DETAILS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load i64, i64* @dump_file, align 8
  %12 = call i32 @fprintf(i64 %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %5, %1
  %14 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %15 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %16 = call i32 @DDR_A(%struct.data_dependence_relation* %15)
  %17 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %18 = call i32 @DDR_B(%struct.data_dependence_relation* %17)
  %19 = call i64 @subscript_dependence_tester_1(%struct.data_dependence_relation* %14, i32 %16, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  br label %24

24:                                               ; preds = %21, %13
  %25 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %26 = call i32 @compute_subscript_distance(%struct.data_dependence_relation* %25)
  %27 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %28 = call i64 @build_classic_dist_vector(%struct.data_dependence_relation* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %32 = call i32 @build_classic_dir_vector(%struct.data_dependence_relation* %31)
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i64, i64* @dump_file, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32, i32* @dump_flags, align 4
  %38 = load i32, i32* @TDF_DETAILS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i64, i64* @dump_file, align 8
  %43 = call i32 @fprintf(i64 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %36, %33
  ret void
}

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i64 @subscript_dependence_tester_1(%struct.data_dependence_relation*, i32, i32) #1

declare dso_local i32 @DDR_A(%struct.data_dependence_relation*) #1

declare dso_local i32 @DDR_B(%struct.data_dependence_relation*) #1

declare dso_local i32 @compute_subscript_distance(%struct.data_dependence_relation*) #1

declare dso_local i64 @build_classic_dist_vector(%struct.data_dependence_relation*) #1

declare dso_local i32 @build_classic_dir_vector(%struct.data_dependence_relation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
