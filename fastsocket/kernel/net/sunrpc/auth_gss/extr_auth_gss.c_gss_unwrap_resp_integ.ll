; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_unwrap_resp_integ.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_unwrap_resp_integ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cred = type { i32 }
%struct.gss_cl_ctx = type { i32 }
%struct.rpc_rqst = type { i64, %struct.xdr_buf }
%struct.xdr_buf = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.xdr_netobj = type { i32 }

@EIO = common dso_local global i32 0, align 4
@GSS_S_CONTEXT_EXPIRED = common dso_local global i32 0, align 4
@RPCAUTH_CRED_UPTODATE = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_cred*, %struct.gss_cl_ctx*, %struct.rpc_rqst*, i32**)* @gss_unwrap_resp_integ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_unwrap_resp_integ(%struct.rpc_cred* %0, %struct.gss_cl_ctx* %1, %struct.rpc_rqst* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_cred*, align 8
  %7 = alloca %struct.gss_cl_ctx*, align 8
  %8 = alloca %struct.rpc_rqst*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.xdr_buf*, align 8
  %11 = alloca %struct.xdr_buf, align 8
  %12 = alloca %struct.xdr_netobj, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.rpc_cred* %0, %struct.rpc_cred** %6, align 8
  store %struct.gss_cl_ctx* %1, %struct.gss_cl_ctx** %7, align 8
  store %struct.rpc_rqst* %2, %struct.rpc_rqst** %8, align 8
  store i32** %3, i32*** %9, align 8
  %18 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %19 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %18, i32 0, i32 1
  store %struct.xdr_buf* %19, %struct.xdr_buf** %10, align 8
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %17, align 4
  %22 = load i32**, i32*** %9, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %22, align 8
  %25 = load i32, i32* %23, align 4
  %26 = call i64 @ntohl(i32 %25)
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = and i32 %28, 3
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %17, align 4
  store i32 %32, i32* %5, align 4
  br label %107

33:                                               ; preds = %4
  %34 = load i32**, i32*** %9, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.xdr_buf*, %struct.xdr_buf** %10, align 8
  %37 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = ptrtoint i32* %35 to i64
  %44 = ptrtoint i32* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 4
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.xdr_buf*, %struct.xdr_buf** %10, align 8
  %53 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %33
  %57 = load i32, i32* %17, align 4
  store i32 %57, i32* %5, align 4
  br label %107

58:                                               ; preds = %33
  %59 = load i32**, i32*** %9, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %59, align 8
  %62 = load i32, i32* %60, align 4
  %63 = call i64 @ntohl(i32 %62)
  %64 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %65 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* %17, align 4
  store i32 %69, i32* %5, align 4
  br label %107

70:                                               ; preds = %58
  %71 = load %struct.xdr_buf*, %struct.xdr_buf** %10, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %13, align 4
  %75 = sub nsw i32 %73, %74
  %76 = call i64 @xdr_buf_subsegment(%struct.xdr_buf* %71, %struct.xdr_buf* %11, i32 %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* %17, align 4
  store i32 %79, i32* %5, align 4
  br label %107

80:                                               ; preds = %70
  %81 = load %struct.xdr_buf*, %struct.xdr_buf** %10, align 8
  %82 = load i32, i32* %14, align 4
  %83 = call i64 @xdr_buf_read_netobj(%struct.xdr_buf* %81, %struct.xdr_netobj* %12, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %17, align 4
  store i32 %86, i32* %5, align 4
  br label %107

87:                                               ; preds = %80
  %88 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %7, align 8
  %89 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @gss_verify_mic(i32 %90, %struct.xdr_buf* %11, %struct.xdr_netobj* %12)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* @GSS_S_CONTEXT_EXPIRED, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %87
  %96 = load i32, i32* @RPCAUTH_CRED_UPTODATE, align 4
  %97 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  %98 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %97, i32 0, i32 0
  %99 = call i32 @clear_bit(i32 %96, i32* %98)
  br label %100

100:                                              ; preds = %95, %87
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* @GSS_S_COMPLETE, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* %17, align 4
  store i32 %105, i32* %5, align 4
  br label %107

106:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %104, %85, %78, %68, %56, %31
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @xdr_buf_subsegment(%struct.xdr_buf*, %struct.xdr_buf*, i32, i32) #1

declare dso_local i64 @xdr_buf_read_netobj(%struct.xdr_buf*, %struct.xdr_netobj*, i32) #1

declare dso_local i32 @gss_verify_mic(i32, %struct.xdr_buf*, %struct.xdr_netobj*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
