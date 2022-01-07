; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rclex.c_rclex_translatekeyword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rclex.c_rclex_translatekeyword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rclex_keywords = type { i32, i32* }

@keywds = common dso_local global %struct.rclex_keywords* null, align 8
@STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rclex_translatekeyword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rclex_translatekeyword(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rclex_keywords*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %36

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = call i64 @ISUPPER(i8 signext %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %7
  %14 = load %struct.rclex_keywords*, %struct.rclex_keywords** @keywds, align 8
  %15 = getelementptr inbounds %struct.rclex_keywords, %struct.rclex_keywords* %14, i64 0
  store %struct.rclex_keywords* %15, %struct.rclex_keywords** %4, align 8
  br label %16

16:                                               ; preds = %30, %13
  %17 = load %struct.rclex_keywords*, %struct.rclex_keywords** %4, align 8
  %18 = getelementptr inbounds %struct.rclex_keywords, %struct.rclex_keywords* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @strcmp(i32* %19, i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = load %struct.rclex_keywords*, %struct.rclex_keywords** %4, align 8
  %25 = getelementptr inbounds %struct.rclex_keywords, %struct.rclex_keywords* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %2, align 4
  br label %38

27:                                               ; preds = %16
  %28 = load %struct.rclex_keywords*, %struct.rclex_keywords** %4, align 8
  %29 = getelementptr inbounds %struct.rclex_keywords, %struct.rclex_keywords* %28, i32 1
  store %struct.rclex_keywords* %29, %struct.rclex_keywords** %4, align 8
  br label %30

30:                                               ; preds = %27
  %31 = load %struct.rclex_keywords*, %struct.rclex_keywords** %4, align 8
  %32 = getelementptr inbounds %struct.rclex_keywords, %struct.rclex_keywords* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %16, label %35

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %7, %1
  %37 = load i32, i32* @STRING, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %23
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @ISUPPER(i8 signext) #1

declare dso_local i32 @strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
