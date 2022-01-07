; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c___l2cap_chan_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c___l2cap_chan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32, %struct.l2cap_chan_list }
%struct.l2cap_chan_list = type { i32 }
%struct.sock = type { i64 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, %struct.l2cap_conn*, i32 }

@.str = private unnamed_addr constant [35 x i8] c"conn %p, psm 0x%2.2x, dcid 0x%4.4x\00", align 1
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@L2CAP_CID_CONN_LESS = common dso_local global i8* null, align 8
@L2CAP_DEFAULT_MTU = common dso_local global i8* null, align 8
@L2CAP_CID_SIGNALING = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_conn*, %struct.sock*, %struct.sock*)* @__l2cap_chan_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__l2cap_chan_add(%struct.l2cap_conn* %0, %struct.sock* %1, %struct.sock* %2) #0 {
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.l2cap_chan_list*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.sock* %2, %struct.sock** %6, align 8
  %8 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %9 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %8, i32 0, i32 1
  store %struct.l2cap_chan_list* %9, %struct.l2cap_chan_list** %7, align 8
  %10 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.l2cap_conn* %10, i32 %14, i8* %18)
  %20 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %21 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %20, i32 0, i32 0
  store i32 19, i32* %21, align 4
  %22 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store %struct.l2cap_conn* %22, %struct.l2cap_conn** %25, align 8
  %26 = load %struct.sock*, %struct.sock** %5, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SOCK_SEQPACKET, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %7, align 8
  %33 = call i8* @l2cap_alloc_cid(%struct.l2cap_chan_list* %32)
  %34 = load %struct.sock*, %struct.sock** %5, align 8
  %35 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i8* %33, i8** %36, align 8
  br label %70

37:                                               ; preds = %3
  %38 = load %struct.sock*, %struct.sock** %5, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SOCK_DGRAM, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load i8*, i8** @L2CAP_CID_CONN_LESS, align 8
  %45 = load %struct.sock*, %struct.sock** %5, align 8
  %46 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  store i8* %44, i8** %47, align 8
  %48 = load i8*, i8** @L2CAP_CID_CONN_LESS, align 8
  %49 = load %struct.sock*, %struct.sock** %5, align 8
  %50 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i8* %48, i8** %51, align 8
  %52 = load i8*, i8** @L2CAP_DEFAULT_MTU, align 8
  %53 = load %struct.sock*, %struct.sock** %5, align 8
  %54 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  br label %69

56:                                               ; preds = %37
  %57 = load i8*, i8** @L2CAP_CID_SIGNALING, align 8
  %58 = load %struct.sock*, %struct.sock** %5, align 8
  %59 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i8* %57, i8** %60, align 8
  %61 = load i8*, i8** @L2CAP_CID_SIGNALING, align 8
  %62 = load %struct.sock*, %struct.sock** %5, align 8
  %63 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  %65 = load i8*, i8** @L2CAP_DEFAULT_MTU, align 8
  %66 = load %struct.sock*, %struct.sock** %5, align 8
  %67 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i8* %65, i8** %68, align 8
  br label %69

69:                                               ; preds = %56, %43
  br label %70

70:                                               ; preds = %69, %31
  %71 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %7, align 8
  %72 = load %struct.sock*, %struct.sock** %5, align 8
  %73 = call i32 @__l2cap_chan_link(%struct.l2cap_chan_list* %71, %struct.sock* %72)
  %74 = load %struct.sock*, %struct.sock** %6, align 8
  %75 = icmp ne %struct.sock* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.sock*, %struct.sock** %6, align 8
  %78 = load %struct.sock*, %struct.sock** %5, align 8
  %79 = call i32 @bt_accept_enqueue(%struct.sock* %77, %struct.sock* %78)
  br label %80

80:                                               ; preds = %76, %70
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_conn*, i32, i8*) #1

declare dso_local %struct.TYPE_2__* @l2cap_pi(%struct.sock*) #1

declare dso_local i8* @l2cap_alloc_cid(%struct.l2cap_chan_list*) #1

declare dso_local i32 @__l2cap_chan_link(%struct.l2cap_chan_list*, %struct.sock*) #1

declare dso_local i32 @bt_accept_enqueue(%struct.sock*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
