; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c___napi_gro_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c___napi_gro_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { %struct.sk_buff* }
%struct.sk_buff = type { %struct.TYPE_3__*, %struct.sk_buff* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }

@ETH_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, %struct.sk_buff*)* @__napi_gro_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__napi_gro_receive(%struct.napi_struct* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %14 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %13, i32 0, i32 0
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %5, align 8
  br label %16

16:                                               ; preds = %62, %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %19, label %66

19:                                               ; preds = %16
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = ptrtoint %struct.TYPE_3__* %22 to i64
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = ptrtoint %struct.TYPE_3__* %26 to i64
  %28 = xor i64 %23, %27
  store i64 %28, i64* %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @ETH_HLEN, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %19
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call i32 @skb_mac_header(%struct.sk_buff* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call i32 @skb_gro_mac_header(%struct.sk_buff* %35)
  %37 = call i64 @compare_ether_header(i32 %34, i32 %36)
  %38 = load i64, i64* %7, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %7, align 8
  br label %51

40:                                               ; preds = %19
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call i32 @skb_mac_header(%struct.sk_buff* %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call i32 @skb_gro_mac_header(%struct.sk_buff* %46)
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @memcmp(i32 %45, i32 %47, i32 %48)
  store i64 %49, i64* %7, align 8
  br label %50

50:                                               ; preds = %43, %40
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i64, i64* %7, align 8
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = call %struct.TYPE_4__* @NAPI_GRO_CB(%struct.sk_buff* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = call %struct.TYPE_4__* @NAPI_GRO_CB(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %51
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 1
  %65 = load %struct.sk_buff*, %struct.sk_buff** %64, align 8
  store %struct.sk_buff* %65, %struct.sk_buff** %5, align 8
  br label %16

66:                                               ; preds = %16
  %67 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call i32 @dev_gro_receive(%struct.napi_struct* %67, %struct.sk_buff* %68)
  ret i32 %69
}

declare dso_local i64 @compare_ether_header(i32, i32) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_gro_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @NAPI_GRO_CB(%struct.sk_buff*) #1

declare dso_local i32 @dev_gro_receive(%struct.napi_struct*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
