; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_noexpand.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_noexpand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CTLQUOTEMARK = common dso_local global i8 0, align 1
@CTLESC = common dso_local global i8 0, align 1
@BASESYNTAX = common dso_local global i64* null, align 8
@CCTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @noexpand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noexpand(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %4, align 8
  br label %7

7:                                                ; preds = %40, %19, %1
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %9, i8** %4, align 8
  %10 = load i8, i8* %8, align 1
  store i8 %10, i8* %5, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %7
  %14 = load i8, i8* %5, align 1
  %15 = sext i8 %14 to i32
  %16 = load i8, i8* @CTLQUOTEMARK, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %7

20:                                               ; preds = %13
  %21 = load i8, i8* %5, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* @CTLESC, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %4, align 8
  br label %40

29:                                               ; preds = %20
  %30 = load i64*, i64** @BASESYNTAX, align 8
  %31 = load i8, i8* %5, align 1
  %32 = sext i8 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %30, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CCTL, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %42

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %26
  br label %7

41:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
