; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_out.c_x25_kick.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_out.c_x25_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.x25_sock = type { i64, i32, i32, i16, i16, i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@X25_STATE_3 = common dso_local global i64 0, align 8
@X25_COND_PEER_RX_BUSY = common dso_local global i32 0, align 4
@X25_EMODULUS = common dso_local global i32 0, align 4
@X25_SMODULUS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@X25_COND_ACK_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x25_kick(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca %struct.x25_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.x25_sock* @x25_sk(%struct.sock* %9)
  store %struct.x25_sock* %10, %struct.x25_sock** %8, align 8
  %11 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %12 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @X25_STATE_3, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %167

17:                                               ; preds = %1
  %18 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %19 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %17
  %23 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %24 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %23, i32 0, i32 10
  %25 = call i32* @skb_peek(i32* %24)
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %29 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %28, i32 0, i32 1
  store i32 1, i32* %29, align 8
  %30 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %31 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %30, i32 0, i32 10
  %32 = call %struct.sk_buff* @skb_dequeue(i32* %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %3, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %35 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %34, i32 0, i32 9
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call i32 @x25_transmit_link(%struct.sk_buff* %33, %struct.TYPE_4__* %36)
  br label %38

38:                                               ; preds = %27, %22, %17
  %39 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %40 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @X25_COND_PEER_RX_BUSY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %167

46:                                               ; preds = %38
  %47 = load %struct.sock*, %struct.sock** %2, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 0
  %49 = call i32* @skb_peek(i32* %48)
  %50 = icmp ne i32* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %167

52:                                               ; preds = %46
  %53 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %54 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %53, i32 0, i32 9
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @X25_EMODULUS, align 4
  br label %63

61:                                               ; preds = %52
  %62 = load i32, i32* @X25_SMODULUS, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  store i32 %64, i32* %7, align 4
  %65 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %66 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %65, i32 0, i32 7
  %67 = call i32* @skb_peek(i32* %66)
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %71 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %70, i32 0, i32 3
  %72 = load i16, i16* %71, align 8
  %73 = zext i16 %72 to i32
  br label %79

74:                                               ; preds = %63
  %75 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %76 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %75, i32 0, i32 4
  %77 = load i16, i16* %76, align 2
  %78 = zext i16 %77 to i32
  br label %79

79:                                               ; preds = %74, %69
  %80 = phi i32 [ %73, %69 ], [ %78, %74 ]
  %81 = trunc i32 %80 to i16
  store i16 %81, i16* %5, align 2
  %82 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %83 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %82, i32 0, i32 4
  %84 = load i16, i16* %83, align 2
  %85 = zext i16 %84 to i32
  %86 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %87 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %86, i32 0, i32 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %85, %89
  %91 = load i32, i32* %7, align 4
  %92 = srem i32 %90, %91
  %93 = trunc i32 %92 to i16
  store i16 %93, i16* %6, align 2
  %94 = load i16, i16* %5, align 2
  %95 = zext i16 %94 to i32
  %96 = load i16, i16* %6, align 2
  %97 = zext i16 %96 to i32
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %79
  br label %167

100:                                              ; preds = %79
  %101 = load i16, i16* %5, align 2
  %102 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %103 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %102, i32 0, i32 3
  store i16 %101, i16* %103, align 8
  %104 = load %struct.sock*, %struct.sock** %2, align 8
  %105 = getelementptr inbounds %struct.sock, %struct.sock* %104, i32 0, i32 0
  %106 = call %struct.sk_buff* @skb_dequeue(i32* %105)
  store %struct.sk_buff* %106, %struct.sk_buff** %3, align 8
  br label %107

107:                                              ; preds = %151, %100
  %108 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %109 = load i32, i32* @GFP_ATOMIC, align 4
  %110 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %108, i32 %109)
  store %struct.sk_buff* %110, %struct.sk_buff** %4, align 8
  %111 = icmp eq %struct.sk_buff* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.sock*, %struct.sock** %2, align 8
  %114 = getelementptr inbounds %struct.sock, %struct.sock* %113, i32 0, i32 0
  %115 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %116 = call i32 @skb_queue_head(i32* %114, %struct.sk_buff* %115)
  br label %153

117:                                              ; preds = %107
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = load %struct.sock*, %struct.sock** %2, align 8
  %120 = call i32 @skb_set_owner_w(%struct.sk_buff* %118, %struct.sock* %119)
  %121 = load %struct.sock*, %struct.sock** %2, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = call i32 @x25_send_iframe(%struct.sock* %121, %struct.sk_buff* %122)
  %124 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %125 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %124, i32 0, i32 3
  %126 = load i16, i16* %125, align 8
  %127 = zext i16 %126 to i32
  %128 = add nsw i32 %127, 1
  %129 = load i32, i32* %7, align 4
  %130 = srem i32 %128, %129
  %131 = trunc i32 %130 to i16
  %132 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %133 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %132, i32 0, i32 3
  store i16 %131, i16* %133, align 8
  %134 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %135 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %134, i32 0, i32 7
  %136 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %137 = call i32 @skb_queue_tail(i32* %135, %struct.sk_buff* %136)
  br label %138

138:                                              ; preds = %117
  %139 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %140 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %139, i32 0, i32 3
  %141 = load i16, i16* %140, align 8
  %142 = zext i16 %141 to i32
  %143 = load i16, i16* %6, align 2
  %144 = zext i16 %143 to i32
  %145 = icmp ne i32 %142, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %138
  %147 = load %struct.sock*, %struct.sock** %2, align 8
  %148 = getelementptr inbounds %struct.sock, %struct.sock* %147, i32 0, i32 0
  %149 = call %struct.sk_buff* @skb_dequeue(i32* %148)
  store %struct.sk_buff* %149, %struct.sk_buff** %3, align 8
  %150 = icmp ne %struct.sk_buff* %149, null
  br label %151

151:                                              ; preds = %146, %138
  %152 = phi i1 [ false, %138 ], [ %150, %146 ]
  br i1 %152, label %107, label %153

153:                                              ; preds = %151, %112
  %154 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %155 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %158 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %157, i32 0, i32 6
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* @X25_COND_ACK_PENDING, align 4
  %160 = xor i32 %159, -1
  %161 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %162 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, %160
  store i32 %164, i32* %162, align 4
  %165 = load %struct.sock*, %struct.sock** %2, align 8
  %166 = call i32 @x25_stop_timer(%struct.sock* %165)
  br label %167

167:                                              ; preds = %153, %99, %51, %45, %16
  ret void
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i32* @skb_peek(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @x25_transmit_link(%struct.sk_buff*, %struct.TYPE_4__*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @x25_send_iframe(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @x25_stop_timer(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
