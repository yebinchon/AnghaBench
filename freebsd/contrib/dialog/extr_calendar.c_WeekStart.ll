; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_calendar.c_WeekStart.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_calendar.c_WeekStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@dialog_vars = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@MAX_DAYS = common dso_local global i32 0, align 4
@_NL_TIME_FIRST_WEEKDAY = common dso_local global i32 0, align 4
@_NL_TIME_WEEK_1STDAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @WeekStart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WeekStart() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %7 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 8
  store i8* %7, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %69

10:                                               ; preds = %0
  %11 = load i8*, i8** %2, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %68

15:                                               ; preds = %10
  store i8* null, i8** %3, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = call i64 @strtol(i8* %16, i8** %3, i32 0)
  store i64 %17, i64* %4, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %3, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = icmp eq i8* %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %3, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %24, %20, %15
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 0, i32* %1, align 4
  br label %55

34:                                               ; preds = %29
  %35 = load i8*, i8** %2, align 8
  %36 = call i64 @strlen(i8* %35)
  store i64 %36, i64* %6, align 8
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %51, %34
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MAX_DAYS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @nameOfDayOfWeek(i32 %42)
  %44 = load i8*, i8** %2, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @strncmp(i32 %43, i8* %44, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %1, align 4
  br label %54

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %37

54:                                               ; preds = %48, %37
  br label %55

55:                                               ; preds = %54, %33
  br label %67

56:                                               ; preds = %24
  %57 = load i64, i64* %4, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 -1, i32* %1, align 4
  br label %66

60:                                               ; preds = %56
  %61 = load i64, i64* %4, align 8
  %62 = load i32, i32* @MAX_DAYS, align 4
  %63 = sext i32 %62 to i64
  %64 = srem i64 %61, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %1, align 4
  br label %66

66:                                               ; preds = %60, %59
  br label %67

67:                                               ; preds = %66, %55
  br label %68

68:                                               ; preds = %67, %10
  br label %69

69:                                               ; preds = %68, %0
  %70 = load i32, i32* %1, align 4
  ret i32 %70
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncmp(i32, i8*, i64) #1

declare dso_local i32 @nameOfDayOfWeek(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
