; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_assoc_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_assoc_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpevent = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_assoc_change = type { i32, i8*, i8*, i8*, i32, i64, i8*, i32 }
%struct.sk_buff = type { i32, i32 }

@MSG_NOTIFICATION = common dso_local global i32 0, align 4
@SCTP_ASSOC_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, %struct.sctp_chunk* %6, i32 %7) #0 {
  %9 = alloca %struct.sctp_ulpevent*, align 8
  %10 = alloca %struct.sctp_association*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.sctp_chunk*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.sctp_ulpevent*, align 8
  %19 = alloca %struct.sctp_assoc_change*, align 8
  %20 = alloca %struct.sk_buff*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store %struct.sctp_chunk* %6, %struct.sctp_chunk** %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %22 = icmp ne %struct.sctp_chunk* %21, null
  br i1 %22, label %23, label %54

23:                                               ; preds = %8
  %24 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %25 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %17, align 4
  %28 = call %struct.sk_buff* @skb_copy_expand(i32 %26, i32 64, i32 0, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %20, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %98

32:                                               ; preds = %23
  %33 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %34 = call %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff* %33)
  store %struct.sctp_ulpevent* %34, %struct.sctp_ulpevent** %18, align 8
  %35 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %18, align 8
  %36 = load i32, i32* @MSG_NOTIFICATION, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sctp_ulpevent_init(%struct.sctp_ulpevent* %35, i32 %36, i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %42 = call i64 @skb_push(%struct.sk_buff* %41, i32 64)
  %43 = inttoptr i64 %42 to %struct.sctp_assoc_change*
  store %struct.sctp_assoc_change* %43, %struct.sctp_assoc_change** %19, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %45 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %46 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ntohs(i32 %49)
  %51 = add i64 64, %50
  %52 = sub i64 %51, 4
  %53 = call i32 @skb_trim(%struct.sk_buff* %44, i64 %52)
  br label %67

54:                                               ; preds = %8
  %55 = load i32, i32* @MSG_NOTIFICATION, align 4
  %56 = load i32, i32* %17, align 4
  %57 = call %struct.sctp_ulpevent* @sctp_ulpevent_new(i32 64, i32 %55, i32 %56)
  store %struct.sctp_ulpevent* %57, %struct.sctp_ulpevent** %18, align 8
  %58 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %18, align 8
  %59 = icmp ne %struct.sctp_ulpevent* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %98

61:                                               ; preds = %54
  %62 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %18, align 8
  %63 = call %struct.sk_buff* @sctp_event2skb(%struct.sctp_ulpevent* %62)
  store %struct.sk_buff* %63, %struct.sk_buff** %20, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %65 = call i64 @skb_put(%struct.sk_buff* %64, i32 64)
  %66 = inttoptr i64 %65 to %struct.sctp_assoc_change*
  store %struct.sctp_assoc_change* %66, %struct.sctp_assoc_change** %19, align 8
  br label %67

67:                                               ; preds = %61, %32
  %68 = load i32, i32* @SCTP_ASSOC_CHANGE, align 4
  %69 = load %struct.sctp_assoc_change*, %struct.sctp_assoc_change** %19, align 8
  %70 = getelementptr inbounds %struct.sctp_assoc_change, %struct.sctp_assoc_change* %69, i32 0, i32 7
  store i32 %68, i32* %70, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = load %struct.sctp_assoc_change*, %struct.sctp_assoc_change** %19, align 8
  %73 = getelementptr inbounds %struct.sctp_assoc_change, %struct.sctp_assoc_change* %72, i32 0, i32 6
  store i8* %71, i8** %73, align 8
  %74 = load %struct.sctp_assoc_change*, %struct.sctp_assoc_change** %19, align 8
  %75 = getelementptr inbounds %struct.sctp_assoc_change, %struct.sctp_assoc_change* %74, i32 0, i32 5
  store i64 0, i64* %75, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.sctp_assoc_change*, %struct.sctp_assoc_change** %19, align 8
  %80 = getelementptr inbounds %struct.sctp_assoc_change, %struct.sctp_assoc_change* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = load %struct.sctp_assoc_change*, %struct.sctp_assoc_change** %19, align 8
  %83 = getelementptr inbounds %struct.sctp_assoc_change, %struct.sctp_assoc_change* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** %14, align 8
  %85 = load %struct.sctp_assoc_change*, %struct.sctp_assoc_change** %19, align 8
  %86 = getelementptr inbounds %struct.sctp_assoc_change, %struct.sctp_assoc_change* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** %15, align 8
  %88 = load %struct.sctp_assoc_change*, %struct.sctp_assoc_change** %19, align 8
  %89 = getelementptr inbounds %struct.sctp_assoc_change, %struct.sctp_assoc_change* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %18, align 8
  %91 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %92 = call i32 @sctp_ulpevent_set_owner(%struct.sctp_ulpevent* %90, %struct.sctp_association* %91)
  %93 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %94 = call i32 @sctp_assoc2id(%struct.sctp_association* %93)
  %95 = load %struct.sctp_assoc_change*, %struct.sctp_assoc_change** %19, align 8
  %96 = getelementptr inbounds %struct.sctp_assoc_change, %struct.sctp_assoc_change* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %18, align 8
  store %struct.sctp_ulpevent* %97, %struct.sctp_ulpevent** %9, align 8
  br label %99

98:                                               ; preds = %60, %31
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %9, align 8
  br label %99

99:                                               ; preds = %98, %67
  %100 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %9, align 8
  ret %struct.sctp_ulpevent* %100
}

declare dso_local %struct.sk_buff* @skb_copy_expand(i32, i32, i32, i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff*) #1

declare dso_local i32 @sctp_ulpevent_init(%struct.sctp_ulpevent*, i32, i32) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_new(i32, i32, i32) #1

declare dso_local %struct.sk_buff* @sctp_event2skb(%struct.sctp_ulpevent*) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @sctp_ulpevent_set_owner(%struct.sctp_ulpevent*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_assoc2id(%struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
