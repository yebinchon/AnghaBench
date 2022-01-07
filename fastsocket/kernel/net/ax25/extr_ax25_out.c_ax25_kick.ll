; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_out.c_ax25_kick.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_out.c_ax25_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i16, i16, i16, i16, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.sk_buff = type { i32* }

@AX25_STATE_3 = common dso_local global i64 0, align 8
@AX25_STATE_4 = common dso_local global i64 0, align 8
@AX25_COND_PEER_RX_BUSY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@AX25_VALUES_PROTOCOL = common dso_local global i64 0, align 8
@AX25_POLLON = common dso_local global i32 0, align 4
@AX25_POLLOFF = common dso_local global i32 0, align 4
@AX25_COND_ACK_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ax25_kick(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i32 1, i32* %5, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AX25_STATE_3, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AX25_STATE_4, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %179

21:                                               ; preds = %14, %1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @AX25_COND_PEER_RX_BUSY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %179

29:                                               ; preds = %21
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 8
  %32 = call i32* @skb_peek(i32* %31)
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %179

35:                                               ; preds = %29
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 6
  %38 = call i32* @skb_peek(i32* %37)
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load i16, i16* %42, align 4
  %44 = zext i16 %43 to i32
  br label %50

45:                                               ; preds = %35
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 3
  %48 = load i16, i16* %47, align 2
  %49 = zext i16 %48 to i32
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi i32 [ %44, %40 ], [ %49, %45 ]
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %6, align 2
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i16, i16* %54, align 4
  %56 = zext i16 %55 to i32
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 4
  %59 = load i16, i16* %58, align 8
  %60 = zext i16 %59 to i32
  %61 = add nsw i32 %56, %60
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 5
  %64 = load i16, i16* %63, align 2
  %65 = zext i16 %64 to i32
  %66 = srem i32 %61, %65
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %7, align 2
  %68 = load i16, i16* %6, align 2
  %69 = zext i16 %68 to i32
  %70 = load i16, i16* %7, align 2
  %71 = zext i16 %70 to i32
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %50
  br label %179

74:                                               ; preds = %50
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 8
  %77 = call %struct.sk_buff* @skb_dequeue(i32* %76)
  store %struct.sk_buff* %77, %struct.sk_buff** %3, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %79 = icmp ne %struct.sk_buff* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  br label %179

81:                                               ; preds = %74
  %82 = load i16, i16* %6, align 2
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  store i16 %82, i16* %84, align 2
  br label %85

85:                                               ; preds = %160, %81
  %86 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %87 = load i32, i32* @GFP_ATOMIC, align 4
  %88 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %86, i32 %87)
  store %struct.sk_buff* %88, %struct.sk_buff** %4, align 8
  %89 = icmp eq %struct.sk_buff* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %94 = call i32 @skb_queue_head(i32* %92, %struct.sk_buff* %93)
  br label %162

95:                                               ; preds = %85
  %96 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @skb_set_owner_w(%struct.sk_buff* %101, i32* %104)
  br label %106

106:                                              ; preds = %100, %95
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 3
  %109 = load i16, i16* %108, align 2
  %110 = zext i16 %109 to i32
  %111 = add nsw i32 %110, 1
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 5
  %114 = load i16, i16* %113, align 2
  %115 = zext i16 %114 to i32
  %116 = srem i32 %111, %115
  %117 = trunc i32 %116 to i16
  store i16 %117, i16* %8, align 2
  %118 = load i16, i16* %8, align 2
  %119 = zext i16 %118 to i32
  %120 = load i16, i16* %7, align 2
  %121 = zext i16 %120 to i32
  %122 = icmp eq i32 %119, %121
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %5, align 4
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 7
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* @AX25_VALUES_PROTOCOL, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  switch i32 %131, label %144 [
    i32 128, label %132
    i32 129, label %132
  ]

132:                                              ; preds = %106, %106
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = load i32, i32* @AX25_POLLON, align 4
  br label %141

139:                                              ; preds = %132
  %140 = load i32, i32* @AX25_POLLOFF, align 4
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi i32 [ %138, %137 ], [ %140, %139 ]
  %143 = call i32 @ax25_send_iframe(%struct.TYPE_10__* %133, %struct.sk_buff* %134, i32 %142)
  br label %144

144:                                              ; preds = %106, %141
  %145 = load i16, i16* %8, align 2
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 3
  store i16 %145, i16* %147, align 2
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 6
  %150 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %151 = call i32 @skb_queue_tail(i32* %149, %struct.sk_buff* %150)
  br label %152

152:                                              ; preds = %144
  %153 = load i32, i32* %5, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %152
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 8
  %158 = call %struct.sk_buff* @skb_dequeue(i32* %157)
  store %struct.sk_buff* %158, %struct.sk_buff** %3, align 8
  %159 = icmp ne %struct.sk_buff* %158, null
  br label %160

160:                                              ; preds = %155, %152
  %161 = phi i1 [ false, %152 ], [ %159, %155 ]
  br i1 %161, label %85, label %162

162:                                              ; preds = %160, %90
  %163 = load i32, i32* @AX25_COND_ACK_PENDING, align 4
  %164 = xor i32 %163, -1
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %167, %164
  store i32 %168, i32* %166, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %170 = call i32 @ax25_t1timer_running(%struct.TYPE_10__* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %162
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %174 = call i32 @ax25_stop_t3timer(%struct.TYPE_10__* %173)
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %176 = call i32 @ax25_calculate_t1(%struct.TYPE_10__* %175)
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %178 = call i32 @ax25_start_t1timer(%struct.TYPE_10__* %177)
  br label %179

179:                                              ; preds = %20, %28, %34, %73, %80, %172, %162
  ret void
}

declare dso_local i32* @skb_peek(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, i32*) #1

declare dso_local i32 @ax25_send_iframe(%struct.TYPE_10__*, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ax25_t1timer_running(%struct.TYPE_10__*) #1

declare dso_local i32 @ax25_stop_t3timer(%struct.TYPE_10__*) #1

declare dso_local i32 @ax25_calculate_t1(%struct.TYPE_10__*) #1

declare dso_local i32 @ax25_start_t1timer(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
