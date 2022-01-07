; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_forward2port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_forward2port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32 }
%struct.tipc_portid = type { i32, i32 }
%struct.port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tipc_msg, i64 }
%struct.tipc_msg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TIPC_DIRECT_MSG = common dso_local global i32 0, align 4
@DIR_MSG_H_SIZE = common dso_local global i32 0, align 4
@TIPC_CRITICAL_IMPORTANCE = common dso_local global i32 0, align 4
@tipc_own_addr = common dso_local global i32 0, align 4
@ELINKCONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_forward2port(i32 %0, %struct.tipc_portid* %1, i32 %2, %struct.iovec* %3, %struct.tipc_portid* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tipc_portid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iovec*, align 8
  %12 = alloca %struct.tipc_portid*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.port*, align 8
  %15 = alloca %struct.tipc_msg*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.tipc_portid* %1, %struct.tipc_portid** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.iovec* %3, %struct.iovec** %11, align 8
  store %struct.tipc_portid* %4, %struct.tipc_portid** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.port* @tipc_port_deref(i32 %17)
  store %struct.port* %18, %struct.port** %14, align 8
  %19 = load %struct.port*, %struct.port** %14, align 8
  %20 = icmp ne %struct.port* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %6
  %22 = load %struct.port*, %struct.port** %14, align 8
  %23 = getelementptr inbounds %struct.port, %struct.port* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %6
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %110

30:                                               ; preds = %21
  %31 = load %struct.port*, %struct.port** %14, align 8
  %32 = getelementptr inbounds %struct.port, %struct.port* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.tipc_msg* %33, %struct.tipc_msg** %15, align 8
  %34 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %35 = load i32, i32* @TIPC_DIRECT_MSG, align 4
  %36 = call i32 @msg_set_type(%struct.tipc_msg* %34, i32 %35)
  %37 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %38 = load %struct.tipc_portid*, %struct.tipc_portid** %12, align 8
  %39 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @msg_set_orignode(%struct.tipc_msg* %37, i32 %40)
  %42 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %43 = load %struct.tipc_portid*, %struct.tipc_portid** %12, align 8
  %44 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @msg_set_origport(%struct.tipc_msg* %42, i32 %45)
  %47 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %48 = load %struct.tipc_portid*, %struct.tipc_portid** %9, align 8
  %49 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @msg_set_destnode(%struct.tipc_msg* %47, i32 %50)
  %52 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %53 = load %struct.tipc_portid*, %struct.tipc_portid** %9, align 8
  %54 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @msg_set_destport(%struct.tipc_msg* %52, i32 %55)
  %57 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %58 = load i32, i32* @DIR_MSG_H_SIZE, align 4
  %59 = call i32 @msg_set_hdr_sz(%struct.tipc_msg* %57, i32 %58)
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @TIPC_CRITICAL_IMPORTANCE, align 4
  %62 = icmp ule i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %30
  %64 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @msg_set_importance(%struct.tipc_msg* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %30
  %68 = load %struct.port*, %struct.port** %14, align 8
  %69 = getelementptr inbounds %struct.port, %struct.port* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  %72 = load %struct.tipc_portid*, %struct.tipc_portid** %9, align 8
  %73 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @tipc_own_addr, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %67
  %78 = load %struct.port*, %struct.port** %14, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.iovec*, %struct.iovec** %11, align 8
  %81 = call i32 @tipc_port_recv_sections(%struct.port* %78, i32 %79, %struct.iovec* %80)
  store i32 %81, i32* %7, align 4
  br label %110

82:                                               ; preds = %67
  %83 = load %struct.port*, %struct.port** %14, align 8
  %84 = load %struct.iovec*, %struct.iovec** %11, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.tipc_portid*, %struct.tipc_portid** %9, align 8
  %87 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @tipc_link_send_sections_fast(%struct.port* %83, %struct.iovec* %84, i32 %85, i32 %88)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* @ELINKCONG, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp ne i32 %90, %92
  %94 = zext i1 %93 to i32
  %95 = call i64 @likely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %82
  %98 = load i32, i32* %16, align 4
  store i32 %98, i32* %7, align 4
  br label %110

99:                                               ; preds = %82
  %100 = load %struct.port*, %struct.port** %14, align 8
  %101 = call i64 @port_unreliable(%struct.port* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load %struct.iovec*, %struct.iovec** %11, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @msg_calc_data_size(%struct.iovec* %104, i32 %105)
  store i32 %106, i32* %7, align 4
  br label %110

107:                                              ; preds = %99
  %108 = load i32, i32* @ELINKCONG, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %107, %103, %97, %77, %27
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local %struct.port* @tipc_port_deref(i32) #1

declare dso_local i32 @msg_set_type(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_orignode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_origport(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_destnode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_destport(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_hdr_sz(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_importance(%struct.tipc_msg*, i32) #1

declare dso_local i32 @tipc_port_recv_sections(%struct.port*, i32, %struct.iovec*) #1

declare dso_local i32 @tipc_link_send_sections_fast(%struct.port*, %struct.iovec*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @port_unreliable(%struct.port*) #1

declare dso_local i32 @msg_calc_data_size(%struct.iovec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
