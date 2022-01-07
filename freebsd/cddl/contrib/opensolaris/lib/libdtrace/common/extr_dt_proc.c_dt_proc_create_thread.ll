; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_proc.c_dt_proc_create_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_proc.c_dt_proc_create_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32* }

@PTHREAD_CREATE_DETACHED = common dso_local global i32 0, align 4
@SIGABRT = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@dt_proc_control = common dso_local global i32 0, align 4
@DT_PROC_STOP_IDLE = common dso_local global i32 0, align 4
@PS_LOST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [73 x i8] c"failed to control pid %d: process exec'd set-id or unobservable program\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"failed to control pid %d: process died from signal %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"failed to control pid %d: process exited with status %d\0A\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"failed to create control thread for process-id %d: %s\0A\00", align 1
@SIGCANCEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, i32)* @dt_proc_create_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_proc_create_thread(i32* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %16 = call i32 @pthread_mutex_lock(i32* %15)
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = call i32 @pthread_attr_init(i32* %10)
  %23 = load i32, i32* @PTHREAD_CREATE_DETACHED, align 4
  %24 = call i32 @pthread_attr_setdetachstate(i32* %10, i32 %23)
  %25 = call i32 @sigfillset(i32* %8)
  %26 = load i32, i32* @SIGABRT, align 4
  %27 = call i32 @sigdelset(i32* %8, i32 %26)
  %28 = load i32, i32* @SIGUSR1, align 4
  %29 = call i32 @sigdelset(i32* %8, i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store i32* %30, i32** %31, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %33, align 8
  %34 = load i32, i32* @SIG_SETMASK, align 4
  %35 = call i32 @pthread_sigmask(i32 %34, i32* %8, i32* %9)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 7
  %38 = load i32, i32* @dt_proc_control, align 4
  %39 = call i32 @pthread_create(i32* %37, i32* %10, i32 %38, %struct.TYPE_10__* %7)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* @SIG_SETMASK, align 4
  %41 = call i32 @pthread_sigmask(i32 %40, i32* %9, i32* null)
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %119

44:                                               ; preds = %3
  br label %45

45:                                               ; preds = %60, %44
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @DT_PROC_STOP_IDLE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %50, %45
  %59 = phi i1 [ false, %45 ], [ %57, %50 ]
  br i1 %59, label %60, label %66

60:                                               ; preds = %58
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 6
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = call i32 @pthread_cond_wait(i32* %62, i32* %64)
  br label %45

66:                                               ; preds = %58
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %118

71:                                               ; preds = %66
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @proc_getwstat(i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @proc_getpid(i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @proc_state(i32 %82)
  %84 = load i64, i64* @PS_LOST, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %71
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 (i32, %struct.TYPE_9__*, i8*, i32, ...) @dt_proc_error(i32 %89, %struct.TYPE_9__* %90, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %91)
  br label %116

93:                                               ; preds = %71
  %94 = load i32, i32* %12, align 4
  %95 = call i64 @WIFSIGNALED(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @WTERMSIG(i32 %103)
  %105 = call i32 (i32, %struct.TYPE_9__*, i8*, i32, ...) @dt_proc_error(i32 %100, %struct.TYPE_9__* %101, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %104)
  br label %115

106:                                              ; preds = %93
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @WEXITSTATUS(i32 %112)
  %114 = call i32 (i32, %struct.TYPE_9__*, i8*, i32, ...) @dt_proc_error(i32 %109, %struct.TYPE_9__* %110, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %113)
  br label %115

115:                                              ; preds = %106, %97
  br label %116

116:                                              ; preds = %115, %86
  %117 = load i32, i32* @ESRCH, align 4
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %116, %66
  br label %130

119:                                              ; preds = %3
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @strerror(i32 %127)
  %129 = call i32 (i32, %struct.TYPE_9__*, i8*, i32, ...) @dt_proc_error(i32 %122, %struct.TYPE_9__* %123, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %126, i32 %128)
  br label %130

130:                                              ; preds = %119, %118
  %131 = load i32, i32* %11, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = call i32 @pthread_mutex_unlock(i32* %135)
  br label %137

137:                                              ; preds = %133, %130
  %138 = call i32 @pthread_attr_destroy(i32* %10)
  %139 = load i32, i32* %11, align 4
  ret i32 %139
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigdelset(i32*, i32) #1

declare dso_local i32 @pthread_sigmask(i32, i32*, i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @proc_getwstat(i32) #1

declare dso_local i32 @proc_getpid(i32) #1

declare dso_local i64 @proc_state(i32) #1

declare dso_local i32 @dt_proc_error(i32, %struct.TYPE_9__*, i8*, i32, ...) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
