; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genemit.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genemit.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"genemit\00", align 1
@progname = common dso_local global i8* null, align 8
@SUCCESS_EXIT_CODE = common dso_local global i64 0, align 8
@FATAL_EXIT_CODE = common dso_local global i32 0, align 4
@insn_code_number = common dso_local global i64 0, align 8
@insn_index_number = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [98 x i8] c"/* Generated automatically by the program `genemit'\0Afrom the machine description file `md'.  */\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"#include \22config.h\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"#include \22system.h\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"#include \22coretypes.h\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"#include \22tm.h\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"#include \22rtl.h\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"#include \22tm_p.h\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"#include \22function.h\22\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"#include \22expr.h\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"#include \22optabs.h\22\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"#include \22real.h\22\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"#include \22flags.h\22\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"#include \22output.h\22\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"#include \22insn-config.h\22\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"#include \22hard-reg-set.h\22\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"#include \22recog.h\22\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"#include \22resource.h\22\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"#include \22reload.h\22\0A\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"#include \22toplev.h\22\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"#include \22tm-constrs.h\22\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"#include \22ggc.h\22\0A\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"#include \22basic-block.h\22\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"#define FAIL return (end_sequence (), _val)\0A\00", align 1
@.str.24 = private unnamed_addr constant [67 x i8] c"#define DONE return (_val = get_insns (), end_sequence (), _val)\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"/* %s:%d */\0A\00", align 1
@read_rtx_filename = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** @progname, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i64 @init_md_reader_args(i32 %8, i8** %9)
  %11 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @FATAL_EXIT_CODE, align 4
  store i32 %14, i32* %3, align 4
  br label %90

15:                                               ; preds = %2
  store i64 0, i64* @insn_code_number, align 8
  store i64 0, i64* @insn_index_number, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0))
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0))
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0))
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.23, i64 0, i64 0))
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.24, i64 0, i64 0))
  br label %40

40:                                               ; preds = %15, %71
  %41 = call i32* @read_md_rtx(i32* %7, i64* @insn_code_number)
  store i32* %41, i32** %6, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %74

45:                                               ; preds = %40
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @GET_CODE(i32* %46)
  switch i32 %47, label %70 [
    i32 130, label %48
    i32 131, label %52
    i32 128, label %58
    i32 129, label %64
  ]

48:                                               ; preds = %45
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @gen_insn(i32* %49, i32 %50)
  br label %71

52:                                               ; preds = %45
  %53 = load i8*, i8** @read_rtx_filename, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8* %53, i32 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @gen_expand(i32* %56)
  br label %71

58:                                               ; preds = %45
  %59 = load i8*, i8** @read_rtx_filename, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8* %59, i32 %60)
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @gen_split(i32* %62)
  br label %71

64:                                               ; preds = %45
  %65 = load i8*, i8** @read_rtx_filename, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8* %65, i32 %66)
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @gen_split(i32* %68)
  br label %71

70:                                               ; preds = %45
  br label %71

71:                                               ; preds = %70, %64, %58, %52, %48
  %72 = load i64, i64* @insn_index_number, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* @insn_index_number, align 8
  br label %40

74:                                               ; preds = %44
  %75 = call i32 (...) @output_add_clobbers()
  %76 = call i32 (...) @output_added_clobbers_hard_reg_p()
  %77 = load i32, i32* @stdout, align 4
  %78 = call i32 @fflush(i32 %77)
  %79 = load i32, i32* @stdout, align 4
  %80 = call i64 @ferror(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i32, i32* @FATAL_EXIT_CODE, align 4
  %84 = sext i32 %83 to i64
  br label %87

85:                                               ; preds = %74
  %86 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  br label %87

87:                                               ; preds = %85, %82
  %88 = phi i64 [ %84, %82 ], [ %86, %85 ]
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %87, %13
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @init_md_reader_args(i32, i8**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @read_md_rtx(i32*, i64*) #1

declare dso_local i32 @GET_CODE(i32*) #1

declare dso_local i32 @gen_insn(i32*, i32) #1

declare dso_local i32 @gen_expand(i32*) #1

declare dso_local i32 @gen_split(i32*) #1

declare dso_local i32 @output_add_clobbers(...) #1

declare dso_local i32 @output_added_clobbers_hard_reg_p(...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @ferror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
