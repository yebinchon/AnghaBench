; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_svcproc.c_nlmsvc_proc_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_svcproc.c_nlmsvc_proc_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nlm_args = type { i64, i32, i32, i32, i32 }
%struct.nlm_res = type { i32, i32 }
%struct.nlm_host = type { i64 }
%struct.nlm_file = type { i32 }

@rpc_success = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"lockd: LOCK          called\0A\00", align 1
@nlm_drop_reply = common dso_local global i32 0, align 4
@rpc_drop_reply = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"lockd: LOCK         status %d\0A\00", align 1
@nlm_lck_denied_nolocks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nlm_args*, %struct.nlm_res*)* @nlmsvc_proc_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlmsvc_proc_lock(%struct.svc_rqst* %0, %struct.nlm_args* %1, %struct.nlm_res* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nlm_args*, align 8
  %7 = alloca %struct.nlm_res*, align 8
  %8 = alloca %struct.nlm_host*, align 8
  %9 = alloca %struct.nlm_file*, align 8
  %10 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nlm_args* %1, %struct.nlm_args** %6, align 8
  store %struct.nlm_res* %2, %struct.nlm_res** %7, align 8
  %11 = load i32, i32* @rpc_success, align 4
  store i32 %11, i32* %10, align 4
  %12 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %14 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %17 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %19 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %20 = call i32 @nlmsvc_retrieve_args(%struct.svc_rqst* %18, %struct.nlm_args* %19, %struct.nlm_host** %8, %struct.nlm_file** %9)
  %21 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %22 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = icmp ne i32 %20, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %3
  %25 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %26 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @nlm_drop_reply, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @rpc_drop_reply, align 4
  br label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @rpc_success, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %4, align 4
  br label %73

36:                                               ; preds = %3
  %37 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %38 = load %struct.nlm_file*, %struct.nlm_file** %9, align 8
  %39 = load %struct.nlm_host*, %struct.nlm_host** %8, align 8
  %40 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %41 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %40, i32 0, i32 4
  %42 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %43 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %46 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %45, i32 0, i32 2
  %47 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %48 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @nlmsvc_lock(%struct.svc_rqst* %37, %struct.nlm_file* %38, %struct.nlm_host* %39, i32* %41, i32 %44, i32* %46, i32 %49)
  %51 = call i32 @cast_status(i32 %50)
  %52 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %53 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %55 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @nlm_drop_reply, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %36
  %60 = load i32, i32* @rpc_drop_reply, align 4
  store i32 %60, i32* %10, align 4
  br label %67

61:                                               ; preds = %36
  %62 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %63 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ntohl(i32 %64)
  %66 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %61, %59
  %68 = load %struct.nlm_host*, %struct.nlm_host** %8, align 8
  %69 = call i32 @nlm_release_host(%struct.nlm_host* %68)
  %70 = load %struct.nlm_file*, %struct.nlm_file** %9, align 8
  %71 = call i32 @nlm_release_file(%struct.nlm_file* %70)
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %67, %34
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @nlmsvc_retrieve_args(%struct.svc_rqst*, %struct.nlm_args*, %struct.nlm_host**, %struct.nlm_file**) #1

declare dso_local i32 @cast_status(i32) #1

declare dso_local i32 @nlmsvc_lock(%struct.svc_rqst*, %struct.nlm_file*, %struct.nlm_host*, i32*, i32, i32*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nlm_release_host(%struct.nlm_host*) #1

declare dso_local i32 @nlm_release_file(%struct.nlm_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
