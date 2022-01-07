; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloop.c_flow_loop_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloop.c_flow_loop_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c";;\0A;; Loop %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c";;  header %d, latch %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c";;  depth %d, level %d, outer %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c";;  nodes:\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flow_loop_dump(%struct.loop* %0, i32* %1, void (%struct.loop*, i32*, i32)* %2, i32 %3) #0 {
  %5 = alloca %struct.loop*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca void (%struct.loop*, i32*, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__**, align 8
  %10 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %5, align 8
  store i32* %1, i32** %6, align 8
  store void (%struct.loop*, i32*, i32)* %2, void (%struct.loop*, i32*, i32)** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.loop*, %struct.loop** %5, align 8
  %12 = icmp ne %struct.loop* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load %struct.loop*, %struct.loop** %5, align 8
  %15 = getelementptr inbounds %struct.loop, %struct.loop* %14, i32 0, i32 6
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %4
  br label %94

19:                                               ; preds = %13
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.loop*, %struct.loop** %5, align 8
  %22 = getelementptr inbounds %struct.loop, %struct.loop* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.loop*, %struct.loop** %5, align 8
  %27 = getelementptr inbounds %struct.loop, %struct.loop* %26, i32 0, i32 6
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.loop*, %struct.loop** %5, align 8
  %32 = getelementptr inbounds %struct.loop, %struct.loop* %31, i32 0, i32 5
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %35)
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.loop*, %struct.loop** %5, align 8
  %39 = getelementptr inbounds %struct.loop, %struct.loop* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.loop*, %struct.loop** %5, align 8
  %42 = getelementptr inbounds %struct.loop, %struct.loop* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.loop*, %struct.loop** %5, align 8
  %45 = getelementptr inbounds %struct.loop, %struct.loop* %44, i32 0, i32 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = icmp ne %struct.TYPE_9__* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %19
  %49 = load %struct.loop*, %struct.loop** %5, align 8
  %50 = getelementptr inbounds %struct.loop, %struct.loop* %49, i32 0, i32 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  br label %55

54:                                               ; preds = %19
  br label %55

55:                                               ; preds = %54, %48
  %56 = phi i32 [ %53, %48 ], [ -1, %54 ]
  %57 = sext i32 %56 to i64
  %58 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %43, i64 %57)
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 (i32*, i8*, ...) @fprintf(i32* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %61 = load %struct.loop*, %struct.loop** %5, align 8
  %62 = call %struct.TYPE_10__** @get_loop_body(%struct.loop* %61)
  store %struct.TYPE_10__** %62, %struct.TYPE_10__*** %9, align 8
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %79, %55
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.loop*, %struct.loop** %5, align 8
  %66 = getelementptr inbounds %struct.loop, %struct.loop* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp ult i32 %64, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %71, i64 %73
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32*, i8*, ...) @fprintf(i32* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %69
  %80 = load i32, i32* %10, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %63

82:                                               ; preds = %63
  %83 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %84 = call i32 @free(%struct.TYPE_10__** %83)
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 (i32*, i8*, ...) @fprintf(i32* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %87 = load void (%struct.loop*, i32*, i32)*, void (%struct.loop*, i32*, i32)** %7, align 8
  %88 = icmp ne void (%struct.loop*, i32*, i32)* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load void (%struct.loop*, i32*, i32)*, void (%struct.loop*, i32*, i32)** %7, align 8
  %91 = load %struct.loop*, %struct.loop** %5, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %8, align 4
  call void %90(%struct.loop* %91, i32* %92, i32 %93)
  br label %94

94:                                               ; preds = %18, %89, %82
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_10__** @get_loop_body(%struct.loop*) #1

declare dso_local i32 @free(%struct.TYPE_10__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
