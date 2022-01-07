; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_ddp.c_atalk_destroy_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_ddp.c_atalk_destroy_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@atalk_destroy_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SOCK_DESTROY_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @atalk_destroy_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atalk_destroy_socket(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %3 = load %struct.sock*, %struct.sock** %2, align 8
  %4 = call i32 @atalk_remove_socket(%struct.sock* %3)
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 1
  %7 = call i32 @skb_queue_purge(i32* %6)
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call i64 @sk_has_allocations(%struct.sock* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 0
  %14 = load i32, i32* @atalk_destroy_timer, align 4
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = ptrtoint %struct.sock* %15 to i64
  %17 = call i32 @setup_timer(%struct.TYPE_3__* %13, i32 %14, i64 %16)
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i64, i64* @SOCK_DESTROY_TIME, align 8
  %20 = add nsw i64 %18, %19
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = load %struct.sock*, %struct.sock** %2, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 0
  %26 = call i32 @add_timer(%struct.TYPE_3__* %25)
  br label %30

27:                                               ; preds = %1
  %28 = load %struct.sock*, %struct.sock** %2, align 8
  %29 = call i32 @sock_put(%struct.sock* %28)
  br label %30

30:                                               ; preds = %27, %11
  ret void
}

declare dso_local i32 @atalk_remove_socket(%struct.sock*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i64 @sk_has_allocations(%struct.sock*) #1

declare dso_local i32 @setup_timer(%struct.TYPE_3__*, i32, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
