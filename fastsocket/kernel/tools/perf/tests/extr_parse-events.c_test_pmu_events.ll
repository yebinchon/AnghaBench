; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_parse-events.c_test_pmu_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_parse-events.c_test_pmu_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.dirent = type { i8* }
%struct.test__event_st = type { i8*, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s/bus/event_source/devices/cpu/events/\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"ommiting PMU cpu events tests\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"can't open pmu event dir\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"cpu/event=%s/u\00", align 1
@test__checkevent_pmu_events = common dso_local global i32 0, align 4
@MAX_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_pmu_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_pmu_events() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.stat, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.test__event_st, align 8
  %10 = alloca [100 x i8], align 16
  %11 = load i32, i32* @PATH_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %15 = load i32, i32* @PATH_MAX, align 4
  %16 = call i8* (...) @sysfs_find_mountpoint()
  %17 = call i32 @snprintf(i8* %14, i32 %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = call i32 @stat(i8* %14, %struct.stat* %2)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %0
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %67

23:                                               ; preds = %0
  %24 = call i32* @opendir(i8* %14)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %67

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %52, %51, %29
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i32*, i32** %6, align 8
  %35 = call %struct.dirent* @readdir(i32* %34)
  store %struct.dirent* %35, %struct.dirent** %5, align 8
  %36 = icmp ne %struct.dirent* %35, null
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi i1 [ false, %30 ], [ %36, %33 ]
  br i1 %38, label %39, label %63

39:                                               ; preds = %37
  %40 = load %struct.dirent*, %struct.dirent** %5, align 8
  %41 = getelementptr inbounds %struct.dirent, %struct.dirent* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.dirent*, %struct.dirent** %5, align 8
  %47 = getelementptr inbounds %struct.dirent, %struct.dirent* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45, %39
  br label %30

52:                                               ; preds = %45
  %53 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %54 = load %struct.dirent*, %struct.dirent** %5, align 8
  %55 = getelementptr inbounds %struct.dirent, %struct.dirent* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @snprintf(i8* %53, i32 100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %56)
  %58 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %59 = getelementptr inbounds %struct.test__event_st, %struct.test__event_st* %9, i32 0, i32 0
  store i8* %58, i8** %59, align 8
  %60 = load i32, i32* @test__checkevent_pmu_events, align 4
  %61 = getelementptr inbounds %struct.test__event_st, %struct.test__event_st* %9, i32 0, i32 1
  store i32 %60, i32* %61, align 8
  %62 = call i32 @test_event(%struct.test__event_st* %9)
  store i32 %62, i32* %7, align 4
  br label %30

63:                                               ; preds = %37
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @closedir(i32* %64)
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %67

67:                                               ; preds = %63, %27, %21
  %68 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @sysfs_find_mountpoint(...) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @pr_debug(i8*) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @test_event(%struct.test__event_st*) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
