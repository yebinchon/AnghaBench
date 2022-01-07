; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_evalcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_evalcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@builtin_flags = common dso_local global i32 0, align 4
@exitstatus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evalcmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %42

10:                                               ; preds = %2
  %11 = load i8**, i8*** %4, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %5, align 8
  %14 = load i32, i32* %3, align 4
  %15 = icmp sgt i32 %14, 2
  br i1 %15, label %16, label %38

16:                                               ; preds = %10
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @STARTSTACKSTR(i8* %17)
  %19 = load i8**, i8*** %4, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 2
  store i8** %20, i8*** %7, align 8
  br label %21

21:                                               ; preds = %30, %16
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @STPUTS(i8* %22, i8* %23)
  %25 = load i8**, i8*** %7, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %26, i8*** %7, align 8
  %27 = load i8*, i8** %25, align 8
  store i8* %27, i8** %5, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %33

30:                                               ; preds = %21
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @STPUTC(i8 signext 32, i8* %31)
  br label %21

33:                                               ; preds = %29
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @STPUTC(i8 signext 0, i8* %34)
  %36 = load i8*, i8** %6, align 8
  %37 = call i8* @grabstackstr(i8* %36)
  store i8* %37, i8** %5, align 8
  br label %38

38:                                               ; preds = %33, %10
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* @builtin_flags, align 4
  %41 = call i32 @evalstring(i8* %39, i32 %40)
  br label %43

42:                                               ; preds = %2
  store i32 0, i32* @exitstatus, align 4
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i32, i32* @exitstatus, align 4
  ret i32 %44
}

declare dso_local i32 @STARTSTACKSTR(i8*) #1

declare dso_local i32 @STPUTS(i8*, i8*) #1

declare dso_local i32 @STPUTC(i8 signext, i8*) #1

declare dso_local i8* @grabstackstr(i8*) #1

declare dso_local i32 @evalstring(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
