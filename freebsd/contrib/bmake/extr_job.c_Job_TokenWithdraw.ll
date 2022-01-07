; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_Job_TokenWithdraw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_Job_TokenWithdraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@wantToken = common dso_local global i64 0, align 8
@JOB = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Job_TokenWithdraw(%d): aborting %d, running %d\0A\00", align 1
@aborting = common dso_local global i32 0, align 4
@jobTokensRunning = common dso_local global i32 0, align 4
@maxJobs = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@tokenWaitJob = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"eof on job pipe!\00", align 1
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"job pipe read: %s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"(%d) blocked for token\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"(%d) aborted by token %c\0A\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"A failure has been detected in another branch of the parallel make\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"(%d) withdrew token\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Job_TokenWithdraw() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i64 0, i64* @wantToken, align 8
  %5 = load i32, i32* @JOB, align 4
  %6 = call i64 @DEBUG(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = load i32, i32* @debug_file, align 4
  %10 = call i32 (...) @getpid()
  %11 = load i32, i32* @aborting, align 4
  %12 = load i32, i32* @jobTokensRunning, align 4
  %13 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %8, %0
  %15 = load i32, i32* @aborting, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @jobTokensRunning, align 4
  %19 = load i32, i32* @maxJobs, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %14
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %1, align 4
  br label %122

23:                                               ; preds = %17
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tokenWaitJob, i32 0, i32 1), align 4
  %25 = call i32 @read(i32 %24, i8* %2, i32 1)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (i8*, ...) @Fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = load i32, i32* @jobTokensRunning, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @EAGAIN, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i64, i64* @errno, align 8
  %42 = call i32 @strerror(i64 %41)
  %43 = call i32 (i8*, ...) @Fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i32, i32* @JOB, align 4
  %46 = call i64 @DEBUG(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @debug_file, align 4
  %50 = call i32 (...) @getpid()
  %51 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %1, align 4
  br label %122

54:                                               ; preds = %33, %30
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %91

57:                                               ; preds = %54
  %58 = load i8, i8* %2, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 43
  br i1 %60, label %61, label %91

61:                                               ; preds = %57
  %62 = load i32, i32* @JOB, align 4
  %63 = call i64 @DEBUG(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* @debug_file, align 4
  %67 = call i32 (...) @getpid()
  %68 = load i8, i8* %2, align 1
  %69 = sext i8 %68 to i32
  %70 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %67, i32 %69)
  br label %71

71:                                               ; preds = %65, %61
  br label %72

72:                                               ; preds = %76, %71
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tokenWaitJob, i32 0, i32 1), align 4
  %74 = call i32 @read(i32 %73, i8* %3, i32 1)
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %72

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %88, %77
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tokenWaitJob, i32 0, i32 0), align 4
  %80 = call i32 @write(i32 %79, i8* %2, i32 1)
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i64, i64* @errno, align 8
  %84 = load i64, i64* @EAGAIN, align 8
  %85 = icmp eq i64 %83, %84
  br label %86

86:                                               ; preds = %82, %78
  %87 = phi i1 [ false, %78 ], [ %85, %82 ]
  br i1 %87, label %88, label %89

88:                                               ; preds = %86
  br label %78

89:                                               ; preds = %86
  %90 = call i32 (i8*, ...) @Fatal(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %57, %54
  %92 = load i32, i32* %4, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %110

94:                                               ; preds = %91
  %95 = load i32, i32* @jobTokensRunning, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %94
  br label %98

98:                                               ; preds = %108, %97
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tokenWaitJob, i32 0, i32 0), align 4
  %100 = call i32 @write(i32 %99, i8* %2, i32 1)
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i64, i64* @errno, align 8
  %104 = load i64, i64* @EAGAIN, align 8
  %105 = icmp eq i64 %103, %104
  br label %106

106:                                              ; preds = %102, %98
  %107 = phi i1 [ false, %98 ], [ %105, %102 ]
  br i1 %107, label %108, label %109

108:                                              ; preds = %106
  br label %98

109:                                              ; preds = %106
  br label %110

110:                                              ; preds = %109, %94, %91
  %111 = load i32, i32* @jobTokensRunning, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* @jobTokensRunning, align 4
  %113 = load i32, i32* @JOB, align 4
  %114 = call i64 @DEBUG(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load i32, i32* @debug_file, align 4
  %118 = call i32 (...) @getpid()
  %119 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %116, %110
  %121 = load i32, i32* @TRUE, align 4
  store i32 %121, i32* %1, align 4
  br label %122

122:                                              ; preds = %120, %52, %21
  %123 = load i32, i32* %1, align 4
  ret i32 %123
}

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @Fatal(i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
