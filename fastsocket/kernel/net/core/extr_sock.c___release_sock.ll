; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c___release_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c___release_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, %struct.sk_buff* }
%struct.sk_buff = type { %struct.sk_buff* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @__release_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__release_sock(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %8, %struct.sk_buff** %3, align 8
  br label %9

9:                                                ; preds = %35, %1
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %15, align 8
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = call i32 @bh_unlock_sock(%struct.sock* %16)
  br label %18

18:                                               ; preds = %29, %9
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  store %struct.sk_buff* %21, %struct.sk_buff** %4, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %23, align 8
  %24 = load %struct.sock*, %struct.sock** %2, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = call i32 @sk_backlog_rcv(%struct.sock* %24, %struct.sk_buff* %25)
  %27 = call i32 (...) @cond_resched_softirq()
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %28, %struct.sk_buff** %3, align 8
  br label %29

29:                                               ; preds = %18
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %18, label %32

32:                                               ; preds = %29
  %33 = load %struct.sock*, %struct.sock** %2, align 8
  %34 = call i32 @bh_lock_sock(%struct.sock* %33)
  br label %35

35:                                               ; preds = %32
  %36 = load %struct.sock*, %struct.sock** %2, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load %struct.sk_buff*, %struct.sk_buff** %38, align 8
  store %struct.sk_buff* %39, %struct.sk_buff** %3, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %9, label %41

41:                                               ; preds = %35
  %42 = load %struct.sock*, %struct.sock** %2, align 8
  %43 = call %struct.TYPE_6__* @sk_extended(%struct.sock* %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  ret void
}

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sk_backlog_rcv(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @cond_resched_softirq(...) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_6__* @sk_extended(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
