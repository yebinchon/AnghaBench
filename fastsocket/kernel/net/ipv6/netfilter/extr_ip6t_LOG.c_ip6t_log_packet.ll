; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6t_LOG.c_ip6t_log_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6t_LOG.c_ip6t_log_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_loginfo = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i64, i64, i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.net_device = type { i8* }
%struct.iphdr = type { i32, i32 }

@default_loginfo = common dso_local global %struct.nf_loginfo zeroinitializer, align 4
@log_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"<%d>%sIN=%s OUT=%s \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"MAC=\00", align 1
@ARPHRD_SIT = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%02x%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"TUNNEL=%pI4->%pI4 \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, %struct.nf_loginfo*, i8*)* @ip6t_log_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6t_log_packet(i32 %0, i32 %1, %struct.sk_buff* %2, %struct.net_device* %3, %struct.net_device* %4, %struct.nf_loginfo* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.nf_loginfo*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.iphdr*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.net_device* %3, %struct.net_device** %11, align 8
  store %struct.net_device* %4, %struct.net_device** %12, align 8
  store %struct.nf_loginfo* %5, %struct.nf_loginfo** %13, align 8
  store i8* %6, i8** %14, align 8
  %19 = load %struct.nf_loginfo*, %struct.nf_loginfo** %13, align 8
  %20 = icmp ne %struct.nf_loginfo* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %7
  store %struct.nf_loginfo* @default_loginfo, %struct.nf_loginfo** %13, align 8
  br label %22

22:                                               ; preds = %21, %7
  %23 = call i32 @spin_lock_bh(i32* @log_lock)
  %24 = load %struct.nf_loginfo*, %struct.nf_loginfo** %13, align 8
  %25 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %14, align 8
  %30 = load %struct.net_device*, %struct.net_device** %11, align 8
  %31 = icmp ne %struct.net_device* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load %struct.net_device*, %struct.net_device** %11, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  br label %37

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %36 ]
  %39 = load %struct.net_device*, %struct.net_device** %12, align 8
  %40 = icmp ne %struct.net_device* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.net_device*, %struct.net_device** %12, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  br label %46

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i8* [ %44, %41 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %45 ]
  %48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %28, i8* %29, i8* %38, i8* %47)
  %49 = load %struct.net_device*, %struct.net_device** %11, align 8
  %50 = icmp ne %struct.net_device* %49, null
  br i1 %50, label %51, label %144

51:                                               ; preds = %46
  %52 = load %struct.net_device*, %struct.net_device** %12, align 8
  %53 = icmp ne %struct.net_device* %52, null
  br i1 %53, label %144, label %54

54:                                               ; preds = %51
  %55 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 3
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = icmp ne %struct.TYPE_6__* %58, null
  br i1 %59, label %60, label %141

60:                                               ; preds = %54
  %61 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 3
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %141

67:                                               ; preds = %60
  %68 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %141

75:                                               ; preds = %67
  %76 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %77 = call i8* @skb_mac_header(%struct.sk_buff* %76)
  store i8* %77, i8** %16, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 3
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ARPHRD_SIT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %75
  %86 = load i32, i32* @ETH_HLEN, align 4
  %87 = load i8*, i8** %16, align 8
  %88 = sext i32 %86 to i64
  %89 = sub i64 0, %88
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8* %90, i8** %16, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ult i8* %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  store i8* null, i8** %16, align 8
  br label %96

96:                                               ; preds = %95, %85, %75
  %97 = load i8*, i8** %16, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %122

99:                                               ; preds = %96
  store i32 0, i32* %17, align 4
  br label %100

100:                                              ; preds = %118, %99
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %100
  %105 = load i8*, i8** %16, align 8
  %106 = load i32, i32* %17, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %15, align 4
  %113 = sub i32 %112, 1
  %114 = icmp eq i32 %111, %113
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %117 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %110, i8* %116)
  br label %118

118:                                              ; preds = %104
  %119 = load i32, i32* %17, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %17, align 4
  br label %100

121:                                              ; preds = %100
  br label %122

122:                                              ; preds = %121, %96
  %123 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %124 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 3
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @ARPHRD_SIT, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %122
  %132 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %133 = call i8* @skb_mac_header(%struct.sk_buff* %132)
  %134 = bitcast i8* %133 to %struct.iphdr*
  store %struct.iphdr* %134, %struct.iphdr** %18, align 8
  %135 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %136 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %135, i32 0, i32 1
  %137 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %138 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %137, i32 0, i32 0
  %139 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32* %136, i32* %138)
  br label %140

140:                                              ; preds = %131, %122
  br label %143

141:                                              ; preds = %67, %60, %54
  %142 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %140
  br label %144

144:                                              ; preds = %143, %51, %46
  %145 = load %struct.nf_loginfo*, %struct.nf_loginfo** %13, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %147 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %148 = call i32 @skb_network_offset(%struct.sk_buff* %147)
  %149 = call i32 @dump_packet(%struct.nf_loginfo* %145, %struct.sk_buff* %146, i32 %148, i32 1)
  %150 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %151 = call i32 @spin_unlock_bh(i32* @log_lock)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i8* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @dump_packet(%struct.nf_loginfo*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
