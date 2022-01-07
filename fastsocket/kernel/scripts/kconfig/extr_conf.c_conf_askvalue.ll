; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_conf.c_conf_askvalue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_conf.c_conf_askvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"(NEW) \00", align 1
@line = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@input_mode = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symbol*, i8*)* @conf_askvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_askvalue(%struct.symbol* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.symbol* %0, %struct.symbol** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.symbol*, %struct.symbol** %4, align 8
  %8 = call i32 @sym_get_type(%struct.symbol* %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.symbol*, %struct.symbol** %4, align 8
  %10 = call i64 @sym_has_value(%struct.symbol* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i8*, i8** @line, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 10, i8* %17, align 1
  %18 = load i8*, i8** @line, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 0, i8* %19, align 1
  %20 = load %struct.symbol*, %struct.symbol** %4, align 8
  %21 = call i32 @sym_is_changable(%struct.symbol* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %15
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = load i8*, i8** @line, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 10, i8* %27, align 1
  %28 = load i8*, i8** @line, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 0, i8* %29, align 1
  store i32 0, i32* %3, align 4
  br label %57

30:                                               ; preds = %15
  %31 = load i32, i32* @input_mode, align 4
  switch i32 %31, label %47 [
    i32 129, label %32
    i32 128, label %32
    i32 130, label %41
  ]

32:                                               ; preds = %30, %30
  %33 = load %struct.symbol*, %struct.symbol** %4, align 8
  %34 = call i64 @sym_has_value(%struct.symbol* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  store i32 0, i32* %3, align 4
  br label %57

39:                                               ; preds = %32
  %40 = call i32 (...) @check_stdin()
  br label %41

41:                                               ; preds = %30, %39
  %42 = load i32, i32* @stdout, align 4
  %43 = call i32 @fflush(i32 %42)
  %44 = load i8*, i8** @line, align 8
  %45 = load i32, i32* @stdin, align 4
  %46 = call i32 @fgets(i8* %44, i32 128, i32 %45)
  store i32 1, i32* %3, align 4
  br label %57

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  switch i32 %49, label %53 [
    i32 132, label %50
    i32 133, label %50
    i32 131, label %50
  ]

50:                                               ; preds = %48, %48, %48
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  store i32 1, i32* %3, align 4
  br label %57

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53
  %55 = load i8*, i8** @line, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %50, %41, %36, %23
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @sym_get_type(%struct.symbol*) #1

declare dso_local i64 @sym_has_value(%struct.symbol*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @sym_is_changable(%struct.symbol*) #1

declare dso_local i32 @check_stdin(...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @fgets(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
