; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_proc.c_dt_proc_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_proc.c_dt_proc_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__*, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i32, i32, i32, i64, i8*, i8*, %struct.ps_prochandle* }
%struct.ps_prochandle = type { i32 }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { i32, i32 }

@B_FALSE = common dso_local global i8* null, align 8
@PTHREAD_CANCEL_DISABLE = common dso_local global i32 0, align 4
@PR_KLC = common dso_local global i32 0, align 4
@DT_PROC_STOP_CREATE = common dso_local global i32 0, align 4
@DT_PROC_STOP_GRAB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"pid %d: failed to set running: %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"pid %d: proc stopped showing %d/%d\0A\00", align 1
@PR_REQUESTED = common dso_local global i32 0, align 4
@PR_FAULTED = common dso_local global i32 0, align 4
@FLTBPT = common dso_local global i32 0, align 4
@PR_SYSENTRY = common dso_local global i32 0, align 4
@PR_SYSEXIT = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"pid %d: proc lost: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"pid %d: proc died\0A\00", align 1
@FLTTRACE = common dso_local global i32 0, align 4
@PCNULL = common dso_local global i32 0, align 4
@PCWSTOP = common dso_local global i64 0, align 8
@PR_ASYNC = common dso_local global i32 0, align 4
@PR_BPTADJ = common dso_local global i32 0, align 4
@PR_FORK = common dso_local global i32 0, align 4
@SYS_execve = common dso_local global i32 0, align 4
@SYS_forksys = common dso_local global i32 0, align 4
@SYS_vfork = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @dt_proc_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dt_proc_control(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ps_prochandle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %3, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %4, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %5, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %6, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 6
  %24 = load %struct.ps_prochandle*, %struct.ps_prochandle** %23, align 8
  store %struct.ps_prochandle* %24, %struct.ps_prochandle** %7, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load i8*, i8** @B_FALSE, align 8
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @PTHREAD_CANCEL_DISABLE, align 4
  %31 = call i32 @pthread_setcancelstate(i32 %30, i32* null)
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 1
  %34 = call i32 @pthread_mutex_lock(i32* %33)
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %36 = load i8*, i8** @B_FALSE, align 8
  %37 = call i32 @dt_proc_attach(%struct.TYPE_20__* %35, i8* %36)
  %38 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %39 = call i32 @proc_getflags(%struct.ps_prochandle* %38)
  %40 = load i32, i32* @PR_KLC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %1
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %45 = load i32, i32* @DT_PROC_STOP_CREATE, align 4
  %46 = call i32 @dt_proc_stop(%struct.TYPE_20__* %44, i32 %45)
  br label %51

47:                                               ; preds = %1
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %49 = load i32, i32* @DT_PROC_STOP_GRAB, align 4
  %50 = call i32 @dt_proc_stop(%struct.TYPE_20__* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %53 = call i32 @Psetrun(%struct.ps_prochandle* %52, i32 0, i32 0)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* @errno, align 8
  %60 = call i32 @strerror(i64 %59)
  %61 = call i32 (i8*, i32, ...) @dt_dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %60)
  br label %62

62:                                               ; preds = %55, %51
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = call i32 @pthread_mutex_unlock(i32* %64)
  br label %66

66:                                               ; preds = %206, %101, %78, %62
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 5
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  %71 = xor i1 %70, true
  br i1 %71, label %72, label %210

72:                                               ; preds = %66
  %73 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %74 = call i32 @proc_wstatus(%struct.ps_prochandle* %73)
  %75 = load i64, i64* @errno, align 8
  %76 = load i64, i64* @EINTR, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %66

79:                                               ; preds = %72
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = call i32 @pthread_mutex_lock(i32* %81)
  %83 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %84 = call i32 @Pstate(%struct.ps_prochandle* %83)
  switch i32 %84, label %191 [
    i32 129, label %85
    i32 130, label %173
    i32 128, label %183
  ]

85:                                               ; preds = %79
  %86 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %87 = call %struct.TYPE_18__* @proc_getlwpstatus(%struct.ps_prochandle* %86)
  store %struct.TYPE_18__* %87, %struct.TYPE_18__** %10, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, i32, ...) @dt_dprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %91, i32 %94)
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @PR_REQUESTED, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %85
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %103 = call i32 @dt_proc_waitrun(%struct.TYPE_20__* %102)
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  %106 = call i32 @pthread_mutex_unlock(i32* %105)
  br label %66

107:                                              ; preds = %85
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @PR_FAULTED, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %107
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @FLTBPT, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %122 = call i32 @dt_proc_bpmatch(%struct.TYPE_19__* %120, %struct.TYPE_20__* %121)
  br label %172

