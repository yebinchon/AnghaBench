; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_skb_gro_reset_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_skb_gro_reset_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i32*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skb_gro_reset_offset(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %3 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %4 = call %struct.TYPE_6__* @NAPI_GRO_CB(%struct.sk_buff* %3)
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  store i64 0, i64* %5, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = call %struct.TYPE_6__* @NAPI_GRO_CB(%struct.sk_buff* %6)
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32* null, i32** %8, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %10 = call %struct.TYPE_6__* @NAPI_GRO_CB(%struct.sk_buff* %9)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %21 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @PageHighMem(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %60, label %29

29:                                               ; preds = %19
  %30 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %31 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32* @page_address(i32 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %39 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %37, i64 %45
  %47 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %48 = call %struct.TYPE_6__* @NAPI_GRO_CB(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32* %46, i32** %49, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %51 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %50)
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %58 = call %struct.TYPE_6__* @NAPI_GRO_CB(%struct.sk_buff* %57)
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  br label %60

60:                                               ; preds = %29, %19, %1
  ret void
}

declare dso_local %struct.TYPE_6__* @NAPI_GRO_CB(%struct.sk_buff*) #1

declare dso_local i32 @PageHighMem(i32) #1

declare dso_local %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32* @page_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
