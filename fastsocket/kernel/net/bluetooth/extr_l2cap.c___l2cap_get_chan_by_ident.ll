; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c___l2cap_get_chan_by_ident.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c___l2cap_get_chan_by_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.l2cap_chan_list = type { %struct.sock* }
%struct.TYPE_2__ = type { i64, %struct.sock* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.l2cap_chan_list*, i64)* @__l2cap_get_chan_by_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @__l2cap_get_chan_by_ident(%struct.l2cap_chan_list* %0, i64 %1) #0 {
  %3 = alloca %struct.l2cap_chan_list*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sock*, align 8
  store %struct.l2cap_chan_list* %0, %struct.l2cap_chan_list** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %3, align 8
  %7 = getelementptr inbounds %struct.l2cap_chan_list, %struct.l2cap_chan_list* %6, i32 0, i32 0
  %8 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %8, %struct.sock** %5, align 8
  br label %9

9:                                                ; preds = %21, %2
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = icmp ne %struct.sock* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %26

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.sock*, %struct.sock** %24, align 8
  store %struct.sock* %25, %struct.sock** %5, align 8
  br label %9

26:                                               ; preds = %19, %9
  %27 = load %struct.sock*, %struct.sock** %5, align 8
  ret %struct.sock* %27
}

declare dso_local %struct.TYPE_2__* @l2cap_pi(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
