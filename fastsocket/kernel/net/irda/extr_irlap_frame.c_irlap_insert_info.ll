; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlap_frame.c_irlap_insert_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlap_frame.c_irlap_insert_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irlap_cb = type { i32, i32, i64, i64, i32 }
%struct.sk_buff = type { i64 }
%struct.irda_skb_cb = type { i64, i32, i32, i32, i64, i32 }

@LAP_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irlap_cb*, %struct.sk_buff*)* @irlap_insert_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irlap_insert_info(%struct.irlap_cb* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.irlap_cb*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.irda_skb_cb*, align 8
  store %struct.irlap_cb* %0, %struct.irlap_cb** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.irda_skb_cb*
  store %struct.irda_skb_cb* %9, %struct.irda_skb_cb** %5, align 8
  %10 = load i32, i32* @LAP_MAGIC, align 4
  %11 = load %struct.irda_skb_cb*, %struct.irda_skb_cb** %5, align 8
  %12 = getelementptr inbounds %struct.irda_skb_cb, %struct.irda_skb_cb* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 8
  %13 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %14 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.irda_skb_cb*, %struct.irda_skb_cb** %5, align 8
  %17 = getelementptr inbounds %struct.irda_skb_cb, %struct.irda_skb_cb* %16, i32 0, i32 4
  store i64 %15, i64* %17, align 8
  %18 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %19 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.irda_skb_cb*, %struct.irda_skb_cb** %5, align 8
  %22 = getelementptr inbounds %struct.irda_skb_cb, %struct.irda_skb_cb* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %24 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %26 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.irda_skb_cb*, %struct.irda_skb_cb** %5, align 8
  %29 = getelementptr inbounds %struct.irda_skb_cb, %struct.irda_skb_cb* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %31 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.irda_skb_cb*, %struct.irda_skb_cb** %5, align 8
  %34 = getelementptr inbounds %struct.irda_skb_cb, %struct.irda_skb_cb* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %36 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.irda_skb_cb*, %struct.irda_skb_cb** %5, align 8
  %39 = getelementptr inbounds %struct.irda_skb_cb, %struct.irda_skb_cb* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %41 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %43 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %46 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
