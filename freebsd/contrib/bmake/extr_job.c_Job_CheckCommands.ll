; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_Job_CheckCommands.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_Job_CheckCommands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i8*, i32, i8*, i32, i32 }

@OP_LIB = common dso_local global i32 0, align 4
@DEFAULT = common dso_local global %struct.TYPE_10__* null, align 8
@OP_SPECIAL = common dso_local global i32 0, align 4
@IMPSRC = common dso_local global i32 0, align 4
@TARGET = common dso_local global i32 0, align 4
@Job_CheckCommands.msg = internal constant [25 x i8] c": don't know how to make\00", align 16
@FROM_DEPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c".STALE\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: %s, %d: ignoring stale %s for %s\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@makeDependfile = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@OP_OPTIONAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"%s%s %s (ignored)\0A\00", align 1
@keepgoing = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"%s%s %s (continuing)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"%s%s %s. Stop\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Job_CheckCommands(%struct.TYPE_9__* %0, void (i8*, ...)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca void (i8*, ...)*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store void (i8*, ...)* %1, void (i8*, ...)** %5, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @OP_NOP(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %138

12:                                               ; preds = %2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @Lst_IsEmpty(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %138

18:                                               ; preds = %12
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @OP_LIB, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @Lst_IsEmpty(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %138

31:                                               ; preds = %25, %18
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DEFAULT, align 8
  %33 = icmp ne %struct.TYPE_10__* %32, null
  br i1 %33, label %34, label %59

34:                                               ; preds = %31
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DEFAULT, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @Lst_IsEmpty(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @OP_SPECIAL, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %40
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DEFAULT, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = call i32 @Make_HandleUse(%struct.TYPE_10__* %48, %struct.TYPE_9__* %49)
  %51 = load i32, i32* @IMPSRC, align 4
  %52 = load i32, i32* @TARGET, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = call i32 @Var_Value(i32 %52, %struct.TYPE_9__* %53, i8** %6)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = call i32 @Var_Set(i32 %51, i32 %54, %struct.TYPE_9__* %55, i32 0)
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @free(i8* %57)
  br label %137

59:                                               ; preds = %40, %34, %31
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = call i64 @Dir_MTime(%struct.TYPE_9__* %60, i32 0)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %136

63:                                               ; preds = %59
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @OP_SPECIAL, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %136

70:                                               ; preds = %63
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @FROM_DEPEND, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %99

77:                                               ; preds = %70
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @Job_RunTarget(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* @stdout, align 4
  %85 = load i8*, i8** @progname, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** @makeDependfile, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 4
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %85, i8* %88, i32 %91, i8* %92, i8* %95)
  br label %97

97:                                               ; preds = %83, %77
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %3, align 4
  br label %140

99:                                               ; preds = %70
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @OP_OPTIONAL, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %99
  %107 = load i32, i32* @stdout, align 4
  %108 = load i8*, i8** @progname, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 4
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @Job_CheckCommands.msg, i64 0, i64 0), i8* %111)
  %113 = load i32, i32* @stdout, align 4
  %114 = call i32 @fflush(i32 %113)
  br label %135

115:                                              ; preds = %99
  %116 = load i64, i64* @keepgoing, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %115
  %119 = load i32, i32* @stdout, align 4
  %120 = load i8*, i8** @progname, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 4
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @Job_CheckCommands.msg, i64 0, i64 0), i8* %123)
  %125 = load i32, i32* @stdout, align 4
  %126 = call i32 @fflush(i32 %125)
  %127 = load i32, i32* @FALSE, align 4
  store i32 %127, i32* %3, align 4
  br label %140

128:                                              ; preds = %115
  %129 = load void (i8*, ...)*, void (i8*, ...)** %5, align 8
  %130 = load i8*, i8** @progname, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 4
  %133 = load i8*, i8** %132, align 8
  call void (i8*, ...) %129(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %130, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @Job_CheckCommands.msg, i64 0, i64 0), i8* %133)
  %134 = load i32, i32* @FALSE, align 4
  store i32 %134, i32* %3, align 4
  br label %140

135:                                              ; preds = %106
  br label %136

136:                                              ; preds = %135, %63, %59
  br label %137

137:                                              ; preds = %136, %47
  br label %138

138:                                              ; preds = %137, %25, %12, %2
  %139 = load i32, i32* @TRUE, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %138, %128, %118, %97
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i64 @OP_NOP(i32) #1

declare dso_local i64 @Lst_IsEmpty(i32) #1

declare dso_local i32 @Make_HandleUse(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32 @Var_Set(i32, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @Var_Value(i32, %struct.TYPE_9__*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @Dir_MTime(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @Job_RunTarget(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
