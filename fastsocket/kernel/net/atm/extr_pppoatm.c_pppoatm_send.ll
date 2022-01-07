; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_pppoatm.c_pppoatm_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_pppoatm.c_pppoatm_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp_channel = type { i32 }
%struct.sk_buff = type { i8*, i32 }
%struct.pppoatm_vcc = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (%struct.TYPE_6__*, %struct.sk_buff*)*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"pppoatm_send (skb=0x%p, vcc=0x%p)\0A\00", align 1
@SC_COMP_PROT = common dso_local global i32 0, align 4
@LLC_LEN = common dso_local global i32 0, align 4
@DROP_PACKET = common dso_local global i32 0, align 4
@pppllc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Trying to send without setting encaps!\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"atm_skb(%p)->vcc(%p)->dev(%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ppp_channel*, %struct.sk_buff*)* @pppoatm_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppoatm_send(%struct.ppp_channel* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ppp_channel*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.pppoatm_vcc*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.ppp_channel* %0, %struct.ppp_channel** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.ppp_channel*, %struct.ppp_channel** %4, align 8
  %9 = call %struct.pppoatm_vcc* @chan_to_pvcc(%struct.ppp_channel* %8)
  store %struct.pppoatm_vcc* %9, %struct.pppoatm_vcc** %6, align 8
  %10 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %6, align 8
  %11 = getelementptr inbounds %struct.pppoatm_vcc, %struct.pppoatm_vcc* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.TYPE_8__* @ATM_SKB(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %15, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %6, align 8
  %18 = getelementptr inbounds %struct.pppoatm_vcc, %struct.pppoatm_vcc* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %16, %struct.TYPE_6__* %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %2
  %29 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %6, align 8
  %30 = getelementptr inbounds %struct.pppoatm_vcc, %struct.pppoatm_vcc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SC_COMP_PROT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i32 @skb_pull(%struct.sk_buff* %36, i32 1)
  br label %38

38:                                               ; preds = %35, %28, %2
  %39 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %6, align 8
  %40 = getelementptr inbounds %struct.pppoatm_vcc, %struct.pppoatm_vcc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %107 [
    i32 129, label %42
    i32 128, label %92
    i32 130, label %103
  ]

42:                                               ; preds = %38
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call i64 @skb_headroom(%struct.sk_buff* %43)
  %45 = load i32, i32* @LLC_LEN, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %44, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %42
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = load i32, i32* @LLC_LEN, align 4
  %51 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %49, i32 %50)
  store %struct.sk_buff* %51, %struct.sk_buff** %7, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = icmp ne %struct.sk_buff* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %48
  %55 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %6, align 8
  %56 = getelementptr inbounds %struct.pppoatm_vcc, %struct.pppoatm_vcc* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @atm_may_send(%struct.TYPE_6__* %57, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %54
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = call i32 @kfree_skb(%struct.sk_buff* %64)
  br label %157

66:                                               ; preds = %54, %48
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call i32 @kfree_skb(%struct.sk_buff* %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %69, %struct.sk_buff** %5, align 8
  %70 = icmp eq %struct.sk_buff* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @DROP_PACKET, align 4
  store i32 %72, i32* %3, align 4
  br label %180

73:                                               ; preds = %66
  br label %85

74:                                               ; preds = %42
  %75 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %6, align 8
  %76 = getelementptr inbounds %struct.pppoatm_vcc, %struct.pppoatm_vcc* %75, i32 0, i32 2
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @atm_may_send(%struct.TYPE_6__* %77, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %74
  br label %157

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %73
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = load i32, i32* @LLC_LEN, align 4
  %88 = call i32 @skb_push(%struct.sk_buff* %86, i32 %87)
  %89 = load i32, i32* @pppllc, align 4
  %90 = load i32, i32* @LLC_LEN, align 4
  %91 = call i32 @memcpy(i32 %88, i32 %89, i32 %90)
  br label %107

92:                                               ; preds = %38
  %93 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %6, align 8
  %94 = getelementptr inbounds %struct.pppoatm_vcc, %struct.pppoatm_vcc* %93, i32 0, i32 2
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @atm_may_send(%struct.TYPE_6__* %95, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %92
  br label %157

102:                                              ; preds = %92
  br label %107

103:                                              ; preds = %38
  %104 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = call i32 @kfree_skb(%struct.sk_buff* %105)
  store i32 1, i32* %3, align 4
  br label %180

107:                                              ; preds = %38, %102, %85
  %108 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = call %struct.TYPE_8__* @ATM_SKB(%struct.sk_buff* %111)
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = call %struct.TYPE_7__* @sk_atm(%struct.TYPE_6__* %114)
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = call i32 @atomic_add(i32 %110, i32* %116)
  %118 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %119 = call %struct.TYPE_8__* @ATM_SKB(%struct.sk_buff* %118)
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %125 = call %struct.TYPE_8__* @ATM_SKB(%struct.sk_buff* %124)
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = call %struct.TYPE_8__* @ATM_SKB(%struct.sk_buff* %128)
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %133 = call %struct.TYPE_8__* @ATM_SKB(%struct.sk_buff* %132)
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.sk_buff* %127, %struct.TYPE_6__* %131, i32 %137)
  %139 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %140 = call %struct.TYPE_8__* @ATM_SKB(%struct.sk_buff* %139)
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i64 (%struct.TYPE_6__*, %struct.sk_buff*)*, i64 (%struct.TYPE_6__*, %struct.sk_buff*)** %143, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %146 = call %struct.TYPE_8__* @ATM_SKB(%struct.sk_buff* %145)
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %150 = call i64 %144(%struct.TYPE_6__* %148, %struct.sk_buff* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %107
  %153 = load i32, i32* @DROP_PACKET, align 4
  br label %155

154:                                              ; preds = %107
  br label %155

155:                                              ; preds = %154, %152
  %156 = phi i32 [ %153, %152 ], [ 1, %154 ]
  store i32 %156, i32* %3, align 4
  br label %180

157:                                              ; preds = %101, %83, %63
  %158 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %6, align 8
  %159 = getelementptr inbounds %struct.pppoatm_vcc, %struct.pppoatm_vcc* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @SC_COMP_PROT, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %179

164:                                              ; preds = %157
  %165 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %166 = call i64 @skb_headroom(%struct.sk_buff* %165)
  %167 = icmp sgt i64 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %164
  %169 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 -1
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %168
  %177 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %178 = call i32 @skb_push(%struct.sk_buff* %177, i32 1)
  br label %179

179:                                              ; preds = %176, %168, %164, %157
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %179, %155, %103, %71
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local %struct.pppoatm_vcc* @chan_to_pvcc(%struct.ppp_channel*) #1

declare dso_local %struct.TYPE_8__* @ATM_SKB(%struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i32) #1

declare dso_local i32 @atm_may_send(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local %struct.TYPE_7__* @sk_atm(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
