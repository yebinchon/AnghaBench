; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_wmalloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_wmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rfcomm_dev = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.rfcomm_dev*, i64, i32)* @rfcomm_wmalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @rfcomm_wmalloc(%struct.rfcomm_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rfcomm_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.rfcomm_dev* %0, %struct.rfcomm_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %10 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %9, i32 0, i32 1
  %11 = call i64 @atomic_read(i32* %10)
  %12 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %13 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @rfcomm_room(i32 %14)
  %16 = icmp slt i64 %11, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.sk_buff* @alloc_skb(i64 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %8, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %26 = call i32 @rfcomm_set_owner_w(%struct.sk_buff* %24, %struct.rfcomm_dev* %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %27, %struct.sk_buff** %4, align 8
  br label %30

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %30

30:                                               ; preds = %29, %23
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %31
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @rfcomm_room(i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @rfcomm_set_owner_w(%struct.sk_buff*, %struct.rfcomm_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
