; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.rpc_cred* }
%struct.rpc_cred = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.gss_cl_ctx = type { i32 }
%struct.kvec = type { i32, i32* }
%struct.xdr_buf = type { i32 }
%struct.xdr_netobj = type { i64, i32* }

@.str = private unnamed_addr constant [23 x i8] c"RPC: %5u gss_validate\0A\00", align 1
@RPC_MAX_AUTH_SIZE = common dso_local global i64 0, align 8
@RPC_AUTH_GSS = common dso_local global i64 0, align 8
@GSS_S_CONTEXT_EXPIRED = common dso_local global i64 0, align 8
@RPCAUTH_CRED_UPTODATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"RPC: %5u gss_validate: gss_verify_mic returned error 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"RPC: %5u gss_validate: gss_verify_mic succeeded.\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"RPC: %5u gss_validate failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.rpc_task*, i32*)* @gss_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gss_validate(%struct.rpc_task* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rpc_cred*, align 8
  %7 = alloca %struct.gss_cl_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvec, align 8
  %10 = alloca %struct.xdr_buf, align 4
  %11 = alloca %struct.xdr_netobj, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %16 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.rpc_cred*, %struct.rpc_cred** %18, align 8
  store %struct.rpc_cred* %19, %struct.rpc_cred** %6, align 8
  %20 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  %21 = call %struct.gss_cl_ctx* @gss_cred_get_ctx(%struct.rpc_cred* %20)
  store %struct.gss_cl_ctx* %21, %struct.gss_cl_ctx** %7, align 8
  %22 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %23 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %5, align 8
  %28 = load i32, i32* %26, align 4
  %29 = call i64 @ntohl(i32 %28)
  store i64 %29, i64* %12, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %5, align 8
  %32 = load i32, i32* %30, align 4
  %33 = call i64 @ntohl(i32 %32)
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* @RPC_MAX_AUTH_SIZE, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  br label %96

37:                                               ; preds = %2
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @RPC_AUTH_GSS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %96

42:                                               ; preds = %37
  %43 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %44 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @htonl(i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = getelementptr inbounds %struct.kvec, %struct.kvec* %9, i32 0, i32 1
  store i32* %8, i32** %49, align 8
  %50 = getelementptr inbounds %struct.kvec, %struct.kvec* %9, i32 0, i32 0
  store i32 4, i32* %50, align 8
  %51 = call i32 @xdr_buf_from_iov(%struct.kvec* %9, %struct.xdr_buf* %10)
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 1
  store i32* %52, i32** %53, align 8
  %54 = load i64, i64* %13, align 8
  %55 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 0
  store i64 %54, i64* %55, align 8
  %56 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %7, align 8
  %57 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @gss_verify_mic(i32 %58, %struct.xdr_buf* %10, %struct.xdr_netobj* %11)
  store i64 %59, i64* %14, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* @GSS_S_CONTEXT_EXPIRED, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %42
  %64 = load i32, i32* @RPCAUTH_CRED_UPTODATE, align 4
  %65 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  %66 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %65, i32 0, i32 1
  %67 = call i32 @clear_bit(i32 %64, i32* %66)
  br label %68

68:                                               ; preds = %63, %42
  %69 = load i64, i64* %14, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %73 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* %14, align 8
  %76 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %74, i64 %75)
  br label %96

77:                                               ; preds = %68
  %78 = load i64, i64* %13, align 8
  %79 = call i32 @XDR_QUADLEN(i64 %78)
  %80 = add nsw i32 %79, 2
  %81 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  %82 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 4
  %85 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %7, align 8
  %86 = call i32 @gss_put_ctx(%struct.gss_cl_ctx* %85)
  %87 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %88 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i32*, i32** %5, align 8
  %92 = load i64, i64* %13, align 8
  %93 = call i32 @XDR_QUADLEN(i64 %92)
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32* %95, i32** %3, align 8
  br label %103

96:                                               ; preds = %71, %41, %36
  %97 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %7, align 8
  %98 = call i32 @gss_put_ctx(%struct.gss_cl_ctx* %97)
  %99 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %100 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  store i32* null, i32** %3, align 8
  br label %103

103:                                              ; preds = %96, %77
  %104 = load i32*, i32** %3, align 8
  ret i32* %104
}

declare dso_local %struct.gss_cl_ctx* @gss_cred_get_ctx(%struct.rpc_cred*) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @xdr_buf_from_iov(%struct.kvec*, %struct.xdr_buf*) #1

declare dso_local i64 @gss_verify_mic(i32, %struct.xdr_buf*, %struct.xdr_netobj*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @XDR_QUADLEN(i64) #1

declare dso_local i32 @gss_put_ctx(%struct.gss_cl_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
