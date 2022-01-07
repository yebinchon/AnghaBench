; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genpeep.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genpeep.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_opno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"genpeep\00", align 1
@progname = common dso_local global i8* null, align 8
@SUCCESS_EXIT_CODE = common dso_local global i64 0, align 8
@FATAL_EXIT_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [98 x i8] c"/* Generated automatically by the program `genpeep'\0Afrom the machine description file `md'.  */\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"#include \22config.h\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"#include \22system.h\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"#include \22coretypes.h\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"#include \22tm.h\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"#include \22insn-config.h\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"#include \22rtl.h\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"#include \22tm_p.h\22\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"#include \22regs.h\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"#include \22output.h\22\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"#include \22real.h\22\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"#include \22recog.h\22\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"#include \22except.h\22\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"#include \22function.h\22\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"#include \22toplev.h\22\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"#include \22flags.h\22\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"#include \22tm-constrs.h\22\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"#ifdef HAVE_peephole\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"extern rtx peep_operand[];\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"#define operands peep_operand\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"rtx\0Apeephole (rtx ins1)\0A{\0A\00", align 1
@.str.22 = private unnamed_addr constant [73 x i8] c"  rtx insn ATTRIBUTE_UNUSED, x ATTRIBUTE_UNUSED, pat ATTRIBUTE_UNUSED;\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"  if (NEXT_INSN (ins1)\0A\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"      && BARRIER_P (NEXT_INSN (ins1)))\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"    return 0;\0A\0A\00", align 1
@DEFINE_PEEPHOLE = common dso_local global i64 0, align 8
@insn_code_number = common dso_local global i32 0, align 4
@DEFINE_INSN = common dso_local global i64 0, align 8
@DEFINE_EXPAND = common dso_local global i64 0, align 8
@DEFINE_SPLIT = common dso_local global i64 0, align 8
@DEFINE_PEEPHOLE2 = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [16 x i8] c"  return 0;\0A}\0A\0A\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"rtx peep_operand[%d];\0A\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* @max_opno, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** @progname, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i64 @init_md_reader_args(i32 %9, i8** %10)
  %12 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @FATAL_EXIT_CODE, align 4
  store i32 %15, i32* %3, align 4
  br label %104

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0))
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0))
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0))
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.22, i64 0, i64 0))
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0))
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0))
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0))
  br label %42

42:                                               ; preds = %16, %80
  store i32 0, i32* %8, align 4
  %43 = call i32* @read_md_rtx(i32* %7, i32* %8)
  store i32* %43, i32** %6, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %81

47:                                               ; preds = %42
  %48 = load i32*, i32** %6, align 8
  %49 = call i64 @GET_CODE(i32* %48)
  %50 = load i64, i64* @DEFINE_PEEPHOLE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @gen_peephole(i32* %53)
  %55 = load i32, i32* @insn_code_number, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @insn_code_number, align 4
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32*, i32** %6, align 8
  %59 = call i64 @GET_CODE(i32* %58)
  %60 = load i64, i64* @DEFINE_INSN, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %77, label %62

62:                                               ; preds = %57
  %63 = load i32*, i32** %6, align 8
  %64 = call i64 @GET_CODE(i32* %63)
  %65 = load i64, i64* @DEFINE_EXPAND, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %77, label %67

67:                                               ; preds = %62
  %68 = load i32*, i32** %6, align 8
  %69 = call i64 @GET_CODE(i32* %68)
  %70 = load i64, i64* @DEFINE_SPLIT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load i32*, i32** %6, align 8
  %74 = call i64 @GET_CODE(i32* %73)
  %75 = load i64, i64* @DEFINE_PEEPHOLE2, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %72, %67, %62, %57
  %78 = load i32, i32* @insn_code_number, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @insn_code_number, align 4
  br label %80

80:                                               ; preds = %77, %72
  br label %42

81:                                               ; preds = %46
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0))
  %83 = load i32, i32* @max_opno, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 1, i32* @max_opno, align 4
  br label %86

86:                                               ; preds = %85, %81
  %87 = load i32, i32* @max_opno, align 4
  %88 = add nsw i32 %87, 1
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0), i32 %88)
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0))
  %91 = load i32, i32* @stdout, align 4
  %92 = call i32 @fflush(i32 %91)
  %93 = load i32, i32* @stdout, align 4
  %94 = call i64 @ferror(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = load i32, i32* @FATAL_EXIT_CODE, align 4
  %98 = sext i32 %97 to i64
  br label %101

99:                                               ; preds = %86
  %100 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  br label %101

101:                                              ; preds = %99, %96
  %102 = phi i64 [ %98, %96 ], [ %100, %99 ]
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %101, %14
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i64 @init_md_reader_args(i32, i8**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @read_md_rtx(i32*, i32*) #1

declare dso_local i64 @GET_CODE(i32*) #1

declare dso_local i32 @gen_peephole(i32*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @ferror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
