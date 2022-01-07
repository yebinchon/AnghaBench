; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_sock_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_sock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.l2cap_pinfo = type { i32, i64, i64, i64, i32, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"sk %p\00", align 1
@L2CAP_DEFAULT_MTU = common dso_local global i32 0, align 4
@L2CAP_MODE_BASIC = common dso_local global i32 0, align 4
@L2CAP_FCS_CRC16 = common dso_local global i32 0, align 4
@BT_SECURITY_LOW = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_FLUSH_TO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sock*)* @l2cap_sock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_sock_init(%struct.sock* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.l2cap_pinfo*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.l2cap_pinfo* @l2cap_pi(%struct.sock* %6)
  store %struct.l2cap_pinfo* %7, %struct.l2cap_pinfo** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.sock* %8)
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = icmp ne %struct.sock* %10, null
  br i1 %11, label %12, label %67

12:                                               ; preds = %2
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = call %struct.TYPE_2__* @bt_sk(%struct.sock* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = call %struct.TYPE_2__* @bt_sk(%struct.sock* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = call %struct.l2cap_pinfo* @l2cap_pi(%struct.sock* %25)
  %27 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %30 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 8
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = call %struct.l2cap_pinfo* @l2cap_pi(%struct.sock* %31)
  %33 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %36 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %35, i32 0, i32 7
  store i64 %34, i64* %36, align 8
  %37 = load %struct.sock*, %struct.sock** %4, align 8
  %38 = call %struct.l2cap_pinfo* @l2cap_pi(%struct.sock* %37)
  %39 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %42 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = call %struct.l2cap_pinfo* @l2cap_pi(%struct.sock* %43)
  %45 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %48 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = call %struct.l2cap_pinfo* @l2cap_pi(%struct.sock* %49)
  %51 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %54 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.sock*, %struct.sock** %4, align 8
  %56 = call %struct.l2cap_pinfo* @l2cap_pi(%struct.sock* %55)
  %57 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %60 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  %61 = load %struct.sock*, %struct.sock** %4, align 8
  %62 = call %struct.l2cap_pinfo* @l2cap_pi(%struct.sock* %61)
  %63 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %66 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  br label %86

67:                                               ; preds = %2
  %68 = load i32, i32* @L2CAP_DEFAULT_MTU, align 4
  %69 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %70 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 8
  %71 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %72 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %71, i32 0, i32 7
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* @L2CAP_MODE_BASIC, align 4
  %74 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %75 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @L2CAP_FCS_CRC16, align 4
  %77 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %78 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @BT_SECURITY_LOW, align 4
  %80 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %81 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %83 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %82, i32 0, i32 3
  store i64 0, i64* %83, align 8
  %84 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %85 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %67, %12
  %87 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %88 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load i32, i32* @L2CAP_DEFAULT_FLUSH_TO, align 4
  %90 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %91 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.sock*, %struct.sock** %3, align 8
  %93 = call i32 @TX_QUEUE(%struct.sock* %92)
  %94 = call i32 @skb_queue_head_init(i32 %93)
  %95 = load %struct.sock*, %struct.sock** %3, align 8
  %96 = call i32 @SREJ_QUEUE(%struct.sock* %95)
  %97 = call i32 @skb_queue_head_init(i32 %96)
  %98 = load %struct.sock*, %struct.sock** %3, align 8
  %99 = call i32 @SREJ_LIST(%struct.sock* %98)
  %100 = call i32 @INIT_LIST_HEAD(i32 %99)
  ret void
}

declare dso_local %struct.l2cap_pinfo* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.sock*) #1

declare dso_local %struct.TYPE_2__* @bt_sk(%struct.sock*) #1

declare dso_local i32 @skb_queue_head_init(i32) #1

declare dso_local i32 @TX_QUEUE(%struct.sock*) #1

declare dso_local i32 @SREJ_QUEUE(%struct.sock*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32) #1

declare dso_local i32 @SREJ_LIST(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
