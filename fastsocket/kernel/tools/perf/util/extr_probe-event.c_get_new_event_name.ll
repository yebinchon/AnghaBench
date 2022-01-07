; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_get_new_event_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_get_new_event_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strlist = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"snprintf() failed: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Error: event \22%s\22 already exists. (Use -f to force duplicates.)\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@MAX_EVENT_INDEX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%s_%d\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Too many events are on the same function.\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, %struct.strlist*, i32)* @get_new_event_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_new_event_name(i8* %0, i64 %1, i8* %2, %struct.strlist* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.strlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.strlist* %3, %struct.strlist** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 (i8*, i64, i8*, i8*, ...) @e_snprintf(i8* %14, i64 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load i32, i32* %13, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i32 @strerror(i32 %22)
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %6, align 4
  br label %79

26:                                               ; preds = %5
  %27 = load %struct.strlist*, %struct.strlist** %10, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @strlist__has_entry(%struct.strlist* %27, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %79

32:                                               ; preds = %26
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @EEXIST, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %79

40:                                               ; preds = %32
  store i32 1, i32* %12, align 4
  br label %41

41:                                               ; preds = %66, %40
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @MAX_EVENT_INDEX, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 (i8*, i64, i8*, i8*, ...) @e_snprintf(i8* %46, i64 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load i32, i32* %13, align 4
  %55 = sub nsw i32 0, %54
  %56 = call i32 @strerror(i32 %55)
  %57 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %6, align 4
  br label %79

59:                                               ; preds = %45
  %60 = load %struct.strlist*, %struct.strlist** %10, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @strlist__has_entry(%struct.strlist* %60, i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %69

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %41

69:                                               ; preds = %64, %41
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @MAX_EVENT_INDEX, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32, i32* @ERANGE, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %77, %53, %35, %31, %20
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @e_snprintf(i8*, i64, i8*, i8*, ...) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @strlist__has_entry(%struct.strlist*, i8*) #1

declare dso_local i32 @pr_warning(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
