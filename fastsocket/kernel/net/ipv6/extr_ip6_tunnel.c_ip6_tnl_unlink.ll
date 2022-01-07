; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_tnl_net = type { i32 }
%struct.ip6_tnl = type { %struct.ip6_tnl*, i32 }

@ip6_tnl_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip6_tnl_net*, %struct.ip6_tnl*)* @ip6_tnl_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_tnl_unlink(%struct.ip6_tnl_net* %0, %struct.ip6_tnl* %1) #0 {
  %3 = alloca %struct.ip6_tnl_net*, align 8
  %4 = alloca %struct.ip6_tnl*, align 8
  %5 = alloca %struct.ip6_tnl**, align 8
  store %struct.ip6_tnl_net* %0, %struct.ip6_tnl_net** %3, align 8
  store %struct.ip6_tnl* %1, %struct.ip6_tnl** %4, align 8
  %6 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %3, align 8
  %7 = load %struct.ip6_tnl*, %struct.ip6_tnl** %4, align 8
  %8 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %7, i32 0, i32 1
  %9 = call %struct.ip6_tnl** @ip6_tnl_bucket(%struct.ip6_tnl_net* %6, i32* %8)
  store %struct.ip6_tnl** %9, %struct.ip6_tnl*** %5, align 8
  br label %10

10:                                               ; preds = %27, %2
  %11 = load %struct.ip6_tnl**, %struct.ip6_tnl*** %5, align 8
  %12 = load %struct.ip6_tnl*, %struct.ip6_tnl** %11, align 8
  %13 = icmp ne %struct.ip6_tnl* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load %struct.ip6_tnl*, %struct.ip6_tnl** %4, align 8
  %16 = load %struct.ip6_tnl**, %struct.ip6_tnl*** %5, align 8
  %17 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %18 = icmp eq %struct.ip6_tnl* %15, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = call i32 @write_lock_bh(i32* @ip6_tnl_lock)
  %21 = load %struct.ip6_tnl*, %struct.ip6_tnl** %4, align 8
  %22 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %21, i32 0, i32 0
  %23 = load %struct.ip6_tnl*, %struct.ip6_tnl** %22, align 8
  %24 = load %struct.ip6_tnl**, %struct.ip6_tnl*** %5, align 8
  store %struct.ip6_tnl* %23, %struct.ip6_tnl** %24, align 8
  %25 = call i32 @write_unlock_bh(i32* @ip6_tnl_lock)
  br label %31

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.ip6_tnl**, %struct.ip6_tnl*** %5, align 8
  %29 = load %struct.ip6_tnl*, %struct.ip6_tnl** %28, align 8
  %30 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %29, i32 0, i32 0
  store %struct.ip6_tnl** %30, %struct.ip6_tnl*** %5, align 8
  br label %10

31:                                               ; preds = %19, %10
  ret void
}

declare dso_local %struct.ip6_tnl** @ip6_tnl_bucket(%struct.ip6_tnl_net*, i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
