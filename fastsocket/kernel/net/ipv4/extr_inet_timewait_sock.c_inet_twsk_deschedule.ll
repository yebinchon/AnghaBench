; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_timewait_sock.c_inet_twsk_deschedule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_timewait_sock.c_inet_twsk_deschedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_timewait_sock = type { i32 }
%struct.inet_timewait_death_row = type { i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet_twsk_deschedule(%struct.inet_timewait_sock* %0, %struct.inet_timewait_death_row* %1) #0 {
  %3 = alloca %struct.inet_timewait_sock*, align 8
  %4 = alloca %struct.inet_timewait_death_row*, align 8
  store %struct.inet_timewait_sock* %0, %struct.inet_timewait_sock** %3, align 8
  store %struct.inet_timewait_death_row* %1, %struct.inet_timewait_death_row** %4, align 8
  %5 = load %struct.inet_timewait_death_row*, %struct.inet_timewait_death_row** %4, align 8
  %6 = getelementptr inbounds %struct.inet_timewait_death_row, %struct.inet_timewait_death_row* %5, i32 0, i32 2
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %3, align 8
  %9 = call i64 @inet_twsk_del_dead_node(%struct.inet_timewait_sock* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %3, align 8
  %13 = call i32 @inet_twsk_put(%struct.inet_timewait_sock* %12)
  %14 = load %struct.inet_timewait_death_row*, %struct.inet_timewait_death_row** %4, align 8
  %15 = getelementptr inbounds %struct.inet_timewait_death_row, %struct.inet_timewait_death_row* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load %struct.inet_timewait_death_row*, %struct.inet_timewait_death_row** %4, align 8
  %21 = getelementptr inbounds %struct.inet_timewait_death_row, %struct.inet_timewait_death_row* %20, i32 0, i32 3
  %22 = call i32 @del_timer(i32* %21)
  br label %23

23:                                               ; preds = %19, %11
  br label %24

24:                                               ; preds = %23, %2
  %25 = load %struct.inet_timewait_death_row*, %struct.inet_timewait_death_row** %4, align 8
  %26 = getelementptr inbounds %struct.inet_timewait_death_row, %struct.inet_timewait_death_row* %25, i32 0, i32 2
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %3, align 8
  %29 = load %struct.inet_timewait_death_row*, %struct.inet_timewait_death_row** %4, align 8
  %30 = getelementptr inbounds %struct.inet_timewait_death_row, %struct.inet_timewait_death_row* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @__inet_twsk_kill(%struct.inet_timewait_sock* %28, i32 %31)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @inet_twsk_del_dead_node(%struct.inet_timewait_sock*) #1

declare dso_local i32 @inet_twsk_put(%struct.inet_timewait_sock*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__inet_twsk_kill(%struct.inet_timewait_sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
