; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_ppp.c_ppp_irnet_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_ppp.c_ppp_irnet_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp_channel = type { i64 }
%struct.sk_buff = type { i32 }
%struct.irnet_socket = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@PPP_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"(channel=0x%p, ap/self=0x%p)\0A\00", align 1
@PPP_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Self is NULL !!!\0A\00", align 1
@PPP_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"IrTTP not ready ! (%ld-%ld)\0A\00", align 1
@FLOW_START = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"IrTTP queue full (%d skbs)...\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Prepare skb for Tx failed.\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"IrTTP doesn't like this packet !!! (0x%X)\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ppp_channel*, %struct.sk_buff*)* @ppp_irnet_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppp_irnet_send(%struct.ppp_channel* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ppp_channel*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.irnet_socket*, align 8
  %7 = alloca i32, align 4
  store %struct.ppp_channel* %0, %struct.ppp_channel** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.ppp_channel*, %struct.ppp_channel** %4, align 8
  %9 = getelementptr inbounds %struct.ppp_channel, %struct.ppp_channel* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.irnet_socket*
  store %struct.irnet_socket* %11, %struct.irnet_socket** %6, align 8
  %12 = load i32, i32* @PPP_TRACE, align 4
  %13 = load %struct.ppp_channel*, %struct.ppp_channel** %4, align 8
  %14 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %15 = call i32 @DENTER(i32 %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.ppp_channel* %13, %struct.irnet_socket* %14)
  %16 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %17 = icmp ne %struct.irnet_socket* %16, null
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* @PPP_ERROR, align 4
  %20 = call i32 @DASSERT(i32 %18, i32 0, i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %22 = getelementptr inbounds %struct.irnet_socket, %struct.irnet_socket* %21, i32 0, i32 3
  %23 = call i64 @test_bit(i32 0, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @PPP_INFO, align 4
  %27 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %28 = getelementptr inbounds %struct.irnet_socket, %struct.irnet_socket* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %31 = getelementptr inbounds %struct.irnet_socket, %struct.irnet_socket* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @DEBUG(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i32 @dev_kfree_skb(%struct.sk_buff* %34)
  store i32 1, i32* %3, align 4
  br label %73

36:                                               ; preds = %2
  %37 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %38 = getelementptr inbounds %struct.irnet_socket, %struct.irnet_socket* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @FLOW_START, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i32, i32* @PPP_INFO, align 4
  %44 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %45 = getelementptr inbounds %struct.irnet_socket, %struct.irnet_socket* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @skb_queue_len(i32* %47)
  %49 = call i32 @DRETURN(i32 0, i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %42, %36
  %51 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call %struct.sk_buff* @irnet_prepare_skb(%struct.irnet_socket* %51, %struct.sk_buff* %52)
  store %struct.sk_buff* %53, %struct.sk_buff** %5, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = icmp eq %struct.sk_buff* %54, null
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* @PPP_ERROR, align 4
  %58 = call i32 @DABORT(i32 %56, i32 1, i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %59 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %60 = getelementptr inbounds %struct.irnet_socket, %struct.irnet_socket* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = call i32 @irttp_data_request(%struct.TYPE_2__* %61, %struct.sk_buff* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %50
  %67 = load i32, i32* @PPP_ERROR, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @DERROR(i32 %67, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66, %50
  %71 = load i32, i32* @PPP_TRACE, align 4
  %72 = call i32 @DEXIT(i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %25
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @DENTER(i32, i8*, %struct.ppp_channel*, %struct.irnet_socket*) #1

declare dso_local i32 @DASSERT(i32, i32, i32, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @DRETURN(i32, i32, i8*, i32) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @irnet_prepare_skb(%struct.irnet_socket*, %struct.sk_buff*) #1

declare dso_local i32 @DABORT(i32, i32, i32, i8*) #1

declare dso_local i32 @irttp_data_request(%struct.TYPE_2__*, %struct.sk_buff*) #1

declare dso_local i32 @DERROR(i32, i8*, i32) #1

declare dso_local i32 @DEXIT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