123:                                              ; preds = %113, %107
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @PR_SYSENTRY, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %123
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @IS_SYS_FORK(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %137 = call i32 @dt_proc_bpdisable(%struct.TYPE_20__* %136)
  br label %171

138:                                              ; preds = %129, %123
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @PR_SYSEXIT, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %138
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @IS_SYS_FORK(i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %152 = call i32 @dt_proc_bpenable(%struct.TYPE_20__* %151)
  br label %170

153:                                              ; preds = %144, %138
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @PR_SYSEXIT, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %169

159:                                              ; preds = %153
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @IS_SYS_EXEC(i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %167 = load i8*, i8** @B_TRUE, align 8
  %168 = call i32 @dt_proc_attach(%struct.TYPE_20__* %166, i8* %167)
  br label %169

169:                                              ; preds = %165, %159, %153
  br label %170

170:                                              ; preds = %169, %150
  br label %171

171:                                              ; preds = %170, %135
  br label %172

172:                                              ; preds = %171, %119
  br label %191

173:                                              ; preds = %79
  %174 = load i32, i32* %8, align 4
  %175 = load i64, i64* @errno, align 8
  %176 = call i32 @strerror(i64 %175)
  %177 = call i32 (i8*, i32, ...) @dt_dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %174, i32 %176)
  %178 = load i8*, i8** @B_TRUE, align 8
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 5
  store i8* %178, i8** %180, align 8
  %181 = load i8*, i8** @B_TRUE, align 8
  %182 = ptrtoint i8* %181 to i32
  store i32 %182, i32* %9, align 4
  br label %191

183:                                              ; preds = %79
  %184 = load i32, i32* %8, align 4
  %185 = call i32 (i8*, i32, ...) @dt_dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %184)
  %186 = load i8*, i8** @B_TRUE, align 8
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 5
  store i8* %186, i8** %188, align 8
  %189 = load i8*, i8** @B_TRUE, align 8
  %190 = ptrtoint i8* %189 to i32
  store i32 %190, i32* %9, align 4
  br label %191

191:                                              ; preds = %79, %183, %173, %172
  %192 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %193 = call i32 @Pstate(%struct.ps_prochandle* %192)
  %194 = icmp ne i32 %193, 128
  br i1 %194, label %195, label %206

195:                                              ; preds = %191
  %196 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %197 = call i32 @Psetrun(%struct.ps_prochandle* %196, i32 0, i32 0)
  %198 = icmp eq i32 %197, -1
  br i1 %198, label %199, label %206

199:                                              ; preds = %195
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i64, i64* @errno, align 8
  %204 = call i32 @strerror(i64 %203)
  %205 = call i32 (i8*, i32, ...) @dt_dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %202, i32 %204)
  br label %206

206:                                              ; preds = %199, %195, %191
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 1
  %209 = call i32 @pthread_mutex_unlock(i32* %208)
  br label %66

210:                                              ; preds = %66
  %211 = load i32, i32* %9, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %210
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %215 = load i32*, i32** %6, align 8
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %217 = call i32 @dt_proc_notify(%struct.TYPE_19__* %214, i32* %215, %struct.TYPE_20__* %216, i32* null)
  br label %218

218:                                              ; preds = %213, %210
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 1
  %221 = call i32 @pthread_mutex_lock(i32* %220)
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %223 = load i8*, i8** @B_TRUE, align 8
  %224 = call i32 @dt_proc_bpdestroy(%struct.TYPE_20__* %222, i8* %223)
  %225 = load i8*, i8** @B_TRUE, align 8
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 4
  store i8* %225, i8** %227, align 8
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 3
  store i64 0, i64* %229, align 8
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 2
  %232 = call i32 @pthread_cond_broadcast(i32* %231)
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 1
  %235 = call i32 @pthread_mutex_unlock(i32* %234)
  ret i8* null
}

declare dso_local i32 @pthread_setcancelstate(i32, i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @dt_proc_attach(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @proc_getflags(%struct.ps_prochandle*) #1

declare dso_local i32 @dt_proc_stop(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @Psetrun(%struct.ps_prochandle*, i32, i32) #1

declare dso_local i32 @dt_dprintf(i8*, i32, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @proc_wstatus(%struct.ps_prochandle*) #1

declare dso_local i32 @Pstate(%struct.ps_prochandle*) #1

declare dso_local %struct.TYPE_18__* @proc_getlwpstatus(%struct.ps_prochandle*) #1

declare dso_local i32 @dt_proc_waitrun(%struct.TYPE_20__*) #1

declare dso_local i32 @dt_proc_bpmatch(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @IS_SYS_FORK(i32) #1

declare dso_local i32 @dt_proc_bpdisable(%struct.TYPE_20__*) #1

declare dso_local i32 @dt_proc_bpenable(%struct.TYPE_20__*) #1

declare dso_local i32 @IS_SYS_EXEC(i32) #1

declare dso_local i32 @dt_proc_notify(%struct.TYPE_19__*, i32*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @dt_proc_bpdestroy(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
