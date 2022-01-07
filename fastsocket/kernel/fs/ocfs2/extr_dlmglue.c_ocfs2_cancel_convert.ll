; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_cancel_convert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_cancel_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_lock_res = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"lock %s\0A\00", align 1
@DLM_LKF_CANCEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"ocfs2_dlm_unlock\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"lock %s return from ocfs2_dlm_unlock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_lock_res*)* @ocfs2_cancel_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_cancel_convert(%struct.ocfs2_super* %0, %struct.ocfs2_lock_res* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.ocfs2_lock_res*, align 8
  %5 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.ocfs2_lock_res* %1, %struct.ocfs2_lock_res** %4, align 8
  %6 = call i32 (...) @mlog_entry_void()
  %7 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %8 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %12 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %15 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %14, i32 0, i32 1
  %16 = load i32, i32* @DLM_LKF_CANCEL, align 4
  %17 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %18 = call i32 @ocfs2_dlm_unlock(i32 %13, i32* %15, i32 %16, %struct.ocfs2_lock_res* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %24 = call i32 @ocfs2_log_dlm_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %22, %struct.ocfs2_lock_res* %23)
  %25 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %26 = call i32 @ocfs2_recover_from_dlm_error(%struct.ocfs2_lock_res* %25, i32 0)
  br label %27

27:                                               ; preds = %21, %2
  %28 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %29 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @mlog_exit(i32 %32)
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @mlog(i32, i8*, i32) #1

declare dso_local i32 @ocfs2_dlm_unlock(i32, i32*, i32, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_log_dlm_error(i8*, i32, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_recover_from_dlm_error(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
