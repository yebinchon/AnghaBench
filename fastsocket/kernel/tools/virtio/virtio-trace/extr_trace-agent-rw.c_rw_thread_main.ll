; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/virtio/virtio-trace/extr_trace-agent-rw.c_rw_thread_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/virtio/virtio-trace/extr_trace-agent-rw.c_rw_thread_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rw_thread_info = type { i64, i32, i32, i32, i32, i32 }

@global_run_operation = common dso_local global i32 0, align 4
@mutex_notify = common dso_local global i32 0, align 4
@cond_wakeup = common dso_local global i32 0, align 4
@global_sig_receive = common dso_local global i64 0, align 8
@SPLICE_F_MOVE = common dso_local global i32 0, align 4
@SPLICE_F_MORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Splice_read in rw-thread(%d)\0A\00", align 1
@READ_WAIT_USEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Read retry(cpu:%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Splice_write in rw-thread(%d)\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @rw_thread_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rw_thread_main(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rw_thread_info*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.rw_thread_info*
  store %struct.rw_thread_info* %8, %struct.rw_thread_info** %6, align 8
  %9 = load %struct.rw_thread_info*, %struct.rw_thread_info** %6, align 8
  %10 = getelementptr inbounds %struct.rw_thread_info, %struct.rw_thread_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @bind_cpu(i32 %11)
  br label %13

13:                                               ; preds = %1, %48, %92
  %14 = load i32, i32* @global_run_operation, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = call i32 @pthread_mutex_lock(i32* @mutex_notify)
  %18 = call i32 @pthread_cond_wait(i32* @cond_wakeup, i32* @mutex_notify)
  %19 = call i32 @pthread_mutex_unlock(i32* @mutex_notify)
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i64, i64* @global_sig_receive, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %93

24:                                               ; preds = %20
  %25 = load %struct.rw_thread_info*, %struct.rw_thread_info** %6, align 8
  %26 = getelementptr inbounds %struct.rw_thread_info, %struct.rw_thread_info* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.rw_thread_info*, %struct.rw_thread_info** %6, align 8
  %29 = getelementptr inbounds %struct.rw_thread_info, %struct.rw_thread_info* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rw_thread_info*, %struct.rw_thread_info** %6, align 8
  %32 = getelementptr inbounds %struct.rw_thread_info, %struct.rw_thread_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @SPLICE_F_MOVE, align 4
  %35 = load i32, i32* @SPLICE_F_MORE, align 4
  %36 = or i32 %34, %35
  %37 = call i64 @splice(i32 %27, i32* null, i32 %30, i32* null, i64 %33, i32 %36)
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %24
  %41 = load %struct.rw_thread_info*, %struct.rw_thread_info** %6, align 8
  %42 = getelementptr inbounds %struct.rw_thread_info, %struct.rw_thread_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %94

45:                                               ; preds = %24
  %46 = load i64, i64* %3, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32, i32* @READ_WAIT_USEC, align 4
  %50 = call i32 @usleep(i32 %49)
  %51 = load %struct.rw_thread_info*, %struct.rw_thread_info** %6, align 8
  %52 = getelementptr inbounds %struct.rw_thread_info, %struct.rw_thread_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %13

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55
  store i64 0, i64* %4, align 8
  br label %57

57:                                               ; preds = %88, %56
  %58 = load %struct.rw_thread_info*, %struct.rw_thread_info** %6, align 8
  %59 = getelementptr inbounds %struct.rw_thread_info, %struct.rw_thread_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.rw_thread_info*, %struct.rw_thread_info** %6, align 8
  %62 = getelementptr inbounds %struct.rw_thread_info, %struct.rw_thread_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %3, align 8
  %65 = load i64, i64* %4, align 8
  %66 = sub nsw i64 %64, %65
  %67 = load i32, i32* @SPLICE_F_MOVE, align 4
  %68 = load i32, i32* @SPLICE_F_MORE, align 4
  %69 = or i32 %67, %68
  %70 = call i64 @splice(i32 %60, i32* null, i32 %63, i32* null, i64 %66, i32 %69)
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %57
  %74 = load %struct.rw_thread_info*, %struct.rw_thread_info** %6, align 8
  %75 = getelementptr inbounds %struct.rw_thread_info, %struct.rw_thread_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %94

78:                                               ; preds = %57
  %79 = load i64, i64* %5, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = call i32 @sleep(i32 1)
  br label %83

83:                                               ; preds = %81, %78
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* %4, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %4, align 8
  br label %88

88:                                               ; preds = %84
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* %3, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %57, label %92

92:                                               ; preds = %88
  br label %13

93:                                               ; preds = %23
  ret i8* null

94:                                               ; preds = %73, %40
  %95 = load i32, i32* @EXIT_FAILURE, align 4
  %96 = call i32 @exit(i32 %95) #3
  unreachable
}

declare dso_local i32 @bind_cpu(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @splice(i32, i32*, i32, i32*, i64, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @sleep(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
