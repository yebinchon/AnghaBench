; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_debug.c_trace_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_debug.c_trace_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PERF_COLOR_BLUE = common dso_local global i8* null, align 8
@dump_trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"\0A. ... raw event: size %d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"  %04x: \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_event(%union.perf_event* %0) #0 {
  %2 = alloca %union.perf_event*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %union.perf_event* %0, %union.perf_event** %2, align 8
  %7 = load %union.perf_event*, %union.perf_event** %2, align 8
  %8 = bitcast %union.perf_event* %7 to i8*
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** @PERF_COLOR_BLUE, align 8
  store i8* %9, i8** %4, align 8
  %10 = load i32, i32* @dump_trace, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %118

13:                                               ; preds = %1
  %14 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @stdout, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = load %union.perf_event*, %union.perf_event** %2, align 8
  %18 = bitcast %union.perf_event* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32, i8*, i8*, ...) @color_fprintf(i32 %15, i8* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %113, %13
  %23 = load i32, i32* %5, align 4
  %24 = load %union.perf_event*, %union.perf_event** %2, align 8
  %25 = bitcast %union.perf_event* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %116

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 15
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @stdout, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i32, i8*, i8*, ...) @color_fprintf(i32 %35, i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %33, %29
  %40 = load i32, i32* @stdout, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = call i32 (i32, i8*, i8*, ...) @color_fprintf(i32 %40, i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 15
  %51 = icmp eq i32 %50, 15
  br i1 %51, label %60, label %52

52:                                               ; preds = %39
  %53 = load i32, i32* %5, align 4
  %54 = load %union.perf_event*, %union.perf_event** %2, align 8
  %55 = bitcast %union.perf_event* %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 1
  %59 = icmp eq i32 %53, %58
  br i1 %59, label %60, label %112

60:                                               ; preds = %52, %39
  %61 = load i32, i32* @stdout, align 4
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 (i32, i8*, i8*, ...) @color_fprintf(i32 %61, i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %74, %60
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, 15
  %68 = sub nsw i32 15, %67
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load i32, i32* @stdout, align 4
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 (i32, i8*, i8*, ...) @color_fprintf(i32 %71, i8* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %64

77:                                               ; preds = %64
  %78 = load i32, i32* %5, align 4
  %79 = and i32 %78, -16
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %105, %77
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp sle i32 %81, %82
  br i1 %83, label %84, label %108

84:                                               ; preds = %80
  %85 = load i32, i32* @stdout, align 4
  %86 = load i8*, i8** %4, align 8
  %87 = load i8*, i8** %3, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = call i64 @isprint(i8 zeroext %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %84
  %95 = load i8*, i8** %3, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  br label %102

101:                                              ; preds = %84
  br label %102

102:                                              ; preds = %101, %94
  %103 = phi i32 [ %100, %94 ], [ 46, %101 ]
  %104 = call i32 (i32, i8*, i8*, ...) @color_fprintf(i32 %85, i8* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %80

108:                                              ; preds = %80
  %109 = load i32, i32* @stdout, align 4
  %110 = load i8*, i8** %4, align 8
  %111 = call i32 (i32, i8*, i8*, ...) @color_fprintf(i32 %109, i8* %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %112

112:                                              ; preds = %108, %52
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %22

116:                                              ; preds = %22
  %117 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %12
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @color_fprintf(i32, i8*, i8*, ...) #1

declare dso_local i64 @isprint(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
