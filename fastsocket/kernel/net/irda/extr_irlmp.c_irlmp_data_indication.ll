; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlmp.c_irlmp_data_indication.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlmp.c_irlmp_data_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lsap_cb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (i32, %struct.lsap_cb.0*, %struct.sk_buff*)* }
%struct.lsap_cb.0 = type opaque
%struct.sk_buff = type { i32 }

@LMP_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irlmp_data_indication(%struct.lsap_cb* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.lsap_cb*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.lsap_cb* %0, %struct.lsap_cb** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %6 = load i32, i32* @LMP_HEADER, align 4
  %7 = call i32 @skb_pull(%struct.sk_buff* %5, i32 %6)
  %8 = load %struct.lsap_cb*, %struct.lsap_cb** %3, align 8
  %9 = getelementptr inbounds %struct.lsap_cb, %struct.lsap_cb* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32 (i32, %struct.lsap_cb.0*, %struct.sk_buff*)*, i32 (i32, %struct.lsap_cb.0*, %struct.sk_buff*)** %10, align 8
  %12 = icmp ne i32 (i32, %struct.lsap_cb.0*, %struct.sk_buff*)* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @skb_get(%struct.sk_buff* %14)
  %16 = load %struct.lsap_cb*, %struct.lsap_cb** %3, align 8
  %17 = getelementptr inbounds %struct.lsap_cb, %struct.lsap_cb* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32 (i32, %struct.lsap_cb.0*, %struct.sk_buff*)*, i32 (i32, %struct.lsap_cb.0*, %struct.sk_buff*)** %18, align 8
  %20 = load %struct.lsap_cb*, %struct.lsap_cb** %3, align 8
  %21 = getelementptr inbounds %struct.lsap_cb, %struct.lsap_cb* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.lsap_cb*, %struct.lsap_cb** %3, align 8
  %25 = bitcast %struct.lsap_cb* %24 to %struct.lsap_cb.0*
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 %19(i32 %23, %struct.lsap_cb.0* %25, %struct.sk_buff* %26)
  br label %28

28:                                               ; preds = %13, %2
  ret void
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
