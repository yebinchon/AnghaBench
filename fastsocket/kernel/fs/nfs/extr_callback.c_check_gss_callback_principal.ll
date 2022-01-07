; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_callback.c_check_gss_callback_principal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_callback.c_check_gss_callback_principal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i64, %struct.rpc_clnt* }
%struct.rpc_clnt = type { i32 }
%struct.svc_rqst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@RPC_AUTH_GSS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"nfs@\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_gss_callback_principal(%struct.nfs_client* %0, %struct.svc_rqst* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_client*, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.rpc_clnt*, align 8
  %7 = alloca i8*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %4, align 8
  store %struct.svc_rqst* %1, %struct.svc_rqst** %5, align 8
  %8 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %9 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %8, i32 0, i32 1
  %10 = load %struct.rpc_clnt*, %struct.rpc_clnt** %9, align 8
  store %struct.rpc_clnt* %10, %struct.rpc_clnt** %6, align 8
  %11 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %12 = call i8* @svc_gss_principal(%struct.svc_rqst* %11)
  store i8* %12, i8** %7, align 8
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %14 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RPC_AUTH_GSS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %47

21:                                               ; preds = %2
  %22 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %23 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %47

27:                                               ; preds = %21
  %28 = load i8*, i8** %7, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %47

31:                                               ; preds = %27
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @memcmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %47

36:                                               ; preds = %31
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 4
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %41 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @strcmp(i8* %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %47

46:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %45, %35, %30, %26, %20
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i8* @svc_gss_principal(%struct.svc_rqst*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
