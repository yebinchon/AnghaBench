; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv4.c_dccp_v4_do_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv4.c_dccp_v4_do_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.sk_buff = type { i32 }
%struct.dccp_hdr = type { i32 }

@DCCP_OPEN = common dso_local global i64 0, align 8
@DCCP_LISTEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_v4_do_rcv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.dccp_hdr*, align 8
  %7 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = call %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff* %8)
  store %struct.dccp_hdr* %9, %struct.dccp_hdr** %6, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DCCP_OPEN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @dccp_rcv_established(%struct.sock* %16, %struct.sk_buff* %17, %struct.dccp_hdr* %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %63

25:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %70

26:                                               ; preds = %2
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DCCP_LISTEN, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call %struct.sock* @dccp_v4_hnd_req(%struct.sock* %33, %struct.sk_buff* %34)
  store %struct.sock* %35, %struct.sock** %7, align 8
  %36 = load %struct.sock*, %struct.sock** %7, align 8
  %37 = icmp eq %struct.sock* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %67

39:                                               ; preds = %32
  %40 = load %struct.sock*, %struct.sock** %7, align 8
  %41 = load %struct.sock*, %struct.sock** %4, align 8
  %42 = icmp ne %struct.sock* %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = load %struct.sock*, %struct.sock** %7, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i64 @dccp_child_process(%struct.sock* %44, %struct.sock* %45, %struct.sk_buff* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %63

50:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %70

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %26
  %53 = load %struct.sock*, %struct.sock** %4, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @dccp_rcv_state_process(%struct.sock* %53, %struct.sk_buff* %54, %struct.dccp_hdr* %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %63

62:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %70

63:                                               ; preds = %61, %49, %24
  %64 = load %struct.sock*, %struct.sock** %4, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = call i32 @dccp_v4_ctl_send_reset(%struct.sock* %64, %struct.sk_buff* %65)
  br label %67

67:                                               ; preds = %63, %38
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = call i32 @kfree_skb(%struct.sk_buff* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %62, %50, %25
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @dccp_rcv_established(%struct.sock*, %struct.sk_buff*, %struct.dccp_hdr*, i32) #1

declare dso_local %struct.sock* @dccp_v4_hnd_req(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @dccp_child_process(%struct.sock*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @dccp_rcv_state_process(%struct.sock*, %struct.sk_buff*, %struct.dccp_hdr*, i32) #1

declare dso_local i32 @dccp_v4_ctl_send_reset(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
