; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_attachskb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_attachskb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i64, i32 }
%struct.netlink_sock = type { i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlink_attachskb(%struct.sock* %0, %struct.sk_buff* %1, i64* %2, %struct.sock* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.netlink_sock*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.sock* %3, %struct.sock** %9, align 8
  %11 = load %struct.sock*, %struct.sock** %6, align 8
  %12 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %11)
  store %struct.netlink_sock* %12, %struct.netlink_sock** %10, align 8
  %13 = load %struct.sock*, %struct.sock** %6, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 1
  %15 = call i64 @atomic_read(i32* %14)
  %16 = load %struct.sock*, %struct.sock** %6, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %22 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %21, i32 0, i32 1
  %23 = call i64 @test_bit(i32 0, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %95

25:                                               ; preds = %20, %4
  %26 = load i32, i32* @wait, align 4
  %27 = load i32, i32* @current, align 4
  %28 = call i32 @DECLARE_WAITQUEUE(i32 %26, i32 %27)
  %29 = load i64*, i64** %8, align 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %25
  %33 = load %struct.sock*, %struct.sock** %9, align 8
  %34 = icmp ne %struct.sock* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.sock*, %struct.sock** %9, align 8
  %37 = call i64 @netlink_is_kernel(%struct.sock* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %32
  %40 = load %struct.sock*, %struct.sock** %6, align 8
  %41 = call i32 @netlink_overrun(%struct.sock* %40)
  br label %42

42:                                               ; preds = %39, %35
  %43 = load %struct.sock*, %struct.sock** %6, align 8
  %44 = call i32 @sock_put(%struct.sock* %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = call i32 @kfree_skb(%struct.sk_buff* %45)
  %47 = load i32, i32* @EAGAIN, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %99

49:                                               ; preds = %25
  %50 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %51 = call i32 @__set_current_state(i32 %50)
  %52 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %53 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %52, i32 0, i32 0
  %54 = call i32 @add_wait_queue(i32* %53, i32* @wait)
  %55 = load %struct.sock*, %struct.sock** %6, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 1
  %57 = call i64 @atomic_read(i32* %56)
  %58 = load %struct.sock*, %struct.sock** %6, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %57, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %49
  %63 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %64 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %63, i32 0, i32 1
  %65 = call i64 @test_bit(i32 0, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %62, %49
  %68 = load %struct.sock*, %struct.sock** %6, align 8
  %69 = load i32, i32* @SOCK_DEAD, align 4
  %70 = call i32 @sock_flag(%struct.sock* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load i64*, i64** %8, align 8
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @schedule_timeout(i64 %74)
  %76 = load i64*, i64** %8, align 8
  store i64 %75, i64* %76, align 8
  br label %77

77:                                               ; preds = %72, %67, %62
  %78 = load i32, i32* @TASK_RUNNING, align 4
  %79 = call i32 @__set_current_state(i32 %78)
  %80 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %81 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %80, i32 0, i32 0
  %82 = call i32 @remove_wait_queue(i32* %81, i32* @wait)
  %83 = load %struct.sock*, %struct.sock** %6, align 8
  %84 = call i32 @sock_put(%struct.sock* %83)
  %85 = load i32, i32* @current, align 4
  %86 = call i64 @signal_pending(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %77
  %89 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %90 = call i32 @kfree_skb(%struct.sk_buff* %89)
  %91 = load i64*, i64** %8, align 8
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @sock_intr_errno(i64 %92)
  store i32 %93, i32* %5, align 4
  br label %99

94:                                               ; preds = %77
  store i32 1, i32* %5, align 4
  br label %99

95:                                               ; preds = %20
  %96 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %97 = load %struct.sock*, %struct.sock** %6, align 8
  %98 = call i32 @skb_set_owner_r(%struct.sk_buff* %96, %struct.sock* %97)
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %95, %94, %88, %42
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.sock*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i64 @netlink_is_kernel(%struct.sock*) #1

declare dso_local i32 @netlink_overrun(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i32 @skb_set_owner_r(%struct.sk_buff*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
