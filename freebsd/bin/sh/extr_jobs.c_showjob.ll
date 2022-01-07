; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_showjob.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_showjob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.job = type { i32, i64, %struct.procstat* }
%struct.procstat = type { i8*, i64, i32 }

@SHOWJOBS_PGIDS = common dso_local global i32 0, align 4
@jobtab = common dso_local global %struct.job* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Running\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Done\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Done(%d)\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Unknown signal\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" (core dumped)\00", align 1
@SHOWJOBS_PIDS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@SHOWJOBS_VERBOSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"[%d] %c \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"    %c \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@JOBSTOPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.job*, i32)* @showjob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showjob(%struct.job* %0, i32 %1) #0 {
  %3 = alloca %struct.job*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  %6 = alloca [16 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.procstat*, align 8
  %10 = alloca %struct.job*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  store %struct.job* %0, %struct.job** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @SHOWJOBS_PGIDS, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.job*, %struct.job** %3, align 8
  %25 = getelementptr inbounds %struct.job, %struct.job* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  br label %27

27:                                               ; preds = %23, %22
  %28 = phi i32 [ 1, %22 ], [ %26, %23 ]
  store i32 %28, i32* %16, align 4
  %29 = load %struct.job*, %struct.job** %3, align 8
  %30 = load %struct.job*, %struct.job** @jobtab, align 8
  %31 = ptrtoint %struct.job* %29 to i64
  %32 = ptrtoint %struct.job* %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 24
  %35 = add nsw i64 %34, 1
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %37 = load %struct.job*, %struct.job** %3, align 8
  %38 = call i32 @getjobstatus(%struct.job* %37)
  store i32 %38, i32* %17, align 4
  %39 = load %struct.job*, %struct.job** %3, align 8
  %40 = getelementptr inbounds %struct.job, %struct.job* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %75

44:                                               ; preds = %27
  %45 = load i32, i32* %17, align 4
  %46 = call i64 @WIFEXITED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i32, i32* %17, align 4
  %50 = call i32 @WEXITSTATUS(i32 %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %59

53:                                               ; preds = %48
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %55 = load i32, i32* %17, align 4
  %56 = call i32 @WEXITSTATUS(i32 %55)
  %57 = call i32 (i8*, i32, i8*, i32, ...) @fmtstr(i8* %54, i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  store i8* %58, i8** %7, align 8
  br label %59

59:                                               ; preds = %53, %52
  br label %74

60:                                               ; preds = %44
  %61 = load i32, i32* %17, align 4
  %62 = call i32 @WTERMSIG(i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i8* @strsignal(i32 %63)
  store i8* %64, i8** %7, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %68

68:                                               ; preds = %67, %60
  %69 = load i32, i32* %17, align 4
  %70 = call i64 @WCOREDUMP(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %73

73:                                               ; preds = %72, %68
  br label %74

74:                                               ; preds = %73, %59
  br label %75

75:                                               ; preds = %74, %43
  %76 = load %struct.job*, %struct.job** %3, align 8
  %77 = getelementptr inbounds %struct.job, %struct.job* %76, i32 0, i32 2
  %78 = load %struct.procstat*, %struct.procstat** %77, align 8
  store %struct.procstat* %78, %struct.procstat** %9, align 8
  br label %79

79:                                               ; preds = %209, %75
  %80 = load i32, i32* %16, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %214

82:                                               ; preds = %79
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @SHOWJOBS_PIDS, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @SHOWJOBS_PGIDS, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86, %82
  %91 = load %struct.procstat*, %struct.procstat** %9, align 8
  %92 = getelementptr inbounds %struct.procstat, %struct.procstat* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @out1fmt(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %94)
  br label %209

96:                                               ; preds = %86
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @SHOWJOBS_VERBOSE, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load %struct.procstat*, %struct.procstat** %9, align 8
  %102 = load %struct.job*, %struct.job** %3, align 8
  %103 = getelementptr inbounds %struct.job, %struct.job* %102, i32 0, i32 2
  %104 = load %struct.procstat*, %struct.procstat** %103, align 8
  %105 = icmp ne %struct.procstat* %101, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %209

107:                                              ; preds = %100, %96
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = load %struct.procstat*, %struct.procstat** %9, align 8
  %113 = load %struct.job*, %struct.job** %3, align 8
  %114 = getelementptr inbounds %struct.job, %struct.job* %113, i32 0, i32 2
  %115 = load %struct.procstat*, %struct.procstat** %114, align 8
  %116 = icmp eq %struct.procstat* %112, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  store i8 43, i8* %18, align 1
  br label %131

118:                                              ; preds = %111, %107
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %15, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %118
  %123 = load %struct.procstat*, %struct.procstat** %9, align 8
  %124 = load %struct.job*, %struct.job** %3, align 8
  %125 = getelementptr inbounds %struct.job, %struct.job* %124, i32 0, i32 2
  %126 = load %struct.procstat*, %struct.procstat** %125, align 8
  %127 = icmp eq %struct.procstat* %123, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  store i8 45, i8* %18, align 1
  br label %130

129:                                              ; preds = %122, %118
  store i8 32, i8* %18, align 1
  br label %130

130:                                              ; preds = %129, %128
  br label %131

131:                                              ; preds = %130, %117
  %132 = load %struct.procstat*, %struct.procstat** %9, align 8
  %133 = load %struct.job*, %struct.job** %3, align 8
  %134 = getelementptr inbounds %struct.job, %struct.job* %133, i32 0, i32 2
  %135 = load %struct.procstat*, %struct.procstat** %134, align 8
  %136 = icmp eq %struct.procstat* %132, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %139 = load i32, i32* %14, align 4
  %140 = load i8, i8* %18, align 1
  %141 = sext i8 %140 to i32
  %142 = call i32 (i8*, i32, i8*, i32, ...) @fmtstr(i8* %138, i32 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %139, i32 %141)
  br label %148

143:                                              ; preds = %131
  %144 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %145 = load i8, i8* %18, align 1
  %146 = sext i8 %145 to i32
  %147 = call i32 (i8*, i32, i8*, i32, ...) @fmtstr(i8* %144, i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %143, %137
  %149 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %150 = call i32 @out1str(i8* %149)
  %151 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %152 = call i32 @strlen(i8* %151)
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* @SHOWJOBS_VERBOSE, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %148
  %157 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %158 = load %struct.procstat*, %struct.procstat** %9, align 8
  %159 = getelementptr inbounds %struct.procstat, %struct.procstat* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = trunc i64 %160 to i32
  %162 = call i32 (i8*, i32, i8*, i32, ...) @fmtstr(i8* %157, i32 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %161)
  %163 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %164 = call i32 @out1str(i8* %163)
  %165 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %166 = call i32 @strlen(i8* %165)
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %11, align 4
  br label %169

169:                                              ; preds = %156, %148
  %170 = load %struct.procstat*, %struct.procstat** %9, align 8
  %171 = load %struct.job*, %struct.job** %3, align 8
  %172 = getelementptr inbounds %struct.job, %struct.job* %171, i32 0, i32 2
  %173 = load %struct.procstat*, %struct.procstat** %172, align 8
  %174 = icmp eq %struct.procstat* %170, %173
  br i1 %174, label %175, label %187

175:                                              ; preds = %169
  %176 = load i8*, i8** %7, align 8
  %177 = call i32 @out1str(i8* %176)
  %178 = load i8*, i8** %8, align 8
  %179 = call i32 @out1str(i8* %178)
  %180 = load i8*, i8** %7, align 8
  %181 = call i32 @strlen(i8* %180)
  %182 = load i8*, i8** %8, align 8
  %183 = call i32 @strlen(i8* %182)
  %184 = add nsw i32 %181, %183
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %11, align 4
  br label %187

187:                                              ; preds = %175, %169
  br label %188

188:                                              ; preds = %192, %187
  %189 = call i32 @out1c(i8 signext 32)
  %190 = load i32, i32* %11, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %11, align 4
  br label %192

192:                                              ; preds = %188
  %193 = load i32, i32* %11, align 4
  %194 = icmp slt i32 %193, 30
  br i1 %194, label %188, label %195

195:                                              ; preds = %192
  %196 = load i32, i32* %4, align 4
  %197 = load i32, i32* @SHOWJOBS_VERBOSE, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %195
  %200 = load %struct.procstat*, %struct.procstat** %9, align 8
  %201 = getelementptr inbounds %struct.procstat, %struct.procstat* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @out1str(i8* %202)
  %204 = call i32 @out1c(i8 signext 10)
  br label %208

205:                                              ; preds = %195
  %206 = load %struct.job*, %struct.job** %3, align 8
  %207 = call i32 @printjobcmd(%struct.job* %206)
  br label %208

208:                                              ; preds = %205, %199
  br label %209

209:                                              ; preds = %208, %106, %90
  %210 = load %struct.procstat*, %struct.procstat** %9, align 8
  %211 = getelementptr inbounds %struct.procstat, %struct.procstat* %210, i32 1
  store %struct.procstat* %211, %struct.procstat** %9, align 8
  %212 = load i32, i32* %16, align 4
  %213 = add nsw i32 %212, -1
  store i32 %213, i32* %16, align 4
  br label %79

214:                                              ; preds = %79
  ret void
}

declare dso_local i32 @getjobstatus(%struct.job*) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @fmtstr(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i8* @strsignal(i32) #1

declare dso_local i64 @WCOREDUMP(i32) #1

declare dso_local i32 @out1fmt(i8*, i32) #1

declare dso_local i32 @out1str(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @out1c(i8 signext) #1

declare dso_local i32 @printjobcmd(%struct.job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
