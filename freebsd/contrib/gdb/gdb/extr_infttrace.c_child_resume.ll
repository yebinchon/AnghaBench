; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_child_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_child_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64 }

@INFTTRACE_ALL_THREADS = common dso_local global i64 0, align 8
@vfork_in_flight = common dso_local global i64 0, align 8
@vforking_child_pid = common dso_local global i64 0, align 8
@inferior_ptid = common dso_local global i32 0, align 4
@process_state = common dso_local global i64 0, align 8
@RUNNING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"Internal error in resume logic; doing resume or step anyway.\00", align 1
@more_events_left = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"No thread information for tid %d, 'next' command ignored.\0A\00", align 1
@DO_DEFAULT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [101 x i8] c"Step or continue command applied to thread which is already stepping or continuing; command ignored.\00", align 1
@DO_STEP = common dso_local global i64 0, align 8
@DO_CONTINUE = common dso_local global i64 0, align 8
@FAKE_STEPPING = common dso_local global i64 0, align 8
@TT_PROC_CONTINUE = common dso_local global i32 0, align 4
@TT_NIL = common dso_local global i32 0, align 4
@debug_on = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @child_resume(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @PIDGET(i32 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @INFTTRACE_ALL_THREADS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* @vfork_in_flight, align 8
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %18, %3
  %22 = phi i1 [ true, %3 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i64, i64* @vfork_in_flight, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i64, i64* @vforking_child_pid, align 8
  store i64 %30, i64* %8, align 8
  br label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @inferior_ptid, align 4
  %33 = call i64 @PIDGET(i32 %32)
  %34 = call i64 @map_from_gdb_tid(i64 %33)
  store i64 %34, i64* %8, align 8
  br label %35

35:                                               ; preds = %31, %29
  br label %39

36:                                               ; preds = %21
  %37 = load i64, i64* %10, align 8
  %38 = call i64 @map_from_gdb_tid(i64 %37)
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %36, %35
  %40 = load i64, i64* @process_state, align 8
  %41 = load i64, i64* @RUNNING, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %51
  %55 = load i64, i64* @more_events_left, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load i64, i64* %8, align 8
  %59 = call %struct.TYPE_3__* @find_thread_info(i64 %58)
  store %struct.TYPE_3__* %59, %struct.TYPE_3__** %11, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %61 = icmp ne %struct.TYPE_3__* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %57
  br label %69

69:                                               ; preds = %68, %54, %51, %48, %45
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %108

72:                                               ; preds = %69
  %73 = load i64, i64* @more_events_left, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %108

75:                                               ; preds = %72
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  br label %164

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %8, align 8
  %82 = call %struct.TYPE_3__* @find_thread_info(i64 %81)
  store %struct.TYPE_3__* %82, %struct.TYPE_3__** %12, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %84 = icmp eq %struct.TYPE_3__* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i64, i64* %8, align 8
  %87 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %86)
  br label %164

88:                                               ; preds = %80
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @DO_DEFAULT, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.2, i64 0, i64 0))
  br label %164

96:                                               ; preds = %88
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i64, i64* @DO_STEP, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  br label %107

103:                                              ; preds = %96
  %104 = load i64, i64* @DO_CONTINUE, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %103, %99
  br label %164

108:                                              ; preds = %72, %69
  %109 = load i64, i64* @RUNNING, align 8
  store i64 %109, i64* %9, align 8
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %131

112:                                              ; preds = %108
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load i64, i64* %8, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @threads_continue_all_but_one(i64 %116, i32 %117)
  %119 = call i32 (...) @clear_all_handled()
  %120 = call i32 (...) @clear_all_stepping_mode()
  br label %130

121:                                              ; preds = %112
  %122 = load i64, i64* %8, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @thread_fake_step(i64 %122, i32 %123)
  %125 = load i64, i64* %8, align 8
  %126 = call i32 @clear_handled(i64 %125)
  %127 = load i64, i64* %8, align 8
  %128 = call i32 @clear_stepping_mode(i64 %127)
  %129 = load i64, i64* @FAKE_STEPPING, align 8
  store i64 %129, i64* %9, align 8
  br label %130

130:                                              ; preds = %121, %115
  br label %162

131:                                              ; preds = %108
  %132 = load i64, i64* @vfork_in_flight, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load i32, i32* @TT_PROC_CONTINUE, align 4
  %136 = load i64, i64* %8, align 8
  %137 = load i32, i32* @TT_NIL, align 4
  %138 = load i32, i32* @TT_NIL, align 4
  %139 = load i32, i32* @TT_NIL, align 4
  %140 = call i32 @call_ttrace(i32 %135, i64 %136, i32 %137, i32 %138, i32 %139)
  %141 = call i32 (...) @clear_all_handled()
  %142 = call i32 (...) @clear_all_stepping_mode()
  br label %161

143:                                              ; preds = %131
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load i64, i64* %8, align 8
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @threads_continue_all_with_signals(i64 %147, i32 %148)
  %150 = call i32 (...) @clear_all_handled()
  %151 = call i32 (...) @clear_all_stepping_mode()
  br label %160

152:                                              ; preds = %143
  %153 = load i64, i64* %8, align 8
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @threads_continue_one_with_signal(i64 %153, i32 %154)
  %156 = load i64, i64* %8, align 8
  %157 = call i32 @clear_handled(i64 %156)
  %158 = load i64, i64* %8, align 8
  %159 = call i32 @clear_stepping_mode(i64 %158)
  br label %160

160:                                              ; preds = %152, %146
  br label %161

161:                                              ; preds = %160, %134
  br label %162

162:                                              ; preds = %161, %130
  %163 = load i64, i64* %9, align 8
  store i64 %163, i64* @process_state, align 8
  br label %164

164:                                              ; preds = %162, %107, %94, %85, %78
  ret void
}

declare dso_local i64 @PIDGET(i32) #1

declare dso_local i64 @map_from_gdb_tid(i64) #1

declare dso_local i32 @warning(i8*, ...) #1

declare dso_local %struct.TYPE_3__* @find_thread_info(i64) #1

declare dso_local i32 @threads_continue_all_but_one(i64, i32) #1

declare dso_local i32 @clear_all_handled(...) #1

declare dso_local i32 @clear_all_stepping_mode(...) #1

declare dso_local i32 @thread_fake_step(i64, i32) #1

declare dso_local i32 @clear_handled(i64) #1

declare dso_local i32 @clear_stepping_mode(i64) #1

declare dso_local i32 @call_ttrace(i32, i64, i32, i32, i32) #1

declare dso_local i32 @threads_continue_all_with_signals(i64, i32) #1

declare dso_local i32 @threads_continue_one_with_signal(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
