; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_waitcmdloop.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_waitcmdloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.job = type { i64, i64, i64, i32 }

@JOBDONE = common dso_local global i64 0, align 8
@iflag = common dso_local global i32 0, align 4
@bgjob = common dso_local global %struct.job* null, align 8
@jobtab = common dso_local global %struct.job* null, align 8
@njobs = common dso_local global i32 0, align 4
@DOWAIT_BLOCK = common dso_local global i32 0, align 4
@DOWAIT_SIG = common dso_local global i32 0, align 4
@pendingsig_waitcmd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.job*)* @waitcmdloop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waitcmdloop(%struct.job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.job*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.job*, align 8
  store %struct.job* %0, %struct.job** %3, align 8
  br label %8

8:                                                ; preds = %123, %1
  %9 = load %struct.job*, %struct.job** %3, align 8
  %10 = icmp ne %struct.job* %9, null
  br i1 %10, label %11, label %52

11:                                               ; preds = %8
  %12 = load %struct.job*, %struct.job** %3, align 8
  %13 = getelementptr inbounds %struct.job, %struct.job* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @JOBDONE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %11
  %18 = load %struct.job*, %struct.job** %3, align 8
  %19 = call i32 @getjobstatus(%struct.job* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @WIFEXITED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @WEXITSTATUS(i32 %24)
  store i32 %25, i32* %5, align 4
  br label %30

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @WTERMSIG(i32 %27)
  %29 = add nsw i32 %28, 128
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* @iflag, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.job*, %struct.job** %3, align 8
  %35 = getelementptr inbounds %struct.job, %struct.job* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33, %30
  %39 = load %struct.job*, %struct.job** %3, align 8
  %40 = call i32 @freejob(%struct.job* %39)
  br label %49

41:                                               ; preds = %33
  %42 = load %struct.job*, %struct.job** %3, align 8
  %43 = getelementptr inbounds %struct.job, %struct.job* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.job*, %struct.job** %3, align 8
  %45 = load %struct.job*, %struct.job** @bgjob, align 8
  %46 = icmp eq %struct.job* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store %struct.job* null, %struct.job** @bgjob, align 8
  br label %48

48:                                               ; preds = %47, %41
  br label %49

49:                                               ; preds = %48, %38
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %133

51:                                               ; preds = %11
  br label %122

52:                                               ; preds = %8
  %53 = load %struct.job*, %struct.job** @jobtab, align 8
  store %struct.job* %53, %struct.job** %7, align 8
  br label %54

54:                                               ; preds = %93, %52
  %55 = load %struct.job*, %struct.job** %7, align 8
  %56 = load %struct.job*, %struct.job** @jobtab, align 8
  %57 = load i32, i32* @njobs, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.job, %struct.job* %56, i64 %58
  %60 = icmp ult %struct.job* %55, %59
  br i1 %60, label %61, label %96

61:                                               ; preds = %54
  %62 = load %struct.job*, %struct.job** %7, align 8
  %63 = getelementptr inbounds %struct.job, %struct.job* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %92

66:                                               ; preds = %61
  %67 = load %struct.job*, %struct.job** %7, align 8
  %68 = getelementptr inbounds %struct.job, %struct.job* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @JOBDONE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %66
  %73 = load i32, i32* @iflag, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.job*, %struct.job** %7, align 8
  %77 = getelementptr inbounds %struct.job, %struct.job* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75, %72
  %81 = load %struct.job*, %struct.job** %7, align 8
  %82 = call i32 @freejob(%struct.job* %81)
  br label %91

83:                                               ; preds = %75
  %84 = load %struct.job*, %struct.job** %7, align 8
  %85 = getelementptr inbounds %struct.job, %struct.job* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  %86 = load %struct.job*, %struct.job** %7, align 8
  %87 = load %struct.job*, %struct.job** @bgjob, align 8
  %88 = icmp eq %struct.job* %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store %struct.job* null, %struct.job** @bgjob, align 8
  br label %90

90:                                               ; preds = %89, %83
  br label %91

91:                                               ; preds = %90, %80
  br label %92

92:                                               ; preds = %91, %66, %61
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.job*, %struct.job** %7, align 8
  %95 = getelementptr inbounds %struct.job, %struct.job* %94, i32 1
  store %struct.job* %95, %struct.job** %7, align 8
  br label %54

96:                                               ; preds = %54
  %97 = load %struct.job*, %struct.job** @jobtab, align 8
  store %struct.job* %97, %struct.job** %7, align 8
  br label %98

98:                                               ; preds = %118, %96
  %99 = load %struct.job*, %struct.job** %7, align 8
  %100 = load %struct.job*, %struct.job** @jobtab, align 8
  %101 = load i32, i32* @njobs, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.job, %struct.job* %100, i64 %102
  %104 = icmp uge %struct.job* %99, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %133

106:                                              ; preds = %98
  %107 = load %struct.job*, %struct.job** %7, align 8
  %108 = getelementptr inbounds %struct.job, %struct.job* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load %struct.job*, %struct.job** %7, align 8
  %113 = getelementptr inbounds %struct.job, %struct.job* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %121

117:                                              ; preds = %111, %106
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.job*, %struct.job** %7, align 8
  %120 = getelementptr inbounds %struct.job, %struct.job* %119, i32 1
  store %struct.job* %120, %struct.job** %7, align 8
  br label %98

121:                                              ; preds = %116
  br label %122

122:                                              ; preds = %121, %51
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* @DOWAIT_BLOCK, align 4
  %125 = load i32, i32* @DOWAIT_SIG, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @dowait(i32 %126, %struct.job* null)
  %128 = icmp ne i32 %127, -1
  br i1 %128, label %8, label %129

129:                                              ; preds = %123
  %130 = load i32, i32* @pendingsig_waitcmd, align 4
  store i32 %130, i32* %6, align 4
  store i32 0, i32* @pendingsig_waitcmd, align 4
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 128
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %129, %105, %49
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @getjobstatus(%struct.job*) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @freejob(%struct.job*) #1

declare dso_local i32 @dowait(i32, %struct.job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
