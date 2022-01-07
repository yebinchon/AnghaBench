; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_collapse_ofo_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_collapse_ofo_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tcp_collapse_ofo_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_collapse_ofo_queue(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %9)
  store %struct.tcp_sock* %10, %struct.tcp_sock** %3, align 8
  %11 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %12 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %11, i32 0, i32 0
  %13 = call %struct.sk_buff* @skb_peek(i32* %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = icmp eq %struct.sk_buff* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %108

17:                                               ; preds = %1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %26, %struct.sk_buff** %5, align 8
  br label %27

27:                                               ; preds = %107, %17
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  %28 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %29 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %28, i32 0, i32 0
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i32 @skb_queue_is_last(i32* %29, %struct.sk_buff* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %35 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %34, i32 0, i32 0
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call %struct.sk_buff* @skb_queue_next(i32* %35, %struct.sk_buff* %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %8, align 8
  br label %38

38:                                               ; preds = %33, %27
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %39, %struct.sk_buff** %4, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @after(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %42
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @before(i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %50, %42, %38
  %59 = load %struct.sock*, %struct.sock** %2, align 8
  %60 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %61 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %60, i32 0, i32 0
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @tcp_collapse(%struct.sock* %59, i32* %61, %struct.sk_buff* %62, %struct.sk_buff* %63, i32 %64, i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %67, %struct.sk_buff** %5, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = icmp ne %struct.sk_buff* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %58
  br label %108

71:                                               ; preds = %58
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %6, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %76)
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %7, align 4
  br label %107

80:                                               ; preds = %50
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %81)
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i64 @before(i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %89)
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %88, %80
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %94)
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i64 @after(i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %102)
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %101, %93
  br label %107

107:                                              ; preds = %106, %71
  br label %27

108:                                              ; preds = %16, %70
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_is_last(i32*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_queue_next(i32*, %struct.sk_buff*) #1

declare dso_local i64 @after(i32, i32) #1

declare dso_local i64 @before(i32, i32) #1

declare dso_local i32 @tcp_collapse(%struct.sock*, i32*, %struct.sk_buff*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
