; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport.h_ovs_skb_postpush_rcsum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport.h_ovs_skb_postpush_rcsum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }

@CHECKSUM_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i8*, i32)* @ovs_skb_postpush_rcsum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ovs_skb_postpush_rcsum(%struct.sk_buff* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CHECKSUM_COMPLETE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @csum_partial(i8* %16, i32 %17, i32 0)
  %19 = call i32 @csum_add(i32 %15, i32 %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %12, %3
  ret void
}

declare dso_local i32 @csum_add(i32, i32) #1

declare dso_local i32 @csum_partial(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
