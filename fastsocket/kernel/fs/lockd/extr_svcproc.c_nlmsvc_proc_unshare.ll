; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_svcproc.c_nlmsvc_proc_unshare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_svcproc.c_nlmsvc_proc_unshare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nlm_args = type { i32 }
%struct.nlm_res = type { i32, i32 }
%struct.nlm_host = type { i32 }
%struct.nlm_file = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"lockd: UNSHARE       called\0A\00", align 1
@nlm_lck_denied_grace_period = common dso_local global i32 0, align 4
@rpc_success = common dso_local global i32 0, align 4
@nlm_drop_reply = common dso_local global i32 0, align 4
@rpc_drop_reply = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"lockd: UNSHARE       status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nlm_args*, %struct.nlm_res*)* @nlmsvc_proc_unshare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlmsvc_proc_unshare(%struct.svc_rqst* %0, %struct.nlm_args* %1, %struct.nlm_res* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nlm_args*, align 8
  %7 = alloca %struct.nlm_res*, align 8
  %8 = alloca %struct.nlm_host*, align 8
  %9 = alloca %struct.nlm_file*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nlm_args* %1, %struct.nlm_args** %6, align 8
  store %struct.nlm_res* %2, %struct.nlm_res** %7, align 8
  %10 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %12 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %15 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = call i64 (...) @locks_in_grace()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* @nlm_lck_denied_grace_period, align 4
  %20 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %21 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @rpc_success, align 4
  store i32 %22, i32* %4, align 4
  br label %60

23:                                               ; preds = %3
  %24 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %25 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %26 = call i32 @nlmsvc_retrieve_args(%struct.svc_rqst* %24, %struct.nlm_args* %25, %struct.nlm_host** %8, %struct.nlm_file** %9)
  %27 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %28 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = icmp ne i32 %26, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %32 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @nlm_drop_reply, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @rpc_drop_reply, align 4
  br label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @rpc_success, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %4, align 4
  br label %60

42:                                               ; preds = %23
  %43 = load %struct.nlm_host*, %struct.nlm_host** %8, align 8
  %44 = load %struct.nlm_file*, %struct.nlm_file** %9, align 8
  %45 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %46 = call i32 @nlmsvc_unshare_file(%struct.nlm_host* %43, %struct.nlm_file* %44, %struct.nlm_args* %45)
  %47 = call i32 @cast_status(i32 %46)
  %48 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %49 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %51 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ntohl(i32 %52)
  %54 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.nlm_host*, %struct.nlm_host** %8, align 8
  %56 = call i32 @nlm_release_host(%struct.nlm_host* %55)
  %57 = load %struct.nlm_file*, %struct.nlm_file** %9, align 8
  %58 = call i32 @nlm_release_file(%struct.nlm_file* %57)
  %59 = load i32, i32* @rpc_success, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %42, %40, %18
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i64 @locks_in_grace(...) #1

declare dso_local i32 @nlmsvc_retrieve_args(%struct.svc_rqst*, %struct.nlm_args*, %struct.nlm_host**, %struct.nlm_file**) #1

declare dso_local i32 @cast_status(i32) #1

declare dso_local i32 @nlmsvc_unshare_file(%struct.nlm_host*, %struct.nlm_file*, %struct.nlm_args*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nlm_release_host(%struct.nlm_host*) #1

declare dso_local i32 @nlm_release_file(%struct.nlm_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
