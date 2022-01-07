; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_flowlabel.c_fl_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_flowlabel.c_fl_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6_pinfo = type { %struct.ipv6_fl_socklist* }
%struct.ipv6_fl_socklist = type { %struct.ipv6_fl_socklist*, %struct.ip6_flowlabel* }
%struct.ip6_flowlabel = type { i32 }

@ip6_sk_fl_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipv6_pinfo*, %struct.ipv6_fl_socklist*, %struct.ip6_flowlabel*)* @fl_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fl_link(%struct.ipv6_pinfo* %0, %struct.ipv6_fl_socklist* %1, %struct.ip6_flowlabel* %2) #0 {
  %4 = alloca %struct.ipv6_pinfo*, align 8
  %5 = alloca %struct.ipv6_fl_socklist*, align 8
  %6 = alloca %struct.ip6_flowlabel*, align 8
  store %struct.ipv6_pinfo* %0, %struct.ipv6_pinfo** %4, align 8
  store %struct.ipv6_fl_socklist* %1, %struct.ipv6_fl_socklist** %5, align 8
  store %struct.ip6_flowlabel* %2, %struct.ip6_flowlabel** %6, align 8
  %7 = call i32 @write_lock_bh(i32* @ip6_sk_fl_lock)
  %8 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %6, align 8
  %9 = load %struct.ipv6_fl_socklist*, %struct.ipv6_fl_socklist** %5, align 8
  %10 = getelementptr inbounds %struct.ipv6_fl_socklist, %struct.ipv6_fl_socklist* %9, i32 0, i32 1
  store %struct.ip6_flowlabel* %8, %struct.ip6_flowlabel** %10, align 8
  %11 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %4, align 8
  %12 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %11, i32 0, i32 0
  %13 = load %struct.ipv6_fl_socklist*, %struct.ipv6_fl_socklist** %12, align 8
  %14 = load %struct.ipv6_fl_socklist*, %struct.ipv6_fl_socklist** %5, align 8
  %15 = getelementptr inbounds %struct.ipv6_fl_socklist, %struct.ipv6_fl_socklist* %14, i32 0, i32 0
  store %struct.ipv6_fl_socklist* %13, %struct.ipv6_fl_socklist** %15, align 8
  %16 = load %struct.ipv6_fl_socklist*, %struct.ipv6_fl_socklist** %5, align 8
  %17 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %4, align 8
  %18 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %17, i32 0, i32 0
  store %struct.ipv6_fl_socklist* %16, %struct.ipv6_fl_socklist** %18, align 8
  %19 = call i32 @write_unlock_bh(i32* @ip6_sk_fl_lock)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
