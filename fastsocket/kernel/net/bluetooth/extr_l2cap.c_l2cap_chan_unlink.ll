; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_chan_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_chan_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan_list = type { i32, %struct.sock* }
%struct.sock = type { i32 }
%struct.TYPE_2__ = type { %struct.sock*, %struct.sock* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan_list*, %struct.sock*)* @l2cap_chan_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_chan_unlink(%struct.l2cap_chan_list* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.l2cap_chan_list*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sock*, align 8
  store %struct.l2cap_chan_list* %0, %struct.l2cap_chan_list** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.sock*, %struct.sock** %9, align 8
  store %struct.sock* %10, %struct.sock** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %6, align 8
  %15 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %3, align 8
  %16 = getelementptr inbounds %struct.l2cap_chan_list, %struct.l2cap_chan_list* %15, i32 0, i32 0
  %17 = call i32 @write_lock_bh(i32* %16)
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %3, align 8
  %20 = getelementptr inbounds %struct.l2cap_chan_list, %struct.l2cap_chan_list* %19, i32 0, i32 1
  %21 = load %struct.sock*, %struct.sock** %20, align 8
  %22 = icmp eq %struct.sock* %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.sock*, %struct.sock** %5, align 8
  %25 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %3, align 8
  %26 = getelementptr inbounds %struct.l2cap_chan_list, %struct.l2cap_chan_list* %25, i32 0, i32 1
  store %struct.sock* %24, %struct.sock** %26, align 8
  br label %27

27:                                               ; preds = %23, %2
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = icmp ne %struct.sock* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.sock*, %struct.sock** %6, align 8
  %32 = load %struct.sock*, %struct.sock** %5, align 8
  %33 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store %struct.sock* %31, %struct.sock** %34, align 8
  br label %35

35:                                               ; preds = %30, %27
  %36 = load %struct.sock*, %struct.sock** %6, align 8
  %37 = icmp ne %struct.sock* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.sock*, %struct.sock** %5, align 8
  %40 = load %struct.sock*, %struct.sock** %6, align 8
  %41 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store %struct.sock* %39, %struct.sock** %42, align 8
  br label %43

43:                                               ; preds = %38, %35
  %44 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %3, align 8
  %45 = getelementptr inbounds %struct.l2cap_chan_list, %struct.l2cap_chan_list* %44, i32 0, i32 0
  %46 = call i32 @write_unlock_bh(i32* %45)
  %47 = load %struct.sock*, %struct.sock** %4, align 8
  %48 = call i32 @__sock_put(%struct.sock* %47)
  ret void
}

declare dso_local %struct.TYPE_2__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @__sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
