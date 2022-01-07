; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_remote_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_remote_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpevent = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.sctp_remote_error = type { i32, i32, i32, i64, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@MSG_NOTIFICATION = common dso_local global i32 0, align 4
@SCTP_REMOTE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_remote_error(%struct.sctp_association* %0, %struct.sctp_chunk* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sctp_ulpevent*, align 8
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca %struct.sctp_chunk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sctp_ulpevent*, align 8
  %11 = alloca %struct.sctp_remote_error*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %6, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %17 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %13, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %14, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ntohs(i32 %27)
  %29 = call i32 @WORD_ROUND(i32 %28)
  %30 = sext i32 %29 to i64
  %31 = sub i64 %30, 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %15, align 4
  %33 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %34 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = call i32 @skb_pull(%struct.TYPE_5__* %35, i32 8)
  %37 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %38 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call %struct.sk_buff* @skb_copy_expand(%struct.TYPE_5__* %39, i32 32, i32 0, i32 %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %12, align 8
  %42 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %43 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @skb_pull(%struct.TYPE_5__* %44, i32 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %48 = icmp ne %struct.sk_buff* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %4
  br label %89

50:                                               ; preds = %4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %52 = call %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff* %51)
  store %struct.sctp_ulpevent* %52, %struct.sctp_ulpevent** %10, align 8
  %53 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %10, align 8
  %54 = load i32, i32* @MSG_NOTIFICATION, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @sctp_ulpevent_init(%struct.sctp_ulpevent* %53, i32 %54, i32 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %60 = call i64 @skb_push(%struct.sk_buff* %59, i32 32)
  %61 = inttoptr i64 %60 to %struct.sctp_remote_error*
  store %struct.sctp_remote_error* %61, %struct.sctp_remote_error** %11, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 32, %64
  %66 = trunc i64 %65 to i32
  %67 = call i32 @skb_trim(%struct.sk_buff* %62, i32 %66)
  %68 = load i32, i32* @SCTP_REMOTE_ERROR, align 4
  %69 = load %struct.sctp_remote_error*, %struct.sctp_remote_error** %11, align 8
  %70 = getelementptr inbounds %struct.sctp_remote_error, %struct.sctp_remote_error* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.sctp_remote_error*, %struct.sctp_remote_error** %11, align 8
  %72 = getelementptr inbounds %struct.sctp_remote_error, %struct.sctp_remote_error* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sctp_remote_error*, %struct.sctp_remote_error** %11, align 8
  %77 = getelementptr inbounds %struct.sctp_remote_error, %struct.sctp_remote_error* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.sctp_remote_error*, %struct.sctp_remote_error** %11, align 8
  %80 = getelementptr inbounds %struct.sctp_remote_error, %struct.sctp_remote_error* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %10, align 8
  %82 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %83 = call i32 @sctp_ulpevent_set_owner(%struct.sctp_ulpevent* %81, %struct.sctp_association* %82)
  %84 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %85 = call i32 @sctp_assoc2id(%struct.sctp_association* %84)
  %86 = load %struct.sctp_remote_error*, %struct.sctp_remote_error** %11, align 8
  %87 = getelementptr inbounds %struct.sctp_remote_error, %struct.sctp_remote_error* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %10, align 8
  store %struct.sctp_ulpevent* %88, %struct.sctp_ulpevent** %5, align 8
  br label %90

89:                                               ; preds = %49
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %5, align 8
  br label %90

90:                                               ; preds = %89, %50
  %91 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  ret %struct.sctp_ulpevent* %91
}

declare dso_local i32 @WORD_ROUND(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @skb_pull(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff*) #1

declare dso_local i32 @sctp_ulpevent_init(%struct.sctp_ulpevent*, i32, i32) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @sctp_ulpevent_set_owner(%struct.sctp_ulpevent*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_assoc2id(%struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
