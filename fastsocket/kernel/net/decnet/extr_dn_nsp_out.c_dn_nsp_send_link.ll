; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_out.c_dn_nsp_send_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_out.c_dn_nsp_send_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dn_scp = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@DN_MAX_NSP_DATA_HEADER = common dso_local global i64 0, align 8
@dn_nsp_xmit_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dn_nsp_send_link(%struct.sock* %0, i8 zeroext %1, i8 signext %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.dn_scp*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.dn_scp* @DN_SK(%struct.sock* %11)
  store %struct.dn_scp* %12, %struct.dn_scp** %7, align 8
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = load i64, i64* @DN_MAX_NSP_DATA_HEADER, align 8
  %16 = add nsw i64 %15, 2
  %17 = load i32, i32* %10, align 4
  %18 = call %struct.sk_buff* @dn_alloc_skb(%struct.sock* %14, i64 %16, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %8, align 8
  %19 = icmp eq %struct.sk_buff* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %46

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = load i64, i64* @DN_MAX_NSP_DATA_HEADER, align 8
  %24 = call i32 @skb_reserve(%struct.sk_buff* %22, i64 %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = call i8* @skb_put(%struct.sk_buff* %25, i32 2)
  store i8* %26, i8** %9, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = call %struct.TYPE_2__* @DN_SKB_CB(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 16, i32* %29, align 4
  %30 = load i8, i8* %5, align 1
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %9, align 8
  store i8 %30, i8* %31, align 1
  %33 = load i8, i8* %6, align 1
  %34 = load i8*, i8** %9, align 8
  store i8 %33, i8* %34, align 1
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @dn_nsp_queue_xmit(%struct.sock* %35, %struct.sk_buff* %36, i32 %37, i32 1)
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = call i32 @dn_nsp_persist(%struct.sock* %39)
  %41 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %42 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @dn_nsp_xmit_timeout, align 4
  %44 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %45 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local %struct.sk_buff* @dn_alloc_skb(%struct.sock*, i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_2__* @DN_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dn_nsp_queue_xmit(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @dn_nsp_persist(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
