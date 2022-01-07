; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gencodes.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gencodes.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"gencodes\00", align 1
@progname = common dso_local global i8* null, align 8
@insn_elision = common dso_local global i64 0, align 8
@SUCCESS_EXIT_CODE = common dso_local global i64 0, align 8
@FATAL_EXIT_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [169 x i8] c"/* Generated automatically by the program `gencodes'\0A   from the machine description file `md'.  */\0A\0A#ifndef GCC_INSN_CODES_H\0A#define GCC_INSN_CODES_H\0A\0Aenum insn_code {\00", align 1
@DEFINE_INSN = common dso_local global i64 0, align 8
@DEFINE_EXPAND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"  CODE_FOR_nothing\0A};\0A\0A#endif /* GCC_INSN_CODES_H */\00", align 1
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
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** @progname, align 8
  store i64 0, i64* @insn_elision, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i64 @init_md_reader_args(i32 %9, i8** %10)
  %12 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @FATAL_EXIT_CODE, align 4
  store i32 %15, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  %17 = call i32 @puts(i8* getelementptr inbounds ([169 x i8], [169 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %37
  %19 = call i32* @read_md_rtx(i32* %7, i32* %8)
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %38

23:                                               ; preds = %18
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @GET_CODE(i32* %24)
  %26 = load i64, i64* @DEFINE_INSN, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @GET_CODE(i32* %29)
  %31 = load i64, i64* @DEFINE_EXPAND, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28, %23
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @gen_insn(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %28
  br label %18

38:                                               ; preds = %22
  %39 = call i32 @puts(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @stdout, align 4
  %41 = call i64 @ferror(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @stdout, align 4
  %45 = call i64 @fflush(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @stdout, align 4
  %49 = call i64 @fclose(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %43, %38
  %52 = load i32, i32* @FATAL_EXIT_CODE, align 4
  store i32 %52, i32* %3, align 4
  br label %56

53:                                               ; preds = %47
  %54 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %51, %14
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @init_md_reader_args(i32, i8**) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32* @read_md_rtx(i32*, i32*) #1

declare dso_local i64 @GET_CODE(i32*) #1

declare dso_local i32 @gen_insn(i32*, i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i64 @fflush(i32) #1

declare dso_local i64 @fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
