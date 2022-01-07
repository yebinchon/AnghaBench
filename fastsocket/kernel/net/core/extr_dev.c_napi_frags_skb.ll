; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_napi_frags_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_napi_frags_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.napi_struct = type { %struct.sk_buff* }
%struct.ethhdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @napi_frags_skb(%struct.napi_struct* %0) #0 {
  %2 = alloca %struct.napi_struct*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ethhdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %2, align 8
  %7 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %8 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %7, i32 0, i32 0
  %9 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %9, %struct.sk_buff** %3, align 8
  %10 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %11 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %10, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call i32 @skb_reset_mac_header(%struct.sk_buff* %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call i32 @skb_gro_reset_offset(%struct.sk_buff* %14)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call i32 @skb_gro_offset(%struct.sk_buff* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = add i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.ethhdr* @skb_gro_header_fast(%struct.sk_buff* %22, i32 %23)
  store %struct.ethhdr* %24, %struct.ethhdr** %4, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @skb_gro_header_hard(%struct.sk_buff* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %1
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call %struct.ethhdr* @skb_gro_header_slow(%struct.sk_buff* %30, i32 %31, i32 %32)
  store %struct.ethhdr* %33, %struct.ethhdr** %4, align 8
  %34 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %35 = icmp ne %struct.ethhdr* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = call i32 @napi_reuse_skb(%struct.napi_struct* %41, %struct.sk_buff* %42)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %53

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = call i32 @skb_gro_pull(%struct.sk_buff* %46, i32 4)
  %48 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %49 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %45, %40
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %54
}

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_gro_reset_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_gro_offset(%struct.sk_buff*) #1

declare dso_local %struct.ethhdr* @skb_gro_header_fast(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_gro_header_hard(%struct.sk_buff*, i32) #1

declare dso_local %struct.ethhdr* @skb_gro_header_slow(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @napi_reuse_skb(%struct.napi_struct*, %struct.sk_buff*) #1

declare dso_local i32 @skb_gro_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
