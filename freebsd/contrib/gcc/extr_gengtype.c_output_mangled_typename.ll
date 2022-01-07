; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_output_mangled_typename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_output_mangled_typename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__*, %struct.TYPE_9__** }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%lu%s\00", align 1
@NUM_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_9__*)* @output_mangled_typename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_mangled_typename(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %7 = icmp eq %struct.TYPE_9__* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = call i32 (i32, i8*, ...) @oprintf(i32 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %84

11:                                               ; preds = %2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %83 [
    i32 132, label %15
    i32 131, label %23
    i32 130, label %26
    i32 129, label %29
    i32 128, label %29
    i32 134, label %29
    i32 133, label %43
    i32 135, label %81
  ]

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = call i32 (i32, i8*, ...) @oprintf(i32 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  call void @output_mangled_typename(i32 %18, %struct.TYPE_9__* %22)
  br label %83

23:                                               ; preds = %11
  %24 = load i32, i32* %3, align 4
  %25 = call i32 (i32, i8*, ...) @oprintf(i32 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %83

26:                                               ; preds = %11
  %27 = load i32, i32* %3, align 4
  %28 = call i32 (i32, i8*, ...) @oprintf(i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %83

29:                                               ; preds = %11, %11, %11
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @strlen(i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i32, i8*, ...) @oprintf(i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %36, i32 %41)
  br label %83

43:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %71, %43
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @NUM_PARAM, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %44
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %53, i64 %55
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = icmp ne %struct.TYPE_9__* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %48
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %65, i64 %67
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  call void @output_mangled_typename(i32 %60, %struct.TYPE_9__* %69)
  br label %70

70:                                               ; preds = %59, %48
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %44

74:                                               ; preds = %44
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  call void @output_mangled_typename(i32 %75, %struct.TYPE_9__* %80)
  br label %83

81:                                               ; preds = %11
  %82 = call i32 (...) @gcc_unreachable()
  br label %83

83:                                               ; preds = %81, %11, %74, %29, %26, %23, %15
  br label %84

84:                                               ; preds = %83, %8
  ret void
}

declare dso_local i32 @oprintf(i32, i8*, ...) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
