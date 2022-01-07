; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_check_fcs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_check_fcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_pinfo = type { i64 }
%struct.sk_buff = type { i64, i64 }

@L2CAP_HDR_SIZE = common dso_local global i32 0, align 4
@L2CAP_FCS_CRC16 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_pinfo*, %struct.sk_buff*)* @l2cap_check_fcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_check_fcs(%struct.l2cap_pinfo* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2cap_pinfo*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.l2cap_pinfo* %0, %struct.l2cap_pinfo** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load i32, i32* @L2CAP_HDR_SIZE, align 4
  %10 = add nsw i32 %9, 2
  store i32 %10, i32* %8, align 4
  %11 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %4, align 8
  %12 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @L2CAP_FCS_CRC16, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %51

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %20, 2
  %22 = call i32 @skb_trim(%struct.sk_buff* %17, i64 %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = call i64 @get_unaligned_le16(i64 %29)
  store i64 %30, i64* %7, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %33, %35
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = call i64 @crc16(i32 0, i64 %36, i64 %42)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %16
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %16
  br label %51

51:                                               ; preds = %50, %2
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %47
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i64 @get_unaligned_le16(i64) #1

declare dso_local i64 @crc16(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
