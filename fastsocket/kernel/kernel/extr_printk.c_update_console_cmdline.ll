; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_printk.c_update_console_cmdline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_printk.c_update_console_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.console_cmdline = type { i32, i8*, i64* }

@MAX_CMDLINECONSOLES = common dso_local global i32 0, align 4
@console_cmdline = common dso_local global %struct.console_cmdline* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @update_console_cmdline(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.console_cmdline*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %71, %5
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* @MAX_CMDLINECONSOLES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load %struct.console_cmdline*, %struct.console_cmdline** @console_cmdline, align 8
  %20 = load i32, i32* %13, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %19, i64 %21
  %23 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %22, i32 0, i32 2
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %18, %14
  %29 = phi i1 [ false, %14 ], [ %27, %18 ]
  br i1 %29, label %30, label %74

30:                                               ; preds = %28
  %31 = load %struct.console_cmdline*, %struct.console_cmdline** @console_cmdline, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %31, i64 %33
  %35 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @strcmp(i64* %36, i8* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %70

40:                                               ; preds = %30
  %41 = load %struct.console_cmdline*, %struct.console_cmdline** @console_cmdline, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %41, i64 %43
  %45 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %40
  %50 = load %struct.console_cmdline*, %struct.console_cmdline** @console_cmdline, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %50, i64 %52
  store %struct.console_cmdline* %53, %struct.console_cmdline** %12, align 8
  %54 = load %struct.console_cmdline*, %struct.console_cmdline** %12, align 8
  %55 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @strlcpy(i64* %56, i8* %57, i32 8)
  %59 = load %struct.console_cmdline*, %struct.console_cmdline** %12, align 8
  %60 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %59, i32 0, i32 2
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 7
  store i64 0, i64* %62, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load %struct.console_cmdline*, %struct.console_cmdline** %12, align 8
  %65 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.console_cmdline*, %struct.console_cmdline** %12, align 8
  %68 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %6, align 4
  br label %75

70:                                               ; preds = %40, %30
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %13, align 4
  br label %14

74:                                               ; preds = %28
  store i32 -1, i32* %6, align 4
  br label %75

75:                                               ; preds = %74, %49
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i64 @strcmp(i64*, i8*) #1

declare dso_local i32 @strlcpy(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
