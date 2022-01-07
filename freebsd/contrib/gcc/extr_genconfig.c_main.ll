; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genconfig.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genconfig.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"genconfig\00", align 1
@progname = common dso_local global i8* null, align 8
@SUCCESS_EXIT_CODE = common dso_local global i64 0, align 8
@FATAL_EXIT_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"/* Generated automatically by the program `genconfig'\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"   from the machine description file `md'.  */\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"#ifndef GCC_INSN_CONFIG_H\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"#define GCC_INSN_CONFIG_H\0A\00", align 1
@max_recog_operands = common dso_local global i32 0, align 4
@max_dup_operands = common dso_local global i32 0, align 4
@have_peephole2_flag = common dso_local global i32 0, align 4
@have_peephole_flag = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"#define MAX_RECOG_OPERANDS %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"#define MAX_DUP_OPERANDS %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"#ifndef MAX_INSNS_PER_SPLIT\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"#define MAX_INSNS_PER_SPLIT %d\0A\00", align 1
@max_insns_per_split = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@have_cc0_flag = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"#define HAVE_cc0 1\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"#define CC0_P(X) ((X) == cc0_rtx)\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"#define CC0_P(X) ((X) ? 0 : 0)\0A\00", align 1
@have_cmove_flag = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [33 x i8] c"#define HAVE_conditional_move 1\0A\00", align 1
@have_cond_exec_flag = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [38 x i8] c"#define HAVE_conditional_execution 1\0A\00", align 1
@have_lo_sum_flag = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [23 x i8] c"#define HAVE_lo_sum 1\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"#define HAVE_peephole 1\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"#define HAVE_peephole2 1\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"#define MAX_INSNS_PER_PEEP2 %d\0A\00", align 1
@max_insns_per_peep2 = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [32 x i8] c"\0A#endif /* GCC_INSN_CONFIG_H */\00", align 1
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
  br label %108

16:                                               ; preds = %2
  %17 = call i32 @puts(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @puts(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %20 = call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 29, i32* @max_recog_operands, align 4
  store i32 1, i32* @max_dup_operands, align 4
  br label %21

21:                                               ; preds = %16, %45
  store i32 0, i32* %8, align 4
  %22 = call i32* @read_md_rtx(i32* %7, i32* %8)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %46

26:                                               ; preds = %21
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @GET_CODE(i32* %27)
  switch i32 %28, label %44 [
    i32 131, label %29
    i32 132, label %32
    i32 128, label %35
    i32 129, label %38
    i32 130, label %41
  ]

29:                                               ; preds = %26
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @gen_insn(i32* %30)
  br label %45

32:                                               ; preds = %26
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @gen_expand(i32* %33)
  br label %45

35:                                               ; preds = %26
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @gen_split(i32* %36)
  br label %45

38:                                               ; preds = %26
  store i32 1, i32* @have_peephole2_flag, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @gen_peephole2(i32* %39)
  br label %45

41:                                               ; preds = %26
  store i32 1, i32* @have_peephole_flag, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @gen_peephole(i32* %42)
  br label %45

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %44, %41, %38, %35, %32, %29
  br label %21

46:                                               ; preds = %25
  %47 = load i32, i32* @max_recog_operands, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @max_dup_operands, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %50)
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %53 = load i32, i32* @max_insns_per_split, align 4
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %53)
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %56 = load i64, i64* @have_cc0_flag, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  br label %63

61:                                               ; preds = %46
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i64, i64* @have_cmove_flag, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i64, i64* @have_cond_exec_flag, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %68
  %74 = load i64, i64* @have_lo_sum_flag, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %73
  %79 = load i32, i32* @have_peephole_flag, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %78
  %84 = load i32, i32* @have_peephole2_flag, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0))
  %88 = load i32, i32* @max_insns_per_peep2, align 4
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %86, %83
  %91 = call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0))
  %92 = load i32, i32* @stdout, align 4
  %93 = call i64 @ferror(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* @stdout, align 4
  %97 = call i64 @fflush(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* @stdout, align 4
  %101 = call i64 @fclose(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99, %95, %90
  %104 = load i32, i32* @FATAL_EXIT_CODE, align 4
  store i32 %104, i32* %3, align 4
  br label %108

105:                                              ; preds = %99
  %106 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %105, %103, %14
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i64 @init_md_reader_args(i32, i8**) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32* @read_md_rtx(i32*, i32*) #1

declare dso_local i32 @GET_CODE(i32*) #1

declare dso_local i32 @gen_insn(i32*) #1

declare dso_local i32 @gen_expand(i32*) #1

declare dso_local i32 @gen_split(i32*) #1

declare dso_local i32 @gen_peephole2(i32*) #1

declare dso_local i32 @gen_peephole(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i64 @fflush(i32) #1

declare dso_local i64 @fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
