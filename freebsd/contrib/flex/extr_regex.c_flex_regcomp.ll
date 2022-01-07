; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_regex.c_flex_regcomp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_regex.c_flex_regcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"Unable to allocate buffer to report regcomp\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Unable to allocate buffer for regerror\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"regcomp for \22%s\22 failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flex_regcomp(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @memset(i32* %11, i32 0, i32 4)
  %13 = load i32*, i32** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @regcomp(i32* %13, i8* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  store i32 200, i32* %8, align 4
  %19 = call i64 @flex_alloc(i32 200)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @flexfatal(i8* %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = call i64 @flex_alloc(i32 200)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @flexfatal(i8* %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @regerror(i32 %35, i32* %36, i8* %37, i32 200)
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @snprintf(i8* %39, i32 200, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %40, i8* %41)
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @flexfatal(i8* %43)
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @free(i8* %47)
  br label %49

49:                                               ; preds = %34, %3
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @regcomp(i32*, i8*, i32) #1

declare dso_local i64 @flex_alloc(i32) #1

declare dso_local i32 @flexfatal(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @regerror(i32, i32*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
