; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipxitf_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipxitf_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipx_interface = type { i64, i32 }
%struct.sk_buff = type { i64 }
%struct.ipxhdr = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IPX_TYPE_PPROP = common dso_local global i64 0, align 8
@PACKET_HOST = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ipx_broadcast_node = common dso_local global i32 0, align 4
@IPX_NODE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipx_interface*, %struct.sk_buff*)* @ipxitf_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipxitf_rcv(%struct.ipx_interface* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ipx_interface*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ipxhdr*, align 8
  %6 = alloca i32, align 4
  store %struct.ipx_interface* %0, %struct.ipx_interface** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call %struct.ipxhdr* @ipx_hdr(%struct.sk_buff* %7)
  store %struct.ipxhdr* %8, %struct.ipxhdr** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %10 = call i32 @ipxitf_hold(%struct.ipx_interface* %9)
  %11 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %12 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32 @ipxitf_discover_netnum(%struct.ipx_interface* %16, %struct.sk_buff* %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call %struct.TYPE_6__* @IPX_SKB_CB(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load %struct.ipxhdr*, %struct.ipxhdr** %5, align 8
  %25 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IPX_TYPE_PPROP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %19
  %30 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i32 @ipxitf_pprop(%struct.ipx_interface* %30, %struct.sk_buff* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %120

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %19
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call %struct.TYPE_6__* @IPX_SKB_CB(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %37
  %44 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %45 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call %struct.TYPE_6__* @IPX_SKB_CB(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  br label %50

50:                                               ; preds = %43, %37
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call %struct.TYPE_6__* @IPX_SKB_CB(%struct.sk_buff* %51)
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %50
  %57 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %58 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = call %struct.TYPE_6__* @IPX_SKB_CB(%struct.sk_buff* %60)
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i64 %59, i64* %62, align 8
  br label %63

63:                                               ; preds = %56, %50
  %64 = load %struct.ipxhdr*, %struct.ipxhdr** %5, align 8
  %65 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IPX_TYPE_PPROP, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %95

69:                                               ; preds = %63
  %70 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %71 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = call %struct.TYPE_6__* @IPX_SKB_CB(%struct.sk_buff* %73)
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %72, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %69
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @PACKET_HOST, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %78
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = load i32, i32* @GFP_ATOMIC, align 4
  %87 = call %struct.sk_buff* @skb_unshare(%struct.sk_buff* %85, i32 %86)
  store %struct.sk_buff* %87, %struct.sk_buff** %4, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = icmp ne %struct.sk_buff* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = call i32 @ipxrtr_route_skb(%struct.sk_buff* %91)
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %90, %84
  br label %123

94:                                               ; preds = %78
  br label %120

95:                                               ; preds = %69, %63
  %96 = load i32, i32* @ipx_broadcast_node, align 4
  %97 = load %struct.ipxhdr*, %struct.ipxhdr** %5, align 8
  %98 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @IPX_NODE_LEN, align 4
  %102 = call i32 @memcmp(i32 %96, i32 %100, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %95
  %105 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %106 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ipxhdr*, %struct.ipxhdr** %5, align 8
  %109 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @IPX_NODE_LEN, align 4
  %113 = call i32 @memcmp(i32 %107, i32 %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %104, %95
  %116 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %118 = call i32 @ipxitf_demux_socket(%struct.ipx_interface* %116, %struct.sk_buff* %117, i32 0)
  store i32 %118, i32* %6, align 4
  br label %123

119:                                              ; preds = %104
  br label %120

120:                                              ; preds = %119, %94, %35
  %121 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %122 = call i32 @kfree_skb(%struct.sk_buff* %121)
  br label %123

123:                                              ; preds = %120, %115, %93
  %124 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %125 = call i32 @ipxitf_put(%struct.ipx_interface* %124)
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local %struct.ipxhdr* @ipx_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipxitf_hold(%struct.ipx_interface*) #1

declare dso_local i32 @ipxitf_discover_netnum(%struct.ipx_interface*, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @IPX_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ipxitf_pprop(%struct.ipx_interface*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_unshare(%struct.sk_buff*, i32) #1

declare dso_local i32 @ipxrtr_route_skb(%struct.sk_buff*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @ipxitf_demux_socket(%struct.ipx_interface*, %struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ipxitf_put(%struct.ipx_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
