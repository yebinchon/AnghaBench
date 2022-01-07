; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_command_rej.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_command_rej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32, i64, i32 }
%struct.l2cap_cmd_hdr = type { i64 }
%struct.l2cap_cmd_rej = type { i32 }

@L2CAP_INFO_FEAT_MASK_REQ_SENT = common dso_local global i32 0, align 4
@L2CAP_INFO_FEAT_MASK_REQ_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32*)* @l2cap_command_rej to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_command_rej(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.l2cap_conn*, align 8
  %6 = alloca %struct.l2cap_cmd_hdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.l2cap_cmd_rej*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %5, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = bitcast i32* %9 to %struct.l2cap_cmd_rej*
  store %struct.l2cap_cmd_rej* %10, %struct.l2cap_cmd_rej** %8, align 8
  %11 = load %struct.l2cap_cmd_rej*, %struct.l2cap_cmd_rej** %8, align 8
  %12 = getelementptr inbounds %struct.l2cap_cmd_rej, %struct.l2cap_cmd_rej* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %45

16:                                               ; preds = %3
  %17 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %18 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @L2CAP_INFO_FEAT_MASK_REQ_SENT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %16
  %24 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %25 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %28 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %23
  %32 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %33 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %32, i32 0, i32 2
  %34 = call i32 @del_timer(i32* %33)
  %35 = load i32, i32* @L2CAP_INFO_FEAT_MASK_REQ_DONE, align 4
  %36 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %37 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %41 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %43 = call i32 @l2cap_conn_start(%struct.l2cap_conn* %42)
  br label %44

44:                                               ; preds = %31, %23, %16
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %15
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @l2cap_conn_start(%struct.l2cap_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
