; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_color.c_parse_color.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_color.c_parse_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@parse_color.color_names = internal constant [9 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"yellow\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"magenta\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"cyan\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @parse_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_color(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %35, %2
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @ARRAY_SIZE(i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @parse_color.color_names, i64 0, i64 0))
  %12 = trunc i64 %11 to i32
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %9
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [9 x i8*], [9 x i8*]* @parse_color.color_names, i64 0, i64 %16
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @strncasecmp(i8* %19, i8* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %14
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %58

34:                                               ; preds = %24, %14
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %9

38:                                               ; preds = %9
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @strtol(i8* %39, i8** %6, i32 10)
  store i32 %40, i32* %7, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp eq i64 %45, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %38
  %50 = load i32, i32* %7, align 4
  %51 = icmp sge i32 %50, -1
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = icmp sle i32 %53, 255
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %58

57:                                               ; preds = %52, %49, %38
  store i32 -2, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %55, %31
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
