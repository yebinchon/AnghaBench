; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_mknodes.c_nextfield.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_mknodes.c_nextfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@linep = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @nextfield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nextfield(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** @linep, align 8
  store i8* %5, i8** %3, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 9
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i1 [ true, %6 ], [ %15, %11 ]
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %3, align 8
  br label %6

21:                                               ; preds = %16
  %22 = load i8*, i8** %2, align 8
  store i8* %22, i8** %4, align 8
  br label %23

23:                                               ; preds = %40, %21
  %24 = load i8*, i8** %3, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 32
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load i8*, i8** %3, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 9
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %3, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %33, %28, %23
  %39 = phi i1 [ false, %28 ], [ false, %23 ], [ %37, %33 ]
  br i1 %39, label %40, label %46

40:                                               ; preds = %38
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %3, align 8
  %43 = load i8, i8* %41, align 1
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %4, align 8
  store i8 %43, i8* %44, align 1
  br label %23

46:                                               ; preds = %38
  %47 = load i8*, i8** %4, align 8
  store i8 0, i8* %47, align 1
  %48 = load i8*, i8** %3, align 8
  store i8* %48, i8** @linep, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = load i8*, i8** %2, align 8
  %51 = icmp ugt i8* %49, %50
  %52 = zext i1 %51 to i32
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
