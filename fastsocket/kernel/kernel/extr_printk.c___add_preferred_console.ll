; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_printk.c___add_preferred_console.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_printk.c___add_preferred_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.console_cmdline = type { i32, i8*, i8*, i64* }

@MAX_CMDLINECONSOLES = common dso_local global i32 0, align 4
@console_cmdline = common dso_local global %struct.console_cmdline* null, align 8
@selected_console = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*)* @__add_preferred_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__add_preferred_console(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.console_cmdline*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %54, %4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @MAX_CMDLINECONSOLES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load %struct.console_cmdline*, %struct.console_cmdline** @console_cmdline, align 8
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %17, i64 %19
  %21 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %20, i32 0, i32 3
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %16, %12
  %27 = phi i1 [ false, %12 ], [ %25, %16 ]
  br i1 %27, label %28, label %57

28:                                               ; preds = %26
  %29 = load %struct.console_cmdline*, %struct.console_cmdline** @console_cmdline, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %29, i64 %31
  %33 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %32, i32 0, i32 3
  %34 = load i64*, i64** %33, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @strcmp(i64* %34, i8* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %28
  %39 = load %struct.console_cmdline*, %struct.console_cmdline** @console_cmdline, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %39, i64 %41
  %43 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* @selected_console, align 4
  br label %52

52:                                               ; preds = %50, %47
  store i32 0, i32* %5, align 4
  br label %85

53:                                               ; preds = %38, %28
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %12

57:                                               ; preds = %26
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @MAX_CMDLINECONSOLES, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @E2BIG, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %85

64:                                               ; preds = %57
  %65 = load i8*, i8** %9, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* @selected_console, align 4
  br label %69

69:                                               ; preds = %67, %64
  %70 = load %struct.console_cmdline*, %struct.console_cmdline** @console_cmdline, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %70, i64 %72
  store %struct.console_cmdline* %73, %struct.console_cmdline** %10, align 8
  %74 = load %struct.console_cmdline*, %struct.console_cmdline** %10, align 8
  %75 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %74, i32 0, i32 3
  %76 = load i64*, i64** %75, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @strlcpy(i64* %76, i8* %77, i32 8)
  %79 = load i8*, i8** %8, align 8
  %80 = load %struct.console_cmdline*, %struct.console_cmdline** %10, align 8
  %81 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.console_cmdline*, %struct.console_cmdline** %10, align 8
  %84 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %69, %61, %52
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i64 @strcmp(i64*, i8*) #1

declare dso_local i32 @strlcpy(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
