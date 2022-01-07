; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c___x25_destroy_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c___x25_destroy_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.sk_buff = type { %struct.sock* }
%struct.TYPE_3__ = type { i32 }

@SOCK_DEAD = common dso_local global i32 0, align 4
@X25_STATE_0 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@x25_destroy_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @__x25_destroy_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__x25_destroy_socket(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call i32 @x25_stop_heartbeat(%struct.sock* %4)
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call i32 @x25_stop_timer(%struct.sock* %6)
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call i32 @x25_remove_socket(%struct.sock* %8)
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = call i32 @x25_clear_queues(%struct.sock* %10)
  br label %12

12:                                               ; preds = %39, %1
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 1
  %15 = call %struct.sk_buff* @skb_dequeue(i32* %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %3, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %12
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load %struct.sock*, %struct.sock** %19, align 8
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = icmp ne %struct.sock* %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load %struct.sock*, %struct.sock** %25, align 8
  %27 = load i32, i32* @SOCK_DEAD, align 4
  %28 = call i32 @sock_set_flag(%struct.sock* %26, i32 %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load %struct.sock*, %struct.sock** %30, align 8
  %32 = call i32 @x25_start_heartbeat(%struct.sock* %31)
  %33 = load i32, i32* @X25_STATE_0, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load %struct.sock*, %struct.sock** %35, align 8
  %37 = call %struct.TYPE_3__* @x25_sk(%struct.sock* %36)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %33, i32* %38, align 4
  br label %39

39:                                               ; preds = %23, %17
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = call i32 @kfree_skb(%struct.sk_buff* %40)
  br label %12

42:                                               ; preds = %12
  %43 = load %struct.sock*, %struct.sock** %2, align 8
  %44 = call i64 @sk_has_allocations(%struct.sock* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %42
  %47 = load i64, i64* @jiffies, align 8
  %48 = load i32, i32* @HZ, align 4
  %49 = mul nsw i32 10, %48
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %47, %50
  %52 = load %struct.sock*, %struct.sock** %2, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i64 %51, i64* %54, align 8
  %55 = load i32, i32* @x25_destroy_timer, align 4
  %56 = load %struct.sock*, %struct.sock** %2, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 8
  %59 = load %struct.sock*, %struct.sock** %2, align 8
  %60 = ptrtoint %struct.sock* %59 to i64
  %61 = load %struct.sock*, %struct.sock** %2, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  %64 = load %struct.sock*, %struct.sock** %2, align 8
  %65 = getelementptr inbounds %struct.sock, %struct.sock* %64, i32 0, i32 0
  %66 = call i32 @add_timer(%struct.TYPE_4__* %65)
  br label %70

67:                                               ; preds = %42
  %68 = load %struct.sock*, %struct.sock** %2, align 8
  %69 = call i32 @__sock_put(%struct.sock* %68)
  br label %70

70:                                               ; preds = %67, %46
  ret void
}

declare dso_local i32 @x25_stop_heartbeat(%struct.sock*) #1

declare dso_local i32 @x25_stop_timer(%struct.sock*) #1

declare dso_local i32 @x25_remove_socket(%struct.sock*) #1

declare dso_local i32 @x25_clear_queues(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @x25_start_heartbeat(%struct.sock*) #1

declare dso_local %struct.TYPE_3__* @x25_sk(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @sk_has_allocations(%struct.sock*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @__sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
