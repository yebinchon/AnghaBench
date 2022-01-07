; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_prepare_to_wrap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_prepare_to_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gss_svc_data = type { i64* }

@rpc_success = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.xdr_buf*, %struct.gss_svc_data*)* @svcauth_gss_prepare_to_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @svcauth_gss_prepare_to_wrap(%struct.xdr_buf* %0, %struct.gss_svc_data* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.xdr_buf*, align 8
  %5 = alloca %struct.gss_svc_data*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.xdr_buf* %0, %struct.xdr_buf** %4, align 8
  store %struct.gss_svc_data* %1, %struct.gss_svc_data** %5, align 8
  %8 = load %struct.gss_svc_data*, %struct.gss_svc_data** %5, align 8
  %9 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  store i64* %10, i64** %6, align 8
  %11 = load %struct.gss_svc_data*, %struct.gss_svc_data** %5, align 8
  %12 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %11, i32 0, i32 0
  store i64* null, i64** %12, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 -1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @rpc_success, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i64* null, i64** %3, align 8
  br label %52

19:                                               ; preds = %2
  %20 = load i64*, i64** %6, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  store i64* %21, i64** %6, align 8
  %22 = load i64*, i64** %6, align 8
  %23 = getelementptr inbounds i64, i64* %22, i32 1
  store i64* %23, i64** %6, align 8
  %24 = load i64, i64* %22, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @ntohl(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @XDR_QUADLEN(i32 %27)
  %29 = load i64*, i64** %6, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  store i64* %31, i64** %6, align 8
  %32 = load i64*, i64** %6, align 8
  %33 = load i64*, i64** %6, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 2
  %35 = call i32 @memcpy(i64* %32, i64* %34, i32 4)
  %36 = load i64*, i64** %6, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @rpc_success, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %19
  %41 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %42 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 8
  store i32 %47, i32* %45, align 4
  store i64* null, i64** %3, align 8
  br label %52

48:                                               ; preds = %19
  %49 = load i64*, i64** %6, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %6, align 8
  %51 = load i64*, i64** %6, align 8
  store i64* %51, i64** %3, align 8
  br label %52

52:                                               ; preds = %48, %40, %18
  %53 = load i64*, i64** %3, align 8
  ret i64* %53
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
