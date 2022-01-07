; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_dgram_disconnected.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_dgram_disconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SOCK_DEAD = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sock*)* @unix_dgram_disconnected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unix_dgram_disconnected(%struct.sock* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 2
  %7 = call i32 @skb_queue_empty(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %2
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 2
  %12 = call i32 @skb_queue_purge(i32* %11)
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.TYPE_2__* @unix_sk(%struct.sock* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @wake_up_interruptible_all(i32* %15)
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = load i32, i32* @SOCK_DEAD, align 4
  %19 = call i32 @sock_flag(%struct.sock* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %9
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = call %struct.sock* @unix_peer(%struct.sock* %22)
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = icmp eq %struct.sock* %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i32, i32* @ECONNRESET, align 4
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %31, align 8
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = call i32 %32(%struct.sock* %33)
  br label %35

35:                                               ; preds = %26, %21, %9
  br label %36

36:                                               ; preds = %35, %2
  ret void
}

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

declare dso_local %struct.TYPE_2__* @unix_sk(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local %struct.sock* @unix_peer(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
