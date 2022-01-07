; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpqueue.c_sctp_ulpq_tail_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpqueue.c_sctp_ulpq_tail_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.sock* }
%struct.sock = type { i32, i32 (%struct.sock*, i32)*, %struct.sk_buff_head }
%struct.sk_buff_head = type { i32 }
%struct.sctp_ulpevent = type { i32 }
%struct.sk_buff = type { i64 }
%struct.TYPE_6__ = type { %struct.sk_buff_head, i64, i32, i32 }

@SOCK_DEAD = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@MSG_NOTIFICATION = common dso_local global i32 0, align 4
@SCTP_DATA_NOT_FRAG = common dso_local global i32 0, align 4
@SCTP_DATA_FRAG_MASK = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_ulpq_tail_event(%struct.sctp_ulpq* %0, %struct.sctp_ulpevent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_ulpq*, align 8
  %5 = alloca %struct.sctp_ulpevent*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  %8 = alloca %struct.sk_buff_head*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %4, align 8
  store %struct.sctp_ulpevent* %1, %struct.sctp_ulpevent** %5, align 8
  %11 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %12 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %6, align 8
  %17 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %18 = call %struct.sk_buff* @sctp_event2skb(%struct.sctp_ulpevent* %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.sk_buff_head*
  store %struct.sk_buff_head* %22, %struct.sk_buff_head** %8, align 8
  %23 = load %struct.sock*, %struct.sock** %6, align 8
  %24 = load i32, i32* @SOCK_DEAD, align 4
  %25 = call i64 @sock_flag(%struct.sock* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %2
  %28 = load %struct.sock*, %struct.sock** %6, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @RCV_SHUTDOWN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %2
  br label %129

35:                                               ; preds = %27
  %36 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %37 = load %struct.sock*, %struct.sock** %6, align 8
  %38 = call %struct.TYPE_6__* @sctp_sk(%struct.sock* %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = call i32 @sctp_ulpevent_is_enabled(%struct.sctp_ulpevent* %36, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %129

43:                                               ; preds = %35
  %44 = load %struct.sock*, %struct.sock** %6, align 8
  %45 = call %struct.TYPE_6__* @sctp_sk(%struct.sock* %44)
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = call i64 @atomic_read(i32* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.sock*, %struct.sock** %6, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 2
  store %struct.sk_buff_head* %51, %struct.sk_buff_head** %7, align 8
  br label %100

52:                                               ; preds = %43
  %53 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %54 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %85

57:                                               ; preds = %52
  %58 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %59 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MSG_NOTIFICATION, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @SCTP_DATA_NOT_FRAG, align 4
  %66 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %67 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SCTP_DATA_FRAG_MASK, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %65, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %64, %57
  %73 = load %struct.sock*, %struct.sock** %6, align 8
  %74 = call %struct.TYPE_6__* @sctp_sk(%struct.sock* %73)
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store %struct.sk_buff_head* %75, %struct.sk_buff_head** %7, align 8
  br label %84

76:                                               ; preds = %64
  %77 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %78 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @MSG_EOR, align 4
  %81 = and i32 %79, %80
  store i32 %81, i32* %10, align 4
  %82 = load %struct.sock*, %struct.sock** %6, align 8
  %83 = getelementptr inbounds %struct.sock, %struct.sock* %82, i32 0, i32 2
  store %struct.sk_buff_head* %83, %struct.sk_buff_head** %7, align 8
  br label %84

84:                                               ; preds = %76, %72
  br label %99

85:                                               ; preds = %52
  %86 = load %struct.sock*, %struct.sock** %6, align 8
  %87 = call %struct.TYPE_6__* @sctp_sk(%struct.sock* %86)
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %struct.sock*, %struct.sock** %6, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 2
  store %struct.sk_buff_head* %93, %struct.sk_buff_head** %7, align 8
  br label %98

94:                                               ; preds = %85
  %95 = load %struct.sock*, %struct.sock** %6, align 8
  %96 = call %struct.TYPE_6__* @sctp_sk(%struct.sock* %95)
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store %struct.sk_buff_head* %97, %struct.sk_buff_head** %7, align 8
  br label %98

98:                                               ; preds = %94, %91
  br label %99

99:                                               ; preds = %98, %84
  br label %100

100:                                              ; preds = %99, %49
  %101 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %102 = icmp ne %struct.sk_buff_head* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %105 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %106 = call i32 @sctp_skb_list_tail(%struct.sk_buff_head* %104, %struct.sk_buff_head* %105)
  br label %111

107:                                              ; preds = %100
  %108 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %110 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %108, %struct.sk_buff* %109)
  br label %111

111:                                              ; preds = %107, %103
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %116 = call i32 @sctp_ulpq_clear_pd(%struct.sctp_ulpq* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %119 = load %struct.sock*, %struct.sock** %6, align 8
  %120 = getelementptr inbounds %struct.sock, %struct.sock* %119, i32 0, i32 2
  %121 = icmp eq %struct.sk_buff_head* %118, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load %struct.sock*, %struct.sock** %6, align 8
  %124 = getelementptr inbounds %struct.sock, %struct.sock* %123, i32 0, i32 1
  %125 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %124, align 8
  %126 = load %struct.sock*, %struct.sock** %6, align 8
  %127 = call i32 %125(%struct.sock* %126, i32 0)
  br label %128

128:                                              ; preds = %122, %117
  store i32 1, i32* %3, align 4
  br label %139

129:                                              ; preds = %42, %34
  %130 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %131 = icmp ne %struct.sk_buff_head* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %134 = call i32 @sctp_queue_purge_ulpevents(%struct.sk_buff_head* %133)
  br label %138

135:                                              ; preds = %129
  %136 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %137 = call i32 @sctp_ulpevent_free(%struct.sctp_ulpevent* %136)
  br label %138

138:                                              ; preds = %135, %132
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %128
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.sk_buff* @sctp_event2skb(%struct.sctp_ulpevent*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sctp_ulpevent_is_enabled(%struct.sctp_ulpevent*, i32*) #1

declare dso_local %struct.TYPE_6__* @sctp_sk(%struct.sock*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @sctp_skb_list_tail(%struct.sk_buff_head*, %struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @sctp_ulpq_clear_pd(%struct.sctp_ulpq*) #1

declare dso_local i32 @sctp_queue_purge_ulpevents(%struct.sk_buff_head*) #1

declare dso_local i32 @sctp_ulpevent_free(%struct.sctp_ulpevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
