; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp.c_sk_stream_alloc_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp.c_sk_stream_alloc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sock*)*, i64 }

@SOCK_SKB_POOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @sk_stream_alloc_skb(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @ALIGN(i32 %9, i32 4)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = load i32, i32* @SOCK_SKB_POOL, align 4
  %13 = call i64 @sock_flag(%struct.sock* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %17, %22
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.sk_buff* @alloc_pool_skb_fclone(i64 %23, i32 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %8, align 8
  br label %37

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.sock*, %struct.sock** %5, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %28, %33
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.sk_buff* @alloc_skb_fclone(i64 %34, i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %8, align 8
  br label %37

37:                                               ; preds = %26, %15
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %40, label %59

40:                                               ; preds = %37
  %41 = load %struct.sock*, %struct.sock** %5, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @sk_wmem_schedule(%struct.sock* %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = call i64 @skb_tailroom(%struct.sk_buff* %49)
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = sub nsw i64 %50, %52
  %54 = call i32 @skb_reserve(%struct.sk_buff* %48, i64 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %55, %struct.sk_buff** %4, align 8
  br label %70

56:                                               ; preds = %40
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = call i32 @__kfree_skb(%struct.sk_buff* %57)
  br label %69

59:                                               ; preds = %37
  %60 = load %struct.sock*, %struct.sock** %5, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %63, align 8
  %65 = load %struct.sock*, %struct.sock** %5, align 8
  %66 = call i32 %64(%struct.sock* %65)
  %67 = load %struct.sock*, %struct.sock** %5, align 8
  %68 = call i32 @sk_stream_moderate_sndbuf(%struct.sock* %67)
  br label %69

69:                                               ; preds = %59, %56
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %70

70:                                               ; preds = %69, %47
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %71
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local %struct.sk_buff* @alloc_pool_skb_fclone(i64, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb_fclone(i64, i32) #1

declare dso_local i64 @sk_wmem_schedule(%struct.sock*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @sk_stream_moderate_sndbuf(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
