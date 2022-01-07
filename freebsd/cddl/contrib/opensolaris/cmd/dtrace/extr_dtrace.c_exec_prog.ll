; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/extr_dtrace.c_exec_prog.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/extr_dtrace.c_exec_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@g_exec = common dso_local global i32 0, align 4
@g_dtp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to enable '%s'\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s '%s' matched %u probe%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@g_verbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"\0AStability attributes for %s %s:\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"\0A\09Minimum Probe Description Attributes\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"\09\09Identifier Names: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"\09\09Data Semantics:   %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"\09\09Dependency Class: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"\0A\09Minimum Statement Attributes\0A\00", align 1
@info_stmt = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@g_total = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @exec_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exec_prog(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store i32* null, i32** %3, align 8
  %5 = load i32, i32* @g_exec, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @g_dtp, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dtrace_program_info(i32 %8, i32 %11, %struct.TYPE_10__* %4)
  br label %41

13:                                               ; preds = %1
  %14 = load i32, i32* @g_dtp, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dtrace_program_exec(i32 %14, i32 %17, %struct.TYPE_10__* %4)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dfatal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %40

25:                                               ; preds = %13
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %39 = call i32 @notice(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %31, i32 %33, i8* %38)
  br label %40

40:                                               ; preds = %25, %20
  br label %41

41:                                               ; preds = %40, %7
  %42 = load i64, i64* @g_verbose, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %97

44:                                               ; preds = %41
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @oprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %47, i32 %50)
  %52 = call i32 (i8*, ...) @oprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dtrace_stability_name(i32 %55)
  %57 = call i32 (i8*, ...) @oprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dtrace_stability_name(i32 %60)
  %62 = call i32 (i8*, ...) @oprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dtrace_class_name(i32 %65)
  %67 = call i32 (i8*, ...) @oprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %66)
  %68 = call i32 (i8*, ...) @oprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dtrace_stability_name(i32 %71)
  %73 = call i32 (i8*, ...) @oprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dtrace_stability_name(i32 %76)
  %78 = call i32 (i8*, ...) @oprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dtrace_class_name(i32 %81)
  %83 = call i32 (i8*, ...) @oprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @g_exec, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %44
  %87 = load i32, i32* @g_dtp, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* @info_stmt, align 8
  %92 = inttoptr i64 %91 to i32*
  %93 = call i32 @dtrace_stmt_iter(i32 %87, i32 %90, i32* %92, i32** %3)
  br label %96

94:                                               ; preds = %44
  %95 = call i32 (i8*, ...) @oprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %86
  br label %97

97:                                               ; preds = %96, %41
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @g_total, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* @g_total, align 4
  ret void
}

declare dso_local i32 @dtrace_program_info(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @dtrace_program_exec(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @dfatal(i8*, i32) #1

declare dso_local i32 @notice(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @oprintf(i8*, ...) #1

declare dso_local i32 @dtrace_stability_name(i32) #1

declare dso_local i32 @dtrace_class_name(i32) #1

declare dso_local i32 @dtrace_stmt_iter(i32, i32, i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
