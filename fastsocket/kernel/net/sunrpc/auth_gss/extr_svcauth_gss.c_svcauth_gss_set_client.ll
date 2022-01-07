; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_set_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_set_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32*, %struct.gss_svc_data* }
%struct.gss_svc_data = type { %struct.rpc_gss_wire_cred, %struct.rsc* }
%struct.rpc_gss_wire_cred = type { i32 }
%struct.rsc = type { i32 }

@SVC_DENIED = common dso_local global i32 0, align 4
@SVC_DROP = common dso_local global i32 0, align 4
@SVC_CLOSE = common dso_local global i32 0, align 4
@SVC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @svcauth_gss_set_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svcauth_gss_set_client(%struct.svc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.gss_svc_data*, align 8
  %5 = alloca %struct.rsc*, align 8
  %6 = alloca %struct.rpc_gss_wire_cred*, align 8
  %7 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %8 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %9 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %8, i32 0, i32 1
  %10 = load %struct.gss_svc_data*, %struct.gss_svc_data** %9, align 8
  store %struct.gss_svc_data* %10, %struct.gss_svc_data** %4, align 8
  %11 = load %struct.gss_svc_data*, %struct.gss_svc_data** %4, align 8
  %12 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %11, i32 0, i32 1
  %13 = load %struct.rsc*, %struct.rsc** %12, align 8
  store %struct.rsc* %13, %struct.rsc** %5, align 8
  %14 = load %struct.gss_svc_data*, %struct.gss_svc_data** %4, align 8
  %15 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %14, i32 0, i32 0
  store %struct.rpc_gss_wire_cred* %15, %struct.rpc_gss_wire_cred** %6, align 8
  %16 = load %struct.rsc*, %struct.rsc** %5, align 8
  %17 = getelementptr inbounds %struct.rsc, %struct.rsc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %6, align 8
  %20 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @find_gss_auth_domain(i32 %18, i32 %21)
  %23 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %24 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %26 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @SVC_DENIED, align 4
  store i32 %30, i32* %2, align 4
  br label %45

31:                                               ; preds = %1
  %32 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %33 = call i32 @svcauth_unix_set_client(%struct.svc_rqst* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SVC_DROP, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @SVC_CLOSE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %31
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @SVC_OK, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %41, %29
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32* @find_gss_auth_domain(i32, i32) #1

declare dso_local i32 @svcauth_unix_set_client(%struct.svc_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
