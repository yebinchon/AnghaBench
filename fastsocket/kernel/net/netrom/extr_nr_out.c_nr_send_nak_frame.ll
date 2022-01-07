; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_out.c_nr_send_nak_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_out.c_nr_send_nak_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32* }
%struct.nr_sock = type { i32, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@NR_COND_OWN_RX_BUSY = common dso_local global i32 0, align 4
@NR_CHOKE_FLAG = common dso_local global i32 0, align 4
@NR_COND_ACK_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nr_send_nak_frame(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nr_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.nr_sock* @nr_sk(%struct.sock* %6)
  store %struct.nr_sock* %7, %struct.nr_sock** %5, align 8
  %8 = load %struct.nr_sock*, %struct.nr_sock** %5, align 8
  %9 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %8, i32 0, i32 4
  %10 = call %struct.sk_buff* @skb_peek(i32* %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %3, align 8
  %11 = icmp eq %struct.sk_buff* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %65

13:                                               ; preds = %1
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %14, i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %4, align 8
  %17 = icmp eq %struct.sk_buff* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %65

19:                                               ; preds = %13
  %20 = load %struct.nr_sock*, %struct.nr_sock** %5, align 8
  %21 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 %22, i32* %26, align 4
  %27 = load %struct.nr_sock*, %struct.nr_sock** %5, align 8
  %28 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  store i32 %29, i32* %33, align 4
  %34 = load %struct.nr_sock*, %struct.nr_sock** %5, align 8
  %35 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NR_COND_OWN_RX_BUSY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %19
  %41 = load i32, i32* @NR_CHOKE_FLAG, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %41
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %40, %19
  %49 = load %struct.sock*, %struct.sock** %2, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i32 @nr_transmit_buffer(%struct.sock* %49, %struct.sk_buff* %50)
  %52 = load i32, i32* @NR_COND_ACK_PENDING, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.nr_sock*, %struct.nr_sock** %5, align 8
  %55 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.nr_sock*, %struct.nr_sock** %5, align 8
  %59 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nr_sock*, %struct.nr_sock** %5, align 8
  %62 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.sock*, %struct.sock** %2, align 8
  %64 = call i32 @nr_stop_t1timer(%struct.sock* %63)
  br label %65

65:                                               ; preds = %48, %18, %12
  ret void
}

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @nr_transmit_buffer(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @nr_stop_t1timer(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
