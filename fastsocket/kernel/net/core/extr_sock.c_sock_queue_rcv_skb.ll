; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c_sock_queue_rcv_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c_sock_queue_rcv_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 (%struct.sock*, i32)*, i32, i32, %struct.sk_buff_head }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32, i64, i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_queue_rcv_skb(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff_head*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 4
  store %struct.sk_buff_head* %10, %struct.sk_buff_head** %8, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 3
  %13 = call i64 @atomic_read(i32* %12)
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %13, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @trace_sock_rcvqueue_full(%struct.sock* %21, %struct.sk_buff* %22)
  br label %78

24:                                               ; preds = %2
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @sk_filter(%struct.sock* %25, %struct.sk_buff* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %78

31:                                               ; preds = %24
  %32 = load %struct.sock*, %struct.sock** %3, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @sk_rmem_schedule(%struct.sock* %32, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOBUFS, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %78

41:                                               ; preds = %31
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = load %struct.sock*, %struct.sock** %3, align 8
  %46 = call i32 @skb_set_owner_r(%struct.sk_buff* %44, %struct.sock* %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %6, align 4
  %50 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %51 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %50, i32 0, i32 0
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load %struct.sock*, %struct.sock** %3, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 2
  %56 = call i64 @atomic_read(i32* %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %59, %struct.sk_buff* %60)
  %62 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %63 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %62, i32 0, i32 0
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load %struct.sock*, %struct.sock** %3, align 8
  %67 = load i32, i32* @SOCK_DEAD, align 4
  %68 = call i32 @sock_flag(%struct.sock* %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %41
  %71 = load %struct.sock*, %struct.sock** %3, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 1
  %73 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %72, align 8
  %74 = load %struct.sock*, %struct.sock** %3, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 %73(%struct.sock* %74, i32 %75)
  br label %77

77:                                               ; preds = %70, %41
  br label %78

78:                                               ; preds = %77, %38, %30, %18
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @trace_sock_rcvqueue_full(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sk_filter(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sk_rmem_schedule(%struct.sock*, i32) #1

declare dso_local i32 @skb_set_owner_r(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
