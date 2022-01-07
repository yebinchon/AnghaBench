; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf = type { i64, i32, %struct.TYPE_8__*, %struct.inf_wait }
%struct.TYPE_8__ = type { i32 }
%struct.inf_wait = type { %struct.TYPE_7__*, %struct.exc_state, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.exc_state = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_NSIG = common dso_local global i32 0, align 4
@TARGET_WAITKIND_STOPPED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [85 x i8] c"passing through exception: task = %d, thread = %d, exc = %d, code = %d, subcode = %d\00", align 1
@MACH_MSG_TYPE_MOVE_SEND_ONCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Can't forward spontaneous exception (%s).\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"sending %s to stopped process\00", align 1
@msgport = common dso_local global i32 0, align 4
@MACH_MSG_TYPE_MAKE_SEND_ONCE = common dso_local global i32 0, align 4
@refport = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"sending %s to unstopped process (so resuming signal thread)\00", align 1
@EIEIO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"Can't deliver signal %s: No signal thread.\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Delivering signal %s: %s\00", align 1
@NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inf_signal(%struct.inf* %0, i32 %1) #0 {
  %3 = alloca %struct.inf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inf_wait*, align 8
  %8 = alloca %struct.exc_state*, align 8
  store %struct.inf* %0, %struct.inf** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @target_signal_to_host(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @_NSIG, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %99

14:                                               ; preds = %2
  %15 = load %struct.inf*, %struct.inf** %3, align 8
  %16 = getelementptr inbounds %struct.inf, %struct.inf* %15, i32 0, i32 3
  store %struct.inf_wait* %16, %struct.inf_wait** %7, align 8
  %17 = load %struct.inf_wait*, %struct.inf_wait** %7, align 8
  %18 = getelementptr inbounds %struct.inf_wait, %struct.inf_wait* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TARGET_WAITKIND_STOPPED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %94

23:                                               ; preds = %14
  %24 = load %struct.inf_wait*, %struct.inf_wait** %7, align 8
  %25 = getelementptr inbounds %struct.inf_wait, %struct.inf_wait* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %94

31:                                               ; preds = %23
  %32 = load %struct.inf_wait*, %struct.inf_wait** %7, align 8
  %33 = getelementptr inbounds %struct.inf_wait, %struct.inf_wait* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  br i1 %35, label %36, label %94

36:                                               ; preds = %31
  %37 = load %struct.inf_wait*, %struct.inf_wait** %7, align 8
  %38 = getelementptr inbounds %struct.inf_wait, %struct.inf_wait* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %94, label %43

43:                                               ; preds = %36
  %44 = load %struct.inf_wait*, %struct.inf_wait** %7, align 8
  %45 = getelementptr inbounds %struct.inf_wait, %struct.inf_wait* %44, i32 0, i32 1
  store %struct.exc_state* %45, %struct.exc_state** %8, align 8
  %46 = load %struct.inf*, %struct.inf** %3, align 8
  %47 = load %struct.inf_wait*, %struct.inf_wait** %7, align 8
  %48 = getelementptr inbounds %struct.inf_wait, %struct.inf_wait* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.inf*, %struct.inf** %3, align 8
  %53 = getelementptr inbounds %struct.inf, %struct.inf* %52, i32 0, i32 2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.exc_state*, %struct.exc_state** %8, align 8
  %58 = getelementptr inbounds %struct.exc_state, %struct.exc_state* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.exc_state*, %struct.exc_state** %8, align 8
  %61 = getelementptr inbounds %struct.exc_state, %struct.exc_state* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.exc_state*, %struct.exc_state** %8, align 8
  %64 = getelementptr inbounds %struct.exc_state, %struct.exc_state* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (%struct.inf*, i8*, i32, ...) @inf_debug(%struct.inf* %46, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %56, i32 %59, i32 %62, i32 %65)
  %67 = load %struct.exc_state*, %struct.exc_state** %8, align 8
  %68 = getelementptr inbounds %struct.exc_state, %struct.exc_state* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.exc_state*, %struct.exc_state** %8, align 8
  %71 = getelementptr inbounds %struct.exc_state, %struct.exc_state* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MACH_MSG_TYPE_MOVE_SEND_ONCE, align 4
  %74 = load %struct.inf_wait*, %struct.inf_wait** %7, align 8
  %75 = getelementptr inbounds %struct.inf_wait, %struct.inf_wait* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.inf*, %struct.inf** %3, align 8
  %80 = getelementptr inbounds %struct.inf, %struct.inf* %79, i32 0, i32 2
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.exc_state*, %struct.exc_state** %8, align 8
  %85 = getelementptr inbounds %struct.exc_state, %struct.exc_state* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.exc_state*, %struct.exc_state** %8, align 8
  %88 = getelementptr inbounds %struct.exc_state, %struct.exc_state* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.exc_state*, %struct.exc_state** %8, align 8
  %91 = getelementptr inbounds %struct.exc_state, %struct.exc_state* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @exception_raise_request(i32 %69, i32 %72, i32 %73, i32 %78, i32 %83, i32 %86, i32 %89, i32 %92)
  store i64 %93, i64* %5, align 8
  br label %98

94:                                               ; preds = %36, %31, %23, %14
  %95 = load i32, i32* %4, align 4
  %96 = call i32 (i32, ...) bitcast (i32 (...)* @target_signal_to_name to i32 (i32, ...)*)(i32 %95)
  %97 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %94, %43
  br label %137

99:                                               ; preds = %2
  %100 = load %struct.inf*, %struct.inf** %3, align 8
  %101 = getelementptr inbounds %struct.inf, %struct.inf* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %99
  %105 = load %struct.inf*, %struct.inf** %3, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 (i32, ...) bitcast (i32 (...)* @target_signal_to_name to i32 (i32, ...)*)(i32 %106)
  %108 = call i32 (%struct.inf*, i8*, i32, ...) @inf_debug(%struct.inf* %105, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  %109 = load %struct.inf*, %struct.inf** %3, align 8
  %110 = load i32, i32* @msgport, align 4
  %111 = load %struct.inf*, %struct.inf** %3, align 8
  %112 = getelementptr inbounds %struct.inf, %struct.inf* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @MACH_MSG_TYPE_MAKE_SEND_ONCE, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @refport, align 4
  %117 = call i32 @msg_sig_post_untraced_request(i32 %110, i32 %113, i32 %114, i32 %115, i32 0, i32 %116)
  %118 = call i64 @INF_MSGPORT_RPC(%struct.inf* %109, i32 %117)
  store i64 %118, i64* %5, align 8
  %119 = load i64, i64* %5, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %104
  %122 = load %struct.inf*, %struct.inf** %3, align 8
  %123 = getelementptr inbounds %struct.inf, %struct.inf* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  br label %124

124:                                              ; preds = %121, %104
  br label %136

125:                                              ; preds = %99
  %126 = load %struct.inf*, %struct.inf** %3, align 8
  %127 = load i32, i32* %4, align 4
  %128 = call i32 (i32, ...) bitcast (i32 (...)* @target_signal_to_name to i32 (i32, ...)*)(i32 %127)
  %129 = call i32 (%struct.inf*, i8*, i32, ...) @inf_debug(%struct.inf* %126, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = load %struct.inf*, %struct.inf** %3, align 8
  %131 = load i32, i32* @msgport, align 4
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @refport, align 4
  %134 = call i32 @msg_sig_post_untraced(i32 %131, i32 %132, i32 0, i32 %133)
  %135 = call i64 @INF_RESUME_MSGPORT_RPC(%struct.inf* %130, i32 %134)
  store i64 %135, i64* %5, align 8
  br label %136

136:                                              ; preds = %125, %124
  br label %137

137:                                              ; preds = %136, %98
  %138 = load i64, i64* %5, align 8
  %139 = load i64, i64* @EIEIO, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load i32, i32* %4, align 4
  %143 = call i32 (i32, ...) bitcast (i32 (...)* @target_signal_to_name to i32 (i32, ...)*)(i32 %142)
  %144 = call i32 (i8*, i32, ...) @warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %143)
  br label %155

145:                                              ; preds = %137
  %146 = load i64, i64* %5, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load i32, i32* %4, align 4
  %150 = call i32 (i32, ...) bitcast (i32 (...)* @target_signal_to_name to i32 (i32, ...)*)(i32 %149)
  %151 = load i64, i64* %5, align 8
  %152 = call i32 @safe_strerror(i64 %151)
  %153 = call i32 (i8*, i32, ...) @warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %150, i32 %152)
  br label %154

154:                                              ; preds = %148, %145
  br label %155

155:                                              ; preds = %154, %141
  ret void
}

declare dso_local i32 @target_signal_to_host(i32) #1

declare dso_local i32 @inf_debug(%struct.inf*, i8*, i32, ...) #1

declare dso_local i64 @exception_raise_request(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @target_signal_to_name(...) #1

declare dso_local i64 @INF_MSGPORT_RPC(%struct.inf*, i32) #1

declare dso_local i32 @msg_sig_post_untraced_request(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @INF_RESUME_MSGPORT_RPC(%struct.inf*, i32) #1

declare dso_local i32 @msg_sig_post_untraced(i32, i32, i32, i32) #1

declare dso_local i32 @warning(i8*, i32, ...) #1

declare dso_local i32 @safe_strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
