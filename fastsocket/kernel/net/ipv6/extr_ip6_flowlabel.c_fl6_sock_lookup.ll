; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_flowlabel.c_fl6_sock_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_flowlabel.c_fl6_sock_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_flowlabel = type { i32, i32, i32 }
%struct.sock = type { i32 }
%struct.ipv6_fl_socklist = type { %struct.ip6_flowlabel*, %struct.ipv6_fl_socklist* }
%struct.ipv6_pinfo = type { %struct.ipv6_fl_socklist* }

@IPV6_FLOWLABEL_MASK = common dso_local global i32 0, align 4
@ip6_sk_fl_lock = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ip6_flowlabel* @fl6_sock_lookup(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.ip6_flowlabel*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipv6_fl_socklist*, align 8
  %7 = alloca %struct.ipv6_pinfo*, align 8
  %8 = alloca %struct.ip6_flowlabel*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %9)
  store %struct.ipv6_pinfo* %10, %struct.ipv6_pinfo** %7, align 8
  %11 = load i32, i32* @IPV6_FLOWLABEL_MASK, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = call i32 @read_lock_bh(i32* @ip6_sk_fl_lock)
  %15 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %7, align 8
  %16 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %15, i32 0, i32 0
  %17 = load %struct.ipv6_fl_socklist*, %struct.ipv6_fl_socklist** %16, align 8
  store %struct.ipv6_fl_socklist* %17, %struct.ipv6_fl_socklist** %6, align 8
  br label %18

18:                                               ; preds = %40, %2
  %19 = load %struct.ipv6_fl_socklist*, %struct.ipv6_fl_socklist** %6, align 8
  %20 = icmp ne %struct.ipv6_fl_socklist* %19, null
  br i1 %20, label %21, label %44

21:                                               ; preds = %18
  %22 = load %struct.ipv6_fl_socklist*, %struct.ipv6_fl_socklist** %6, align 8
  %23 = getelementptr inbounds %struct.ipv6_fl_socklist, %struct.ipv6_fl_socklist* %22, i32 0, i32 0
  %24 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %23, align 8
  store %struct.ip6_flowlabel* %24, %struct.ip6_flowlabel** %8, align 8
  %25 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %8, align 8
  %26 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load i32, i32* @jiffies, align 4
  %32 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %8, align 8
  %33 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %8, align 8
  %35 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %34, i32 0, i32 0
  %36 = call i32 @atomic_inc(i32* %35)
  %37 = call i32 @read_unlock_bh(i32* @ip6_sk_fl_lock)
  %38 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %8, align 8
  store %struct.ip6_flowlabel* %38, %struct.ip6_flowlabel** %3, align 8
  br label %46

39:                                               ; preds = %21
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.ipv6_fl_socklist*, %struct.ipv6_fl_socklist** %6, align 8
  %42 = getelementptr inbounds %struct.ipv6_fl_socklist, %struct.ipv6_fl_socklist* %41, i32 0, i32 1
  %43 = load %struct.ipv6_fl_socklist*, %struct.ipv6_fl_socklist** %42, align 8
  store %struct.ipv6_fl_socklist* %43, %struct.ipv6_fl_socklist** %6, align 8
  br label %18

44:                                               ; preds = %18
  %45 = call i32 @read_unlock_bh(i32* @ip6_sk_fl_lock)
  store %struct.ip6_flowlabel* null, %struct.ip6_flowlabel** %3, align 8
  br label %46

46:                                               ; preds = %44, %30
  %47 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %3, align 8
  ret %struct.ip6_flowlabel* %47
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
