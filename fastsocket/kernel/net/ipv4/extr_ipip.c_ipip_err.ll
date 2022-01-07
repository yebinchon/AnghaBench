; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipip.c_ipip_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipip.c_ipip_err.c"
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
@ipip_lock = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IPTUNNEL_ERR_TIMEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @ipip_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipip_err(%struct.sk_buff* %0, i32 %1) #0 {
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
  br label %98

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %30 [
    i32 129, label %28
    i32 130, label %28
    i32 132, label %29
  ]

28:                                               ; preds = %26, %26
  store i32 0, i32* %3, align 4
  br label %98

29:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %98

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
  br label %98

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i32, i32* @ENOENT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %10, align 4
  %41 = call i32 @read_lock(i32* @ipip_lock)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_net(i32 %44)
  %46 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %47 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %50 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.ip_tunnel* @ipip_tunnel_lookup(i32 %45, i32 %48, i32 %51)
  store %struct.ip_tunnel* %52, %struct.ip_tunnel** %9, align 8
  %53 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %54 = icmp eq %struct.ip_tunnel* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %38
  %56 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %57 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55, %38
  br label %95

63:                                               ; preds = %55
  store i32 0, i32* %10, align 4
  %64 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %65 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, 128
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %95

74:                                               ; preds = %70, %63
  %75 = load i64, i64* @jiffies, align 8
  %76 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %77 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @IPTUNNEL_ERR_TIMEO, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i64 @time_before(i64 %75, i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %74
  %84 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %85 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  br label %91

88:                                               ; preds = %74
  %89 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %90 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i64, i64* @jiffies, align 8
  %93 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %94 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %91, %73, %62
  %96 = call i32 @read_unlock(i32* @ipip_lock)
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %95, %36, %29, %28, %25
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.TYPE_6__* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.ip_tunnel* @ipip_tunnel_lookup(i32, i32, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
