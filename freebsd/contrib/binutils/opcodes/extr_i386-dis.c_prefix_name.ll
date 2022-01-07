; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_prefix_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_prefix_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prefix_name.rexes = internal global [16 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"rex\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"rex.B\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"rex.X\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"rex.XB\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"rex.R\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"rex.RB\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"rex.RX\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"rex.RXB\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"rex.W\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"rex.WB\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"rex.WX\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"rex.WXB\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"rex.WR\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"rex.WRB\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"rex.WRX\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"rex.WRXB\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"repz\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"repnz\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"ds\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"es\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"gs\00", align 1
@DFLAG = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [7 x i8] c"data16\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"data32\00", align 1
@address_mode = common dso_local global i32 0, align 4
@mode_64bit = common dso_local global i32 0, align 4
@AFLAG = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [7 x i8] c"addr32\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"addr64\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"addr16\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"fwait\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @prefix_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @prefix_name(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %48 [
    i32 64, label %7
    i32 65, label %7
    i32 66, label %7
    i32 67, label %7
    i32 68, label %7
    i32 69, label %7
    i32 70, label %7
    i32 71, label %7
    i32 72, label %7
    i32 73, label %7
    i32 74, label %7
    i32 75, label %7
    i32 76, label %7
    i32 77, label %7
    i32 78, label %7
    i32 79, label %7
    i32 243, label %13
    i32 242, label %14
    i32 240, label %15
    i32 46, label %16
    i32 54, label %17
    i32 62, label %18
    i32 38, label %19
    i32 100, label %20
    i32 101, label %21
    i32 102, label %22
    i32 103, label %29
    i32 128, label %47
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %8 = load i32, i32* %4, align 4
  %9 = sub nsw i32 %8, 64
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [16 x i8*], [16 x i8*]* @prefix_name.rexes, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %3, align 8
  br label %49

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %49

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %49

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %49

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %49

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  br label %49

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %49

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8** %3, align 8
  br label %49

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  br label %49

21:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8
  br label %49

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @DFLAG, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0)
  store i8* %28, i8** %3, align 8
  br label %49

29:                                               ; preds = %2
  %30 = load i32, i32* @address_mode, align 4
  %31 = load i32, i32* @mode_64bit, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @AFLAG, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0)
  store i8* %39, i8** %3, align 8
  br label %49

40:                                               ; preds = %29
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @AFLAG, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0)
  store i8* %46, i8** %3, align 8
  br label %49

47:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i8** %3, align 8
  br label %49

48:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %49

49:                                               ; preds = %48, %47, %40, %33, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %7
  %50 = load i8*, i8** %3, align 8
  ret i8* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
