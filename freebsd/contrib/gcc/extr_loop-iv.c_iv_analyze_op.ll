; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_iv_analyze_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_iv_analyze_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_iv = type { i32 }
%struct.df_ref = type { i32 }

@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Analysing operand \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" of insn \00", align 1
@GRD_INVARIANT = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i64 0, align 8
@GRD_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"  not simple.\0A\00", align 1
@VOIDmode = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GRD_MAYBE_BIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.rtx_iv*)* @iv_analyze_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iv_analyze_op(i32 %0, i32 %1, %struct.rtx_iv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtx_iv*, align 8
  %8 = alloca %struct.df_ref*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.rtx_iv* %2, %struct.rtx_iv** %7, align 8
  store %struct.df_ref* null, %struct.df_ref** %8, align 8
  %10 = load i64, i64* @dump_file, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load i64, i64* @dump_file, align 8
  %14 = call i32 @fprintf(i64 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* @dump_file, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @print_rtl(i64 %15, i32 %16)
  %18 = load i64, i64* @dump_file, align 8
  %19 = call i32 @fprintf(i64 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i64, i64* @dump_file, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @print_rtl_single(i64 %20, i32 %21)
  br label %23

23:                                               ; preds = %12, %3
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @CONSTANT_P(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @GRD_INVARIANT, align 4
  store i32 %28, i32* %9, align 4
  br label %68

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @GET_CODE(i32 %30)
  %32 = load i64, i64* @SUBREG, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @subreg_lowpart_p(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %100

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @SUBREG_REG(i32 %41)
  %43 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %44 = call i32 @iv_analyze_op(i32 %40, i32 %42, %struct.rtx_iv* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %100

47:                                               ; preds = %39
  %48 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @GET_MODE(i32 %49)
  %51 = call i32 @iv_subreg(%struct.rtx_iv* %48, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %100

52:                                               ; preds = %29
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @iv_get_reaching_def(i32 %53, i32 %54, %struct.df_ref** %8)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @GRD_INVALID, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load i64, i64* @dump_file, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i64, i64* @dump_file, align 8
  %64 = call i32 @fprintf(i64 %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %59
  store i32 0, i32* %4, align 4
  br label %100

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67, %27
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @GRD_INVARIANT, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %68
  %73 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @VOIDmode, align 4
  %76 = call i32 @iv_constant(%struct.rtx_iv* %73, i32 %74, i32 %75)
  %77 = load i64, i64* @dump_file, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load i64, i64* @dump_file, align 8
  %81 = call i32 @fprintf(i64 %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i64, i64* @dump_file, align 8
  %83 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %84 = call i32 @dump_iv_info(i64 %82, %struct.rtx_iv* %83)
  %85 = load i64, i64* @dump_file, align 8
  %86 = call i32 @fprintf(i64 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %87

87:                                               ; preds = %79, %72
  store i32 1, i32* %4, align 4
  br label %100

88:                                               ; preds = %68
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @GRD_MAYBE_BIV, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %95 = call i32 @iv_analyze_biv(i32 %93, %struct.rtx_iv* %94)
  store i32 %95, i32* %4, align 4
  br label %100

96:                                               ; preds = %88
  %97 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %98 = load %struct.rtx_iv*, %struct.rtx_iv** %7, align 8
  %99 = call i32 @iv_analyze_def(%struct.df_ref* %97, %struct.rtx_iv* %98)
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %96, %92, %87, %65, %47, %46, %38
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @print_rtl(i64, i32) #1

declare dso_local i32 @print_rtl_single(i64, i32) #1

declare dso_local i64 @CONSTANT_P(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @subreg_lowpart_p(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @iv_subreg(%struct.rtx_iv*, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @iv_get_reaching_def(i32, i32, %struct.df_ref**) #1

declare dso_local i32 @iv_constant(%struct.rtx_iv*, i32, i32) #1

declare dso_local i32 @dump_iv_info(i64, %struct.rtx_iv*) #1

declare dso_local i32 @iv_analyze_biv(i32, %struct.rtx_iv*) #1

declare dso_local i32 @iv_analyze_def(%struct.df_ref*, %struct.rtx_iv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
