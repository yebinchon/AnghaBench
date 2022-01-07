; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-analyze.c_vect_can_advance_ivs_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-analyze.c_vect_can_advance_ivs_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32, i32 }

@REPORT_DETAILS = common dso_local global i32 0, align 4
@vect_dump = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"=== vect_can_advance_ivs_p ===\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Analyze phi: \00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"virtual phi. skip.\00", align 1
@vect_reduction_def = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"reduc phi. skip.\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"No Access function.\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Access function of PHI: \00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"No evolution.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vect_can_advance_ivs_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vect_can_advance_ivs_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.loop*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.loop* @LOOP_VINFO_LOOP(i32 %9)
  store %struct.loop* %10, %struct.loop** %4, align 8
  %11 = load %struct.loop*, %struct.loop** %4, align 8
  %12 = getelementptr inbounds %struct.loop, %struct.loop* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @REPORT_DETAILS, align 4
  %15 = call i64 @vect_print_dump_info(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @vect_dump, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @phi_nodes(i32 %21)
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %116, %20
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %119

26:                                               ; preds = %23
  store i64 0, i64* %7, align 8
  %27 = load i32, i32* @REPORT_DETAILS, align 4
  %28 = call i64 @vect_print_dump_info(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i32, i32* @vect_dump, align 4
  %32 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @vect_dump, align 4
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* @TDF_SLIM, align 4
  %36 = call i32 @print_generic_expr(i32 %33, i64 %34, i32 %35)
  br label %37

37:                                               ; preds = %30, %26
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @PHI_RESULT(i64 %38)
  %40 = call i32 @SSA_NAME_VAR(i32 %39)
  %41 = call i32 @is_gimple_reg(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @REPORT_DETAILS, align 4
  %45 = call i64 @vect_print_dump_info(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @vect_dump, align 4
  %49 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %43
  br label %116

51:                                               ; preds = %37
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @vinfo_for_stmt(i64 %52)
  %54 = call i64 @STMT_VINFO_DEF_TYPE(i32 %53)
  %55 = load i64, i64* @vect_reduction_def, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load i32, i32* @REPORT_DETAILS, align 4
  %59 = call i64 @vect_print_dump_info(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @vect_dump, align 4
  %63 = call i32 @fprintf(i32 %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %57
  br label %116

65:                                               ; preds = %51
  %66 = load %struct.loop*, %struct.loop** %4, align 8
  %67 = load %struct.loop*, %struct.loop** %4, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @PHI_RESULT(i64 %68)
  %70 = call i32 @analyze_scalar_evolution(%struct.loop* %67, i32 %69)
  %71 = call i64 @instantiate_parameters(%struct.loop* %66, i32 %70)
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %65
  %75 = load i32, i32* @REPORT_DETAILS, align 4
  %76 = call i64 @vect_print_dump_info(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* @vect_dump, align 4
  %80 = call i32 @fprintf(i32 %79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %74
  store i32 0, i32* %2, align 4
  br label %120

82:                                               ; preds = %65
  %83 = load i32, i32* @REPORT_DETAILS, align 4
  %84 = call i64 @vect_print_dump_info(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i32, i32* @vect_dump, align 4
  %88 = call i32 @fprintf(i32 %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %89 = load i32, i32* @vect_dump, align 4
  %90 = load i64, i64* %7, align 8
  %91 = load i32, i32* @TDF_SLIM, align 4
  %92 = call i32 @print_generic_expr(i32 %89, i64 %90, i32 %91)
  br label %93

93:                                               ; preds = %86, %82
  %94 = load i64, i64* %7, align 8
  %95 = load %struct.loop*, %struct.loop** %4, align 8
  %96 = getelementptr inbounds %struct.loop, %struct.loop* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @evolution_part_in_loop_num(i64 %94, i32 %97)
  store i64 %98, i64* %8, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* @NULL_TREE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %93
  %103 = load i32, i32* @REPORT_DETAILS, align 4
  %104 = call i64 @vect_print_dump_info(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i32, i32* @vect_dump, align 4
  %108 = call i32 @fprintf(i32 %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %102
  store i32 0, i32* %2, align 4
  br label %120

110:                                              ; preds = %93
  %111 = load i64, i64* %8, align 8
  %112 = call i64 @tree_is_chrec(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %120

115:                                              ; preds = %110
  br label %116

116:                                              ; preds = %115, %64, %50
  %117 = load i64, i64* %6, align 8
  %118 = call i64 @PHI_CHAIN(i64 %117)
  store i64 %118, i64* %6, align 8
  br label %23

119:                                              ; preds = %23
  store i32 1, i32* %2, align 4
  br label %120

120:                                              ; preds = %119, %114, %109, %81
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.loop* @LOOP_VINFO_LOOP(i32) #1

declare dso_local i64 @vect_print_dump_info(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @phi_nodes(i32) #1

declare dso_local i32 @print_generic_expr(i32, i64, i32) #1

declare dso_local i32 @is_gimple_reg(i32) #1

declare dso_local i32 @SSA_NAME_VAR(i32) #1

declare dso_local i32 @PHI_RESULT(i64) #1

declare dso_local i64 @STMT_VINFO_DEF_TYPE(i32) #1

declare dso_local i32 @vinfo_for_stmt(i64) #1

declare dso_local i64 @instantiate_parameters(%struct.loop*, i32) #1

declare dso_local i32 @analyze_scalar_evolution(%struct.loop*, i32) #1

declare dso_local i64 @evolution_part_in_loop_num(i64, i32) #1

declare dso_local i64 @tree_is_chrec(i64) #1

declare dso_local i64 @PHI_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
