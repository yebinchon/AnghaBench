; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_stop_wait_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_stop_wait_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwp_info = type { i32, i32, i64, i32 }

@errno = common dso_local global i64 0, align 8
@PTRACE_CONT = common dso_local global i32 0, align 4
@debug_lin_lwp = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"PTRACE_CONT %s, 0, 0 (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@SIGSTOP = common dso_local global i64 0, align 8
@SIGTRAP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"SWC: Candidate SIGTRAP event in %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SWC: kill %s, %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"SWC: Pending event %s in %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"SWC: PTRACE_CONT %s, 0, 0 (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwp_info*, i8*)* @stop_wait_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stop_wait_callback(%struct.lwp_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lwp_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.lwp_info* %0, %struct.lwp_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  store i8* %8, i8** %6, align 8
  %9 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %10 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %213, label %13

13:                                               ; preds = %2
  %14 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %15 = call i32 @wait_lwp(%struct.lwp_info* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %214

19:                                               ; preds = %13
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %64

22:                                               ; preds = %19
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @WSTOPSIG(i32 %24)
  %26 = call i64 @sigismember(i8* %23, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %64

28:                                               ; preds = %22
  %29 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %30 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %35 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  store i32 0, i32* %3, align 4
  br label %214

36:                                               ; preds = %28
  store i64 0, i64* @errno, align 8
  %37 = load i32, i32* @PTRACE_CONT, align 4
  %38 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %39 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @GET_LWP(i32 %40)
  %42 = call i32 @ptrace(i32 %37, i32 %41, i32 0, i32 0)
  %43 = load i64, i64* @debug_lin_lwp, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %36
  %46 = load i32, i32* @gdb_stdlog, align 4
  %47 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %48 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @target_pid_to_str(i32 %49)
  %51 = load i64, i64* @errno, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i64, i64* @errno, align 8
  %55 = call i8* @safe_strerror(i64 %54)
  br label %57

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi i8* [ %55, %53 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %56 ]
  %59 = call i32 (i32, i8*, i8*, ...) @fprintf_unfiltered(i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %50, i8* %58)
  br label %60

60:                                               ; preds = %57, %36
  %61 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @stop_wait_callback(%struct.lwp_info* %61, i8* %62)
  store i32 %63, i32* %3, align 4
  br label %214

64:                                               ; preds = %22, %19
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @WSTOPSIG(i32 %65)
  %67 = load i64, i64* @SIGSTOP, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %207

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  %71 = call i64 @WSTOPSIG(i32 %70)
  %72 = load i64, i64* @SIGTRAP, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %138

74:                                               ; preds = %69
  store i64 0, i64* @errno, align 8
  %75 = load i32, i32* @PTRACE_CONT, align 4
  %76 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %77 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @GET_LWP(i32 %78)
  %80 = call i32 @ptrace(i32 %75, i32 %79, i32 0, i32 0)
  %81 = load i64, i64* @debug_lin_lwp, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %74
  %84 = load i32, i32* @gdb_stdlog, align 4
  %85 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %86 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @target_pid_to_str(i32 %87)
  %89 = load i64, i64* @errno, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load i64, i64* @errno, align 8
  %93 = call i8* @safe_strerror(i64 %92)
  br label %95

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94, %91
  %96 = phi i8* [ %93, %91 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %94 ]
  %97 = call i32 (i32, i8*, i8*, ...) @fprintf_unfiltered(i32 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %88, i8* %96)
  %98 = load i32, i32* @gdb_stdlog, align 4
  %99 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %100 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i8* @target_pid_to_str(i32 %101)
  %103 = call i32 (i32, i8*, i8*, ...) @fprintf_unfiltered(i32 %98, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %95, %74
  %105 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = call i32 @stop_wait_callback(%struct.lwp_info* %105, i8* %106)
  %108 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %109 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %134

112:                                              ; preds = %104
  %113 = load i64, i64* @debug_lin_lwp, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %112
  %116 = load i32, i32* @gdb_stdlog, align 4
  %117 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %118 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i8* @target_pid_to_str(i32 %119)
  %121 = load i32, i32* %7, align 4
  %122 = call i8* @status_to_str(i32 %121)
  %123 = call i32 (i32, i8*, i8*, ...) @fprintf_unfiltered(i32 %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %120, i8* %122)
  br label %124

124:                                              ; preds = %115, %112
  %125 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %126 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @GET_LWP(i32 %127)
  %129 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %130 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @WSTOPSIG(i32 %131)
  %133 = call i32 @kill_lwp(i32 %128, i64 %132)
  br label %134

134:                                              ; preds = %124, %104
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %137 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  store i32 0, i32* %3, align 4
  br label %214

138:                                              ; preds = %69
  %139 = load i64, i64* @debug_lin_lwp, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = load i32, i32* @gdb_stdlog, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i8* @status_to_str(i32 %143)
  %145 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %146 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = call i8* @target_pid_to_str(i32 %147)
  %149 = call i32 (i32, i8*, i8*, ...) @fprintf_unfiltered(i32 %142, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %144, i8* %148)
  br label %150

150:                                              ; preds = %141, %138
  store i64 0, i64* @errno, align 8
  %151 = load i32, i32* @PTRACE_CONT, align 4
  %152 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %153 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @GET_LWP(i32 %154)
  %156 = call i32 @ptrace(i32 %151, i32 %155, i32 0, i32 0)
  %157 = load i64, i64* @debug_lin_lwp, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %150
  %160 = load i32, i32* @gdb_stdlog, align 4
  %161 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %162 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = call i8* @target_pid_to_str(i32 %163)
  %165 = load i64, i64* @errno, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %159
  %168 = load i64, i64* @errno, align 8
  %169 = call i8* @safe_strerror(i64 %168)
  br label %171

170:                                              ; preds = %159
  br label %171

171:                                              ; preds = %170, %167
  %172 = phi i8* [ %169, %167 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %170 ]
  %173 = call i32 (i32, i8*, i8*, ...) @fprintf_unfiltered(i32 %160, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %164, i8* %172)
  br label %174

174:                                              ; preds = %171, %150
  %175 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %176 = load i8*, i8** %5, align 8
  %177 = call i32 @stop_wait_callback(%struct.lwp_info* %175, i8* %176)
  %178 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %179 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %174
  %183 = load i32, i32* %7, align 4
  %184 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %185 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 4
  br label %206

186:                                              ; preds = %174
  %187 = load i64, i64* @debug_lin_lwp, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %186
  %190 = load i32, i32* @gdb_stdlog, align 4
  %191 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %192 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = call i8* @target_pid_to_str(i32 %193)
  %195 = load i32, i32* %7, align 4
  %196 = call i8* @status_to_str(i32 %195)
  %197 = call i32 (i32, i8*, i8*, ...) @fprintf_unfiltered(i32 %190, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %194, i8* %196)
  br label %198

198:                                              ; preds = %189, %186
  %199 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %200 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @GET_LWP(i32 %201)
  %203 = load i32, i32* %7, align 4
  %204 = call i64 @WSTOPSIG(i32 %203)
  %205 = call i32 @kill_lwp(i32 %202, i64 %204)
  br label %206

206:                                              ; preds = %198, %182
  store i32 0, i32* %3, align 4
  br label %214

207:                                              ; preds = %64
  %208 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %209 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %208, i32 0, i32 0
  store i32 1, i32* %209, align 8
  %210 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %211 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %210, i32 0, i32 2
  store i64 0, i64* %211, align 8
  br label %212

212:                                              ; preds = %207
  br label %213

213:                                              ; preds = %212, %2
  store i32 0, i32* %3, align 4
  br label %214

214:                                              ; preds = %213, %206, %134, %60, %33, %18
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local i32 @wait_lwp(%struct.lwp_info*) #1

declare dso_local i64 @sigismember(i8*, i64) #1

declare dso_local i64 @WSTOPSIG(i32) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @GET_LWP(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i8*, ...) #1

declare dso_local i8* @target_pid_to_str(i32) #1

declare dso_local i8* @safe_strerror(i64) #1

declare dso_local i8* @status_to_str(i32) #1

declare dso_local i32 @kill_lwp(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
