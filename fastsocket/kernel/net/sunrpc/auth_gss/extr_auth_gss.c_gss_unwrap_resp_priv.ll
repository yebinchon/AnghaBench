; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_unwrap_resp_priv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_unwrap_resp_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cred = type { i32 }
%struct.gss_cl_ctx = type { i32 }
%struct.rpc_rqst = type { i64, %struct.xdr_buf }
%struct.xdr_buf = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@GSS_S_CONTEXT_EXPIRED = common dso_local global i64 0, align 8
@RPCAUTH_CRED_UPTODATE = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_cred*, %struct.gss_cl_ctx*, %struct.rpc_rqst*, i32**)* @gss_unwrap_resp_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_unwrap_resp_priv(%struct.rpc_cred* %0, %struct.gss_cl_ctx* %1, %struct.rpc_rqst* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_cred*, align 8
  %7 = alloca %struct.gss_cl_ctx*, align 8
  %8 = alloca %struct.rpc_rqst*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.xdr_buf*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.rpc_cred* %0, %struct.rpc_cred** %6, align 8
  store %struct.gss_cl_ctx* %1, %struct.gss_cl_ctx** %7, align 8
  store %struct.rpc_rqst* %2, %struct.rpc_rqst** %8, align 8
  store i32** %3, i32*** %9, align 8
  %15 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %16 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %15, i32 0, i32 1
  store %struct.xdr_buf* %16, %struct.xdr_buf** %10, align 8
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %14, align 4
  %19 = load i32**, i32*** %9, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %19, align 8
  %22 = load i32, i32* %20, align 4
  %23 = call i64 @ntohl(i32 %22)
  store i64 %23, i64* %12, align 8
  %24 = load i32**, i32*** %9, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.xdr_buf*, %struct.xdr_buf** %10, align 8
  %27 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = ptrtoint i32* %25 to i64
  %34 = ptrtoint i32* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 4
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = add nsw i64 %37, %38
  %40 = load %struct.xdr_buf*, %struct.xdr_buf** %10, align 8
  %41 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %4
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %5, align 4
  br label %85

46:                                               ; preds = %4
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %12, align 8
  %49 = add nsw i64 %47, %48
  %50 = load %struct.xdr_buf*, %struct.xdr_buf** %10, align 8
  %51 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %7, align 8
  %53 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %11, align 8
  %56 = load %struct.xdr_buf*, %struct.xdr_buf** %10, align 8
  %57 = call i64 @gss_unwrap(i32 %54, i64 %55, %struct.xdr_buf* %56)
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* @GSS_S_CONTEXT_EXPIRED, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %46
  %62 = load i32, i32* @RPCAUTH_CRED_UPTODATE, align 4
  %63 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  %64 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %63, i32 0, i32 0
  %65 = call i32 @clear_bit(i32 %62, i32* %64)
  br label %66

66:                                               ; preds = %61, %46
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* @GSS_S_COMPLETE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %5, align 4
  br label %85

72:                                               ; preds = %66
  %73 = load i32**, i32*** %9, align 8
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %73, align 8
  %76 = load i32, i32* %74, align 4
  %77 = call i64 @ntohl(i32 %76)
  %78 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %79 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %5, align 4
  br label %85

84:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %82, %70, %44
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @gss_unwrap(i32, i64, %struct.xdr_buf*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
