; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-events.c_add_tracepoint_multi_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-events.c_add_tracepoint_multi_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.dirent = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@tracing_events_path = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Can't open event dir\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head**, i32*, i8*, i8*)* @add_tracepoint_multi_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_tracepoint_multi_event(%struct.list_head** %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.list_head**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dirent*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.list_head** %0, %struct.list_head*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i32, i32* @MAXPATHLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* @MAXPATHLEN, align 4
  %21 = load i8*, i8** @tracing_events_path, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @snprintf(i8* %19, i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22)
  %24 = call i32* @opendir(i8* %19)
  store i32* %24, i32** %13, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %4
  %28 = call i32 @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %82

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %72, %71, %63, %29
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i32*, i32** %13, align 8
  %35 = call %struct.dirent* @readdir(i32* %34)
  store %struct.dirent* %35, %struct.dirent** %12, align 8
  %36 = icmp ne %struct.dirent* %35, null
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi i1 [ false, %30 ], [ %36, %33 ]
  br i1 %38, label %39, label %80

39:                                               ; preds = %37
  %40 = load %struct.dirent*, %struct.dirent** %12, align 8
  %41 = getelementptr inbounds %struct.dirent, %struct.dirent* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @strcmp(i32 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %39
  %46 = load %struct.dirent*, %struct.dirent** %12, align 8
  %47 = getelementptr inbounds %struct.dirent, %struct.dirent* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strcmp(i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load %struct.dirent*, %struct.dirent** %12, align 8
  %53 = getelementptr inbounds %struct.dirent, %struct.dirent* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strcmp(i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.dirent*, %struct.dirent** %12, align 8
  %59 = getelementptr inbounds %struct.dirent, %struct.dirent* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @strcmp(i32 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57, %51, %45, %39
  br label %30

64:                                               ; preds = %57
  %65 = load %struct.dirent*, %struct.dirent** %12, align 8
  %66 = getelementptr inbounds %struct.dirent, %struct.dirent* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @strglobmatch(i32 %67, i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  br label %30

72:                                               ; preds = %64
  %73 = load %struct.list_head**, %struct.list_head*** %6, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load %struct.dirent*, %struct.dirent** %12, align 8
  %77 = getelementptr inbounds %struct.dirent, %struct.dirent* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @add_tracepoint(%struct.list_head** %73, i32* %74, i8* %75, i32 %78)
  store i32 %79, i32* %14, align 4
  br label %30

80:                                               ; preds = %37
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %82

82:                                               ; preds = %80, %27
  %83 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @strglobmatch(i32, i8*) #2

declare dso_local i32 @add_tracepoint(%struct.list_head**, i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
