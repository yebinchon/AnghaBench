; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcauth_unix.c_svcauth_null_accept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcauth_unix.c_svcauth_null_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, i32*, %struct.svc_cred, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.svc_cred = type { i32*, i64, i64 }
%struct.TYPE_4__ = type { %struct.kvec* }
%struct.kvec = type { i32 }
%struct.TYPE_3__ = type { %struct.kvec* }

@SVC_GARBAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"svc: bad null cred\0A\00", align 1
@rpc_autherr_badcred = common dso_local global i32 0, align 4
@SVC_DENIED = common dso_local global i32 0, align 4
@RPC_AUTH_NULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"svc: bad null verf\0A\00", align 1
@rpc_autherr_badverf = common dso_local global i32 0, align 4
@SVC_CLOSE = common dso_local global i32 0, align 4
@SVC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, i32*)* @svcauth_null_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svcauth_null_accept(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kvec*, align 8
  %7 = alloca %struct.kvec*, align 8
  %8 = alloca %struct.svc_cred*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %10 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.kvec*, %struct.kvec** %11, align 8
  %13 = getelementptr inbounds %struct.kvec, %struct.kvec* %12, i64 0
  store %struct.kvec* %13, %struct.kvec** %6, align 8
  %14 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %15 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.kvec*, %struct.kvec** %16, align 8
  %18 = getelementptr inbounds %struct.kvec, %struct.kvec* %17, i64 0
  store %struct.kvec* %18, %struct.kvec** %7, align 8
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %20 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %19, i32 0, i32 2
  store %struct.svc_cred* %20, %struct.svc_cred** %8, align 8
  %21 = load %struct.svc_cred*, %struct.svc_cred** %8, align 8
  %22 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %24 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.kvec*, %struct.kvec** %6, align 8
  %26 = getelementptr inbounds %struct.kvec, %struct.kvec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 12
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @SVC_GARBAGE, align 4
  store i32 %30, i32* %3, align 4
  br label %79

31:                                               ; preds = %2
  %32 = load %struct.kvec*, %struct.kvec** %6, align 8
  %33 = call i64 @svc_getu32(%struct.kvec* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = call i32 @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @rpc_autherr_badcred, align 4
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @SVC_DENIED, align 4
  store i32 %39, i32* %3, align 4
  br label %79

40:                                               ; preds = %31
  %41 = load %struct.kvec*, %struct.kvec** %6, align 8
  %42 = call i64 @svc_getu32(%struct.kvec* %41)
  %43 = load i32, i32* @RPC_AUTH_NULL, align 4
  %44 = call i64 @htonl(i32 %43)
  %45 = icmp ne i64 %42, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = load %struct.kvec*, %struct.kvec** %6, align 8
  %48 = call i64 @svc_getu32(%struct.kvec* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46, %40
  %51 = call i32 @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @rpc_autherr_badverf, align 4
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @SVC_DENIED, align 4
  store i32 %54, i32* %3, align 4
  br label %79

55:                                               ; preds = %46
  %56 = load %struct.svc_cred*, %struct.svc_cred** %8, align 8
  %57 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %56, i32 0, i32 2
  store i64 -1, i64* %57, align 8
  %58 = load %struct.svc_cred*, %struct.svc_cred** %8, align 8
  %59 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %58, i32 0, i32 1
  store i64 -1, i64* %59, align 8
  %60 = call i32* @groups_alloc(i32 0)
  %61 = load %struct.svc_cred*, %struct.svc_cred** %8, align 8
  %62 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %61, i32 0, i32 0
  store i32* %60, i32** %62, align 8
  %63 = load %struct.svc_cred*, %struct.svc_cred** %8, align 8
  %64 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %55
  %68 = load i32, i32* @SVC_CLOSE, align 4
  store i32 %68, i32* %3, align 4
  br label %79

69:                                               ; preds = %55
  %70 = load %struct.kvec*, %struct.kvec** %7, align 8
  %71 = load i32, i32* @RPC_AUTH_NULL, align 4
  %72 = call i32 @svc_putnl(%struct.kvec* %70, i32 %71)
  %73 = load %struct.kvec*, %struct.kvec** %7, align 8
  %74 = call i32 @svc_putnl(%struct.kvec* %73, i32 0)
  %75 = load i32, i32* @RPC_AUTH_NULL, align 4
  %76 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %77 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @SVC_OK, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %69, %67, %50, %35, %29
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @svc_getu32(%struct.kvec*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32* @groups_alloc(i32) #1

declare dso_local i32 @svc_putnl(%struct.kvec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
