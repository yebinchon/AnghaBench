; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_gss_svc_searchbyctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_gss_svc_searchbyctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsc = type { i32, i32 }
%struct.xdr_netobj = type { i32, i32 }

@rsc_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rsc* (%struct.xdr_netobj*)* @gss_svc_searchbyctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rsc* @gss_svc_searchbyctx(%struct.xdr_netobj* %0) #0 {
  %2 = alloca %struct.rsc*, align 8
  %3 = alloca %struct.xdr_netobj*, align 8
  %4 = alloca %struct.rsc, align 4
  %5 = alloca %struct.rsc*, align 8
  store %struct.xdr_netobj* %0, %struct.xdr_netobj** %3, align 8
  %6 = call i32 @memset(%struct.rsc* %4, i32 0, i32 8)
  %7 = getelementptr inbounds %struct.rsc, %struct.rsc* %4, i32 0, i32 1
  %8 = load %struct.xdr_netobj*, %struct.xdr_netobj** %3, align 8
  %9 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.xdr_netobj*, %struct.xdr_netobj** %3, align 8
  %12 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @dup_to_netobj(i32* %7, i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.rsc* null, %struct.rsc** %2, align 8
  br label %31

17:                                               ; preds = %1
  %18 = call %struct.rsc* @rsc_lookup(%struct.rsc* %4)
  store %struct.rsc* %18, %struct.rsc** %5, align 8
  %19 = call i32 @rsc_free(%struct.rsc* %4)
  %20 = load %struct.rsc*, %struct.rsc** %5, align 8
  %21 = icmp ne %struct.rsc* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store %struct.rsc* null, %struct.rsc** %2, align 8
  br label %31

23:                                               ; preds = %17
  %24 = load %struct.rsc*, %struct.rsc** %5, align 8
  %25 = getelementptr inbounds %struct.rsc, %struct.rsc* %24, i32 0, i32 0
  %26 = call i64 @cache_check(i32* @rsc_cache, i32* %25, i32* null)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store %struct.rsc* null, %struct.rsc** %2, align 8
  br label %31

29:                                               ; preds = %23
  %30 = load %struct.rsc*, %struct.rsc** %5, align 8
  store %struct.rsc* %30, %struct.rsc** %2, align 8
  br label %31

31:                                               ; preds = %29, %28, %22, %16
  %32 = load %struct.rsc*, %struct.rsc** %2, align 8
  ret %struct.rsc* %32
}

declare dso_local i32 @memset(%struct.rsc*, i32, i32) #1

declare dso_local i64 @dup_to_netobj(i32*, i32, i32) #1

declare dso_local %struct.rsc* @rsc_lookup(%struct.rsc*) #1

declare dso_local i32 @rsc_free(%struct.rsc*) #1

declare dso_local i64 @cache_check(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
