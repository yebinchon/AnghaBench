; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_gss_verify_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_gss_verify_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvec* }
%struct.kvec = type { i32, i32* }
%struct.rsc = type { %struct.gss_ctx* }
%struct.gss_ctx = type { i32 }
%struct.rpc_gss_wire_cred = type { i64 }
%struct.xdr_buf = type { i32 }
%struct.xdr_netobj = type { i32 }

@rpc_autherr_badverf = common dso_local global i32 0, align 4
@SVC_DENIED = common dso_local global i32 0, align 4
@RPC_AUTH_GSS = common dso_local global i64 0, align 8
@SVC_OK = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@rpcsec_gsserr_credproblem = common dso_local global i32 0, align 4
@MAXSEQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [74 x i8] c"RPC:       svcauth_gss: discarding request with large sequence number %d\0A\00", align 1
@rpcsec_gsserr_ctxproblem = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"RPC:       svcauth_gss: discarding request with old sequence number %d\0A\00", align 1
@SVC_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.rsc*, i32*, %struct.rpc_gss_wire_cred*, i32*)* @gss_verify_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_verify_header(%struct.svc_rqst* %0, %struct.rsc* %1, i32* %2, %struct.rpc_gss_wire_cred* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca %struct.rsc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rpc_gss_wire_cred*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.gss_ctx*, align 8
  %13 = alloca %struct.xdr_buf, align 4
  %14 = alloca %struct.xdr_netobj, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.kvec*, align 8
  %17 = alloca %struct.kvec, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %7, align 8
  store %struct.rsc* %1, %struct.rsc** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.rpc_gss_wire_cred* %3, %struct.rpc_gss_wire_cred** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.rsc*, %struct.rsc** %8, align 8
  %19 = getelementptr inbounds %struct.rsc, %struct.rsc* %18, i32 0, i32 0
  %20 = load %struct.gss_ctx*, %struct.gss_ctx** %19, align 8
  store %struct.gss_ctx* %20, %struct.gss_ctx** %12, align 8
  store i64 0, i64* %15, align 8
  %21 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %22 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.kvec*, %struct.kvec** %23, align 8
  %25 = getelementptr inbounds %struct.kvec, %struct.kvec* %24, i64 0
  store %struct.kvec* %25, %struct.kvec** %16, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds %struct.kvec, %struct.kvec* %17, i32 0, i32 1
  store i32* %26, i32** %27, align 8
  %28 = load %struct.kvec*, %struct.kvec** %16, align 8
  %29 = getelementptr inbounds %struct.kvec, %struct.kvec* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = ptrtoint i32* %30 to i64
  %33 = ptrtoint i32* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds %struct.kvec, %struct.kvec* %17, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = call i32 @xdr_buf_from_iov(%struct.kvec* %17, %struct.xdr_buf* %13)
  %39 = load i32, i32* @rpc_autherr_badverf, align 4
  %40 = load i32*, i32** %11, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.kvec*, %struct.kvec** %16, align 8
  %42 = getelementptr inbounds %struct.kvec, %struct.kvec* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %47

45:                                               ; preds = %5
  %46 = load i32, i32* @SVC_DENIED, align 4
  store i32 %46, i32* %6, align 4
  br label %106

47:                                               ; preds = %5
  %48 = load %struct.kvec*, %struct.kvec** %16, align 8
  %49 = call i64 @svc_getnl(%struct.kvec* %48)
  store i64 %49, i64* %15, align 8
  %50 = load i64, i64* %15, align 8
  %51 = load i64, i64* @RPC_AUTH_GSS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @SVC_DENIED, align 4
  store i32 %54, i32* %6, align 4
  br label %106

55:                                               ; preds = %47
  %56 = load %struct.kvec*, %struct.kvec** %16, align 8
  %57 = call i64 @svc_safe_getnetobj(%struct.kvec* %56, %struct.xdr_netobj* %14)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @SVC_DENIED, align 4
  store i32 %60, i32* %6, align 4
  br label %106

61:                                               ; preds = %55
  %62 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %63 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @SVC_OK, align 4
  store i32 %67, i32* %6, align 4
  br label %106

68:                                               ; preds = %61
  %69 = load %struct.gss_ctx*, %struct.gss_ctx** %12, align 8
  %70 = call i64 @gss_verify_mic(%struct.gss_ctx* %69, %struct.xdr_buf* %13, %struct.xdr_netobj* %14)
  %71 = load i64, i64* @GSS_S_COMPLETE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @rpcsec_gsserr_credproblem, align 4
  %75 = load i32*, i32** %11, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* @SVC_DENIED, align 4
  store i32 %76, i32* %6, align 4
  br label %106

77:                                               ; preds = %68
  %78 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %79 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MAXSEQ, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %85 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @dprintk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %86)
  %88 = load i32, i32* @rpcsec_gsserr_ctxproblem, align 4
  %89 = load i32*, i32** %11, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* @SVC_DENIED, align 4
  store i32 %90, i32* %6, align 4
  br label %106

91:                                               ; preds = %77
  %92 = load %struct.rsc*, %struct.rsc** %8, align 8
  %93 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %94 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @gss_check_seq_num(%struct.rsc* %92, i64 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %91
  %99 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %10, align 8
  %100 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @dprintk(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i64 %101)
  %103 = load i32, i32* @SVC_DROP, align 4
  store i32 %103, i32* %6, align 4
  br label %106

104:                                              ; preds = %91
  %105 = load i32, i32* @SVC_OK, align 4
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %104, %98, %83, %73, %66, %59, %53, %45
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @xdr_buf_from_iov(%struct.kvec*, %struct.xdr_buf*) #1

declare dso_local i64 @svc_getnl(%struct.kvec*) #1

declare dso_local i64 @svc_safe_getnetobj(%struct.kvec*, %struct.xdr_netobj*) #1

declare dso_local i64 @gss_verify_mic(%struct.gss_ctx*, %struct.xdr_buf*, %struct.xdr_netobj*) #1

declare dso_local i32 @dprintk(i8*, i64) #1

declare dso_local i32 @gss_check_seq_num(%struct.rsc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
