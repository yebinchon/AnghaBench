; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_ip4_multicast_igmp3_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_ip4_multicast_igmp3_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.net_bridge_port = type { i32 }
%struct.sk_buff = type { i32 }
%struct.igmpv3_report = type { i32 }
%struct.igmpv3_grec = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge*, %struct.net_bridge_port*, %struct.sk_buff*)* @br_ip4_multicast_igmp3_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_ip4_multicast_igmp3_report(%struct.net_bridge* %0, %struct.net_bridge_port* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_bridge*, align 8
  %6 = alloca %struct.net_bridge_port*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.igmpv3_report*, align 8
  %9 = alloca %struct.igmpv3_grec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %5, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 0, i32* %14, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call i32 @pskb_may_pull(%struct.sk_buff* %16, i32 4)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %93

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = call %struct.igmpv3_report* @igmpv3_report_hdr(%struct.sk_buff* %23)
  store %struct.igmpv3_report* %24, %struct.igmpv3_report** %8, align 8
  %25 = load %struct.igmpv3_report*, %struct.igmpv3_report** %8, align 8
  %26 = getelementptr inbounds %struct.igmpv3_report, %struct.igmpv3_report* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ntohs(i32 %27)
  store i32 %28, i32* %12, align 4
  store i32 4, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %88, %22
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %91

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %35, 12
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %11, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @pskb_may_pull(%struct.sk_buff* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %93

45:                                               ; preds = %33
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = sub i64 %51, 12
  %53 = inttoptr i64 %52 to i8*
  %54 = bitcast i8* %53 to %struct.igmpv3_grec*
  store %struct.igmpv3_grec* %54, %struct.igmpv3_grec** %9, align 8
  %55 = load %struct.igmpv3_grec*, %struct.igmpv3_grec** %9, align 8
  %56 = getelementptr inbounds %struct.igmpv3_grec, %struct.igmpv3_grec* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %15, align 4
  %58 = load %struct.igmpv3_grec*, %struct.igmpv3_grec** %9, align 8
  %59 = getelementptr inbounds %struct.igmpv3_grec, %struct.igmpv3_grec* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %13, align 4
  %61 = load %struct.igmpv3_grec*, %struct.igmpv3_grec** %9, align 8
  %62 = getelementptr inbounds %struct.igmpv3_grec, %struct.igmpv3_grec* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ntohs(i32 %63)
  %65 = mul nsw i32 %64, 4
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %11, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @pskb_may_pull(%struct.sk_buff* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %45
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %93

75:                                               ; preds = %45
  %76 = load i32, i32* %13, align 4
  switch i32 %76, label %78 [
    i32 128, label %77
    i32 129, label %77
    i32 130, label %77
    i32 131, label %77
    i32 133, label %77
    i32 132, label %77
  ]

77:                                               ; preds = %75, %75, %75, %75, %75, %75
  br label %79

78:                                               ; preds = %75
  br label %88

79:                                               ; preds = %77
  %80 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %81 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @br_ip4_multicast_add_group(%struct.net_bridge* %80, %struct.net_bridge_port* %81, i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %91

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87, %78
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %29

91:                                               ; preds = %86, %29
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %72, %42, %19
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.igmpv3_report* @igmpv3_report_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @br_ip4_multicast_add_group(%struct.net_bridge*, %struct.net_bridge_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
