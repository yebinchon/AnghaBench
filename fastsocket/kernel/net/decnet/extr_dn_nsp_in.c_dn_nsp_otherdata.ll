; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_in.c_dn_nsp_otherdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_in.c_dn_nsp_otherdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.dn_scp = type { i64, i32, i32 }
%struct.dn_skb_cb = type { i16 }

@SIGURG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @dn_nsp_otherdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_nsp_otherdata(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.dn_scp*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.dn_skb_cb*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.dn_scp* @DN_SK(%struct.sock* %9)
  store %struct.dn_scp* %10, %struct.dn_scp** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff* %11)
  store %struct.dn_skb_cb* %12, %struct.dn_skb_cb** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %53

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = call zeroext i16 @le16_to_cpu(i32 %23)
  store i16 %24, i16* %6, align 2
  %25 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %7, align 8
  %26 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %25, i32 0, i32 0
  store i16 %24, i16* %26, align 2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 @skb_pull(%struct.sk_buff* %27, i32 2)
  %29 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %30 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i16, i16* %6, align 2
  %33 = call i64 @seq_next(i32 %31, i16 zeroext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %18
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = load i32, i32* @SIGURG, align 4
  %39 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %40 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %39, i32 0, i32 2
  %41 = call i64 @dn_queue_skb(%struct.sock* %36, %struct.sk_buff* %37, i32 %38, i32* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %45 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %44, i32 0, i32 1
  %46 = call i32 @seq_add(i32* %45, i32 1)
  %47 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %48 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  store i32 1, i32* %8, align 4
  br label %49

49:                                               ; preds = %43, %35
  br label %50

50:                                               ; preds = %49, %18
  %51 = load %struct.sock*, %struct.sock** %3, align 8
  %52 = call i32 @dn_nsp_send_oth_ack(%struct.sock* %51)
  br label %53

53:                                               ; preds = %50, %17
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call i32 @kfree_skb(%struct.sk_buff* %57)
  br label %59

59:                                               ; preds = %56, %53
  ret void
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff*) #1

declare dso_local zeroext i16 @le16_to_cpu(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @seq_next(i32, i16 zeroext) #1

declare dso_local i64 @dn_queue_skb(%struct.sock*, %struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @seq_add(i32*, i32) #1

declare dso_local i32 @dn_nsp_send_oth_ack(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
