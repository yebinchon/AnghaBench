; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_wrap_req_integ.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_wrap_req_integ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cred = type { i32 }
%struct.gss_cl_ctx = type { i32 }
%struct.rpc_rqst = type { i64, %struct.xdr_buf }
%struct.xdr_buf = type { i64, %struct.kvec*, %struct.kvec*, i64 }
%struct.kvec = type { i32, i8** }
%struct.xdr_netobj = type { i32, i32* }

@EIO = common dso_local global i32 0, align 4
@GSS_S_CONTEXT_EXPIRED = common dso_local global i64 0, align 8
@RPCAUTH_CRED_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_cred*, %struct.gss_cl_ctx*, i32 (%struct.rpc_rqst*, i8**, i8*)*, %struct.rpc_rqst*, i8**, i8*)* @gss_wrap_req_integ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_wrap_req_integ(%struct.rpc_cred* %0, %struct.gss_cl_ctx* %1, i32 (%struct.rpc_rqst*, i8**, i8*)* %2, %struct.rpc_rqst* %3, i8** %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpc_cred*, align 8
  %9 = alloca %struct.gss_cl_ctx*, align 8
  %10 = alloca i32 (%struct.rpc_rqst*, i8**, i8*)*, align 8
  %11 = alloca %struct.rpc_rqst*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.xdr_buf*, align 8
  %15 = alloca %struct.xdr_buf, align 8
  %16 = alloca i8**, align 8
  %17 = alloca %struct.xdr_netobj, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8**, align 8
  %20 = alloca %struct.kvec*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.rpc_cred* %0, %struct.rpc_cred** %8, align 8
  store %struct.gss_cl_ctx* %1, %struct.gss_cl_ctx** %9, align 8
  store i32 (%struct.rpc_rqst*, i8**, i8*)* %2, i32 (%struct.rpc_rqst*, i8**, i8*)** %10, align 8
  store %struct.rpc_rqst* %3, %struct.rpc_rqst** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i8* %5, i8** %13, align 8
  %23 = load %struct.rpc_rqst*, %struct.rpc_rqst** %11, align 8
  %24 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %23, i32 0, i32 1
  store %struct.xdr_buf* %24, %struct.xdr_buf** %14, align 8
  store i8** null, i8*** %16, align 8
  store i64 0, i64* %21, align 8
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %22, align 4
  %27 = load i8**, i8*** %12, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i32 1
  store i8** %28, i8*** %12, align 8
  store i8** %27, i8*** %16, align 8
  %29 = load i8**, i8*** %12, align 8
  %30 = bitcast i8** %29 to i32*
  %31 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %32 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %31, i32 0, i32 1
  %33 = load %struct.kvec*, %struct.kvec** %32, align 8
  %34 = getelementptr inbounds %struct.kvec, %struct.kvec* %33, i64 0
  %35 = getelementptr inbounds %struct.kvec, %struct.kvec* %34, i32 0, i32 1
  %36 = load i8**, i8*** %35, align 8
  %37 = bitcast i8** %36 to i32*
  %38 = ptrtoint i32* %30 to i64
  %39 = ptrtoint i32* %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 4
  store i64 %41, i64* %18, align 8
  %42 = load %struct.rpc_rqst*, %struct.rpc_rqst** %11, align 8
  %43 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i8* @htonl(i64 %44)
  %46 = load i8**, i8*** %12, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i32 1
  store i8** %47, i8*** %12, align 8
  store i8* %45, i8** %46, align 8
  %48 = load i32 (%struct.rpc_rqst*, i8**, i8*)*, i32 (%struct.rpc_rqst*, i8**, i8*)** %10, align 8
  %49 = load %struct.rpc_rqst*, %struct.rpc_rqst** %11, align 8
  %50 = load i8**, i8*** %12, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 %48(%struct.rpc_rqst* %49, i8** %50, i8* %51)
  store i32 %52, i32* %22, align 4
  %53 = load i32, i32* %22, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %6
  %56 = load i32, i32* %22, align 4
  store i32 %56, i32* %7, align 4
  br label %152

57:                                               ; preds = %6
  %58 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %59 = load i64, i64* %18, align 8
  %60 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %61 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %18, align 8
  %64 = sub nsw i64 %62, %63
  %65 = call i64 @xdr_buf_subsegment(%struct.xdr_buf* %58, %struct.xdr_buf* %15, i64 %59, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %22, align 4
  store i32 %68, i32* %7, align 4
  br label %152

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %15, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i8* @htonl(i64 %71)
  %73 = load i8**, i8*** %16, align 8
  store i8* %72, i8** %73, align 8
  %74 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %75 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %69
  %79 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %80 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %79, i32 0, i32 2
  %81 = load %struct.kvec*, %struct.kvec** %80, align 8
  %82 = getelementptr inbounds %struct.kvec, %struct.kvec* %81, i64 0
  %83 = getelementptr inbounds %struct.kvec, %struct.kvec* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %78, %69
  %87 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %88 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %87, i32 0, i32 2
  %89 = load %struct.kvec*, %struct.kvec** %88, align 8
  store %struct.kvec* %89, %struct.kvec** %20, align 8
  br label %94

90:                                               ; preds = %78
  %91 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %92 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %91, i32 0, i32 1
  %93 = load %struct.kvec*, %struct.kvec** %92, align 8
  store %struct.kvec* %93, %struct.kvec** %20, align 8
  br label %94

94:                                               ; preds = %90, %86
  %95 = load %struct.kvec*, %struct.kvec** %20, align 8
  %96 = getelementptr inbounds %struct.kvec, %struct.kvec* %95, i32 0, i32 1
  %97 = load i8**, i8*** %96, align 8
  %98 = load %struct.kvec*, %struct.kvec** %20, align 8
  %99 = getelementptr inbounds %struct.kvec, %struct.kvec* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %97, i64 %101
  store i8** %102, i8*** %12, align 8
  %103 = load i8**, i8*** %12, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 1
  %105 = bitcast i8** %104 to i32*
  %106 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %17, i32 0, i32 1
  store i32* %105, i32** %106, align 8
  %107 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %9, align 8
  %108 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @gss_get_mic(i32 %109, %struct.xdr_buf* %15, %struct.xdr_netobj* %17)
  store i64 %110, i64* %21, align 8
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %22, align 4
  %113 = load i64, i64* %21, align 8
  %114 = load i64, i64* @GSS_S_CONTEXT_EXPIRED, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %94
  %117 = load i32, i32* @RPCAUTH_CRED_UPTODATE, align 4
  %118 = load %struct.rpc_cred*, %struct.rpc_cred** %8, align 8
  %119 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %118, i32 0, i32 0
  %120 = call i32 @clear_bit(i32 %117, i32* %119)
  br label %127

121:                                              ; preds = %94
  %122 = load i64, i64* %21, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, i32* %22, align 4
  store i32 %125, i32* %7, align 4
  br label %152

126:                                              ; preds = %121
  br label %127

127:                                              ; preds = %126, %116
  %128 = load i8**, i8*** %12, align 8
  %129 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %17, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i8** @xdr_encode_opaque(i8** %128, i32* null, i32 %130)
  store i8** %131, i8*** %19, align 8
  %132 = load i8**, i8*** %19, align 8
  %133 = bitcast i8** %132 to i32*
  %134 = load i8**, i8*** %12, align 8
  %135 = bitcast i8** %134 to i32*
  %136 = ptrtoint i32* %133 to i64
  %137 = ptrtoint i32* %135 to i64
  %138 = sub i64 %136, %137
  %139 = sdiv exact i64 %138, 4
  store i64 %139, i64* %18, align 8
  %140 = load i64, i64* %18, align 8
  %141 = load %struct.kvec*, %struct.kvec** %20, align 8
  %142 = getelementptr inbounds %struct.kvec, %struct.kvec* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %140
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %142, align 8
  %147 = load i64, i64* %18, align 8
  %148 = load %struct.xdr_buf*, %struct.xdr_buf** %14, align 8
  %149 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, %147
  store i64 %151, i64* %149, align 8
  store i32 0, i32* %7, align 4
  br label %152

152:                                              ; preds = %127, %124, %67, %55
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local i8* @htonl(i64) #1

declare dso_local i64 @xdr_buf_subsegment(%struct.xdr_buf*, %struct.xdr_buf*, i64, i64) #1

declare dso_local i64 @gss_get_mic(i32, %struct.xdr_buf*, %struct.xdr_netobj*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i8** @xdr_encode_opaque(i8**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
