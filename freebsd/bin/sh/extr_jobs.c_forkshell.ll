; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_forkshell.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_forkshell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.job = type { i64, i64, i32, %struct.procstat*, i32, i64 }
%struct.procstat = type { i32, i32, i32 }
%union.node = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"forkshell(%%%td, %p, %d) called\0A\00", align 1
@jobtab = common dso_local global %struct.job* null, align 8
@INTOFF = common dso_local global i32 0, align 4
@FORK_BG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Fork failed, errno=%d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Cannot fork: %s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Child shell %d\0A\00", align 1
@rootshell = common dso_local global i32 0, align 4
@main_handler = common dso_local global i32 0, align 4
@handler = common dso_local global i32* null, align 8
@forcelocal = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@_PATH_DEVNULL = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"cannot open %s: %s\00", align 1
@njobs = common dso_local global i32 0, align 4
@iflag = common dso_local global i64 0, align 8
@SIGTERM = common dso_local global i32 0, align 4
@FORK_NOJOB = common dso_local global i32 0, align 4
@mflag = common dso_local global i64 0, align 8
@bgjob = common dso_local global %struct.job* null, align 8
@JOBDONE = common dso_local global i64 0, align 8
@backgndpid = common dso_local global i32 0, align 4
@nullstr = common dso_local global i32 0, align 4
@FORK_FG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"In parent shell:  child = %d\0A\00", align 1
@SIGTSTP = common dso_local global i32 0, align 4
@SIGTTOU = common dso_local global i32 0, align 4
@jobctl = common dso_local global i64 0, align 8
@ttyfd = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @forkshell(%struct.job* %0, %union.node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.job*, align 8
  %6 = alloca %union.node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.job*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.procstat*, align 8
  store %struct.job* %0, %struct.job** %5, align 8
  store %union.node* %1, %union.node** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.job*, %struct.job** %5, align 8
  %15 = load %struct.job*, %struct.job** @jobtab, align 8
  %16 = ptrtoint %struct.job* %14 to i64
  %17 = ptrtoint %struct.job* %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 48
  %20 = load %union.node*, %union.node** %6, align 8
  %21 = bitcast %union.node* %20 to i8*
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @TRACE(i8* %24)
  %26 = load i32, i32* @INTOFF, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @FORK_BG, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %3
  %31 = load %struct.job*, %struct.job** %5, align 8
  %32 = icmp eq %struct.job* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.job*, %struct.job** %5, align 8
  %35 = getelementptr inbounds %struct.job, %struct.job* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33, %30
  %39 = call i32 (...) @checkzombies()
  br label %40

40:                                               ; preds = %38, %33, %3
  %41 = call i32 (...) @flushall()
  %42 = call i32 (...) @fork()
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load i32, i32* @errno, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @TRACE(i8* %48)
  %50 = load i32, i32* @INTON, align 4
  %51 = load i32, i32* @errno, align 4
  %52 = call i8* @strerror(i32 %51)
  %53 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %45, %40
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %135

57:                                               ; preds = %54
  %58 = call i32 (...) @getpid()
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @TRACE(i8* %60)
  %62 = load i32, i32* @rootshell, align 4
  store i32 %62, i32* %11, align 4
  store i32 0, i32* @rootshell, align 4
  store i32* @main_handler, i32** @handler, align 8
  %63 = call i32 (...) @closescript()
  %64 = load i32, i32* @INTON, align 4
  store i64 0, i64* @forcelocal, align 8
  %65 = call i32 (...) @clear_traps()
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @FORK_BG, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %99

69:                                               ; preds = %57
  %70 = load i32, i32* @SIGINT, align 4
  %71 = call i32 @ignoresig(i32 %70)
  %72 = load i32, i32* @SIGQUIT, align 4
  %73 = call i32 @ignoresig(i32 %72)
  %74 = load %struct.job*, %struct.job** %5, align 8
  %75 = icmp eq %struct.job* %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %69
  %77 = load %struct.job*, %struct.job** %5, align 8
  %78 = getelementptr inbounds %struct.job, %struct.job* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %76, %69
  %82 = call i32 (...) @fd0_redirected_p()
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %81
  %85 = call i32 @close(i32 0)
  %86 = load i32, i32* @_PATH_DEVNULL, align 4
  %87 = load i32, i32* @O_RDONLY, align 4
  %88 = call i64 @open(i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load i32, i32* @_PATH_DEVNULL, align 4
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = load i32, i32* @errno, align 4
  %95 = call i8* @strerror(i32 %94)
  %96 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %93, i8* %95)
  br label %97

97:                                               ; preds = %90, %84
  br label %98

98:                                               ; preds = %97, %81, %76
  br label %99

99:                                               ; preds = %98, %57
  %100 = load i32, i32* @INTOFF, align 4
  %101 = load i32, i32* @njobs, align 4
  store i32 %101, i32* %12, align 4
  %102 = load %struct.job*, %struct.job** @jobtab, align 8
  store %struct.job* %102, %struct.job** %10, align 8
  br label %103

103:                                              ; preds = %116, %99
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %12, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = load %struct.job*, %struct.job** %10, align 8
  %109 = getelementptr inbounds %struct.job, %struct.job* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.job*, %struct.job** %10, align 8
  %114 = call i32 @freejob(%struct.job* %113)
  br label %115

115:                                              ; preds = %112, %107
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.job*, %struct.job** %10, align 8
  %118 = getelementptr inbounds %struct.job, %struct.job* %117, i32 1
  store %struct.job* %118, %struct.job** %10, align 8
  br label %103

119:                                              ; preds = %103
  %120 = load i32, i32* @INTON, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %119
  %124 = load i64, i64* @iflag, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load i32, i32* @SIGINT, align 4
  %128 = call i32 @setsignal(i32 %127)
  %129 = load i32, i32* @SIGQUIT, align 4
  %130 = call i32 @setsignal(i32 %129)
  %131 = load i32, i32* @SIGTERM, align 4
  %132 = call i32 @setsignal(i32 %131)
  br label %133

133:                                              ; preds = %126, %123, %119
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %4, align 4
  br label %240

135:                                              ; preds = %54
  %136 = load i32, i32* @rootshell, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %166

138:                                              ; preds = %135
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @FORK_NOJOB, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %166

142:                                              ; preds = %138
  %143 = load i64, i64* @mflag, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %166

145:                                              ; preds = %142
  %146 = load %struct.job*, %struct.job** %5, align 8
  %147 = icmp eq %struct.job* %146, null
  br i1 %147, label %153, label %148

148:                                              ; preds = %145
  %149 = load %struct.job*, %struct.job** %5, align 8
  %150 = getelementptr inbounds %struct.job, %struct.job* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148, %145
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %9, align 4
  br label %162

155:                                              ; preds = %148
  %156 = load %struct.job*, %struct.job** %5, align 8
  %157 = getelementptr inbounds %struct.job, %struct.job* %156, i32 0, i32 3
  %158 = load %struct.procstat*, %struct.procstat** %157, align 8
  %159 = getelementptr inbounds %struct.procstat, %struct.procstat* %158, i64 0
  %160 = getelementptr inbounds %struct.procstat, %struct.procstat* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %9, align 4
  br label %162

162:                                              ; preds = %155, %153
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %9, align 4
  %165 = call i64 @setpgid(i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %162, %142, %138, %135
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @FORK_BG, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %193

170:                                              ; preds = %166
  %171 = load %struct.job*, %struct.job** @bgjob, align 8
  %172 = icmp ne %struct.job* %171, null
  br i1 %172, label %173, label %190

173:                                              ; preds = %170
  %174 = load %struct.job*, %struct.job** @bgjob, align 8
  %175 = getelementptr inbounds %struct.job, %struct.job* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @JOBDONE, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %190

179:                                              ; preds = %173
  %180 = load %struct.job*, %struct.job** @bgjob, align 8
  %181 = getelementptr inbounds %struct.job, %struct.job* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %179
  %185 = load i64, i64* @iflag, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %184
  %188 = load %struct.job*, %struct.job** @bgjob, align 8
  %189 = call i32 @freejob(%struct.job* %188)
  br label %190

190:                                              ; preds = %187, %184, %179, %173, %170
  %191 = load i32, i32* %8, align 4
  store i32 %191, i32* @backgndpid, align 4
  %192 = load %struct.job*, %struct.job** %5, align 8
  store %struct.job* %192, %struct.job** @bgjob, align 8
  br label %193

193:                                              ; preds = %190, %166
  %194 = load %struct.job*, %struct.job** %5, align 8
  %195 = icmp ne %struct.job* %194, null
  br i1 %195, label %196, label %233

196:                                              ; preds = %193
  %197 = load %struct.job*, %struct.job** %5, align 8
  %198 = getelementptr inbounds %struct.job, %struct.job* %197, i32 0, i32 3
  %199 = load %struct.procstat*, %struct.procstat** %198, align 8
  %200 = load %struct.job*, %struct.job** %5, align 8
  %201 = getelementptr inbounds %struct.job, %struct.job* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %202, 1
  store i64 %203, i64* %201, align 8
  %204 = getelementptr inbounds %struct.procstat, %struct.procstat* %199, i64 %202
  store %struct.procstat* %204, %struct.procstat** %13, align 8
  %205 = load i32, i32* %8, align 4
  %206 = load %struct.procstat*, %struct.procstat** %13, align 8
  %207 = getelementptr inbounds %struct.procstat, %struct.procstat* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 4
  %208 = load %struct.procstat*, %struct.procstat** %13, align 8
  %209 = getelementptr inbounds %struct.procstat, %struct.procstat* %208, i32 0, i32 1
  store i32 -1, i32* %209, align 4
  %210 = load i32, i32* @nullstr, align 4
  %211 = load %struct.procstat*, %struct.procstat** %13, align 8
  %212 = getelementptr inbounds %struct.procstat, %struct.procstat* %211, i32 0, i32 2
  store i32 %210, i32* %212, align 4
  %213 = load i64, i64* @iflag, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %196
  %216 = load i32, i32* @rootshell, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %215
  %219 = load %union.node*, %union.node** %6, align 8
  %220 = icmp ne %union.node* %219, null
  br i1 %220, label %221, label %226

221:                                              ; preds = %218
  %222 = load %union.node*, %union.node** %6, align 8
  %223 = call i32 @commandtext(%union.node* %222)
  %224 = load %struct.procstat*, %struct.procstat** %13, align 8
  %225 = getelementptr inbounds %struct.procstat, %struct.procstat* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 4
  br label %226

226:                                              ; preds = %221, %218, %215, %196
  %227 = load i32, i32* %7, align 4
  %228 = load i32, i32* @FORK_FG, align 4
  %229 = icmp eq i32 %227, %228
  %230 = zext i1 %229 to i32
  %231 = load %struct.job*, %struct.job** %5, align 8
  %232 = getelementptr inbounds %struct.job, %struct.job* %231, i32 0, i32 2
  store i32 %230, i32* %232, align 8
  br label %233

233:                                              ; preds = %226, %193
  %234 = load i32, i32* @INTON, align 4
  %235 = load i32, i32* %8, align 4
  %236 = sext i32 %235 to i64
  %237 = inttoptr i64 %236 to i8*
  %238 = call i32 @TRACE(i8* %237)
  %239 = load i32, i32* %8, align 4
  store i32 %239, i32* %4, align 4
  br label %240

240:                                              ; preds = %233, %133
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @checkzombies(...) #1

declare dso_local i32 @flushall(...) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @closescript(...) #1

declare dso_local i32 @clear_traps(...) #1

declare dso_local i32 @ignoresig(i32) #1

declare dso_local i32 @fd0_redirected_p(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @open(i32, i32) #1

declare dso_local i32 @freejob(%struct.job*) #1

declare dso_local i32 @setsignal(i32) #1

declare dso_local i64 @setpgid(i32, i32) #1

declare dso_local i32 @commandtext(%union.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
