; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_3__, i32*, i32*, %struct.xdr_buf, i64 }
%struct.TYPE_3__ = type { i32* }
%struct.xdr_buf = type { i32 }
%struct.gss_svc_data = type { %struct.TYPE_4__*, i32*, %struct.rpc_gss_wire_cred }
%struct.TYPE_4__ = type { i32 }
%struct.rpc_gss_wire_cred = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RPC_GSS_PROC_DATA = common dso_local global i64 0, align 8
@rsc_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @svcauth_gss_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svcauth_gss_release(%struct.svc_rqst* %0) #0 {
  %2 = alloca %struct.svc_rqst*, align 8
  %3 = alloca %struct.gss_svc_data*, align 8
  %4 = alloca %struct.rpc_gss_wire_cred*, align 8
  %5 = alloca %struct.xdr_buf*, align 8
  %6 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %2, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.gss_svc_data*
  store %struct.gss_svc_data* %10, %struct.gss_svc_data** %3, align 8
  %11 = load %struct.gss_svc_data*, %struct.gss_svc_data** %3, align 8
  %12 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %11, i32 0, i32 2
  store %struct.rpc_gss_wire_cred* %12, %struct.rpc_gss_wire_cred** %4, align 8
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %14 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %13, i32 0, i32 3
  store %struct.xdr_buf* %14, %struct.xdr_buf** %5, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %4, align 8
  %18 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RPC_GSS_PROC_DATA, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %53

23:                                               ; preds = %1
  %24 = load %struct.gss_svc_data*, %struct.gss_svc_data** %3, align 8
  %25 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %53

29:                                               ; preds = %23
  %30 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %31 = call i32 @total_buf_len(%struct.xdr_buf* %30)
  %32 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %33 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %4, align 8
  %35 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %52 [
    i32 129, label %37
    i32 130, label %38
    i32 128, label %45
  ]

37:                                               ; preds = %29
  br label %52

38:                                               ; preds = %29
  %39 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %40 = call i32 @svcauth_gss_wrap_resp_integ(%struct.svc_rqst* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %54

44:                                               ; preds = %38
  br label %52

45:                                               ; preds = %29
  %46 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %47 = call i32 @svcauth_gss_wrap_resp_priv(%struct.svc_rqst* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %54

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %29, %51, %44, %37
  br label %53

53:                                               ; preds = %52, %28, %22
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %50, %43
  %55 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %56 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %61 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @auth_domain_put(i32* %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %66 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %65, i32 0, i32 2
  store i32* null, i32** %66, align 8
  %67 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %68 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %73 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @auth_domain_put(i32* %74)
  br label %76

76:                                               ; preds = %71, %64
  %77 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %78 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %77, i32 0, i32 1
  store i32* null, i32** %78, align 8
  %79 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %80 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %76
  %85 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %86 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @put_group_info(i32* %88)
  br label %90

90:                                               ; preds = %84, %76
  %91 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %92 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i32* null, i32** %93, align 8
  %94 = load %struct.gss_svc_data*, %struct.gss_svc_data** %3, align 8
  %95 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = icmp ne %struct.TYPE_4__* %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = load %struct.gss_svc_data*, %struct.gss_svc_data** %3, align 8
  %100 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = call i32 @cache_put(i32* %102, i32* @rsc_cache)
  br label %104

104:                                              ; preds = %98, %90
  %105 = load %struct.gss_svc_data*, %struct.gss_svc_data** %3, align 8
  %106 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %105, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %106, align 8
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @total_buf_len(%struct.xdr_buf*) #1

declare dso_local i32 @svcauth_gss_wrap_resp_integ(%struct.svc_rqst*) #1

declare dso_local i32 @svcauth_gss_wrap_resp_priv(%struct.svc_rqst*) #1

declare dso_local i32 @auth_domain_put(i32*) #1

declare dso_local i32 @put_group_info(i32*) #1

declare dso_local i32 @cache_put(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
