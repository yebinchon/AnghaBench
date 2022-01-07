; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_netfilter.c_ip_route_me_harder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_netfilter.c_ip_route_me_harder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.net = type { i32 }
%struct.iphdr = type { i32, i32, i64 }
%struct.rtable = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.dst_entry }
%struct.dst_entry = type { %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.flowi = type { i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, i32 }

@RTN_UNSPEC = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i32 0, align 4
@FLOWI_FLAG_ANYSRC = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@IPSKB_XFRM_TRANSFORMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_route_me_harder(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca %struct.rtable*, align 8
  %9 = alloca %struct.flowi, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = call %struct.net* @dev_net(%struct.TYPE_12__* %16)
  store %struct.net* %17, %struct.net** %6, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %18)
  store %struct.iphdr* %19, %struct.iphdr** %7, align 8
  %20 = bitcast %struct.flowi* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 40, i1 false)
  %21 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %22 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = icmp ne %struct.TYPE_11__* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = call i32 @inet_sk_flowi_flags(%struct.TYPE_11__* %31)
  br label %34

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %33, %28
  %35 = phi i32 [ %32, %28 ], [ 0, %33 ]
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @RTN_UNSPEC, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.net*, %struct.net** %6, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @inet_addr_type(%struct.net* %40, i64 %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @RTN_LOCAL, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @RTN_UNICAST, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47, %43
  %52 = load i32, i32* @FLOWI_FLAG_ANYSRC, align 4
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %11, align 4
  br label %56

55:                                               ; preds = %47
  store i64 0, i64* %10, align 8
  br label %56

56:                                               ; preds = %55, %51
  %57 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %58 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store i64 %63, i64* %66, align 8
  %67 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %68 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @RT_TOS(i32 %69)
  %71 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = icmp ne %struct.TYPE_11__* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %56
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  br label %85

84:                                               ; preds = %56
  br label %85

85:                                               ; preds = %84, %78
  %86 = phi i32 [ %83, %78 ], [ 0, %84 ]
  %87 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 2
  store i32 %86, i32* %87, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 1
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %11, align 4
  %93 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 0
  store i32 %92, i32* %93, align 8
  %94 = load %struct.net*, %struct.net** %6, align 8
  %95 = call i64 @ip_route_output_key(%struct.net* %94, %struct.rtable** %8, %struct.flowi* %9)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %85
  store i32 -1, i32* %3, align 4
  br label %134

98:                                               ; preds = %85
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = call i32 @skb_dst_drop(%struct.sk_buff* %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = load %struct.rtable*, %struct.rtable** %8, align 8
  %103 = getelementptr inbounds %struct.rtable, %struct.rtable* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = call i32 @skb_dst_set(%struct.sk_buff* %101, %struct.dst_entry* %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %106)
  %108 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %98
  store i32 -1, i32* %3, align 4
  br label %134

112:                                              ; preds = %98
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %113)
  %115 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %114, i32 0, i32 0
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %12, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %120 = call i32 @skb_headroom(%struct.sk_buff* %119)
  %121 = load i32, i32* %12, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %112
  %124 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = call i32 @skb_headroom(%struct.sk_buff* %126)
  %128 = sub i32 %125, %127
  %129 = load i32, i32* @GFP_ATOMIC, align 4
  %130 = call i64 @pskb_expand_head(%struct.sk_buff* %124, i32 %128, i32 0, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  store i32 -1, i32* %3, align 4
  br label %134

133:                                              ; preds = %123, %112
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %132, %111, %97
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_12__*) #1

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @inet_sk_flowi_flags(%struct.TYPE_11__*) #1

declare dso_local i32 @inet_addr_type(%struct.net*, i64) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local i64 @ip_route_output_key(%struct.net*, %struct.rtable**, %struct.flowi*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
