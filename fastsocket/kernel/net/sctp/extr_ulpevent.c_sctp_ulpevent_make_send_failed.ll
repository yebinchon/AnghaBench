; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_send_failed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_send_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpevent = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sctp_send_failed = type { i32, i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }

@MSG_NOTIFICATION = common dso_local global i32 0, align 4
@SCTP_SEND_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_send_failed(%struct.sctp_association* %0, %struct.sctp_chunk* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sctp_ulpevent*, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca %struct.sctp_chunk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sctp_ulpevent*, align 8
  %13 = alloca %struct.sctp_send_failed*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %7, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %17 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohs(i32 %20)
  store i32 %21, i32* %15, align 4
  %22 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %23 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call %struct.sk_buff* @skb_copy_expand(i32 %24, i32 24, i32 0, i32 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %14, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %5
  br label %89

30:                                               ; preds = %5
  %31 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %32 = call i32 @skb_pull(%struct.sk_buff* %31, i32 4)
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 %34, 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %15, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %38 = call %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff* %37)
  store %struct.sctp_ulpevent* %38, %struct.sctp_ulpevent** %12, align 8
  %39 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %12, align 8
  %40 = load i32, i32* @MSG_NOTIFICATION, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @sctp_ulpevent_init(%struct.sctp_ulpevent* %39, i32 %40, i32 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %46 = call i64 @skb_push(%struct.sk_buff* %45, i32 24)
  %47 = inttoptr i64 %46 to %struct.sctp_send_failed*
  store %struct.sctp_send_failed* %47, %struct.sctp_send_failed** %13, align 8
  %48 = load i32, i32* @SCTP_SEND_FAILED, align 4
  %49 = load %struct.sctp_send_failed*, %struct.sctp_send_failed** %13, align 8
  %50 = getelementptr inbounds %struct.sctp_send_failed, %struct.sctp_send_failed* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.sctp_send_failed*, %struct.sctp_send_failed** %13, align 8
  %53 = getelementptr inbounds %struct.sctp_send_failed, %struct.sctp_send_failed* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 24, %55
  %57 = trunc i64 %56 to i32
  %58 = load %struct.sctp_send_failed*, %struct.sctp_send_failed** %13, align 8
  %59 = getelementptr inbounds %struct.sctp_send_failed, %struct.sctp_send_failed* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %61 = load %struct.sctp_send_failed*, %struct.sctp_send_failed** %13, align 8
  %62 = getelementptr inbounds %struct.sctp_send_failed, %struct.sctp_send_failed* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @skb_trim(%struct.sk_buff* %60, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.sctp_send_failed*, %struct.sctp_send_failed** %13, align 8
  %67 = getelementptr inbounds %struct.sctp_send_failed, %struct.sctp_send_failed* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.sctp_send_failed*, %struct.sctp_send_failed** %13, align 8
  %69 = getelementptr inbounds %struct.sctp_send_failed, %struct.sctp_send_failed* %68, i32 0, i32 2
  %70 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %71 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %70, i32 0, i32 1
  %72 = call i32 @memcpy(%struct.TYPE_4__* %69, i32* %71, i32 4)
  %73 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %74 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sctp_send_failed*, %struct.sctp_send_failed** %13, align 8
  %79 = getelementptr inbounds %struct.sctp_send_failed, %struct.sctp_send_failed* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  %81 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %12, align 8
  %82 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %83 = call i32 @sctp_ulpevent_set_owner(%struct.sctp_ulpevent* %81, %struct.sctp_association* %82)
  %84 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %85 = call i32 @sctp_assoc2id(%struct.sctp_association* %84)
  %86 = load %struct.sctp_send_failed*, %struct.sctp_send_failed** %13, align 8
  %87 = getelementptr inbounds %struct.sctp_send_failed, %struct.sctp_send_failed* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %12, align 8
  store %struct.sctp_ulpevent* %88, %struct.sctp_ulpevent** %6, align 8
  br label %90

89:                                               ; preds = %29
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %6, align 8
  br label %90

90:                                               ; preds = %89, %30
  %91 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %6, align 8
  ret %struct.sctp_ulpevent* %91
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(i32, i32, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff*) #1

declare dso_local i32 @sctp_ulpevent_init(%struct.sctp_ulpevent*, i32, i32) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @sctp_ulpevent_set_owner(%struct.sctp_ulpevent*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_assoc2id(%struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
