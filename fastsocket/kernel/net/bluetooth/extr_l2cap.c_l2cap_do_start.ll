; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_do_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_do_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.l2cap_conn = type { i32, i8*, i32 }
%struct.l2cap_conn_req = type { i8*, i32, i8* }
%struct.l2cap_info_req = type { i8*, i32, i8* }
%struct.TYPE_2__ = type { i8*, i32, i32, %struct.l2cap_conn* }

@L2CAP_INFO_FEAT_MASK_REQ_SENT = common dso_local global i32 0, align 4
@L2CAP_INFO_FEAT_MASK_REQ_DONE = common dso_local global i32 0, align 4
@L2CAP_CONN_REQ = common dso_local global i32 0, align 4
@L2CAP_IT_FEAT_MASK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@L2CAP_INFO_TIMEOUT = common dso_local global i32 0, align 4
@L2CAP_INFO_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @l2cap_do_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_do_start(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.l2cap_conn*, align 8
  %4 = alloca %struct.l2cap_conn_req, align 8
  %5 = alloca %struct.l2cap_info_req, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  store %struct.l2cap_conn* %9, %struct.l2cap_conn** %3, align 8
  %10 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %11 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @L2CAP_INFO_FEAT_MASK_REQ_SENT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %54

16:                                               ; preds = %1
  %17 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %18 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @L2CAP_INFO_FEAT_MASK_REQ_DONE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %80

24:                                               ; preds = %16
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = call i64 @l2cap_check_security(%struct.sock* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = load %struct.sock*, %struct.sock** %2, align 8
  %30 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @cpu_to_le16(i32 %32)
  %34 = getelementptr inbounds %struct.l2cap_conn_req, %struct.l2cap_conn_req* %4, i32 0, i32 2
  store i8* %33, i8** %34, align 8
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.l2cap_conn_req, %struct.l2cap_conn_req* %4, i32 0, i32 1
  store i32 %38, i32* %39, align 8
  %40 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %41 = call i8* @l2cap_get_ident(%struct.l2cap_conn* %40)
  %42 = load %struct.sock*, %struct.sock** %2, align 8
  %43 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i8* %41, i8** %44, align 8
  %45 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %46 = load %struct.sock*, %struct.sock** %2, align 8
  %47 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* @L2CAP_CONN_REQ, align 4
  %51 = bitcast %struct.l2cap_conn_req* %4 to %struct.l2cap_info_req*
  %52 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %45, i8* %49, i32 %50, i32 24, %struct.l2cap_info_req* %51)
  br label %53

53:                                               ; preds = %28, %24
  br label %80

54:                                               ; preds = %1
  %55 = load i32, i32* @L2CAP_IT_FEAT_MASK, align 4
  %56 = call i8* @cpu_to_le16(i32 %55)
  %57 = getelementptr inbounds %struct.l2cap_info_req, %struct.l2cap_info_req* %5, i32 0, i32 0
  store i8* %56, i8** %57, align 8
  %58 = load i32, i32* @L2CAP_INFO_FEAT_MASK_REQ_SENT, align 4
  %59 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %60 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %64 = call i8* @l2cap_get_ident(%struct.l2cap_conn* %63)
  %65 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %66 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %68 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %67, i32 0, i32 2
  %69 = load i64, i64* @jiffies, align 8
  %70 = load i32, i32* @L2CAP_INFO_TIMEOUT, align 4
  %71 = call i64 @msecs_to_jiffies(i32 %70)
  %72 = add nsw i64 %69, %71
  %73 = call i32 @mod_timer(i32* %68, i64 %72)
  %74 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %75 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %76 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* @L2CAP_INFO_REQ, align 4
  %79 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %74, i8* %77, i32 %78, i32 24, %struct.l2cap_info_req* %5)
  br label %80

80:                                               ; preds = %23, %54, %53
  ret void
}

declare dso_local %struct.TYPE_2__* @l2cap_pi(%struct.sock*) #1

declare dso_local i64 @l2cap_check_security(%struct.sock*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @l2cap_get_ident(%struct.l2cap_conn*) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i8*, i32, i32, %struct.l2cap_info_req*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
