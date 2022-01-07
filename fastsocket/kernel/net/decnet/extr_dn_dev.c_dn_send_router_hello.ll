; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_send_router_hello.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_send_router_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.dn_dev* }
%struct.dn_dev = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.dn_ifaddr = type { i32 }
%struct.dn_neigh = type { i32 }
%struct.sk_buff = type { i32, %struct.net_device* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@DN_RT_PKT_CNTL = common dso_local global i32 0, align 4
@DN_RT_PKT_ERTH = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@DN_RT_INFO_L1RT = common dso_local global i32 0, align 4
@DN_RT_INFO_L2RT = common dso_local global i32 0, align 4
@dn_rt_all_end_mcast = common dso_local global i32 0, align 4
@dn_rt_all_rt_mcast = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.dn_ifaddr*)* @dn_send_router_hello to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_send_router_hello(%struct.net_device* %0, %struct.dn_ifaddr* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dn_ifaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dn_dev*, align 8
  %7 = alloca %struct.dn_neigh*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.dn_ifaddr* %1, %struct.dn_ifaddr** %4, align 8
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load %struct.dn_dev*, %struct.dn_dev** %17, align 8
  store %struct.dn_dev* %18, %struct.dn_dev** %6, align 8
  %19 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %20 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.dn_neigh*
  store %struct.dn_neigh* %22, %struct.dn_neigh** %7, align 8
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 @mtu2blksize(%struct.net_device* %23)
  %25 = icmp slt i32 %24, 33
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %179

27:                                               ; preds = %2
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i32 @mtu2blksize(%struct.net_device* %28)
  %30 = sub nsw i32 %29, 26
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = sdiv i32 %31, 7
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp sgt i32 %33, 32
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 32, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i32, i32* %5, align 4
  %38 = mul nsw i32 7, %37
  %39 = add nsw i32 28, %38
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = call %struct.sk_buff* @dn_alloc_skb(i32* null, i64 %41, i32 %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %8, align 8
  %44 = icmp eq %struct.sk_buff* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %179

46:                                               ; preds = %36
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  store %struct.net_device* %47, %struct.net_device** %49, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i8* @skb_put(%struct.sk_buff* %50, i64 %51)
  store i8* %52, i8** %10, align 8
  %53 = load i32, i32* @DN_RT_PKT_CNTL, align 4
  %54 = load i32, i32* @DN_RT_PKT_ERTH, align 4
  %55 = or i32 %53, %54
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %10, align 8
  store i8 %56, i8* %57, align 1
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %10, align 8
  store i8 2, i8* %59, align 1
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %10, align 8
  store i8 0, i8* %61, align 1
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %10, align 8
  store i8 0, i8* %63, align 1
  %65 = load i8*, i8** %10, align 8
  %66 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %4, align 8
  %67 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dn_dn2eth(i8* %65, i32 %68)
  %70 = load i8*, i8** %10, align 8
  store i8* %70, i8** %14, align 8
  %71 = load i32, i32* @ETH_ALEN, align 4
  %72 = load i8*, i8** %10, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %10, align 8
  %75 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %76 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %82

80:                                               ; preds = %46
  %81 = load i32, i32* @DN_RT_INFO_L1RT, align 4
  br label %84

82:                                               ; preds = %46
  %83 = load i32, i32* @DN_RT_INFO_L2RT, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %10, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %10, align 8
  store i8 %86, i8* %87, align 1
  %89 = load %struct.net_device*, %struct.net_device** %3, align 8
  %90 = call i32 @mtu2blksize(%struct.net_device* %89)
  %91 = call i32 @cpu_to_le16(i32 %90)
  %92 = load i8*, i8** %10, align 8
  %93 = bitcast i8* %92 to i32*
  store i32 %91, i32* %93, align 4
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 2
  store i8* %95, i8** %10, align 8
  %96 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %97 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = trunc i32 %99 to i8
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %10, align 8
  store i8 %100, i8* %101, align 1
  %103 = load i8*, i8** %10, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %10, align 8
  store i8 0, i8* %103, align 1
  %105 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %106 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i16
  %110 = zext i16 %109 to i32
  %111 = call i32 @cpu_to_le16(i32 %110)
  %112 = load i8*, i8** %10, align 8
  %113 = bitcast i8* %112 to i32*
  store i32 %111, i32* %113, align 4
  %114 = load i8*, i8** %10, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  store i8* %115, i8** %10, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %10, align 8
  store i8 0, i8* %116, align 1
  %118 = load i8*, i8** %10, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %10, align 8
  store i8* %118, i8** %11, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = call i32 @memset(i8* %120, i32 0, i32 7)
  %122 = load i8*, i8** %10, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 7
  store i8* %123, i8** %10, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %10, align 8
  store i8* %124, i8** %12, align 8
  %126 = load %struct.net_device*, %struct.net_device** %3, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @dn_neigh_elist(%struct.net_device* %126, i8* %127, i32 %128)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = mul nsw i32 7, %130
  %132 = trunc i32 %131 to i8
  %133 = load i8*, i8** %12, align 8
  store i8 %132, i8* %133, align 1
  %134 = load i8*, i8** %12, align 8
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = add nsw i32 8, %136
  %138 = trunc i32 %137 to i8
  %139 = load i8*, i8** %11, align 8
  store i8 %138, i8* %139, align 1
  %140 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %141 = load i8*, i8** %12, align 8
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = add nsw i32 27, %143
  %145 = call i32 @skb_trim(%struct.sk_buff* %140, i32 %144)
  %146 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %147 = call i64 @skb_push(%struct.sk_buff* %146, i32 2)
  %148 = inttoptr i64 %147 to i32*
  store i32* %148, i32** %13, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sub nsw i32 %151, 2
  %153 = call i32 @cpu_to_le16(i32 %152)
  %154 = load i32*, i32** %13, align 8
  store i32 %153, i32* %154, align 4
  %155 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %156 = call i32 @skb_reset_network_header(%struct.sk_buff* %155)
  %157 = load %struct.dn_neigh*, %struct.dn_neigh** %7, align 8
  %158 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %159 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %4, align 8
  %160 = call i64 @dn_am_i_a_router(%struct.dn_neigh* %157, %struct.dn_dev* %158, %struct.dn_ifaddr* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %84
  %163 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %164 = load i32, i32* @GFP_ATOMIC, align 4
  %165 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %163, i32 %164)
  store %struct.sk_buff* %165, %struct.sk_buff** %15, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %167 = icmp ne %struct.sk_buff* %166, null
  br i1 %167, label %168, label %173

168:                                              ; preds = %162
  %169 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %170 = load i32, i32* @dn_rt_all_end_mcast, align 4
  %171 = load i8*, i8** %14, align 8
  %172 = call i32 @dn_rt_finish_output(%struct.sk_buff* %169, i32 %170, i8* %171)
  br label %173

173:                                              ; preds = %168, %162
  br label %174

174:                                              ; preds = %173, %84
  %175 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %176 = load i32, i32* @dn_rt_all_rt_mcast, align 4
  %177 = load i8*, i8** %14, align 8
  %178 = call i32 @dn_rt_finish_output(%struct.sk_buff* %175, i32 %176, i8* %177)
  br label %179

179:                                              ; preds = %174, %45, %26
  ret void
}

declare dso_local i32 @mtu2blksize(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @dn_alloc_skb(i32*, i64, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @dn_dn2eth(i8*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @dn_neigh_elist(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i64 @dn_am_i_a_router(%struct.dn_neigh*, %struct.dn_dev*, %struct.dn_ifaddr*) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local i32 @dn_rt_finish_output(%struct.sk_buff*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
