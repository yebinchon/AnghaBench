; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_sit.c_ipip6_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_sit.c_ipip6_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.iphdr = type { i32, i32 }
%struct.ip_tunnel = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@ICMP_EXC_TTL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ipip6_lock = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IPTUNNEL_ERR_TIMEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @ipip6_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipip6_err(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ip_tunnel*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.iphdr*
  store %struct.iphdr* %14, %struct.iphdr** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call %struct.TYPE_6__* @icmp_hdr(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call %struct.TYPE_6__* @icmp_hdr(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %24 [
    i32 131, label %25
    i32 133, label %26
    i32 128, label %32
  ]

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %2, %24
  store i32 0, i32* %3, align 4
  br label %101

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %30 [
    i32 129, label %28
    i32 130, label %28
    i32 132, label %29
  ]

28:                                               ; preds = %26, %26
  store i32 0, i32* %3, align 4
  br label %101

29:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %101

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30
  br label %38

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @ICMP_EXC_TTL, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %101

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i32, i32* @ENOENT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %10, align 4
  %41 = call i32 @read_lock(i32* @ipip6_lock)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_net(i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %50 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %53 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.ip_tunnel* @ipip6_tunnel_lookup(i32 %45, i32 %48, i32 %51, i32 %54)
  store %struct.ip_tunnel* %55, %struct.ip_tunnel** %9, align 8
  %56 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %57 = icmp eq %struct.ip_tunnel* %56, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %38
  %59 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %60 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58, %38
  br label %98

66:                                               ; preds = %58
  store i32 0, i32* %10, align 4
  %67 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %68 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %74, 128
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %98

77:                                               ; preds = %73, %66
  %78 = load i64, i64* @jiffies, align 8
  %79 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %80 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IPTUNNEL_ERR_TIMEO, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i64 @time_before(i64 %78, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %77
  %87 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %88 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  br label %94

91:                                               ; preds = %77
  %92 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %93 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  br label %94

94:                                               ; preds = %91, %86
  %95 = load i64, i64* @jiffies, align 8
  %96 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %97 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %94, %76, %65
  %99 = call i32 @read_unlock(i32* @ipip6_lock)
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %98, %36, %29, %28, %25
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.TYPE_6__* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.ip_tunnel* @ipip6_tunnel_lookup(i32, i32, i32, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
