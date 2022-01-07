; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_iv_analyze_def.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_iv_analyze_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df_ref = type { i32 }
%struct.rtx_iv = type { i64, i64, i32 }

@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Analysing def of \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" in insn \00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"  already analysed.\0A\00", align 1
@NULL_RTX = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"  is \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.df_ref*, %struct.rtx_iv*)* @iv_analyze_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iv_analyze_def(%struct.df_ref* %0, %struct.rtx_iv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.df_ref*, align 8
  %5 = alloca %struct.rtx_iv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.df_ref* %0, %struct.df_ref** %4, align 8
  store %struct.rtx_iv* %1, %struct.rtx_iv** %5, align 8
  %10 = load %struct.df_ref*, %struct.df_ref** %4, align 8
  %11 = call i64 @DF_REF_INSN(%struct.df_ref* %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.df_ref*, %struct.df_ref** %4, align 8
  %13 = call i64 @DF_REF_REG(%struct.df_ref* %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* @dump_file, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load i64, i64* @dump_file, align 8
  %18 = call i32 @fprintf(i64 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* @dump_file, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @print_rtl(i64 %19, i64 %20)
  %22 = load i64, i64* @dump_file, align 8
  %23 = call i32 @fprintf(i64 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i64, i64* @dump_file, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @print_rtl_single(i64 %24, i64 %25)
  br label %27

27:                                               ; preds = %16, %2
  %28 = load %struct.df_ref*, %struct.df_ref** %4, align 8
  %29 = call %struct.rtx_iv* @DF_REF_IV(%struct.df_ref* %28)
  %30 = icmp ne %struct.rtx_iv* %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load i64, i64* @dump_file, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i64, i64* @dump_file, align 8
  %36 = call i32 @fprintf(i64 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %39 = load %struct.df_ref*, %struct.df_ref** %4, align 8
  %40 = call %struct.rtx_iv* @DF_REF_IV(%struct.df_ref* %39)
  %41 = bitcast %struct.rtx_iv* %38 to i8*
  %42 = bitcast %struct.rtx_iv* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 24, i1 false)
  %43 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %44 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NULL_RTX, align 8
  %47 = icmp ne i64 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %115

49:                                               ; preds = %27
  %50 = load i32, i32* @VOIDmode, align 4
  %51 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %52 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i64, i64* @NULL_RTX, align 8
  %54 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %55 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* @NULL_RTX, align 8
  %57 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %58 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i64 @single_set(i64 %59)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %49
  %64 = load i64, i64* %8, align 8
  %65 = call i64 @SET_DEST(i64 %64)
  %66 = load i64, i64* %7, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %49
  store i32 0, i32* %3, align 4
  br label %115

69:                                               ; preds = %63
  %70 = load i64, i64* %6, align 8
  %71 = call i64 @find_reg_equal_equiv_note(i64 %70)
  store i64 %71, i64* %9, align 8
  %72 = load i64, i64* %9, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i64, i64* %9, align 8
  %76 = call i64 @XEXP(i64 %75, i32 0)
  store i64 %76, i64* %9, align 8
  br label %80

77:                                               ; preds = %69
  %78 = load i64, i64* %8, align 8
  %79 = call i64 @SET_SRC(i64 %78)
  store i64 %79, i64* %9, align 8
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @GET_MODE(i64 %83)
  %85 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %86 = call i32 @iv_analyze_expr(i64 %81, i64 %82, i32 %84, %struct.rtx_iv* %85)
  %87 = load %struct.df_ref*, %struct.df_ref** %4, align 8
  %88 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %89 = call i32 @record_iv(%struct.df_ref* %87, %struct.rtx_iv* %88)
  %90 = load i64, i64* @dump_file, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %80
  %93 = load i64, i64* @dump_file, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @print_rtl(i64 %93, i64 %94)
  %96 = load i64, i64* @dump_file, align 8
  %97 = call i32 @fprintf(i64 %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i64, i64* @dump_file, align 8
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @print_rtl_single(i64 %98, i64 %99)
  %101 = load i64, i64* @dump_file, align 8
  %102 = call i32 @fprintf(i64 %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %103 = load i64, i64* @dump_file, align 8
  %104 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %105 = call i32 @dump_iv_info(i64 %103, %struct.rtx_iv* %104)
  %106 = load i64, i64* @dump_file, align 8
  %107 = call i32 @fprintf(i64 %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %108

108:                                              ; preds = %92, %80
  %109 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %110 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @NULL_RTX, align 8
  %113 = icmp ne i64 %111, %112
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %108, %68, %37
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i64 @DF_REF_INSN(%struct.df_ref*) #1

declare dso_local i64 @DF_REF_REG(%struct.df_ref*) #1

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @print_rtl(i64, i64) #1

declare dso_local i32 @print_rtl_single(i64, i64) #1

declare dso_local %struct.rtx_iv* @DF_REF_IV(%struct.df_ref*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @single_set(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @find_reg_equal_equiv_note(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i32 @iv_analyze_expr(i64, i64, i32, %struct.rtx_iv*) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @record_iv(%struct.df_ref*, %struct.rtx_iv*) #1

declare dso_local i32 @dump_iv_info(i64, %struct.rtx_iv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
