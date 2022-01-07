; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_viafbdev.c_parse_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_viafbdev.c_parse_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"DVP0\00", align 1
@INTERFACE_DVP0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"DVP1\00", align 1
@INTERFACE_DVP1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"DFP_HIGHLOW\00", align 1
@INTERFACE_DFP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"DFP_HIGH\00", align 1
@INTERFACE_DFP_HIGH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"DFP_LOW\00", align 1
@INTERFACE_DFP_LOW = common dso_local global i32 0, align 4
@INTERFACE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @parse_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_port(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @strncmp(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @INTERFACE_DVP0, align 4
  %10 = load i32*, i32** %4, align 8
  store i32 %9, i32* %10, align 4
  br label %46

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @INTERFACE_DVP1, align 4
  %17 = load i32*, i32** %4, align 8
  store i32 %16, i32* %17, align 4
  br label %45

18:                                               ; preds = %11
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strncmp(i8* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 11)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @INTERFACE_DFP, align 4
  %24 = load i32*, i32** %4, align 8
  store i32 %23, i32* %24, align 4
  br label %44

25:                                               ; preds = %18
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @INTERFACE_DFP_HIGH, align 4
  %31 = load i32*, i32** %4, align 8
  store i32 %30, i32* %31, align 4
  br label %43

32:                                               ; preds = %25
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @strncmp(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @INTERFACE_DFP_LOW, align 4
  %38 = load i32*, i32** %4, align 8
  store i32 %37, i32* %38, align 4
  br label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @INTERFACE_NONE, align 4
  %41 = load i32*, i32** %4, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %29
  br label %44

44:                                               ; preds = %43, %22
  br label %45

45:                                               ; preds = %44, %15
  br label %46

46:                                               ; preds = %45, %8
  ret i32 0
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
