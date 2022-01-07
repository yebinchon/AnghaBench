; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_JobOutput.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_JobOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64 }

@commandShell = common dso_local global %struct.TYPE_5__* null, align 8
@beSilent = common dso_local global i32 0, align 4
@lastNode = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_4__*, i8*, i8*, i32)* @JobOutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @JobOutput(%struct.TYPE_4__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @commandShell, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %99

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @commandShell, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i8* @Str_FindSubstring(i8* %16, i64 %19)
  store i8* %20, i8** %10, align 8
  br label %21

21:                                               ; preds = %97, %15
  %22 = load i8*, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %98

24:                                               ; preds = %21
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %25, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %24
  %29 = load i8*, i8** %10, align 8
  store i8 0, i8* %29, align 1
  %30 = load i32, i32* @beSilent, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @lastNode, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load i32, i32* @stdout, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @MESSAGE(i32 %42, i64 %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* @lastNode, align 8
  br label %50

50:                                               ; preds = %41, %35, %32, %28
  %51 = load i32, i32* @stdout, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* @stdout, align 4
  %55 = call i32 @fflush(i32 %54)
  br label %56

56:                                               ; preds = %50, %24
  %57 = load i8*, i8** %10, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @commandShell, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  store i8* %62, i8** %7, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = icmp ne i8* %63, %64
  br i1 %65, label %66, label %95

66:                                               ; preds = %56
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %7, align 8
  br label %69

69:                                               ; preds = %86, %66
  %70 = load i8*, i8** %7, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 32
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 9
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load i8*, i8** %7, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 10
  br label %84

84:                                               ; preds = %79, %74, %69
  %85 = phi i1 [ true, %74 ], [ true, %69 ], [ %83, %79 ]
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %7, align 8
  br label %69

89:                                               ; preds = %84
  %90 = load i8*, i8** %7, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** @commandShell, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i8* @Str_FindSubstring(i8* %90, i64 %93)
  store i8* %94, i8** %10, align 8
  br label %97

95:                                               ; preds = %56
  %96 = load i8*, i8** %7, align 8
  store i8* %96, i8** %5, align 8
  br label %101

97:                                               ; preds = %89
  br label %21

98:                                               ; preds = %21
  br label %99

99:                                               ; preds = %98, %4
  %100 = load i8*, i8** %7, align 8
  store i8* %100, i8** %5, align 8
  br label %101

101:                                              ; preds = %99, %95
  %102 = load i8*, i8** %5, align 8
  ret i8* %102
}

declare dso_local i8* @Str_FindSubstring(i8*, i64) #1

declare dso_local i32 @MESSAGE(i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
