; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_gss_write_verf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_gss_write_verf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8** }
%struct.gss_ctx = type { i32 }
%struct.xdr_buf = type { i32 }
%struct.xdr_netobj = type { i64, i32* }
%struct.kvec = type { i32, i8** }

@RPC_AUTH_GSS = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.gss_ctx*, i64)* @gss_write_verf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_write_verf(%struct.svc_rqst* %0, %struct.gss_ctx* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.gss_ctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.xdr_buf, align 4
  %11 = alloca %struct.xdr_netobj, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.kvec, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.gss_ctx* %1, %struct.gss_ctx** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %15 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i32, i32* @RPC_AUTH_GSS, align 4
  %19 = call i32 @svc_putnl(%struct.TYPE_4__* %17, i32 %18)
  %20 = load i64, i64* %7, align 8
  %21 = call i8* @htonl(i64 %20)
  store i8* %21, i8** %8, align 8
  %22 = getelementptr inbounds %struct.kvec, %struct.kvec* %13, i32 0, i32 1
  store i8** %8, i8*** %22, align 8
  %23 = getelementptr inbounds %struct.kvec, %struct.kvec* %13, i32 0, i32 0
  store i32 8, i32* %23, align 8
  %24 = call i32 @xdr_buf_from_iov(%struct.kvec* %13, %struct.xdr_buf* %10)
  %25 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %26 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %32 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %30, i64 %37
  store i8** %38, i8*** %12, align 8
  %39 = load i8**, i8*** %12, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = bitcast i8** %40 to i32*
  %42 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 1
  store i32* %41, i32** %42, align 8
  %43 = load %struct.gss_ctx*, %struct.gss_ctx** %6, align 8
  %44 = call i64 @gss_get_mic(%struct.gss_ctx* %43, %struct.xdr_buf* %10, %struct.xdr_netobj* %11)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @GSS_S_COMPLETE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %83

49:                                               ; preds = %3
  %50 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i8* @htonl(i64 %51)
  %53 = load i8**, i8*** %12, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i32 1
  store i8** %54, i8*** %12, align 8
  store i8* %52, i8** %53, align 8
  %55 = load i8**, i8*** %12, align 8
  %56 = bitcast i8** %55 to i32*
  %57 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @round_up_to_quad(i32 %62)
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %64, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @memset(i32* %59, i32 0, i32 %68)
  %70 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @XDR_QUADLEN(i32 %72)
  %74 = load i8**, i8*** %12, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8*, i8** %74, i64 %75
  store i8** %76, i8*** %12, align 8
  %77 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %78 = load i8**, i8*** %12, align 8
  %79 = call i32 @xdr_ressize_check(%struct.svc_rqst* %77, i8** %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %49
  store i32 -1, i32* %4, align 4
  br label %83

82:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %81, %48
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @svc_putnl(%struct.TYPE_4__*, i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @xdr_buf_from_iov(%struct.kvec*, %struct.xdr_buf*) #1

declare dso_local i64 @gss_get_mic(%struct.gss_ctx*, %struct.xdr_buf*, %struct.xdr_netobj*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @round_up_to_quad(i32) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
