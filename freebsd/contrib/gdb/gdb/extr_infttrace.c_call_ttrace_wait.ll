; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_call_ttrace_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_call_ttrace_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@call_ttrace_wait.real_pid = internal global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"No thread records for ttrace call w. specific pid\00", align 1
@more_events_left = common dso_local global i64 0, align 8
@process_state = common dso_local global i64 0, align 8
@RUNNING = common dso_local global i64 0, align 8
@FAKE_STEPPING = common dso_local global i64 0, align 8
@doing_fake_step = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Inconsistent thread state.\00", align 1
@FORKING = common dso_local global i64 0, align 8
@VFORKING = common dso_local global i64 0, align 8
@STOPPED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Process not running at wait call.\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Inconsistent process state.\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Trying to continue with buffered events:\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Losing buffered thread events!\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"Process in unknown state with buffered events.\00", align 1
@fake_step_tid = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Internal error in stopping process\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"Process not stopped at wait call, in state '%s'.\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Internal error in stepping over breakpoint\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Can't find event, using previous event.\00", align 1
@TTEVT_NONE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [44 x i8] c"Internal error: no thread has a real event.\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"Internal error in stepping over breakpoint.\00", align 1
@debug_on = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_8__*, i64)* @call_ttrace_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @call_ttrace_wait(i32 %0, i32 %1, %struct.TYPE_8__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %4
  %17 = call i32 (...) @any_thread_records()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = call i32 @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @map_from_gdb_tid(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @get_pid_for(i32 %24)
  store i32 %25, i32* @call_ttrace_wait.real_pid, align 4
  br label %26

26:                                               ; preds = %21, %4
  %27 = load i64, i64* @more_events_left, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %65

29:                                               ; preds = %26
  %30 = load i64, i64* @process_state, align 8
  %31 = load i64, i64* @RUNNING, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %64

34:                                               ; preds = %29
  %35 = load i64, i64* @process_state, align 8
  %36 = load i64, i64* @FAKE_STEPPING, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i64, i64* @doing_fake_step, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %38
  br label %63

44:                                               ; preds = %34
  %45 = load i64, i64* @process_state, align 8
  %46 = load i64, i64* @FORKING, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* @process_state, align 8
  %50 = load i64, i64* @VFORKING, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %44
  br label %62

53:                                               ; preds = %48
  %54 = load i64, i64* @process_state, align 8
  %55 = load i64, i64* @STOPPED, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %61

59:                                               ; preds = %53
  %60 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %57
  br label %62

62:                                               ; preds = %61, %52
  br label %63

63:                                               ; preds = %62, %43
  br label %64

64:                                               ; preds = %63, %33
  br label %101

65:                                               ; preds = %26
  %66 = load i64, i64* @process_state, align 8
  %67 = load i64, i64* @STOPPED, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %100

70:                                               ; preds = %65
  %71 = load i64, i64* @process_state, align 8
  %72 = load i64, i64* @RUNNING, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %99

76:                                               ; preds = %70
  %77 = load i64, i64* @process_state, align 8
  %78 = load i64, i64* @FAKE_STEPPING, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i64, i64* @doing_fake_step, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %80
  br label %98

86:                                               ; preds = %76
  %87 = load i64, i64* @process_state, align 8
  %88 = load i64, i64* @FORKING, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i64, i64* @process_state, align 8
  %92 = load i64, i64* @VFORKING, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90, %86
  br label %97

95:                                               ; preds = %90
  %96 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %94
  br label %98

98:                                               ; preds = %97, %85
  br label %99

99:                                               ; preds = %98, %74
  br label %100

100:                                              ; preds = %99, %69
  br label %101

101:                                              ; preds = %100, %64
  %102 = load i64, i64* @doing_fake_step, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32, i32* @fake_step_tid, align 4
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* @fake_step_tid, align 4
  %107 = call i32 @get_pid_for(i32 %106)
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %104, %101
  %109 = load i64, i64* @more_events_left, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = load i64, i64* @process_state, align 8
  %113 = load i64, i64* @STOPPED, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %145

115:                                              ; preds = %111, %108
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %120 = load i64, i64* %8, align 8
  %121 = call i32 @call_real_ttrace_wait(i32 %116, i32 %117, i32 %118, %struct.TYPE_8__* %119, i64 %120)
  store i32 %121, i32* %12, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* @call_ttrace_wait.real_pid, align 4
  %125 = load i32, i32* @call_ttrace_wait.real_pid, align 4
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @can_touch_threads_of_process(i32 %125, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %115
  %132 = load i64, i64* @doing_fake_step, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %131
  %135 = load i64, i64* @more_events_left, align 8
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %134
  %140 = load i32, i32* @call_ttrace_wait.real_pid, align 4
  %141 = call i32 @stop_all_threads_of_process(i32 %140)
  br label %142

142:                                              ; preds = %139, %131
  br label %143

143:                                              ; preds = %142, %115
  %144 = load i64, i64* @STOPPED, align 8
  store i64 %144, i64* @process_state, align 8
  br label %159

145:                                              ; preds = %111
  %146 = load i64, i64* @process_state, align 8
  %147 = load i64, i64* @STOPPED, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i64, i64* @process_state, align 8
  %151 = call i32 @get_printable_name_of_process_state(i64 %150)
  %152 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %149, %145
  %154 = load i64, i64* @doing_fake_step, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %153
  store i32 0, i32* %12, align 4
  br label %159

159:                                              ; preds = %158, %143
  %160 = load i32, i32* @call_ttrace_wait.real_pid, align 4
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %162 = call i32 @select_stopped_thread_of_process(i32 %160, %struct.TYPE_8__* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %159
  %165 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  br label %188

166:                                              ; preds = %159
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @TTEVT_NONE, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  br label %187

174:                                              ; preds = %166
  %175 = load i64, i64* @doing_fake_step, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %174
  %178 = load i32, i32* @fake_step_tid, align 4
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %178, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %177
  %184 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0))
  br label %185

185:                                              ; preds = %183, %177
  store i64 0, i64* @doing_fake_step, align 8
  store i32 0, i32* @fake_step_tid, align 4
  br label %186

186:                                              ; preds = %185, %174
  br label %187

187:                                              ; preds = %186, %172
  br label %188

188:                                              ; preds = %187, %164
  %189 = load i32, i32* @call_ttrace_wait.real_pid, align 4
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @set_handled(i32 %189, i32 %192)
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call %struct.TYPE_9__* @find_thread_info(i32 %196)
  store %struct.TYPE_9__* %197, %struct.TYPE_9__** %13, align 8
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %199 = icmp ne %struct.TYPE_9__* %198, null
  br i1 %199, label %200, label %207

200:                                              ; preds = %188
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %204 = call i32 @copy_ttstate_t(i32* %202, %struct.TYPE_8__* %203)
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  store i32 1, i32* %206, align 4
  br label %207

207:                                              ; preds = %200, %188
  %208 = load i32, i32* %12, align 4
  ret i32 %208
}

declare dso_local i32 @any_thread_records(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @map_from_gdb_tid(i32) #1

declare dso_local i32 @get_pid_for(i32) #1

declare dso_local i32 @warning(i8*, ...) #1

declare dso_local i32 @call_real_ttrace_wait(i32, i32, i32, %struct.TYPE_8__*, i64) #1

declare dso_local i64 @can_touch_threads_of_process(i32, i32) #1

declare dso_local i32 @stop_all_threads_of_process(i32) #1

declare dso_local i32 @get_printable_name_of_process_state(i64) #1

declare dso_local i32 @select_stopped_thread_of_process(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @set_handled(i32, i32) #1

declare dso_local %struct.TYPE_9__* @find_thread_info(i32) #1

declare dso_local i32 @copy_ttstate_t(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
