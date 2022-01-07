; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/lapb/extr_lapb_out.c_lapb_kick.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/lapb/extr_lapb_out.c_lapb_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapb_cb = type { i32, i16, i16, i16, i32, i32, i32 }
%struct.sk_buff = type { i64 }

@LAPB_EXTENDED = common dso_local global i32 0, align 4
@LAPB_EMODULUS = common dso_local global i16 0, align 2
@LAPB_SMODULUS = common dso_local global i16 0, align 2
@LAPB_PEER_RX_BUSY_CONDITION = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@LAPB_POLLOFF = common dso_local global i32 0, align 4
@LAPB_ACK_PENDING_CONDITION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lapb_kick(%struct.lapb_cb* %0) #0 {
  %2 = alloca %struct.lapb_cb*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.lapb_cb* %0, %struct.lapb_cb** %2, align 8
  %8 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %9 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @LAPB_EXTENDED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i16, i16* @LAPB_EMODULUS, align 2
  %16 = zext i16 %15 to i32
  br label %20

17:                                               ; preds = %1
  %18 = load i16, i16* @LAPB_SMODULUS, align 2
  %19 = zext i16 %18 to i32
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i32 [ %16, %14 ], [ %19, %17 ]
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %5, align 2
  %23 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %24 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %23, i32 0, i32 5
  %25 = call i64 @skb_peek(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %29 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %28, i32 0, i32 1
  %30 = load i16, i16* %29, align 4
  %31 = zext i16 %30 to i32
  br label %37

32:                                               ; preds = %20
  %33 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %34 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %33, i32 0, i32 2
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i32 [ %31, %27 ], [ %36, %32 ]
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %6, align 2
  %40 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %41 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %40, i32 0, i32 1
  %42 = load i16, i16* %41, align 4
  %43 = zext i16 %42 to i32
  %44 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %45 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %44, i32 0, i32 3
  %46 = load i16, i16* %45, align 4
  %47 = zext i16 %46 to i32
  %48 = add nsw i32 %43, %47
  %49 = load i16, i16* %5, align 2
  %50 = zext i16 %49 to i32
  %51 = srem i32 %48, %50
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %7, align 2
  %53 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %54 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @LAPB_PEER_RX_BUSY_CONDITION, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %147, label %59

59:                                               ; preds = %37
  %60 = load i16, i16* %6, align 2
  %61 = zext i16 %60 to i32
  %62 = load i16, i16* %7, align 2
  %63 = zext i16 %62 to i32
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %147

65:                                               ; preds = %59
  %66 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %67 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %66, i32 0, i32 6
  %68 = call i64 @skb_peek(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %147

70:                                               ; preds = %65
  %71 = load i16, i16* %6, align 2
  %72 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %73 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %72, i32 0, i32 2
  store i16 %71, i16* %73, align 2
  %74 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %75 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %74, i32 0, i32 6
  %76 = call %struct.sk_buff* @skb_dequeue(i32* %75)
  store %struct.sk_buff* %76, %struct.sk_buff** %3, align 8
  br label %77

77:                                               ; preds = %131, %70
  %78 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %79 = load i32, i32* @GFP_ATOMIC, align 4
  %80 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %78, i32 %79)
  store %struct.sk_buff* %80, %struct.sk_buff** %4, align 8
  %81 = icmp eq %struct.sk_buff* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %84 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %83, i32 0, i32 6
  %85 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %86 = call i32 @skb_queue_head(i32* %84, %struct.sk_buff* %85)
  br label %133

87:                                               ; preds = %77
  %88 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @skb_set_owner_w(%struct.sk_buff* %93, i64 %96)
  br label %98

98:                                               ; preds = %92, %87
  %99 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = load i32, i32* @LAPB_POLLOFF, align 4
  %102 = call i32 @lapb_send_iframe(%struct.lapb_cb* %99, %struct.sk_buff* %100, i32 %101)
  %103 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %104 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %103, i32 0, i32 2
  %105 = load i16, i16* %104, align 2
  %106 = zext i16 %105 to i32
  %107 = add nsw i32 %106, 1
  %108 = load i16, i16* %5, align 2
  %109 = zext i16 %108 to i32
  %110 = srem i32 %107, %109
  %111 = trunc i32 %110 to i16
  %112 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %113 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %112, i32 0, i32 2
  store i16 %111, i16* %113, align 2
  %114 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %115 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %114, i32 0, i32 5
  %116 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %117 = call i32 @skb_queue_tail(i32* %115, %struct.sk_buff* %116)
  br label %118

118:                                              ; preds = %98
  %119 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %120 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %119, i32 0, i32 2
  %121 = load i16, i16* %120, align 2
  %122 = zext i16 %121 to i32
  %123 = load i16, i16* %7, align 2
  %124 = zext i16 %123 to i32
  %125 = icmp ne i32 %122, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %118
  %127 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %128 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %127, i32 0, i32 6
  %129 = call %struct.sk_buff* @skb_dequeue(i32* %128)
  store %struct.sk_buff* %129, %struct.sk_buff** %3, align 8
  %130 = icmp ne %struct.sk_buff* %129, null
  br label %131

131:                                              ; preds = %126, %118
  %132 = phi i1 [ false, %118 ], [ %130, %126 ]
  br i1 %132, label %77, label %133

133:                                              ; preds = %131, %82
  %134 = load i32, i32* @LAPB_ACK_PENDING_CONDITION, align 4
  %135 = xor i32 %134, -1
  %136 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %137 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %141 = call i32 @lapb_t1timer_running(%struct.lapb_cb* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %133
  %144 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %145 = call i32 @lapb_start_t1timer(%struct.lapb_cb* %144)
  br label %146

146:                                              ; preds = %143, %133
  br label %147

147:                                              ; preds = %146, %65, %59, %37
  ret void
}

declare dso_local i64 @skb_peek(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, i64) #1

declare dso_local i32 @lapb_send_iframe(%struct.lapb_cb*, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @lapb_t1timer_running(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_start_t1timer(%struct.lapb_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
