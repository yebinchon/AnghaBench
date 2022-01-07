; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_connect2port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_connect2port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_portid = type { i32, i32 }
%struct.port = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.tipc_msg, i64 }
%struct.tipc_msg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@tipc_own_addr = common dso_local global i32 0, align 4
@TIPC_CONN_MSG = common dso_local global i32 0, align 4
@SHORT_H_SIZE = common dso_local global i32 0, align 4
@LONG_H_SIZE = common dso_local global i32 0, align 4
@PROBING_INTERVAL = common dso_local global i32 0, align 4
@CONFIRMED = common dso_local global i32 0, align 4
@port_handle_node_down = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_connect2port(i64 %0, %struct.tipc_portid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.tipc_portid*, align 8
  %6 = alloca %struct.port*, align 8
  %7 = alloca %struct.tipc_msg*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.tipc_portid* %1, %struct.tipc_portid** %5, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i64, i64* %4, align 8
  %12 = call %struct.port* @tipc_port_lock(i64 %11)
  store %struct.port* %12, %struct.port** %6, align 8
  %13 = load %struct.port*, %struct.port** %6, align 8
  %14 = icmp ne %struct.port* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %116

18:                                               ; preds = %2
  %19 = load %struct.port*, %struct.port** %6, align 8
  %20 = getelementptr inbounds %struct.port, %struct.port* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.port*, %struct.port** %6, align 8
  %26 = getelementptr inbounds %struct.port, %struct.port* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %18
  br label %104

31:                                               ; preds = %24
  %32 = load %struct.tipc_portid*, %struct.tipc_portid** %5, align 8
  %33 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %104

37:                                               ; preds = %31
  %38 = load %struct.port*, %struct.port** %6, align 8
  %39 = getelementptr inbounds %struct.port, %struct.port* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  store %struct.tipc_msg* %40, %struct.tipc_msg** %7, align 8
  %41 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %42 = load %struct.tipc_portid*, %struct.tipc_portid** %5, align 8
  %43 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @msg_set_destnode(%struct.tipc_msg* %41, i32 %44)
  %46 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %47 = load %struct.tipc_portid*, %struct.tipc_portid** %5, align 8
  %48 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @msg_set_destport(%struct.tipc_msg* %46, i32 %49)
  %51 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %52 = load i32, i32* @tipc_own_addr, align 4
  %53 = call i32 @msg_set_orignode(%struct.tipc_msg* %51, i32 %52)
  %54 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %55 = load %struct.port*, %struct.port** %6, align 8
  %56 = getelementptr inbounds %struct.port, %struct.port* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @msg_set_origport(%struct.tipc_msg* %54, i32 %58)
  %60 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %61 = call i32 @msg_set_transp_seqno(%struct.tipc_msg* %60, i32 42)
  %62 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %63 = load i32, i32* @TIPC_CONN_MSG, align 4
  %64 = call i32 @msg_set_type(%struct.tipc_msg* %62, i32 %63)
  %65 = load %struct.tipc_portid*, %struct.tipc_portid** %5, align 8
  %66 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @may_route(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %37
  %71 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %72 = load i32, i32* @SHORT_H_SIZE, align 4
  %73 = call i32 @msg_set_hdr_sz(%struct.tipc_msg* %71, i32 %72)
  br label %78

74:                                               ; preds = %37
  %75 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %76 = load i32, i32* @LONG_H_SIZE, align 4
  %77 = call i32 @msg_set_hdr_sz(%struct.tipc_msg* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %70
  %79 = load i32, i32* @PROBING_INTERVAL, align 4
  %80 = load %struct.port*, %struct.port** %6, align 8
  %81 = getelementptr inbounds %struct.port, %struct.port* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @CONFIRMED, align 4
  %83 = load %struct.port*, %struct.port** %6, align 8
  %84 = getelementptr inbounds %struct.port, %struct.port* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  %85 = load %struct.port*, %struct.port** %6, align 8
  %86 = getelementptr inbounds %struct.port, %struct.port* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load %struct.port*, %struct.port** %6, align 8
  %89 = getelementptr inbounds %struct.port, %struct.port* %88, i32 0, i32 3
  %90 = load %struct.port*, %struct.port** %6, align 8
  %91 = getelementptr inbounds %struct.port, %struct.port* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @k_start_timer(i32* %89, i32 %92)
  %94 = load %struct.port*, %struct.port** %6, align 8
  %95 = getelementptr inbounds %struct.port, %struct.port* %94, i32 0, i32 1
  %96 = load %struct.tipc_portid*, %struct.tipc_portid** %5, align 8
  %97 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* %4, align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = load i64, i64* @port_handle_node_down, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i32 @tipc_nodesub_subscribe(i32* %95, i32 %98, i8* %100, i32 %102)
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %78, %36, %30
  %105 = load %struct.port*, %struct.port** %6, align 8
  %106 = call i32 @tipc_port_unlock(%struct.port* %105)
  %107 = load %struct.tipc_portid*, %struct.tipc_portid** %5, align 8
  %108 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i64, i64* %4, align 8
  %111 = call i32 @tipc_link_get_max_pkt(i32 %109, i64 %110)
  %112 = load %struct.port*, %struct.port** %6, align 8
  %113 = getelementptr inbounds %struct.port, %struct.port* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %104, %15
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.port* @tipc_port_lock(i64) #1

declare dso_local i32 @msg_set_destnode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_destport(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_orignode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_origport(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_transp_seqno(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_type(%struct.tipc_msg*, i32) #1

declare dso_local i32 @may_route(i32) #1

declare dso_local i32 @msg_set_hdr_sz(%struct.tipc_msg*, i32) #1

declare dso_local i32 @k_start_timer(i32*, i32) #1

declare dso_local i32 @tipc_nodesub_subscribe(i32*, i32, i8*, i32) #1

declare dso_local i32 @tipc_port_unlock(%struct.port*) #1

declare dso_local i32 @tipc_link_get_max_pkt(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
