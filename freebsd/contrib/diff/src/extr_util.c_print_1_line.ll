; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_util.c_print_1_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_util.c_print_1_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@outfile = common dso_local global i32* null, align 8
@initial_tab = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\0A\\ %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"No newline at end of file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_1_line(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i8**, i8*** %4, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %6, align 8
  %15 = load i32*, i32** @outfile, align 8
  store i32* %15, i32** %7, align 8
  store i8* null, i8** %8, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load i64, i64* @initial_tab, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  store i8* %27, i8** %8, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @fprintf(i32* %28, i8* %29, i8* %30)
  br label %32

32:                                               ; preds = %23, %18, %2
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @output_1_line(i8* %33, i8* %34, i8* %35, i8* %36)
  %38 = load i8*, i8** %3, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %40, %32
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 -1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 10
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32*, i32** %7, align 8
  %54 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %55 = call i32 @fprintf(i32* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %52, %46, %40
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @output_1_line(i8*, i8*, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
