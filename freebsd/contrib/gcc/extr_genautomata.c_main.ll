; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"genautomata\00", align 1
@progname = common dso_local global i8* null, align 8
@SUCCESS_EXIT_CODE = common dso_local global i64 0, align 8
@FATAL_EXIT_CODE = common dso_local global i32 0, align 4
@have_error = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [403 x i8] c"/* Generated automatically by the program `genautomata'\0A   from the machine description file `md'.  */\0A\0A#include \22config.h\22\0A#include \22system.h\22\0A#include \22coretypes.h\22\0A#include \22tm.h\22\0A#include \22rtl.h\22\0A#include \22tm_p.h\22\0A#include \22insn-config.h\22\0A#include \22recog.h\22\0A#include \22regs.h\22\0A#include \22real.h\22\0A#include \22output.h\22\0A#include \22insn-attr.h\22\0A#include \22toplev.h\22\0A#include \22flags.h\22\0A#include \22function.h\22\0A\00", align 1
@decl_t = common dso_local global i32 0, align 4
@decls = common dso_local global i32 0, align 4
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
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** @progname, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i64 @init_md_reader_args(i32 %9, i8** %10)
  %12 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @FATAL_EXIT_CODE, align 4
  store i32 %15, i32* %3, align 4
  br label %94

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @initiate_automaton_gen(i32 %17, i8** %18)
  br label %20

20:                                               ; preds = %16, %65
  %21 = call i32* @read_md_rtx(i32* %7, i32* %8)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %66

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @GET_CODE(i32* %26)
  switch i32 %27, label %64 [
    i32 135, label %28
    i32 133, label %31
    i32 136, label %34
    i32 131, label %37
    i32 128, label %40
    i32 129, label %43
    i32 139, label %46
    i32 130, label %49
    i32 137, label %52
    i32 138, label %55
    i32 132, label %58
    i32 134, label %61
  ]

28:                                               ; preds = %25
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @gen_cpu_unit(i32* %29)
  br label %65

31:                                               ; preds = %25
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @gen_query_cpu_unit(i32* %32)
  br label %65

34:                                               ; preds = %25
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @gen_bypass(i32* %35)
  br label %65

37:                                               ; preds = %25
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @gen_excl_set(i32* %38)
  br label %65

40:                                               ; preds = %25
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @gen_presence_set(i32* %41)
  br label %65

43:                                               ; preds = %25
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @gen_final_presence_set(i32* %44)
  br label %65

46:                                               ; preds = %25
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @gen_absence_set(i32* %47)
  br label %65

49:                                               ; preds = %25
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @gen_final_absence_set(i32* %50)
  br label %65

52:                                               ; preds = %25
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @gen_automaton(i32* %53)
  br label %65

55:                                               ; preds = %25
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @gen_automata_option(i32* %56)
  br label %65

58:                                               ; preds = %25
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @gen_reserv(i32* %59)
  br label %65

61:                                               ; preds = %25
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @gen_insn_reserv(i32* %62)
  br label %65

64:                                               ; preds = %25
  br label %65

65:                                               ; preds = %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28
  br label %20

66:                                               ; preds = %24
  %67 = load i64, i64* @have_error, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @FATAL_EXIT_CODE, align 4
  store i32 %70, i32* %3, align 4
  br label %94

71:                                               ; preds = %66
  %72 = call i32 @puts(i8* getelementptr inbounds ([403 x i8], [403 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @decl_t, align 4
  %74 = load i32, i32* @decls, align 4
  %75 = call i64 @VEC_length(i32 %73, i32 %74)
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = call i32 (...) @expand_automata()
  %79 = call i32 (...) @write_automata()
  br label %80

80:                                               ; preds = %77, %71
  %81 = load i32, i32* @stdout, align 4
  %82 = call i32 @fflush(i32 %81)
  %83 = load i32, i32* @stdout, align 4
  %84 = call i64 @ferror(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @FATAL_EXIT_CODE, align 4
  %88 = sext i32 %87 to i64
  br label %91

89:                                               ; preds = %80
  %90 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  br label %91

91:                                               ; preds = %89, %86
  %92 = phi i64 [ %88, %86 ], [ %90, %89 ]
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %91, %69, %14
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @init_md_reader_args(i32, i8**) #1

declare dso_local i32 @initiate_automaton_gen(i32, i8**) #1

declare dso_local i32* @read_md_rtx(i32*, i32*) #1

declare dso_local i32 @GET_CODE(i32*) #1

declare dso_local i32 @gen_cpu_unit(i32*) #1

declare dso_local i32 @gen_query_cpu_unit(i32*) #1

declare dso_local i32 @gen_bypass(i32*) #1

declare dso_local i32 @gen_excl_set(i32*) #1

declare dso_local i32 @gen_presence_set(i32*) #1

declare dso_local i32 @gen_final_presence_set(i32*) #1

declare dso_local i32 @gen_absence_set(i32*) #1

declare dso_local i32 @gen_final_absence_set(i32*) #1

declare dso_local i32 @gen_automaton(i32*) #1

declare dso_local i32 @gen_automata_option(i32*) #1

declare dso_local i32 @gen_reserv(i32*) #1

declare dso_local i32 @gen_insn_reserv(i32*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i64 @VEC_length(i32, i32) #1

declare dso_local i32 @expand_automata(...) #1

declare dso_local i32 @write_automata(...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @ferror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
