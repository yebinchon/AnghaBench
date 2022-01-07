; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpqueue.c_sctp_make_reassembled_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpqueue.c_sctp_make_reassembled_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpevent = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { %struct.sk_buff*, i64, i32, i32 }
%struct.TYPE_2__ = type { %struct.sk_buff* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_MIB_REASMUSRMSGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_ulpevent* (%struct.sk_buff_head*, %struct.sk_buff*, %struct.sk_buff*)* @sctp_make_reassembled_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_ulpevent* @sctp_make_reassembled_event(%struct.sk_buff_head* %0, %struct.sk_buff* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sctp_ulpevent*, align 8
  %5 = alloca %struct.sk_buff_head*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sctp_ulpevent*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff_head* %0, %struct.sk_buff_head** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %17, %struct.sk_buff** %13, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = icmp eq %struct.sk_buff* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  store %struct.sk_buff* %25, %struct.sk_buff** %8, align 8
  br label %26

26:                                               ; preds = %22, %21
  %27 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %27, %struct.sk_buff** %12, align 8
  br label %28

28:                                               ; preds = %32, %26
  %29 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %33, %struct.sk_buff** %12, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load %struct.sk_buff*, %struct.sk_buff** %35, align 8
  store %struct.sk_buff* %36, %struct.sk_buff** %13, align 8
  br label %28

37:                                               ; preds = %28
  %38 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  store %struct.sk_buff* %41, %struct.sk_buff** %43, align 8
  br label %71

44:                                               ; preds = %37
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call i64 @skb_cloned(%struct.sk_buff* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %44
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = load i32, i32* @GFP_ATOMIC, align 4
  %51 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %49, i32 %50)
  store %struct.sk_buff* %51, %struct.sk_buff** %9, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %53 = icmp ne %struct.sk_buff* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %4, align 8
  br label %123

55:                                               ; preds = %48
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @sctp_skb_set_owner_r(%struct.sk_buff* %56, i32 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %63 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store %struct.sk_buff* %61, %struct.sk_buff** %64, align 8
  br label %70

65:                                               ; preds = %44
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store %struct.sk_buff* %66, %struct.sk_buff** %69, align 8
  br label %70

70:                                               ; preds = %65, %55
  br label %71

71:                                               ; preds = %70, %40
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %74 = call i32 @__skb_unlink(%struct.sk_buff* %72, %struct.sk_buff_head* %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %76 = icmp ne %struct.sk_buff* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = call i32 @kfree_skb(%struct.sk_buff* %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %80, %struct.sk_buff** %6, align 8
  br label %81

81:                                               ; preds = %77, %71
  br label %82

82:                                               ; preds = %112, %81
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = icmp ne %struct.sk_buff* %83, null
  br i1 %84, label %85, label %117

85:                                               ; preds = %82
  %86 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load %struct.sk_buff*, %struct.sk_buff** %87, align 8
  store %struct.sk_buff* %88, %struct.sk_buff** %11, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, %91
  store i64 %95, i64* %93, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %106 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %107 = call i32 @__skb_unlink(%struct.sk_buff* %105, %struct.sk_buff_head* %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %110 = icmp eq %struct.sk_buff* %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %85
  br label %117

112:                                              ; preds = %85
  %113 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 0
  store %struct.sk_buff* %113, %struct.sk_buff** %115, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %116, %struct.sk_buff** %8, align 8
  br label %82

117:                                              ; preds = %111, %82
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = call %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff* %118)
  store %struct.sctp_ulpevent* %119, %struct.sctp_ulpevent** %10, align 8
  %120 = load i32, i32* @SCTP_MIB_REASMUSRMSGS, align 4
  %121 = call i32 @SCTP_INC_STATS(i32 %120)
  %122 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %10, align 8
  store %struct.sctp_ulpevent* %122, %struct.sctp_ulpevent** %4, align 8
  br label %123

123:                                              ; preds = %117, %54
  %124 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %4, align 8
  ret %struct.sctp_ulpevent* %124
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local i32 @sctp_skb_set_owner_r(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff*) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
