; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_compute_affine_dependence.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_compute_affine_dependence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.data_dependence_relation = type { i32 }
%struct.data_reference = type { i32 }

@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"(compute_affine_dependence\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"  (stmt_a = \0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c")\0A  (stmt_b = \0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@dependence_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"Data ref a:\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Data ref b:\0A\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"affine dependence test not usable: access function not affine or constant.\0A\00", align 1
@chrec_dont_know = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data_dependence_relation*)* @compute_affine_dependence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_affine_dependence(%struct.data_dependence_relation* %0) #0 {
  %2 = alloca %struct.data_dependence_relation*, align 8
  %3 = alloca %struct.data_reference*, align 8
  %4 = alloca %struct.data_reference*, align 8
  store %struct.data_dependence_relation* %0, %struct.data_dependence_relation** %2, align 8
  %5 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %6 = call %struct.data_reference* @DDR_A(%struct.data_dependence_relation* %5)
  store %struct.data_reference* %6, %struct.data_reference** %3, align 8
  %7 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %8 = call %struct.data_reference* @DDR_B(%struct.data_dependence_relation* %7)
  store %struct.data_reference* %8, %struct.data_reference** %4, align 8
  %9 = load i64, i64* @dump_file, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load i32, i32* @dump_flags, align 4
  %13 = load i32, i32* @TDF_DETAILS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %11
  %17 = load i64, i64* @dump_file, align 8
  %18 = call i32 @fprintf(i64 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* @dump_file, align 8
  %20 = call i32 @fprintf(i64 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i64, i64* @dump_file, align 8
  %22 = load %struct.data_reference*, %struct.data_reference** %3, align 8
  %23 = call i32 @DR_STMT(%struct.data_reference* %22)
  %24 = call i32 @print_generic_expr(i64 %21, i32 %23, i32 0)
  %25 = load i64, i64* @dump_file, align 8
  %26 = call i32 @fprintf(i64 %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i64, i64* @dump_file, align 8
  %28 = load %struct.data_reference*, %struct.data_reference** %4, align 8
  %29 = call i32 @DR_STMT(%struct.data_reference* %28)
  %30 = call i32 @print_generic_expr(i64 %27, i32 %29, i32 0)
  %31 = load i64, i64* @dump_file, align 8
  %32 = call i32 @fprintf(i64 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %33

33:                                               ; preds = %16, %11, %1
  %34 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %35 = call i64 @DDR_ARE_DEPENDENT(%struct.data_dependence_relation* %34)
  %36 = load i64, i64* @NULL_TREE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %79

38:                                               ; preds = %33
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 1), align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 1), align 4
  %41 = load %struct.data_reference*, %struct.data_reference** %3, align 8
  %42 = call i64 @access_functions_are_affine_or_constant_p(%struct.data_reference* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.data_reference*, %struct.data_reference** %4, align 8
  %46 = call i64 @access_functions_are_affine_or_constant_p(%struct.data_reference* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %50 = call i32 @subscript_dependence_tester(%struct.data_dependence_relation* %49)
  br label %78

51:                                               ; preds = %44, %38
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  %54 = load i64, i64* @dump_file, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = load i32, i32* @dump_flags, align 4
  %58 = load i32, i32* @TDF_DETAILS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load i64, i64* @dump_file, align 8
  %63 = call i32 @fprintf(i64 %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i64, i64* @dump_file, align 8
  %65 = load %struct.data_reference*, %struct.data_reference** %3, align 8
  %66 = call i32 @dump_data_reference(i64 %64, %struct.data_reference* %65)
  %67 = load i64, i64* @dump_file, align 8
  %68 = call i32 @fprintf(i64 %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %69 = load i64, i64* @dump_file, align 8
  %70 = load %struct.data_reference*, %struct.data_reference** %4, align 8
  %71 = call i32 @dump_data_reference(i64 %69, %struct.data_reference* %70)
  %72 = load i64, i64* @dump_file, align 8
  %73 = call i32 @fprintf(i64 %72, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0))
  br label %74

74:                                               ; preds = %61, %56, %51
  %75 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %76 = load i32, i32* @chrec_dont_know, align 4
  %77 = call i32 @finalize_ddr_dependent(%struct.data_dependence_relation* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %48
  br label %79

79:                                               ; preds = %78, %33
  %80 = load i64, i64* @dump_file, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load i32, i32* @dump_flags, align 4
  %84 = load i32, i32* @TDF_DETAILS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i64, i64* @dump_file, align 8
  %89 = call i32 @fprintf(i64 %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %82, %79
  ret void
}

declare dso_local %struct.data_reference* @DDR_A(%struct.data_dependence_relation*) #1

declare dso_local %struct.data_reference* @DDR_B(%struct.data_dependence_relation*) #1

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @print_generic_expr(i64, i32, i32) #1

declare dso_local i32 @DR_STMT(%struct.data_reference*) #1

declare dso_local i64 @DDR_ARE_DEPENDENT(%struct.data_dependence_relation*) #1

declare dso_local i64 @access_functions_are_affine_or_constant_p(%struct.data_reference*) #1

declare dso_local i32 @subscript_dependence_tester(%struct.data_dependence_relation*) #1

declare dso_local i32 @dump_data_reference(i64, %struct.data_reference*) #1

declare dso_local i32 @finalize_ddr_dependent(%struct.data_dependence_relation*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
