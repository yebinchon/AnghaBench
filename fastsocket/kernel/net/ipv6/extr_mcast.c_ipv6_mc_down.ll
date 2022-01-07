; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ipv6_mc_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ipv6_mc_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, %struct.ifmcaddr6*, i32, i64, i32, i64 }
%struct.ifmcaddr6 = type { %struct.ifmcaddr6* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipv6_mc_down(%struct.inet6_dev* %0) #0 {
  %2 = alloca %struct.inet6_dev*, align 8
  %3 = alloca %struct.ifmcaddr6*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %2, align 8
  %4 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %5 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %4, i32 0, i32 0
  %6 = call i32 @read_lock_bh(i32* %5)
  %7 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %8 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %7, i32 0, i32 5
  store i64 0, i64* %8, align 8
  %9 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %10 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %9, i32 0, i32 4
  %11 = call i64 @del_timer(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %15 = call i32 @__in6_dev_put(%struct.inet6_dev* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %18 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %20 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %19, i32 0, i32 2
  %21 = call i64 @del_timer(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %25 = call i32 @__in6_dev_put(%struct.inet6_dev* %24)
  br label %26

26:                                               ; preds = %23, %16
  %27 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %28 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %27, i32 0, i32 1
  %29 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %28, align 8
  store %struct.ifmcaddr6* %29, %struct.ifmcaddr6** %3, align 8
  br label %30

30:                                               ; preds = %36, %26
  %31 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %32 = icmp ne %struct.ifmcaddr6* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %35 = call i32 @igmp6_group_dropped(%struct.ifmcaddr6* %34)
  br label %36

36:                                               ; preds = %33
  %37 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %38 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %37, i32 0, i32 0
  %39 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %38, align 8
  store %struct.ifmcaddr6* %39, %struct.ifmcaddr6** %3, align 8
  br label %30

40:                                               ; preds = %30
  %41 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %42 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %41, i32 0, i32 0
  %43 = call i32 @read_unlock_bh(i32* %42)
  %44 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %45 = call i32 @mld_clear_delrec(%struct.inet6_dev* %44)
  ret void
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @del_timer(i32*) #1

declare dso_local i32 @__in6_dev_put(%struct.inet6_dev*) #1

declare dso_local i32 @igmp6_group_dropped(%struct.ifmcaddr6*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @mld_clear_delrec(%struct.inet6_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
