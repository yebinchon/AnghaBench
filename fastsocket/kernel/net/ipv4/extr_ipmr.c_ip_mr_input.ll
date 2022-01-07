; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipmr.c_ip_mr_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipmr.c_ip_mr_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.mfc_cache = type { i32 }
%struct.net = type { i32 }
%struct.mr_table = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32, i32 }

@RTCF_LOCAL = common dso_local global i32 0, align 4
@IPSKB_FORWARDED = common dso_local global i32 0, align 4
@IPPROTO_IGMP = common dso_local global i64 0, align 8
@mrt_lock = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_mr_input(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.mfc_cache*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mr_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.net* @dev_net(i32 %14)
  store %struct.net* %15, %struct.net** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call %struct.TYPE_6__* @skb_rtable(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RTCF_LOCAL, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = call %struct.TYPE_8__* @IPCB(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IPSKB_FORWARDED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %150

30:                                               ; preds = %1
  %31 = load %struct.net*, %struct.net** %5, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = call %struct.TYPE_6__* @skb_rtable(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = call i32 @ipmr_fib_lookup(%struct.net* %31, i32* %34, %struct.mr_table** %7)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = call i32 @kfree_skb(%struct.sk_buff* %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %2, align 4
  br label %159

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %84, label %45

45:                                               ; preds = %42
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = call %struct.TYPE_8__* @IPCB(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = call i64 @ip_call_ra_chain(%struct.sk_buff* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %159

57:                                               ; preds = %52
  br label %83

58:                                               ; preds = %45
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IPPROTO_IGMP, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %58
  %66 = call i32 @read_lock(i32* @mrt_lock)
  %67 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %68 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %73 = call i32 @nf_reset(%struct.sk_buff* %72)
  %74 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %75 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %78 = call i32 @raw_rcv(i64 %76, %struct.sk_buff* %77)
  %79 = call i32 @read_unlock(i32* @mrt_lock)
  store i32 0, i32* %2, align 4
  br label %159

80:                                               ; preds = %65
  %81 = call i32 @read_unlock(i32* @mrt_lock)
  br label %82

82:                                               ; preds = %80, %58
  br label %83

83:                                               ; preds = %82, %57
  br label %84

84:                                               ; preds = %83, %42
  %85 = call i32 @read_lock(i32* @mrt_lock)
  %86 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %88 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %87)
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %92 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %91)
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call %struct.mfc_cache* @ipmr_cache_find(%struct.mr_table* %86, i32 %90, i32 %94)
  store %struct.mfc_cache* %95, %struct.mfc_cache** %4, align 8
  %96 = load %struct.mfc_cache*, %struct.mfc_cache** %4, align 8
  %97 = icmp eq %struct.mfc_cache* %96, null
  br i1 %97, label %98, label %136

98:                                               ; preds = %84
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %98
  %102 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %103 = load i32, i32* @GFP_ATOMIC, align 4
  %104 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %102, i32 %103)
  store %struct.sk_buff* %104, %struct.sk_buff** %10, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %106 = call i32 @ip_local_deliver(%struct.sk_buff* %105)
  %107 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %108 = icmp eq %struct.sk_buff* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %101
  %110 = call i32 @read_unlock(i32* @mrt_lock)
  %111 = load i32, i32* @ENOBUFS, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %159

113:                                              ; preds = %101
  %114 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %114, %struct.sk_buff** %3, align 8
  br label %115

115:                                              ; preds = %113, %98
  %116 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ipmr_find_vif(%struct.mr_table* %116, i32 %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %115
  %124 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %127 = call i32 @ipmr_cache_unresolved(%struct.mr_table* %124, i32 %125, %struct.sk_buff* %126)
  store i32 %127, i32* %11, align 4
  %128 = call i32 @read_unlock(i32* @mrt_lock)
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %2, align 4
  br label %159

130:                                              ; preds = %115
  %131 = call i32 @read_unlock(i32* @mrt_lock)
  %132 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %133 = call i32 @kfree_skb(%struct.sk_buff* %132)
  %134 = load i32, i32* @ENODEV, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %2, align 4
  br label %159

136:                                              ; preds = %84
  %137 = load %struct.net*, %struct.net** %5, align 8
  %138 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %140 = load %struct.mfc_cache*, %struct.mfc_cache** %4, align 8
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @ip_mr_forward(%struct.net* %137, %struct.mr_table* %138, %struct.sk_buff* %139, %struct.mfc_cache* %140, i32 %141)
  %143 = call i32 @read_unlock(i32* @mrt_lock)
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %136
  %147 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %148 = call i32 @ip_local_deliver(%struct.sk_buff* %147)
  store i32 %148, i32* %2, align 4
  br label %159

149:                                              ; preds = %136
  store i32 0, i32* %2, align 4
  br label %159

150:                                              ; preds = %29
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %155 = call i32 @ip_local_deliver(%struct.sk_buff* %154)
  store i32 %155, i32* %2, align 4
  br label %159

156:                                              ; preds = %150
  %157 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %158 = call i32 @kfree_skb(%struct.sk_buff* %157)
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %156, %153, %149, %146, %130, %123, %109, %71, %56, %38
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.TYPE_6__* @skb_rtable(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @IPCB(%struct.sk_buff*) #1

declare dso_local i32 @ipmr_fib_lookup(%struct.net*, i32*, %struct.mr_table**) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @ip_call_ra_chain(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_7__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @nf_reset(%struct.sk_buff*) #1

declare dso_local i32 @raw_rcv(i64, %struct.sk_buff*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local %struct.mfc_cache* @ipmr_cache_find(%struct.mr_table*, i32, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @ip_local_deliver(%struct.sk_buff*) #1

declare dso_local i32 @ipmr_find_vif(%struct.mr_table*, i32) #1

declare dso_local i32 @ipmr_cache_unresolved(%struct.mr_table*, i32, %struct.sk_buff*) #1

declare dso_local i32 @ip_mr_forward(%struct.net*, %struct.mr_table*, %struct.sk_buff*, %struct.mfc_cache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
