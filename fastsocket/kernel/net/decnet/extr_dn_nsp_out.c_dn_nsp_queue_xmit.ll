; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_out.c_dn_nsp_queue_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_out.c_dn_nsp_queue_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dn_scp = type { i32, i32, i64, i64, i32, i32, i32 }
%struct.dn_skb_cb = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@NSP_MIN_WINDOW = common dso_local global i32 0, align 4
@DN_SEND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dn_nsp_queue_xmit(%struct.sock* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dn_scp*, align 8
  %10 = alloca %struct.dn_skb_cb*, align 8
  %11 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = call %struct.dn_scp* @DN_SK(%struct.sock* %12)
  store %struct.dn_scp* %13, %struct.dn_scp** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff* %14)
  store %struct.dn_skb_cb* %15, %struct.dn_skb_cb** %10, align 8
  %16 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %17 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = ashr i32 %18, 2
  %20 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %21 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %19, %22
  %24 = ashr i32 %23, 1
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %11, align 8
  %26 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %10, align 8
  %27 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @dn_nsp_mk_data_header(%struct.sock* %28, %struct.sk_buff* %29, i32 %30)
  %32 = load i64, i64* @jiffies, align 8
  %33 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %34 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %32, %35
  %37 = load i64, i64* %11, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %4
  %40 = load i32, i32* @NSP_MIN_WINDOW, align 4
  %41 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %42 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %48 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %47, i32 0, i32 5
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call i32 @skb_queue_tail(i32* %48, %struct.sk_buff* %49)
  br label %56

51:                                               ; preds = %43
  %52 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %53 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %52, i32 0, i32 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = call i32 @skb_queue_tail(i32* %53, %struct.sk_buff* %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.dn_scp*, %struct.dn_scp** %9, align 8
  %58 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DN_SEND, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %67

63:                                               ; preds = %56
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @dn_nsp_clone_and_send(%struct.sk_buff* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %62
  ret void
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dn_nsp_mk_data_header(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @dn_nsp_clone_and_send(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
