; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genoutput.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genoutput.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"genoutput\00", align 1
@progname = common dso_local global i8* null, align 8
@SUCCESS_EXIT_CODE = common dso_local global i64 0, align 8
@FATAL_EXIT_CODE = common dso_local global i32 0, align 4
@next_code_number = common dso_local global i64 0, align 8
@next_index_number = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@have_error = common dso_local global i64 0, align 8

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
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** @progname, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i64 @init_md_reader_args(i32 %8, i8** %9)
  %11 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @FATAL_EXIT_CODE, align 4
  store i32 %14, i32* %3, align 4
  br label %66

15:                                               ; preds = %2
  %16 = call i32 (...) @output_prologue()
  store i64 0, i64* @next_code_number, align 8
  store i64 0, i64* @next_index_number, align 8
  br label %17

17:                                               ; preds = %15, %42
  %18 = call i32* @read_md_rtx(i32* %7, i64* @next_code_number)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %45

22:                                               ; preds = %17
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @GET_CODE(i32* %23)
  switch i32 %24, label %41 [
    i32 133, label %25
    i32 131, label %29
    i32 134, label %33
    i32 128, label %37
    i32 130, label %37
  ]

25:                                               ; preds = %22
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @gen_insn(i32* %26, i32 %27)
  br label %42

29:                                               ; preds = %22
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @gen_peephole(i32* %30, i32 %31)
  br label %42

33:                                               ; preds = %22
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @gen_expand(i32* %34, i32 %35)
  br label %42

37:                                               ; preds = %22, %22
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @gen_split(i32* %38, i32 %39)
  br label %42

41:                                               ; preds = %22
  br label %42

42:                                               ; preds = %41, %37, %33, %29, %25
  %43 = load i64, i64* @next_index_number, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* @next_index_number, align 8
  br label %17

45:                                               ; preds = %21
  %46 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 (...) @output_operand_data()
  %48 = call i32 (...) @output_insn_data()
  %49 = call i32 (...) @output_get_insn_name()
  %50 = load i32, i32* @stdout, align 4
  %51 = call i32 @fflush(i32 %50)
  %52 = load i32, i32* @stdout, align 4
  %53 = call i64 @ferror(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %45
  %56 = load i64, i64* @have_error, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55, %45
  %59 = load i32, i32* @FATAL_EXIT_CODE, align 4
  %60 = sext i32 %59 to i64
  br label %63

61:                                               ; preds = %55
  %62 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  br label %63

63:                                               ; preds = %61, %58
  %64 = phi i64 [ %60, %58 ], [ %62, %61 ]
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %63, %13
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @init_md_reader_args(i32, i8**) #1

declare dso_local i32 @output_prologue(...) #1

declare dso_local i32* @read_md_rtx(i32*, i64*) #1

declare dso_local i32 @GET_CODE(i32*) #1

declare dso_local i32 @gen_insn(i32*, i32) #1

declare dso_local i32 @gen_peephole(i32*, i32) #1

declare dso_local i32 @gen_expand(i32*, i32) #1

declare dso_local i32 @gen_split(i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @output_operand_data(...) #1

declare dso_local i32 @output_insn_data(...) #1

declare dso_local i32 @output_get_insn_name(...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @ferror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
