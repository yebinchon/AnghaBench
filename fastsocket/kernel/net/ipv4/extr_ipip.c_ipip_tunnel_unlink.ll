; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipip.c_ipip_tunnel_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipip.c_ipip_tunnel_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipip_net = type { i32 }
%struct.ip_tunnel = type { %struct.ip_tunnel* }

@ipip_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipip_net*, %struct.ip_tunnel*)* @ipip_tunnel_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipip_tunnel_unlink(%struct.ipip_net* %0, %struct.ip_tunnel* %1) #0 {
  %3 = alloca %struct.ipip_net*, align 8
  %4 = alloca %struct.ip_tunnel*, align 8
  %5 = alloca %struct.ip_tunnel**, align 8
  store %struct.ipip_net* %0, %struct.ipip_net** %3, align 8
  store %struct.ip_tunnel* %1, %struct.ip_tunnel** %4, align 8
  %6 = load %struct.ipip_net*, %struct.ipip_net** %3, align 8
  %7 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %8 = call %struct.ip_tunnel** @ipip_bucket(%struct.ipip_net* %6, %struct.ip_tunnel* %7)
  store %struct.ip_tunnel** %8, %struct.ip_tunnel*** %5, align 8
  br label %9

9:                                                ; preds = %26, %2
  %10 = load %struct.ip_tunnel**, %struct.ip_tunnel*** %5, align 8
  %11 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %12 = icmp ne %struct.ip_tunnel* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %15 = load %struct.ip_tunnel**, %struct.ip_tunnel*** %5, align 8
  %16 = load %struct.ip_tunnel*, %struct.ip_tunnel** %15, align 8
  %17 = icmp eq %struct.ip_tunnel* %14, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = call i32 @write_lock_bh(i32* @ipip_lock)
  %20 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %21 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %20, i32 0, i32 0
  %22 = load %struct.ip_tunnel*, %struct.ip_tunnel** %21, align 8
  %23 = load %struct.ip_tunnel**, %struct.ip_tunnel*** %5, align 8
  store %struct.ip_tunnel* %22, %struct.ip_tunnel** %23, align 8
  %24 = call i32 @write_unlock_bh(i32* @ipip_lock)
  br label %30

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.ip_tunnel**, %struct.ip_tunnel*** %5, align 8
  %28 = load %struct.ip_tunnel*, %struct.ip_tunnel** %27, align 8
  %29 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %28, i32 0, i32 0
  store %struct.ip_tunnel** %29, %struct.ip_tunnel*** %5, align 8
  br label %9

30:                                               ; preds = %18, %9
  ret void
}

declare dso_local %struct.ip_tunnel** @ipip_bucket(%struct.ipip_net*, %struct.ip_tunnel*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
