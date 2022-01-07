; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_icmp.c_icmp_redirect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_icmp.c_icmp_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i64 }
%struct.iphdr = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@IPPROTO_ICMP = common dso_local global i64 0, align 8
@ICMP_MIB_INERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @icmp_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icmp_redirect(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 24
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %75

10:                                               ; preds = %1
  %11 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %12 = call i64 @pskb_may_pull(%struct.sk_buff* %11, i32 24)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  br label %74

15:                                               ; preds = %10
  %16 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.iphdr*
  store %struct.iphdr* %19, %struct.iphdr** %3, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %21 = call %struct.TYPE_6__* @icmp_hdr(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 7
  switch i32 %24, label %45 [
    i32 129, label %25
    i32 128, label %25
    i32 131, label %25
    i32 130, label %25
  ]

25:                                               ; preds = %15, %15, %15, %15
  %26 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %27 = call %struct.TYPE_5__* @ip_hdr(%struct.sk_buff* %26)
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %31 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %34 = call %struct.TYPE_6__* @icmp_hdr(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %39 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ip_rt_redirect(i32 %29, i32 %32, i32 %37, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %15, %25
  %46 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %47 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IPPROTO_ICMP, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %45
  %52 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %53 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %54, 5
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %58 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %59 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 %60, 2
  %62 = add nsw i32 %61, 8
  %63 = call i64 @pskb_may_pull(%struct.sk_buff* %57, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %56
  %66 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %68 = call %struct.TYPE_6__* @icmp_hdr(%struct.sk_buff* %67)
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ping_err(%struct.sk_buff* %66, i32 %71)
  br label %73

73:                                               ; preds = %65, %56, %51, %45
  br label %74

74:                                               ; preds = %75, %73, %14
  ret void

75:                                               ; preds = %9
  %76 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_net(i32 %78)
  %80 = load i32, i32* @ICMP_MIB_INERRORS, align 4
  %81 = call i32 @ICMP_INC_STATS_BH(i32 %79, i32 %80)
  br label %74
}

declare dso_local i64 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_6__* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip_rt_redirect(i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ping_err(%struct.sk_buff*, i32) #1

declare dso_local i32 @ICMP_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @dev_net(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
