; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_datagram.c___skb_recv_datagram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_datagram.c___skb_recv_datagram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.sock = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @__skb_recv_datagram(%struct.sock* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.sock*, %struct.sock** %6, align 8
  %15 = call i32 @sock_error(%struct.sock* %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %81

19:                                               ; preds = %4
  %20 = load %struct.sock*, %struct.sock** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MSG_DONTWAIT, align 4
  %23 = and i32 %21, %22
  %24 = call i64 @sock_rcvtimeo(%struct.sock* %20, i32 %23)
  store i64 %24, i64* %11, align 8
  br label %25

25:                                               ; preds = %74, %19
  %26 = load %struct.sock*, %struct.sock** %6, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %13, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.sock*, %struct.sock** %6, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 0
  %33 = call %struct.sk_buff* @skb_peek(%struct.TYPE_3__* %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %10, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %25
  %37 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @MSG_PEEK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = call i32 @atomic_inc(i32* %49)
  br label %56

51:                                               ; preds = %36
  %52 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %53 = load %struct.sock*, %struct.sock** %6, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 0
  %55 = call i32 @__skb_unlink(%struct.sk_buff* %52, %struct.TYPE_3__* %54)
  br label %56

56:                                               ; preds = %51, %45
  br label %57

57:                                               ; preds = %56, %25
  %58 = load %struct.sock*, %struct.sock** %6, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %13, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %64 = icmp ne %struct.sk_buff* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %66, %struct.sk_buff** %5, align 8
  br label %84

67:                                               ; preds = %57
  %68 = load i32, i32* @EAGAIN, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %12, align 4
  %70 = load i64, i64* %11, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  br label %81

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.sock*, %struct.sock** %6, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @wait_for_packet(%struct.sock* %75, i32* %76, i64* %11)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br i1 %79, label %25, label %80

80:                                               ; preds = %74
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %84

81:                                               ; preds = %72, %18
  %82 = load i32, i32* %12, align 4
  %83 = load i32*, i32** %9, align 8
  store i32 %82, i32* %83, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %84

84:                                               ; preds = %81, %80, %65
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %85
}

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sk_buff* @skb_peek(%struct.TYPE_3__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, %struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_packet(%struct.sock*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
