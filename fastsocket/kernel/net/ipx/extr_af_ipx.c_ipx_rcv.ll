; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipx_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipx_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.packet_type = type { i32 }
%struct.net_device = type { i32 }
%struct.ipx_interface = type { i32 }
%struct.ipxhdr = type { i64, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@init_net = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IPX_NO_CHECKSUM = common dso_local global i64 0, align 8
@ipxcfg_auto_create_interfaces = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @ipx_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipx_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.packet_type*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.ipx_interface*, align 8
  %10 = alloca %struct.ipxhdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.packet_type* %2, %struct.packet_type** %7, align 8
  store %struct.net_device* %3, %struct.net_device** %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call i32 @dev_net(%struct.net_device* %13)
  %15 = call i32 @net_eq(i32 %14, i32* @init_net)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %128

18:                                               ; preds = %4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PACKET_OTHERHOST, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %128

25:                                               ; preds = %18
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %5, align 8
  %29 = icmp eq %struct.sk_buff* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %131

31:                                               ; preds = %25
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i32 @pskb_may_pull(%struct.sk_buff* %32, i32 32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %128

36:                                               ; preds = %31
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call %struct.ipxhdr* @ipx_hdr(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ntohs(i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %43, 32
  br i1 %44, label %50, label %45

45:                                               ; preds = %36
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @pskb_may_pull(%struct.sk_buff* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45, %36
  br label %128

51:                                               ; preds = %45
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call %struct.ipxhdr* @ipx_hdr(%struct.sk_buff* %52)
  store %struct.ipxhdr* %53, %struct.ipxhdr** %10, align 8
  %54 = load %struct.ipxhdr*, %struct.ipxhdr** %10, align 8
  %55 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IPX_NO_CHECKSUM, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %51
  %60 = load %struct.ipxhdr*, %struct.ipxhdr** %10, align 8
  %61 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ipxhdr*, %struct.ipxhdr** %10, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i64 @ipx_cksum(%struct.ipxhdr* %63, i32 %64)
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %128

68:                                               ; preds = %59, %51
  %69 = load %struct.ipxhdr*, %struct.ipxhdr** %10, align 8
  %70 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = call %struct.TYPE_6__* @IPX_SKB_CB(%struct.sk_buff* %72)
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 4
  %75 = load %struct.ipxhdr*, %struct.ipxhdr** %10, align 8
  %76 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = call %struct.TYPE_6__* @IPX_SKB_CB(%struct.sk_buff* %79)
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  %82 = load %struct.ipxhdr*, %struct.ipxhdr** %10, align 8
  %83 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = call %struct.TYPE_6__* @IPX_SKB_CB(%struct.sk_buff* %86)
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 8
  %89 = load %struct.net_device*, %struct.net_device** %6, align 8
  %90 = load %struct.packet_type*, %struct.packet_type** %7, align 8
  %91 = getelementptr inbounds %struct.packet_type, %struct.packet_type* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.ipx_interface* @ipxitf_find_using_phys(%struct.net_device* %89, i32 %92)
  store %struct.ipx_interface* %93, %struct.ipx_interface** %9, align 8
  %94 = load %struct.ipx_interface*, %struct.ipx_interface** %9, align 8
  %95 = icmp ne %struct.ipx_interface* %94, null
  br i1 %95, label %122, label %96

96:                                               ; preds = %68
  %97 = load i64, i64* @ipxcfg_auto_create_interfaces, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %96
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = call %struct.TYPE_6__* @IPX_SKB_CB(%struct.sk_buff* %100)
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %99
  %106 = load %struct.net_device*, %struct.net_device** %6, align 8
  %107 = load %struct.packet_type*, %struct.packet_type** %7, align 8
  %108 = getelementptr inbounds %struct.packet_type, %struct.packet_type* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call %struct.ipx_interface* @ipxitf_auto_create(%struct.net_device* %106, i32 %109)
  store %struct.ipx_interface* %110, %struct.ipx_interface** %9, align 8
  %111 = load %struct.ipx_interface*, %struct.ipx_interface** %9, align 8
  %112 = icmp ne %struct.ipx_interface* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load %struct.ipx_interface*, %struct.ipx_interface** %9, align 8
  %115 = call i32 @ipxitf_hold(%struct.ipx_interface* %114)
  br label %116

116:                                              ; preds = %113, %105
  br label %117

117:                                              ; preds = %116, %99, %96
  %118 = load %struct.ipx_interface*, %struct.ipx_interface** %9, align 8
  %119 = icmp ne %struct.ipx_interface* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  br label %128

121:                                              ; preds = %117
  br label %122

122:                                              ; preds = %121, %68
  %123 = load %struct.ipx_interface*, %struct.ipx_interface** %9, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %125 = call i32 @ipxitf_rcv(%struct.ipx_interface* %123, %struct.sk_buff* %124)
  store i32 %125, i32* %12, align 4
  %126 = load %struct.ipx_interface*, %struct.ipx_interface** %9, align 8
  %127 = call i32 @ipxitf_put(%struct.ipx_interface* %126)
  br label %131

128:                                              ; preds = %120, %67, %50, %35, %24, %17
  %129 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %130 = call i32 @kfree_skb(%struct.sk_buff* %129)
  br label %131

131:                                              ; preds = %128, %122, %30
  %132 = load i32, i32* %12, align 4
  ret i32 %132
}

declare dso_local i32 @net_eq(i32, i32*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.ipxhdr* @ipx_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ipx_cksum(%struct.ipxhdr*, i32) #1

declare dso_local %struct.TYPE_6__* @IPX_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.ipx_interface* @ipxitf_find_using_phys(%struct.net_device*, i32) #1

declare dso_local %struct.ipx_interface* @ipxitf_auto_create(%struct.net_device*, i32) #1

declare dso_local i32 @ipxitf_hold(%struct.ipx_interface*) #1

declare dso_local i32 @ipxitf_rcv(%struct.ipx_interface*, %struct.sk_buff*) #1

declare dso_local i32 @ipxitf_put(%struct.ipx_interface*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
