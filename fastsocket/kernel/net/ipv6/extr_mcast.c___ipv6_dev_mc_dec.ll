; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c___ipv6_dev_mc_dec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c___ipv6_dev_mc_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, %struct.ifmcaddr6* }
%struct.ifmcaddr6 = type { i64, %struct.ifmcaddr6*, i32 }
%struct.in6_addr = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ipv6_dev_mc_dec(%struct.inet6_dev* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inet6_dev*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.ifmcaddr6*, align 8
  %7 = alloca %struct.ifmcaddr6**, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  %8 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %9 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %8, i32 0, i32 0
  %10 = call i32 @write_lock_bh(i32* %9)
  %11 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %12 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %11, i32 0, i32 1
  store %struct.ifmcaddr6** %12, %struct.ifmcaddr6*** %7, align 8
  br label %13

13:                                               ; preds = %46, %2
  %14 = load %struct.ifmcaddr6**, %struct.ifmcaddr6*** %7, align 8
  %15 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  store %struct.ifmcaddr6* %15, %struct.ifmcaddr6** %6, align 8
  %16 = icmp ne %struct.ifmcaddr6* %15, null
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  %18 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %19 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %18, i32 0, i32 2
  %20 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %21 = call i64 @ipv6_addr_equal(i32* %19, %struct.in6_addr* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %17
  %24 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %25 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %25, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %31 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %30, i32 0, i32 1
  %32 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %31, align 8
  %33 = load %struct.ifmcaddr6**, %struct.ifmcaddr6*** %7, align 8
  store %struct.ifmcaddr6* %32, %struct.ifmcaddr6** %33, align 8
  %34 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %35 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %34, i32 0, i32 0
  %36 = call i32 @write_unlock_bh(i32* %35)
  %37 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %38 = call i32 @igmp6_group_dropped(%struct.ifmcaddr6* %37)
  %39 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %40 = call i32 @ma_put(%struct.ifmcaddr6* %39)
  store i32 0, i32* %3, align 4
  br label %55

41:                                               ; preds = %23
  %42 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %43 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %42, i32 0, i32 0
  %44 = call i32 @write_unlock_bh(i32* %43)
  store i32 0, i32* %3, align 4
  br label %55

45:                                               ; preds = %17
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %48 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %47, i32 0, i32 1
  store %struct.ifmcaddr6** %48, %struct.ifmcaddr6*** %7, align 8
  br label %13

49:                                               ; preds = %13
  %50 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %51 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %50, i32 0, i32 0
  %52 = call i32 @write_unlock_bh(i32* %51)
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %41, %29
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @igmp6_group_dropped(%struct.ifmcaddr6*) #1

declare dso_local i32 @ma_put(%struct.ifmcaddr6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
