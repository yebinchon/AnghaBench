; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/econet/extr_af_econet.c_econet_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/econet/extr_af_econet.c_econet_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { %struct.TYPE_2__, i32, i32 (%struct.sock*)* }
%struct.TYPE_2__ = type { i64, i32, i64 }

@econet_mutex = common dso_local global i32 0, align 4
@econet_sklist = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@econet_destroy_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @econet_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @econet_release(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.sock*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %4 = call i32 @mutex_lock(i32* @econet_mutex)
  %5 = load %struct.socket*, %struct.socket** %2, align 8
  %6 = getelementptr inbounds %struct.socket, %struct.socket* %5, i32 0, i32 0
  %7 = load %struct.sock*, %struct.sock** %6, align 8
  store %struct.sock* %7, %struct.sock** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = icmp ne %struct.sock* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %49

11:                                               ; preds = %1
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call i32 @econet_remove_socket(i32* @econet_sklist, %struct.sock* %12)
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 2
  %16 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %15, align 8
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = call i32 %16(%struct.sock* %17)
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = call i32 @sock_orphan(%struct.sock* %19)
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 1
  %23 = call i32 @skb_queue_purge(i32* %22)
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = call i64 @sk_has_allocations(%struct.sock* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %11
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = ptrtoint %struct.sock* %28 to i64
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load i64, i64* @jiffies, align 8
  %34 = load i64, i64* @HZ, align 8
  %35 = add nsw i64 %33, %34
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i64 %35, i64* %38, align 8
  %39 = load i32, i32* @econet_destroy_timer, align 4
  %40 = load %struct.sock*, %struct.sock** %3, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 8
  %43 = load %struct.sock*, %struct.sock** %3, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  %45 = call i32 @add_timer(%struct.TYPE_2__* %44)
  br label %49

46:                                               ; preds = %11
  %47 = load %struct.sock*, %struct.sock** %3, align 8
  %48 = call i32 @sk_free(%struct.sock* %47)
  br label %49

49:                                               ; preds = %46, %27, %10
  %50 = call i32 @mutex_unlock(i32* @econet_mutex)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @econet_remove_socket(i32*, %struct.sock*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i64 @sk_has_allocations(%struct.sock*) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @sk_free(%struct.sock*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
