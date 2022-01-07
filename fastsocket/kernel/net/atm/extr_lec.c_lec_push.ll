; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_lec.c_lec_push.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_lec.c_lec_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, i32, i64 }
%struct.sk_buff = type { i32, i32*, i32, i32 }
%struct.net_device = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.lec_priv = type { i64, i32, i32, i32, i32, i32 }
%struct.sock = type { i32 (%struct.sock*, i32)*, i32 }
%struct.lec_arp_table = type { %struct.atm_vcc* }
%struct.lecdatahdr_8023 = type { i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"%s: null skb\0A\00", align 1
@lec_ctrl_magic = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s: To daemon\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Ignoring frame...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*, %struct.sk_buff*)* @lec_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lec_push(%struct.atm_vcc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.lec_priv*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.lec_arp_table*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %13 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.net_device*
  store %struct.net_device* %15, %struct.net_device** %6, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.lec_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.lec_priv* %17, %struct.lec_priv** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %26 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %27 = call i32 @lec_vcc_close(%struct.lec_priv* %25, %struct.atm_vcc* %26)
  br label %191

28:                                               ; preds = %2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = bitcast i32* %31 to i8*
  %33 = load i32, i32* @lec_ctrl_magic, align 4
  %34 = call i64 @memcmp(i8* %32, i32 %33, i32 4)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %28
  %37 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %38 = call %struct.sock* @sk_atm(%struct.atm_vcc* %37)
  store %struct.sock* %38, %struct.sock** %8, align 8
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.sock*, %struct.sock** %8, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 1
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = call i32 @skb_queue_tail(i32* %44, %struct.sk_buff* %45)
  %47 = load %struct.sock*, %struct.sock** %8, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 0
  %49 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %48, align 8
  %50 = load %struct.sock*, %struct.sock** %8, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 %49(%struct.sock* %50, i32 %53)
  br label %191

55:                                               ; preds = %28
  %56 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @atm_return(%struct.atm_vcc* %56, i32 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = bitcast i32* %63 to i64*
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %67 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @htons(i32 %68)
  %70 = icmp eq i64 %65, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %55
  %72 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %73 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.net_device*, %struct.net_device** %6, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IFF_UP, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %76, %71, %55
  %84 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = call i32 @dev_kfree_skb(%struct.sk_buff* %85)
  br label %191

87:                                               ; preds = %76
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = bitcast i32* %90 to %struct.lecdatahdr_8023*
  %92 = getelementptr inbounds %struct.lecdatahdr_8023, %struct.lecdatahdr_8023* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %11, align 8
  %94 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %95 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %94, i32 0, i32 3
  %96 = load i64, i64* %5, align 8
  %97 = call i32 @spin_lock_irqsave(i32* %95, i64 %96)
  %98 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %99 = call i64 @lec_is_data_direct(%struct.atm_vcc* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %126

101:                                              ; preds = %87
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = bitcast i32* %104 to %struct.lecdatahdr_8023*
  %106 = getelementptr inbounds %struct.lecdatahdr_8023, %struct.lecdatahdr_8023* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %10, align 8
  %108 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = call %struct.lec_arp_table* @lec_arp_find(%struct.lec_priv* %108, i8* %109)
  store %struct.lec_arp_table* %110, %struct.lec_arp_table** %9, align 8
  %111 = load %struct.lec_arp_table*, %struct.lec_arp_table** %9, align 8
  %112 = icmp ne %struct.lec_arp_table* %111, null
  br i1 %112, label %113, label %125

113:                                              ; preds = %101
  %114 = load %struct.lec_arp_table*, %struct.lec_arp_table** %9, align 8
  %115 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %114, i32 0, i32 0
  %116 = load %struct.atm_vcc*, %struct.atm_vcc** %115, align 8
  %117 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %118 = icmp ne %struct.atm_vcc* %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %121 = load %struct.lec_arp_table*, %struct.lec_arp_table** %9, align 8
  %122 = call i32 @lec_arp_remove(%struct.lec_priv* %120, %struct.lec_arp_table* %121)
  %123 = load %struct.lec_arp_table*, %struct.lec_arp_table** %9, align 8
  %124 = call i32 @lec_arp_put(%struct.lec_arp_table* %123)
  br label %125

125:                                              ; preds = %119, %113, %101
  br label %126

126:                                              ; preds = %125, %87
  %127 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %128 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %127, i32 0, i32 3
  %129 = load i64, i64* %5, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32* %128, i64 %129)
  %131 = load i8*, i8** %11, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = and i32 %134, 1
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %155, label %137

137:                                              ; preds = %126
  %138 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %139 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %155, label %142

142:                                              ; preds = %137
  %143 = load i8*, i8** %11, align 8
  %144 = load %struct.net_device*, %struct.net_device** %6, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.net_device*, %struct.net_device** %6, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @memcmp(i8* %143, i32 %146, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %142
  %153 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %154 = call i32 @dev_kfree_skb(%struct.sk_buff* %153)
  br label %191

155:                                              ; preds = %142, %137, %126
  %156 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %157 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %156, i32 0, i32 1
  %158 = call i32 @hlist_empty(i32* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %155
  %161 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %162 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %164 = call i32 @lec_arp_check_empties(%struct.lec_priv* %161, %struct.atm_vcc* %162, %struct.sk_buff* %163)
  br label %165

165:                                              ; preds = %160, %155
  %166 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %167 = call i32 @skb_pull(%struct.sk_buff* %166, i32 2)
  %168 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %169 = load %struct.net_device*, %struct.net_device** %6, align 8
  %170 = call i32 @eth_type_trans(%struct.sk_buff* %168, %struct.net_device* %169)
  %171 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %172 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 8
  %173 = load %struct.net_device*, %struct.net_device** %6, align 8
  %174 = getelementptr inbounds %struct.net_device, %struct.net_device* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  %178 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %179 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.net_device*, %struct.net_device** %6, align 8
  %182 = getelementptr inbounds %struct.net_device, %struct.net_device* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, %180
  store i32 %185, i32* %183, align 4
  %186 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %187 = call i32 @ATM_SKB(%struct.sk_buff* %186)
  %188 = call i32 @memset(i32 %187, i32 0, i32 4)
  %189 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %190 = call i32 @netif_rx(%struct.sk_buff* %189)
  br label %191

191:                                              ; preds = %20, %83, %152, %165, %36
  ret void
}

declare dso_local %struct.lec_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @lec_vcc_close(%struct.lec_priv*, %struct.atm_vcc*) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local %struct.sock* @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @atm_return(%struct.atm_vcc*, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @lec_is_data_direct(%struct.atm_vcc*) #1

declare dso_local %struct.lec_arp_table* @lec_arp_find(%struct.lec_priv*, i8*) #1

declare dso_local i32 @lec_arp_remove(%struct.lec_priv*, %struct.lec_arp_table*) #1

declare dso_local i32 @lec_arp_put(%struct.lec_arp_table*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hlist_empty(i32*) #1

declare dso_local i32 @lec_arp_check_empties(%struct.lec_priv*, %struct.atm_vcc*, %struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ATM_SKB(%struct.sk_buff*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
