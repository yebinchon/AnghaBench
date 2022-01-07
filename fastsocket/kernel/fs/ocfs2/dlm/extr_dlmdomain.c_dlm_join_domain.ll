; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_join_domain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_join_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Join domain %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"dlm_wq\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ML_NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Timed out joining dlm domain %s after %u msecs\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@DLM_DOMAIN_BACKOFF_MS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"backoff %d\0A\00", align 1
@dlm_domain_events = common dso_local global i32 0, align 4
@DLM_JOIN_TIMEOUT_MSECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*)* @dlm_join_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_join_domain(%struct.dlm_ctxt* %0) #0 {
  %2 = alloca %struct.dlm_ctxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %7 = icmp ne %struct.dlm_ctxt* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %12 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %16 = call i32 @dlm_register_domain_handlers(%struct.dlm_ctxt* %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @mlog_errno(i32 %20)
  br label %114

22:                                               ; preds = %1
  %23 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %24 = call i32 @dlm_debug_init(%struct.dlm_ctxt* %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @mlog_errno(i32 %28)
  br label %114

30:                                               ; preds = %22
  %31 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %32 = call i32 @dlm_launch_thread(%struct.dlm_ctxt* %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @mlog_errno(i32 %36)
  br label %114

38:                                               ; preds = %30
  %39 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %40 = call i32 @dlm_launch_recovery_thread(%struct.dlm_ctxt* %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @mlog_errno(i32 %44)
  br label %114

46:                                               ; preds = %38
  %47 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %49 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %51 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @mlog_errno(i32 %57)
  br label %114

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %102, %59
  %61 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %62 = call i32 @dlm_try_to_join_domain(%struct.dlm_ctxt* %61)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @EAGAIN, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %101

67:                                               ; preds = %60
  %68 = load i32, i32* @current, align 4
  %69 = call i64 @signal_pending(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* @ERESTARTSYS, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %114

74:                                               ; preds = %67
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @msecs_to_jiffies(i32 90000)
  %77 = icmp ugt i32 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load i32, i32* @ERESTARTSYS, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* @ML_NOTICE, align 4
  %82 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %83 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @jiffies_to_msecs(i32 %85)
  %87 = call i32 (i32, i8*, i32, ...) @mlog(i32 %81, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %86)
  br label %114

88:                                               ; preds = %74
  %89 = load i32, i32* @jiffies, align 4
  %90 = and i32 %89, 3
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* @DLM_DOMAIN_BACKOFF_MS, align 4
  %92 = load i32, i32* %4, align 4
  %93 = mul i32 %92, %91
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %5, align 4
  %96 = add i32 %95, %94
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %4, align 4
  %98 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @msleep(i32 %99)
  br label %101

101:                                              ; preds = %88, %60
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @EAGAIN, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %60, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* %3, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @mlog_errno(i32 %111)
  br label %114

113:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %110, %78, %71, %54, %43, %35, %27, %19
  %115 = call i32 @wake_up(i32* @dlm_domain_events)
  %116 = load i32, i32* %3, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %114
  %119 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %120 = call i32 @dlm_unregister_domain_handlers(%struct.dlm_ctxt* %119)
  %121 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %122 = call i32 @dlm_debug_shutdown(%struct.dlm_ctxt* %121)
  %123 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %124 = call i32 @dlm_complete_thread(%struct.dlm_ctxt* %123)
  %125 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %126 = call i32 @dlm_complete_recovery_thread(%struct.dlm_ctxt* %125)
  %127 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %128 = call i32 @dlm_destroy_dlm_worker(%struct.dlm_ctxt* %127)
  br label %129

129:                                              ; preds = %118, %114
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @dlm_register_domain_handlers(%struct.dlm_ctxt*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @dlm_debug_init(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_launch_thread(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_launch_recovery_thread(%struct.dlm_ctxt*) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @dlm_try_to_join_domain(%struct.dlm_ctxt*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @dlm_unregister_domain_handlers(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_debug_shutdown(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_complete_thread(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_complete_recovery_thread(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_destroy_dlm_worker(%struct.dlm_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
