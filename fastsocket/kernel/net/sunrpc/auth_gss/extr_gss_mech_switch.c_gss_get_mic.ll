; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_mech_switch.c_gss_get_mic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_mech_switch.c_gss_get_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.xdr_buf = type { i32 }
%struct.xdr_netobj = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_get_mic(%struct.gss_ctx* %0, %struct.xdr_buf* %1, %struct.xdr_netobj* %2) #0 {
  %4 = alloca %struct.gss_ctx*, align 8
  %5 = alloca %struct.xdr_buf*, align 8
  %6 = alloca %struct.xdr_netobj*, align 8
  store %struct.gss_ctx* %0, %struct.gss_ctx** %4, align 8
  store %struct.xdr_buf* %1, %struct.xdr_buf** %5, align 8
  store %struct.xdr_netobj* %2, %struct.xdr_netobj** %6, align 8
  %7 = load %struct.gss_ctx*, %struct.gss_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.gss_ctx, %struct.gss_ctx* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.gss_ctx*, %struct.xdr_buf*, %struct.xdr_netobj*)**
  %14 = load i32 (%struct.gss_ctx*, %struct.xdr_buf*, %struct.xdr_netobj*)*, i32 (%struct.gss_ctx*, %struct.xdr_buf*, %struct.xdr_netobj*)** %13, align 8
  %15 = load %struct.gss_ctx*, %struct.gss_ctx** %4, align 8
  %16 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %17 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %18 = call i32 %14(%struct.gss_ctx* %15, %struct.xdr_buf* %16, %struct.xdr_netobj* %17)
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
