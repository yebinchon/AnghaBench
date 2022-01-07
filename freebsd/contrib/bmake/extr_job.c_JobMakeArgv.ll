; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_JobMakeArgv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_JobMakeArgv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i32 }

@JobMakeArgv.args = internal global [10 x i8] zeroinitializer, align 1
@shellName = common dso_local global i8* null, align 8
@commandShell = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"-%s%s\00", align 1
@JOB_IGNERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@JOB_SILENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8**)* @JobMakeArgv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @JobMakeArgv(%struct.TYPE_4__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load i8*, i8** @shellName, align 8
  %7 = call i8* @UNCONST(i8* %6)
  %8 = load i8**, i8*** %4, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  store i8* %7, i8** %9, align 8
  store i32 1, i32* %5, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @commandShell, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @commandShell, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 45
  br i1 %20, label %33, label %21

21:                                               ; preds = %14, %2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @commandShell, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %87

26:                                               ; preds = %21
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @commandShell, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 45
  br i1 %32, label %33, label %87

33:                                               ; preds = %26, %14
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @JOB_IGNERR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %53

41:                                               ; preds = %33
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @commandShell, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @commandShell, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  br label %51

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i8* [ %49, %46 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %50 ]
  br label %53

53:                                               ; preds = %51, %40
  %54 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %40 ], [ %52, %51 ]
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @JOB_SILENT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %74

62:                                               ; preds = %53
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @commandShell, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @commandShell, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  br label %72

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i8* [ %70, %67 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %71 ]
  br label %74

74:                                               ; preds = %72, %61
  %75 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %61 ], [ %73, %72 ]
  %76 = call i32 @snprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @JobMakeArgv.args, i64 0, i64 0), i32 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %54, i8* %75)
  %77 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @JobMakeArgv.args, i64 0, i64 1), align 1
  %78 = icmp ne i8 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i8**, i8*** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @JobMakeArgv.args, i64 0, i64 0), i8** %83, align 8
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %79, %74
  br label %134

87:                                               ; preds = %26, %21
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @JOB_IGNERR, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %110, label %94

94:                                               ; preds = %87
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** @commandShell, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %110

99:                                               ; preds = %94
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** @commandShell, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @UNCONST(i8* %102)
  %104 = load i8**, i8*** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  store i8* %103, i8** %107, align 8
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %99, %94, %87
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @JOB_SILENT, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %133, label %117

117:                                              ; preds = %110
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** @commandShell, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %133

122:                                              ; preds = %117
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** @commandShell, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i8* @UNCONST(i8* %125)
  %127 = load i8**, i8*** %4, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  store i8* %126, i8** %130, align 8
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %122, %117, %110
  br label %134

134:                                              ; preds = %133, %86
  %135 = load i8**, i8*** %4, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  store i8* null, i8** %138, align 8
  ret void
}

declare dso_local i8* @UNCONST(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
