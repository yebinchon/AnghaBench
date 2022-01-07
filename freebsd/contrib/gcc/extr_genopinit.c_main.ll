; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genopinit.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genopinit.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"genopinit\00", align 1
@progname = common dso_local global i8* null, align 8
@SUCCESS_EXIT_CODE = common dso_local global i64 0, align 8
@FATAL_EXIT_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [100 x i8] c"/* Generated automatically by the program `genopinit'\0Afrom the machine description file `md'.  */\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"#include \22config.h\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"#include \22system.h\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"#include \22coretypes.h\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"#include \22tm.h\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"#include \22rtl.h\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"#include \22flags.h\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"#include \22insn-config.h\22\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"#include \22recog.h\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"#include \22expr.h\22\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"#include \22optabs.h\22\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"#include \22reload.h\22\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"void\0Ainit_all_optabs (void)\0A{\0A\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"#ifdef FIXUNS_TRUNC_LIKE_FIX_TRUNC\0A  int i, j;\0A#endif\0A\00", align 1
@DEFINE_INSN = common dso_local global i64 0, align 8
@DEFINE_EXPAND = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [347 x i8] c"\0A#ifdef FIXUNS_TRUNC_LIKE_FIX_TRUNC\0A  /* This flag says the same insns that convert to a signed fixnum\0A     also convert validly to an unsigned one.  */\0A  for (i = 0; i < NUM_MACHINE_MODES; i++)\0A    for (j = 0; j < NUM_MACHINE_MODES; j++)\0A      ufixtrunc_optab->handlers[i][j].insn_code\0A      = sfixtrunc_optab->handlers[i][j].insn_code;\0A#endif\0A}\00", align 1
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
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** @progname, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i64 @init_md_reader_args(i32 %9, i8** %10)
  %12 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @FATAL_EXIT_CODE, align 4
  store i32 %15, i32* %3, align 4
  br label %65

16:                                               ; preds = %2
  %17 = call i32 @printf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %20 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %21 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %22 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %23 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %24 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %25 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %26 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %27 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %28 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %29 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %30 = call i32 @puts(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0))
  br label %31

31:                                               ; preds = %16, %49
  store i32 0, i32* %8, align 4
  %32 = call i32* @read_md_rtx(i32* %7, i32* %8)
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %50

36:                                               ; preds = %31
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @GET_CODE(i32* %37)
  %39 = load i64, i64* @DEFINE_INSN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @GET_CODE(i32* %42)
  %44 = load i64, i64* @DEFINE_EXPAND, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41, %36
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @gen_insn(i32* %47)
  br label %49

49:                                               ; preds = %46, %41
  br label %31

50:                                               ; preds = %35
  %51 = call i32 @puts(i8* getelementptr inbounds ([347 x i8], [347 x i8]* @.str.15, i64 0, i64 0))
  %52 = load i32, i32* @stdout, align 4
  %53 = call i32 @fflush(i32 %52)
  %54 = load i32, i32* @stdout, align 4
  %55 = call i64 @ferror(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @FATAL_EXIT_CODE, align 4
  %59 = sext i32 %58 to i64
  br label %62

60:                                               ; preds = %50
  %61 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  br label %62

62:                                               ; preds = %60, %57
  %63 = phi i64 [ %59, %57 ], [ %61, %60 ]
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %14
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @init_md_reader_args(i32, i8**) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32* @read_md_rtx(i32*, i32*) #1

declare dso_local i64 @GET_CODE(i32*) #1

declare dso_local i32 @gen_insn(i32*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @ferror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
