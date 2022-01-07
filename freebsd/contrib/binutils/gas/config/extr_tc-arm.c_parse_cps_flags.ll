; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_cps_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_cps_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [22 x i8] c"unrecognized CPS flag\00", align 1
@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"missing CPS flags\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @parse_cps_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cps_flags(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i8**, i8*** %3, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %6, align 8
  br label %9

9:                                                ; preds = %27, %1
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %6, align 8
  %12 = load i8, i8* %10, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %24 [
    i32 0, label %14
    i32 44, label %14
    i32 97, label %15
    i32 65, label %15
    i32 105, label %18
    i32 73, label %18
    i32 102, label %21
    i32 70, label %21
  ]

14:                                               ; preds = %9, %9
  br label %28

15:                                               ; preds = %9, %9
  store i32 1, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, 4
  store i32 %17, i32* %4, align 4
  br label %27

18:                                               ; preds = %9, %9
  store i32 1, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, 2
  store i32 %20, i32* %4, align 4
  br label %27

21:                                               ; preds = %9, %9
  store i32 1, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %27

24:                                               ; preds = %9
  %25 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %26 = load i32, i32* @FAIL, align 4
  store i32 %26, i32* %2, align 4
  br label %39

27:                                               ; preds = %21, %18, %15
  br label %9

28:                                               ; preds = %14
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %33 = load i32, i32* @FAIL, align 4
  store i32 %33, i32* %2, align 4
  br label %39

34:                                               ; preds = %28
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 -1
  %37 = load i8**, i8*** %3, align 8
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %31, %24
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
