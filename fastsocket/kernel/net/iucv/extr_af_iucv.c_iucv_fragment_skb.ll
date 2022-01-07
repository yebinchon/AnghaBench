; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_fragment_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_fragment_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CB_TRGCLS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32)* @iucv_fragment_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iucv_fragment_skb(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %8, align 4
  br label %13

13:                                               ; preds = %41, %3
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %77

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, 4
  %22 = icmp sge i32 %17, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.sock*, %struct.sock** %5, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 4
  store i32 %27, i32* %9, align 4
  br label %30

28:                                               ; preds = %16
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = load i32, i32* @GFP_DMA, align 4
  %34 = or i32 %32, %33
  %35 = call %struct.sk_buff* @alloc_skb(i32 %31, i32 %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %11, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %78

41:                                               ; preds = %30
  %42 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %43 = call i64 @CB_TRGCLS(%struct.sk_buff* %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call i64 @CB_TRGCLS(%struct.sk_buff* %44)
  %46 = load i32, i32* @CB_TRGCLS_LEN, align 4
  %47 = call i32 @memcpy(i64 %43, i64 %45, i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @memcpy(i64 %50, i64 %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %66 = call i32 @skb_reset_transport_header(%struct.sk_buff* %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %68 = call i32 @skb_reset_network_header(%struct.sk_buff* %67)
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.sock*, %struct.sock** %5, align 8
  %73 = call %struct.TYPE_2__* @iucv_sk(%struct.sock* %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %76 = call i32 @skb_queue_tail(i32* %74, %struct.sk_buff* %75)
  br label %13

77:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %38
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i64 @CB_TRGCLS(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @iucv_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
