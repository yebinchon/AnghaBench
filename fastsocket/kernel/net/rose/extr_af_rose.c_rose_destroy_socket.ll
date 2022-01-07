; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_af_rose.c_rose_destroy_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_af_rose.c_rose_destroy_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { %struct.sock* }
%struct.TYPE_5__ = type { i32 }

@SOCK_DEAD = common dso_local global i32 0, align 4
@ROSE_STATE_0 = common dso_local global i32 0, align 4
@rose_destroy_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rose_destroy_socket(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call i32 @rose_remove_socket(%struct.sock* %4)
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call i32 @rose_stop_heartbeat(%struct.sock* %6)
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call i32 @rose_stop_idletimer(%struct.sock* %8)
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = call i32 @rose_stop_timer(%struct.sock* %10)
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = call i32 @rose_clear_queues(%struct.sock* %12)
  br label %14

14:                                               ; preds = %41, %1
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 1
  %17 = call %struct.sk_buff* @skb_dequeue(i32* %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %3, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load %struct.sock*, %struct.sock** %21, align 8
  %23 = load %struct.sock*, %struct.sock** %2, align 8
  %24 = icmp ne %struct.sock* %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load %struct.sock*, %struct.sock** %27, align 8
  %29 = load i32, i32* @SOCK_DEAD, align 4
  %30 = call i32 @sock_set_flag(%struct.sock* %28, i32 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load %struct.sock*, %struct.sock** %32, align 8
  %34 = call i32 @rose_start_heartbeat(%struct.sock* %33)
  %35 = load i32, i32* @ROSE_STATE_0, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load %struct.sock*, %struct.sock** %37, align 8
  %39 = call %struct.TYPE_5__* @rose_sk(%struct.sock* %38)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %35, i32* %40, align 4
  br label %41

41:                                               ; preds = %25, %19
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = call i32 @kfree_skb(%struct.sk_buff* %42)
  br label %14

44:                                               ; preds = %14
  %45 = load %struct.sock*, %struct.sock** %2, align 8
  %46 = call i64 @sk_has_allocations(%struct.sock* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = load %struct.sock*, %struct.sock** %2, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 0
  %51 = load i32, i32* @rose_destroy_timer, align 4
  %52 = load %struct.sock*, %struct.sock** %2, align 8
  %53 = ptrtoint %struct.sock* %52 to i64
  %54 = call i32 @setup_timer(%struct.TYPE_4__* %50, i32 %51, i64 %53)
  %55 = load i64, i64* @jiffies, align 8
  %56 = load i32, i32* @HZ, align 4
  %57 = mul nsw i32 10, %56
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %55, %58
  %60 = load %struct.sock*, %struct.sock** %2, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load %struct.sock*, %struct.sock** %2, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 0
  %65 = call i32 @add_timer(%struct.TYPE_4__* %64)
  br label %69

66:                                               ; preds = %44
  %67 = load %struct.sock*, %struct.sock** %2, align 8
  %68 = call i32 @sock_put(%struct.sock* %67)
  br label %69

69:                                               ; preds = %66, %48
  ret void
}

declare dso_local i32 @rose_remove_socket(%struct.sock*) #1

declare dso_local i32 @rose_stop_heartbeat(%struct.sock*) #1

declare dso_local i32 @rose_stop_idletimer(%struct.sock*) #1

declare dso_local i32 @rose_stop_timer(%struct.sock*) #1

declare dso_local i32 @rose_clear_queues(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @rose_start_heartbeat(%struct.sock*) #1

declare dso_local %struct.TYPE_5__* @rose_sk(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @sk_has_allocations(%struct.sock*) #1

declare dso_local i32 @setup_timer(%struct.TYPE_4__*, i32, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
