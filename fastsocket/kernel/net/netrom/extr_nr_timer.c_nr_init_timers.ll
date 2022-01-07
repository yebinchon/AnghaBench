; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_timer.c_nr_init_timers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_timer.c_nr_init_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }
%struct.nr_sock = type { i32, i32, i32, i32 }

@nr_t1timer_expiry = common dso_local global i32 0, align 4
@nr_t2timer_expiry = common dso_local global i32 0, align 4
@nr_t4timer_expiry = common dso_local global i32 0, align 4
@nr_idletimer_expiry = common dso_local global i32 0, align 4
@nr_heartbeat_expiry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nr_init_timers(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.nr_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.nr_sock* @nr_sk(%struct.sock* %4)
  store %struct.nr_sock* %5, %struct.nr_sock** %3, align 8
  %6 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %7 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %6, i32 0, i32 3
  %8 = load i32, i32* @nr_t1timer_expiry, align 4
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = ptrtoint %struct.sock* %9 to i64
  %11 = call i32 @setup_timer(i32* %7, i32 %8, i64 %10)
  %12 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %13 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %12, i32 0, i32 2
  %14 = load i32, i32* @nr_t2timer_expiry, align 4
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = ptrtoint %struct.sock* %15 to i64
  %17 = call i32 @setup_timer(i32* %13, i32 %14, i64 %16)
  %18 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %19 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %18, i32 0, i32 1
  %20 = load i32, i32* @nr_t4timer_expiry, align 4
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = ptrtoint %struct.sock* %21 to i64
  %23 = call i32 @setup_timer(i32* %19, i32 %20, i64 %22)
  %24 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %25 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %24, i32 0, i32 0
  %26 = load i32, i32* @nr_idletimer_expiry, align 4
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = ptrtoint %struct.sock* %27 to i64
  %29 = call i32 @setup_timer(i32* %25, i32 %26, i64 %28)
  %30 = load %struct.sock*, %struct.sock** %2, align 8
  %31 = ptrtoint %struct.sock* %30 to i64
  %32 = load %struct.sock*, %struct.sock** %2, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32* @nr_heartbeat_expiry, i32** %37, align 8
  ret void
}

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
