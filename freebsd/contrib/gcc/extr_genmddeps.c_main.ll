; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genmddeps.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genmddeps.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filedep = type { i8*, %struct.filedep* }

@.str = private unnamed_addr constant [10 x i8] c"genmddeps\00", align 1
@progname = common dso_local global i8* null, align 8
@add_filedep = common dso_local global i32 0, align 4
@include_callback = common dso_local global i32 0, align 4
@SUCCESS_EXIT_CODE = common dso_local global i64 0, align 8
@FATAL_EXIT_CODE = common dso_local global i32 0, align 4
@last = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"MD_INCLUDES =\00", align 1
@stdout = common dso_local global i32 0, align 4
@deps = common dso_local global %struct.filedep* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c" \\\0A\09%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\0A%s:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.filedep*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** @progname, align 8
  %7 = load i32, i32* @add_filedep, align 4
  store i32 %7, i32* @include_callback, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i64 @init_md_reader_args(i32 %8, i8** %9)
  %11 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @FATAL_EXIT_CODE, align 4
  store i32 %14, i32* %3, align 4
  br label %61

15:                                               ; preds = %2
  %16 = load i32**, i32*** @last, align 8
  store i32* null, i32** %16, align 8
  %17 = load i32, i32* @stdout, align 4
  %18 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load %struct.filedep*, %struct.filedep** @deps, align 8
  store %struct.filedep* %19, %struct.filedep** %6, align 8
  br label %20

20:                                               ; preds = %28, %15
  %21 = load %struct.filedep*, %struct.filedep** %6, align 8
  %22 = icmp ne %struct.filedep* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load %struct.filedep*, %struct.filedep** %6, align 8
  %25 = getelementptr inbounds %struct.filedep, %struct.filedep* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %23
  %29 = load %struct.filedep*, %struct.filedep** %6, align 8
  %30 = getelementptr inbounds %struct.filedep, %struct.filedep* %29, i32 0, i32 1
  %31 = load %struct.filedep*, %struct.filedep** %30, align 8
  store %struct.filedep* %31, %struct.filedep** %6, align 8
  br label %20

32:                                               ; preds = %20
  %33 = call i32 @putchar(i8 signext 10)
  %34 = load %struct.filedep*, %struct.filedep** @deps, align 8
  store %struct.filedep* %34, %struct.filedep** %6, align 8
  br label %35

35:                                               ; preds = %43, %32
  %36 = load %struct.filedep*, %struct.filedep** %6, align 8
  %37 = icmp ne %struct.filedep* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.filedep*, %struct.filedep** %6, align 8
  %40 = getelementptr inbounds %struct.filedep, %struct.filedep* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %38
  %44 = load %struct.filedep*, %struct.filedep** %6, align 8
  %45 = getelementptr inbounds %struct.filedep, %struct.filedep* %44, i32 0, i32 1
  %46 = load %struct.filedep*, %struct.filedep** %45, align 8
  store %struct.filedep* %46, %struct.filedep** %6, align 8
  br label %35

47:                                               ; preds = %35
  %48 = load i32, i32* @stdout, align 4
  %49 = call i32 @fflush(i32 %48)
  %50 = load i32, i32* @stdout, align 4
  %51 = call i64 @ferror(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @FATAL_EXIT_CODE, align 4
  %55 = sext i32 %54 to i64
  br label %58

56:                                               ; preds = %47
  %57 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  br label %58

58:                                               ; preds = %56, %53
  %59 = phi i64 [ %55, %53 ], [ %57, %56 ]
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %13
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @init_md_reader_args(i32, i8**) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @ferror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
