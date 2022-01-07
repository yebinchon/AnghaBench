; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_dh.c_ip_vs_dh_update_svc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_dh.c_ip_vs_dh_update_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_service = type { %struct.ip_vs_dh_bucket* }
%struct.ip_vs_dh_bucket = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_service*)* @ip_vs_dh_update_svc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_dh_update_svc(%struct.ip_vs_service* %0) #0 {
  %2 = alloca %struct.ip_vs_service*, align 8
  %3 = alloca %struct.ip_vs_dh_bucket*, align 8
  store %struct.ip_vs_service* %0, %struct.ip_vs_service** %2, align 8
  %4 = load %struct.ip_vs_service*, %struct.ip_vs_service** %2, align 8
  %5 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %4, i32 0, i32 0
  %6 = load %struct.ip_vs_dh_bucket*, %struct.ip_vs_dh_bucket** %5, align 8
  store %struct.ip_vs_dh_bucket* %6, %struct.ip_vs_dh_bucket** %3, align 8
  %7 = load %struct.ip_vs_dh_bucket*, %struct.ip_vs_dh_bucket** %3, align 8
  %8 = call i32 @ip_vs_dh_flush(%struct.ip_vs_dh_bucket* %7)
  %9 = load %struct.ip_vs_dh_bucket*, %struct.ip_vs_dh_bucket** %3, align 8
  %10 = load %struct.ip_vs_service*, %struct.ip_vs_service** %2, align 8
  %11 = call i32 @ip_vs_dh_assign(%struct.ip_vs_dh_bucket* %9, %struct.ip_vs_service* %10)
  ret i32 0
}

declare dso_local i32 @ip_vs_dh_flush(%struct.ip_vs_dh_bucket*) #1

declare dso_local i32 @ip_vs_dh_assign(%struct.ip_vs_dh_bucket*, %struct.ip_vs_service*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
