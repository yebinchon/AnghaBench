; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_gss_write_init_verf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_gss_write_init_verf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.rsi = type { i64, i32 }
%struct.rsc = type { i32, i32 }

@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@GSS_S_NO_CONTEXT = common dso_local global i64 0, align 8
@GSS_SEQ_WIN = common dso_local global i32 0, align 4
@rsc_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.rsi*)* @gss_write_init_verf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_write_init_verf(%struct.svc_rqst* %0, %struct.rsi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.rsi*, align 8
  %6 = alloca %struct.rsc*, align 8
  %7 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.rsi* %1, %struct.rsi** %5, align 8
  %8 = load %struct.rsi*, %struct.rsi** %5, align 8
  %9 = getelementptr inbounds %struct.rsi, %struct.rsi* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @GSS_S_COMPLETE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %15 = call i32 @gss_write_null_verf(%struct.svc_rqst* %14)
  store i32 %15, i32* %3, align 4
  br label %39

16:                                               ; preds = %2
  %17 = load %struct.rsi*, %struct.rsi** %5, align 8
  %18 = getelementptr inbounds %struct.rsi, %struct.rsi* %17, i32 0, i32 1
  %19 = call %struct.rsc* @gss_svc_searchbyctx(i32* %18)
  store %struct.rsc* %19, %struct.rsc** %6, align 8
  %20 = load %struct.rsc*, %struct.rsc** %6, align 8
  %21 = icmp eq %struct.rsc* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i64, i64* @GSS_S_NO_CONTEXT, align 8
  %24 = load %struct.rsi*, %struct.rsi** %5, align 8
  %25 = getelementptr inbounds %struct.rsi, %struct.rsi* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %27 = call i32 @gss_write_null_verf(%struct.svc_rqst* %26)
  store i32 %27, i32* %3, align 4
  br label %39

28:                                               ; preds = %16
  %29 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %30 = load %struct.rsc*, %struct.rsc** %6, align 8
  %31 = getelementptr inbounds %struct.rsc, %struct.rsc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GSS_SEQ_WIN, align 4
  %34 = call i32 @gss_write_verf(%struct.svc_rqst* %29, i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.rsc*, %struct.rsc** %6, align 8
  %36 = getelementptr inbounds %struct.rsc, %struct.rsc* %35, i32 0, i32 0
  %37 = call i32 @cache_put(i32* %36, i32* @rsc_cache)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %28, %22, %13
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @gss_write_null_verf(%struct.svc_rqst*) #1

declare dso_local %struct.rsc* @gss_svc_searchbyctx(i32*) #1

declare dso_local i32 @gss_write_verf(%struct.svc_rqst*, i32, i32) #1

declare dso_local i32 @cache_put(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
