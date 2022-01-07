; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_bind_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_bind_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32 }

@ip_vs_nat_xmit = common dso_local global i32 0, align 4
@ip_vs_tunnel_xmit = common dso_local global i32 0, align 4
@ip_vs_dr_xmit = common dso_local global i32 0, align 4
@ip_vs_null_xmit = common dso_local global i32 0, align 4
@ip_vs_bypass_xmit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_conn*)* @ip_vs_bind_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_bind_xmit(%struct.ip_vs_conn* %0) #0 {
  %2 = alloca %struct.ip_vs_conn*, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %2, align 8
  %3 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %4 = call i32 @IP_VS_FWD_METHOD(%struct.ip_vs_conn* %3)
  switch i32 %4, label %25 [
    i32 129, label %5
    i32 128, label %9
    i32 131, label %13
    i32 130, label %17
    i32 132, label %21
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @ip_vs_nat_xmit, align 4
  %7 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %8 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  br label %25

9:                                                ; preds = %1
  %10 = load i32, i32* @ip_vs_tunnel_xmit, align 4
  %11 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %12 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  br label %25

13:                                               ; preds = %1
  %14 = load i32, i32* @ip_vs_dr_xmit, align 4
  %15 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %16 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %25

17:                                               ; preds = %1
  %18 = load i32, i32* @ip_vs_null_xmit, align 4
  %19 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %20 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @ip_vs_bypass_xmit, align 4
  %23 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %24 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %1, %21, %17, %13, %9, %5
  ret void
}

declare dso_local i32 @IP_VS_FWD_METHOD(%struct.ip_vs_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
