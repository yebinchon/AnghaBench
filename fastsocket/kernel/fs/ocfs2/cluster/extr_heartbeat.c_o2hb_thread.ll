; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2hb_region = type { i32, i32, i32*, i32 }
%struct.o2hb_bio_wait_ctxt = type { i32 }
%struct.timeval = type { i64, i32 }

@ML_HEARTBEAT = common dso_local global i32 0, align 4
@ML_KTHREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"hb thread running\0A\00", align 1
@current = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"start = %lu.%lu, end = %lu.%lu, msec = %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"hb thread exiting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @o2hb_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2hb_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.o2hb_region*, align 8
  %6 = alloca %struct.o2hb_bio_wait_ctxt, align 4
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.o2hb_region*
  store %struct.o2hb_region* %11, %struct.o2hb_region** %5, align 8
  %12 = load i32, i32* @ML_HEARTBEAT, align 4
  %13 = load i32, i32* @ML_KTHREAD, align 4
  %14 = or i32 %12, %13
  %15 = call i32 (i32, i8*, ...) @mlog(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @current, align 4
  %17 = call i32 @set_user_nice(i32 %16, i32 -20)
  br label %18

18:                                               ; preds = %68, %1
  %19 = call i32 (...) @kthread_should_stop()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load %struct.o2hb_region*, %struct.o2hb_region** %5, align 8
  %23 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %21, %18
  %28 = phi i1 [ false, %18 ], [ %26, %21 ]
  br i1 %28, label %29, label %69

29:                                               ; preds = %27
  %30 = call i32 @do_gettimeofday(%struct.timeval* %7)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %41, %29
  %32 = load %struct.o2hb_region*, %struct.o2hb_region** %5, align 8
  %33 = call i32 @o2hb_do_disk_heartbeat(%struct.o2hb_region* %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  %40 = icmp slt i32 %39, 2
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i1 [ false, %34 ], [ %40, %37 ]
  br i1 %42, label %31, label %43

43:                                               ; preds = %41
  %44 = call i32 @do_gettimeofday(%struct.timeval* %8)
  %45 = call i32 @o2hb_elapsed_msecs(%struct.timeval* %7, %struct.timeval* %8)
  store i32 %45, i32* %9, align 4
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %47, i64 %49, i32 %51, i64 %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.o2hb_region*, %struct.o2hb_region** %5, align 8
  %58 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %43
  %62 = load %struct.o2hb_region*, %struct.o2hb_region** %5, align 8
  %63 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sub i32 %64, %65
  %67 = call i32 @msleep_interruptible(i32 %66)
  br label %68

68:                                               ; preds = %61, %43
  br label %18

69:                                               ; preds = %27
  %70 = load %struct.o2hb_region*, %struct.o2hb_region** %5, align 8
  %71 = call i32 @o2hb_disarm_write_timeout(%struct.o2hb_region* %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %93, %69
  %73 = load %struct.o2hb_region*, %struct.o2hb_region** %5, align 8
  %74 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %3, align 4
  %79 = load %struct.o2hb_region*, %struct.o2hb_region** %5, align 8
  %80 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br label %83

83:                                               ; preds = %77, %72
  %84 = phi i1 [ false, %72 ], [ %82, %77 ]
  br i1 %84, label %85, label %96

85:                                               ; preds = %83
  %86 = load %struct.o2hb_region*, %struct.o2hb_region** %5, align 8
  %87 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = call i32 @o2hb_shutdown_slot(i32* %91)
  br label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %72

96:                                               ; preds = %83
  %97 = load %struct.o2hb_region*, %struct.o2hb_region** %5, align 8
  %98 = call i32 @o2hb_prepare_block(%struct.o2hb_region* %97, i32 0)
  %99 = load %struct.o2hb_region*, %struct.o2hb_region** %5, align 8
  %100 = call i32 @o2hb_issue_node_write(%struct.o2hb_region* %99, %struct.o2hb_bio_wait_ctxt* %6)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load %struct.o2hb_region*, %struct.o2hb_region** %5, align 8
  %105 = call i32 @o2hb_wait_on_io(%struct.o2hb_region* %104, %struct.o2hb_bio_wait_ctxt* %6)
  br label %109

106:                                              ; preds = %96
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @mlog_errno(i32 %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32, i32* @ML_HEARTBEAT, align 4
  %111 = load i32, i32* @ML_KTHREAD, align 4
  %112 = or i32 %110, %111
  %113 = call i32 (i32, i8*, ...) @mlog(i32 %112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @set_user_nice(i32, i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @o2hb_do_disk_heartbeat(%struct.o2hb_region*) #1

declare dso_local i32 @o2hb_elapsed_msecs(%struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @o2hb_disarm_write_timeout(%struct.o2hb_region*) #1

declare dso_local i32 @o2hb_shutdown_slot(i32*) #1

declare dso_local i32 @o2hb_prepare_block(%struct.o2hb_region*, i32) #1

declare dso_local i32 @o2hb_issue_node_write(%struct.o2hb_region*, %struct.o2hb_bio_wait_ctxt*) #1

declare dso_local i32 @o2hb_wait_on_io(%struct.o2hb_region*, %struct.o2hb_bio_wait_ctxt*) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
