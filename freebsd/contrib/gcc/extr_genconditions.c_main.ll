; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genconditions.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genconditions.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"genconditions\00", align 1
@progname = common dso_local global i8* null, align 8
@SUCCESS_EXIT_CODE = common dso_local global i64 0, align 8
@FATAL_EXIT_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"eh_return\00", align 1
@saw_eh_return = common dso_local global i32 0, align 4
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
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** @progname, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i64 @init_md_reader_args(i32 %9, i8** %10)
  %12 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @FATAL_EXIT_CODE, align 4
  store i32 %15, i32* %3, align 4
  br label %58

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %40
  %18 = call i32* @read_md_rtx(i32* %7, i32* %8)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %41

22:                                               ; preds = %17
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @GET_CODE(i32* %23)
  switch i32 %24, label %25 [
    i32 131, label %26
    i32 132, label %26
    i32 128, label %36
    i32 130, label %36
    i32 129, label %36
  ]

25:                                               ; preds = %22
  br label %40

26:                                               ; preds = %22, %22
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @XSTR(i32* %27, i32 2)
  %29 = call i32 @add_c_test(i32 %28, i32 -1)
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @XSTR(i32* %30, i32 0)
  %32 = call i32 @strcmp(i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  store i32 1, i32* @saw_eh_return, align 4
  br label %35

35:                                               ; preds = %34, %26
  br label %40

36:                                               ; preds = %22, %22, %22
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @XSTR(i32* %37, i32 1)
  %39 = call i32 @add_c_test(i32 %38, i32 -1)
  br label %40

40:                                               ; preds = %36, %35, %25
  br label %17

41:                                               ; preds = %21
  %42 = call i32 (...) @write_header()
  %43 = call i32 (...) @write_conditions()
  %44 = call i32 (...) @write_writer()
  %45 = load i32, i32* @stdout, align 4
  %46 = call i32 @fflush(i32 %45)
  %47 = load i32, i32* @stdout, align 4
  %48 = call i64 @ferror(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* @FATAL_EXIT_CODE, align 4
  %52 = sext i32 %51 to i64
  br label %55

53:                                               ; preds = %41
  %54 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi i64 [ %52, %50 ], [ %54, %53 ]
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %14
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @init_md_reader_args(i32, i8**) #1

declare dso_local i32* @read_md_rtx(i32*, i32*) #1

declare dso_local i32 @GET_CODE(i32*) #1

declare dso_local i32 @add_c_test(i32, i32) #1

declare dso_local i32 @XSTR(i32*, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @write_header(...) #1

declare dso_local i32 @write_conditions(...) #1

declare dso_local i32 @write_writer(...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @ferror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
