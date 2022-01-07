; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_svc4proc.c_nlm4svc_proc_share.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_svc4proc.c_nlm4svc_proc_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nlm_args = type { i32, i32 }
%struct.nlm_res = type { i32, i32 }
%struct.nlm_host = type { i32 }
%struct.nlm_file = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"lockd: SHARE         called\0A\00", align 1
@nlm_lck_denied_grace_period = common dso_local global i32 0, align 4
@rpc_success = common dso_local global i32 0, align 4
@nlm_drop_reply = common dso_local global i32 0, align 4
@rpc_drop_reply = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"lockd: SHARE         status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nlm_args*, %struct.nlm_res*)* @nlm4svc_proc_share to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm4svc_proc_share(%struct.svc_rqst* %0, %struct.nlm_args* %1, %struct.nlm_res* %2) #0 {
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
  %12 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %15 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = call i64 (...) @locks_in_grace()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %20 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @nlm_lck_denied_grace_period, align 4
  %25 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %26 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @rpc_success, align 4
  store i32 %27, i32* %4, align 4
  br label %64

28:                                               ; preds = %18, %3
  %29 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %30 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %31 = call i32 @nlm4svc_retrieve_args(%struct.svc_rqst* %29, %struct.nlm_args* %30, %struct.nlm_host** %8, %struct.nlm_file** %9)
  %32 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %33 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = icmp ne i32 %31, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  %36 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %37 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @nlm_drop_reply, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @rpc_drop_reply, align 4
  br label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @rpc_success, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %4, align 4
  br label %64

47:                                               ; preds = %28
  %48 = load %struct.nlm_host*, %struct.nlm_host** %8, align 8
  %49 = load %struct.nlm_file*, %struct.nlm_file** %9, align 8
  %50 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %51 = call i32 @nlmsvc_share_file(%struct.nlm_host* %48, %struct.nlm_file* %49, %struct.nlm_args* %50)
  %52 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %53 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %55 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ntohl(i32 %56)
  %58 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.nlm_host*, %struct.nlm_host** %8, align 8
  %60 = call i32 @nlm_release_host(%struct.nlm_host* %59)
  %61 = load %struct.nlm_file*, %struct.nlm_file** %9, align 8
  %62 = call i32 @nlm_release_file(%struct.nlm_file* %61)
  %63 = load i32, i32* @rpc_success, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %47, %45, %23
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i64 @locks_in_grace(...) #1

declare dso_local i32 @nlm4svc_retrieve_args(%struct.svc_rqst*, %struct.nlm_args*, %struct.nlm_host**, %struct.nlm_file**) #1

declare dso_local i32 @nlmsvc_share_file(%struct.nlm_host*, %struct.nlm_file*, %struct.nlm_args*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nlm_release_host(%struct.nlm_host*) #1

declare dso_local i32 @nlm_release_file(%struct.nlm_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
