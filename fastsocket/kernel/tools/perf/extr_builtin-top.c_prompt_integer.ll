; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-top.c_prompt_integer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-top.c_prompt_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"\0A%s: \00", align 1
@stdin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @prompt_integer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prompt_integer(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = call i8* @malloc(i32 0)
  store i8* %9, i8** %5, align 8
  store i64 0, i64* %7, align 8
  %10 = load i32, i32* @stdout, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i32, i32* @stdin, align 4
  %14 = call i64 @getline(i8** %5, i64* %7, i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %47

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 10)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  store i8 0, i8* %23, align 1
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %6, align 8
  br label %26

26:                                               ; preds = %36, %24
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @isdigit(i8 signext %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %44

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %6, align 8
  br label %26

39:                                               ; preds = %26
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @strtoul(i8* %40, i32* null, i32 10)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32*, i32** %3, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @free(i8* %45)
  br label %47

47:                                               ; preds = %44, %16
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @getline(i8**, i64*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
