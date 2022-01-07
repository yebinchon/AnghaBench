; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c___ip_vs_bind_svc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c___ip_vs_bind_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_dest = type { %struct.ip_vs_service* }
%struct.ip_vs_service = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_dest*, %struct.ip_vs_service*)* @__ip_vs_bind_svc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ip_vs_bind_svc(%struct.ip_vs_dest* %0, %struct.ip_vs_service* %1) #0 {
  %3 = alloca %struct.ip_vs_dest*, align 8
  %4 = alloca %struct.ip_vs_service*, align 8
  store %struct.ip_vs_dest* %0, %struct.ip_vs_dest** %3, align 8
  store %struct.ip_vs_service* %1, %struct.ip_vs_service** %4, align 8
  %5 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %6 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %5, i32 0, i32 0
  %7 = call i32 @atomic_inc(i32* %6)
  %8 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %9 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %10 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %9, i32 0, i32 0
  store %struct.ip_vs_service* %8, %struct.ip_vs_service** %10, align 8
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
