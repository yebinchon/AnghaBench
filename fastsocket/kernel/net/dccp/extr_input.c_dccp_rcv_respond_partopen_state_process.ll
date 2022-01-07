; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_input.c_dccp_rcv_respond_partopen_state_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_input.c_dccp_rcv_respond_partopen_state_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dccp_hdr = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ICSK_TIME_DACK = common dso_local global i32 0, align 4
@DCCP_RESPOND = common dso_local global i32 0, align 4
@DCCP_PARTOPEN = common dso_local global i32 0, align 4
@DCCP_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.dccp_hdr*, i32)* @dccp_rcv_respond_partopen_state_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_rcv_respond_partopen_state_process(%struct.sock* %0, %struct.sk_buff* %1, %struct.dccp_hdr* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.dccp_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.dccp_hdr* %2, %struct.dccp_hdr** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %11 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %62 [
    i32 128, label %13
    i32 130, label %17
    i32 129, label %25
    i32 131, label %25
  ]

13:                                               ; preds = %4
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = load i32, i32* @ICSK_TIME_DACK, align 4
  %16 = call i32 @inet_csk_clear_xmit_timer(%struct.sock* %14, i32 %15)
  br label %62

17:                                               ; preds = %4
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DCCP_RESPOND, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %62

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %4, %4, %24
  %26 = load %struct.sock*, %struct.sock** %5, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DCCP_PARTOPEN, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.sock*, %struct.sock** %5, align 8
  %33 = load i32, i32* @ICSK_TIME_DACK, align 4
  %34 = call i32 @inet_csk_clear_xmit_timer(%struct.sock* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %25
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sock*, %struct.sock** %5, align 8
  %41 = call %struct.TYPE_3__* @dccp_sk(%struct.sock* %40)
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.sock*, %struct.sock** %5, align 8
  %44 = load i32, i32* @DCCP_OPEN, align 4
  %45 = call i32 @dccp_set_state(%struct.sock* %43, i32 %44)
  %46 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %47 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 129
  br i1 %49, label %55, label %50

50:                                               ; preds = %35
  %51 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %52 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 130
  br i1 %54, label %55, label %61

55:                                               ; preds = %50, %35
  %56 = load %struct.sock*, %struct.sock** %5, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = load %struct.dccp_hdr*, %struct.dccp_hdr** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @__dccp_rcv_established(%struct.sock* %56, %struct.sk_buff* %57, %struct.dccp_hdr* %58, i32 %59)
  store i32 1, i32* %9, align 4
  br label %61

61:                                               ; preds = %55, %50
  br label %62

62:                                               ; preds = %4, %61, %23, %13
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @inet_csk_clear_xmit_timer(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_3__* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @dccp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @__dccp_rcv_established(%struct.sock*, %struct.sk_buff*, %struct.dccp_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
