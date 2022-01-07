; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_monitor_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_monitor_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i32 }

@L2CAP_CTRL_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @l2cap_monitor_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_monitor_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.sock*
  store %struct.sock* %7, %struct.sock** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call i32 @bh_lock_sock(%struct.sock* %8)
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %10)
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %13, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = call i32 @l2cap_send_disconn_req(i32 %23, %struct.sock* %24)
  br label %40

26:                                               ; preds = %1
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = call i32 (...) @__mod_monitor_timer()
  %33 = load i32, i32* @L2CAP_CTRL_POLL, align 4
  store i32 %33, i32* %4, align 4
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @l2cap_send_rr_or_rnr(%struct.TYPE_3__* %35, i32 %36)
  %38 = load %struct.sock*, %struct.sock** %3, align 8
  %39 = call i32 @bh_unlock_sock(%struct.sock* %38)
  br label %40

40:                                               ; preds = %26, %19
  ret void
}

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_3__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @l2cap_send_disconn_req(i32, %struct.sock*) #1

declare dso_local i32 @__mod_monitor_timer(...) #1

declare dso_local i32 @l2cap_send_rr_or_rnr(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
