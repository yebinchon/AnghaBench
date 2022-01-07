; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ethernet/extr_eth.c_eth_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ethernet/extr_eth.c_eth_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i8*, i32 }
%struct.ethhdr = type { i32, i32, i8* }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_P_802_3 = common dso_local global i16 0, align 2
@ETH_ALEN = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eth_header(%struct.sk_buff* %0, %struct.net_device* %1, i16 zeroext %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ethhdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i16 %2, i16* %10, align 2
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = load i32, i32* @ETH_HLEN, align 4
  %17 = call i64 @skb_push(%struct.sk_buff* %15, i32 %16)
  %18 = inttoptr i64 %17 to %struct.ethhdr*
  store %struct.ethhdr* %18, %struct.ethhdr** %14, align 8
  %19 = load i16, i16* %10, align 2
  %20 = zext i16 %19 to i32
  %21 = load i16, i16* @ETH_P_802_3, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %6
  %25 = load i16, i16* %10, align 2
  %26 = zext i16 %25 to i32
  %27 = call i8* @htons(i32 %26)
  %28 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %29 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  br label %35

30:                                               ; preds = %6
  %31 = load i32, i32* %13, align 4
  %32 = call i8* @htons(i32 %31)
  %33 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %34 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %30, %24
  %36 = load i8*, i8** %12, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load %struct.net_device*, %struct.net_device** %9, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %12, align 8
  br label %42

42:                                               ; preds = %38, %35
  %43 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %44 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %12, align 8
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = call i32 @memcpy(i32 %45, i8* %46, i32 %47)
  %49 = load i8*, i8** %11, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %42
  %52 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %53 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load i32, i32* @ETH_ALEN, align 4
  %57 = call i32 @memcpy(i32 %54, i8* %55, i32 %56)
  %58 = load i32, i32* @ETH_HLEN, align 4
  store i32 %58, i32* %7, align 4
  br label %78

59:                                               ; preds = %42
  %60 = load %struct.net_device*, %struct.net_device** %9, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @IFF_LOOPBACK, align 4
  %64 = load i32, i32* @IFF_NOARP, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %59
  %69 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %70 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ETH_ALEN, align 4
  %73 = call i32 @memset(i32 %71, i32 0, i32 %72)
  %74 = load i32, i32* @ETH_HLEN, align 4
  store i32 %74, i32* %7, align 4
  br label %78

75:                                               ; preds = %59
  %76 = load i32, i32* @ETH_HLEN, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %75, %68, %51
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
