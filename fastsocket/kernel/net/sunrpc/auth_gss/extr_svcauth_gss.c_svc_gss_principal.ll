; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_svc_gss_principal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_svc_gss_principal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i64 }
%struct.gss_svc_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @svc_gss_principal(%struct.svc_rqst* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.gss_svc_data*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %5 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %6 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.gss_svc_data*
  store %struct.gss_svc_data* %8, %struct.gss_svc_data** %4, align 8
  %9 = load %struct.gss_svc_data*, %struct.gss_svc_data** %4, align 8
  %10 = icmp ne %struct.gss_svc_data* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.gss_svc_data*, %struct.gss_svc_data** %4, align 8
  %13 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.gss_svc_data*, %struct.gss_svc_data** %4, align 8
  %18 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %2, align 8
  br label %23

22:                                               ; preds = %11, %1
  store i8* null, i8** %2, align 8
  br label %23

23:                                               ; preds = %22, %16
  %24 = load i8*, i8** %2, align 8
  ret i8* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
