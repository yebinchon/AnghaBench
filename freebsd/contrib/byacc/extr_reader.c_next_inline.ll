; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_next_inline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_next_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@line = common dso_local global i32* null, align 8
@EOF = common dso_local global i32 0, align 4
@cptr = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @next_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_inline() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i32*, i32** @line, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = call i32 (...) @get_line()
  %7 = load i32*, i32** @line, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = load i32, i32* @EOF, align 4
  store i32 %10, i32* %1, align 4
  br label %50

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11, %0
  %13 = load i8*, i8** @cptr, align 8
  store i8* %13, i8** %2, align 8
  br label %14

14:                                               ; preds = %49, %12
  %15 = load i8*, i8** %2, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %44 [
    i32 47, label %18
  ]

18:                                               ; preds = %14
  %19 = load i8*, i8** %2, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 42
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i8*, i8** %2, align 8
  store i8* %25, i8** @cptr, align 8
  %26 = call i32 (...) @skip_comment()
  %27 = load i8*, i8** @cptr, align 8
  store i8* %27, i8** %2, align 8
  br label %49

28:                                               ; preds = %18
  %29 = load i8*, i8** %2, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 47
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = call i32 (...) @get_line()
  %36 = load i32*, i32** @line, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @EOF, align 4
  store i32 %39, i32* %1, align 4
  br label %50

40:                                               ; preds = %34
  %41 = load i8*, i8** @cptr, align 8
  store i8* %41, i8** %2, align 8
  br label %49

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %14, %43
  %45 = load i8*, i8** %2, align 8
  store i8* %45, i8** @cptr, align 8
  %46 = load i8*, i8** %2, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  store i32 %48, i32* %1, align 4
  br label %50

49:                                               ; preds = %40, %24
  br label %14

50:                                               ; preds = %44, %38, %9
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

declare dso_local i32 @get_line(...) #1

declare dso_local i32 @skip_comment(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
