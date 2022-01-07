; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_conn_unreliable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_conn_unreliable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.l2cap_chan_list }
%struct.l2cap_chan_list = type { i32, %struct.sock* }
%struct.sock = type { i32 }
%struct.TYPE_2__ = type { i64, %struct.sock* }

@.str = private unnamed_addr constant [8 x i8] c"conn %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_conn*, i32)* @l2cap_conn_unreliable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_conn_unreliable(%struct.l2cap_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.l2cap_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.l2cap_chan_list*, align 8
  %6 = alloca %struct.sock*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %8 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %7, i32 0, i32 0
  store %struct.l2cap_chan_list* %8, %struct.l2cap_chan_list** %5, align 8
  %9 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_conn* %9)
  %11 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %5, align 8
  %12 = getelementptr inbounds %struct.l2cap_chan_list, %struct.l2cap_chan_list* %11, i32 0, i32 0
  %13 = call i32 @read_lock(i32* %12)
  %14 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %5, align 8
  %15 = getelementptr inbounds %struct.l2cap_chan_list, %struct.l2cap_chan_list* %14, i32 0, i32 1
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %6, align 8
  br label %17

17:                                               ; preds = %31, %2
  %18 = load %struct.sock*, %struct.sock** %6, align 8
  %19 = icmp ne %struct.sock* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load %struct.sock*, %struct.sock** %6, align 8
  %22 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.sock*, %struct.sock** %6, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %20
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.sock*, %struct.sock** %6, align 8
  %33 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load %struct.sock*, %struct.sock** %34, align 8
  store %struct.sock* %35, %struct.sock** %6, align 8
  br label %17

36:                                               ; preds = %17
  %37 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %5, align 8
  %38 = getelementptr inbounds %struct.l2cap_chan_list, %struct.l2cap_chan_list* %37, i32 0, i32 0
  %39 = call i32 @read_unlock(i32* %38)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_conn*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
