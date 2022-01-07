; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_forward2name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_forward2name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_name = type { i32, i32 }
%struct.iovec = type { i32 }
%struct.tipc_portid = type { i32, i32 }
%struct.port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tipc_msg, i64 }
%struct.tipc_msg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TIPC_NAMED_MSG = common dso_local global i32 0, align 4
@LONG_H_SIZE = common dso_local global i32 0, align 4
@TIPC_CRITICAL_IMPORTANCE = common dso_local global i32 0, align 4
@tipc_own_addr = common dso_local global i64 0, align 8
@ELINKCONG = common dso_local global i32 0, align 4
@TIPC_ERR_NO_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_forward2name(i64 %0, %struct.tipc_name* %1, i64 %2, i64 %3, %struct.iovec* %4, %struct.tipc_portid* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.tipc_name*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.iovec*, align 8
  %14 = alloca %struct.tipc_portid*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.port*, align 8
  %17 = alloca %struct.tipc_msg*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i64 %0, i64* %9, align 8
  store %struct.tipc_name* %1, %struct.tipc_name** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store %struct.iovec* %4, %struct.iovec** %13, align 8
  store %struct.tipc_portid* %5, %struct.tipc_portid** %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = load i64, i64* %11, align 8
  store i64 %21, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call %struct.port* @tipc_port_deref(i64 %22)
  store %struct.port* %23, %struct.port** %16, align 8
  %24 = load %struct.port*, %struct.port** %16, align 8
  %25 = icmp ne %struct.port* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %7
  %27 = load %struct.port*, %struct.port** %16, align 8
  %28 = getelementptr inbounds %struct.port, %struct.port* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %7
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %149

35:                                               ; preds = %26
  %36 = load %struct.port*, %struct.port** %16, align 8
  %37 = getelementptr inbounds %struct.port, %struct.port* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store %struct.tipc_msg* %38, %struct.tipc_msg** %17, align 8
  %39 = load %struct.tipc_msg*, %struct.tipc_msg** %17, align 8
  %40 = load i32, i32* @TIPC_NAMED_MSG, align 4
  %41 = call i32 @msg_set_type(%struct.tipc_msg* %39, i32 %40)
  %42 = load %struct.tipc_msg*, %struct.tipc_msg** %17, align 8
  %43 = load %struct.tipc_portid*, %struct.tipc_portid** %14, align 8
  %44 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @msg_set_orignode(%struct.tipc_msg* %42, i32 %45)
  %47 = load %struct.tipc_msg*, %struct.tipc_msg** %17, align 8
  %48 = load %struct.tipc_portid*, %struct.tipc_portid** %14, align 8
  %49 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @msg_set_origport(%struct.tipc_msg* %47, i32 %50)
  %52 = load %struct.tipc_msg*, %struct.tipc_msg** %17, align 8
  %53 = load i32, i32* @LONG_H_SIZE, align 4
  %54 = call i32 @msg_set_hdr_sz(%struct.tipc_msg* %52, i32 %53)
  %55 = load %struct.tipc_msg*, %struct.tipc_msg** %17, align 8
  %56 = load %struct.tipc_name*, %struct.tipc_name** %10, align 8
  %57 = getelementptr inbounds %struct.tipc_name, %struct.tipc_name* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @msg_set_nametype(%struct.tipc_msg* %55, i32 %58)
  %60 = load %struct.tipc_msg*, %struct.tipc_msg** %17, align 8
  %61 = load %struct.tipc_name*, %struct.tipc_name** %10, align 8
  %62 = getelementptr inbounds %struct.tipc_name, %struct.tipc_name* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @msg_set_nameinst(%struct.tipc_msg* %60, i32 %63)
  %65 = load %struct.tipc_msg*, %struct.tipc_msg** %17, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @addr_scope(i64 %66)
  %68 = call i32 @msg_set_lookup_scope(%struct.tipc_msg* %65, i32 %67)
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* @TIPC_CRITICAL_IMPORTANCE, align 4
  %71 = icmp ule i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %35
  %73 = load %struct.tipc_msg*, %struct.tipc_msg** %17, align 8
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @msg_set_importance(%struct.tipc_msg* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %35
  %77 = load %struct.tipc_name*, %struct.tipc_name** %10, align 8
  %78 = getelementptr inbounds %struct.tipc_name, %struct.tipc_name* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.tipc_name*, %struct.tipc_name** %10, align 8
  %81 = getelementptr inbounds %struct.tipc_name, %struct.tipc_name* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @tipc_nametbl_translate(i32 %79, i32 %82, i64* %18)
  store i64 %83, i64* %19, align 8
  %84 = load %struct.tipc_msg*, %struct.tipc_msg** %17, align 8
  %85 = load i64, i64* %18, align 8
  %86 = call i32 @msg_set_destnode(%struct.tipc_msg* %84, i64 %85)
  %87 = load %struct.tipc_msg*, %struct.tipc_msg** %17, align 8
  %88 = load i64, i64* %19, align 8
  %89 = call i32 @msg_set_destport(%struct.tipc_msg* %87, i64 %88)
  %90 = load i64, i64* %19, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %76
  %93 = load i64, i64* %18, align 8
  %94 = icmp ne i64 %93, 0
  br label %95

95:                                               ; preds = %92, %76
  %96 = phi i1 [ true, %76 ], [ %94, %92 ]
  %97 = zext i1 %96 to i32
  %98 = call i64 @likely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %142

100:                                              ; preds = %95
  %101 = load %struct.port*, %struct.port** %16, align 8
  %102 = getelementptr inbounds %struct.port, %struct.port* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  %105 = load i64, i64* %18, align 8
  %106 = load i64, i64* @tipc_own_addr, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i64 @likely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %100
  %112 = load %struct.port*, %struct.port** %16, align 8
  %113 = load i64, i64* %12, align 8
  %114 = load %struct.iovec*, %struct.iovec** %13, align 8
  %115 = call i32 @tipc_port_recv_sections(%struct.port* %112, i64 %113, %struct.iovec* %114)
  store i32 %115, i32* %8, align 4
  br label %149

116:                                              ; preds = %100
  %117 = load %struct.port*, %struct.port** %16, align 8
  %118 = load %struct.iovec*, %struct.iovec** %13, align 8
  %119 = load i64, i64* %12, align 8
  %120 = load i64, i64* %18, align 8
  %121 = call i32 @tipc_link_send_sections_fast(%struct.port* %117, %struct.iovec* %118, i64 %119, i64 %120)
  store i32 %121, i32* %20, align 4
  %122 = load i32, i32* %20, align 4
  %123 = load i32, i32* @ELINKCONG, align 4
  %124 = sub nsw i32 0, %123
  %125 = icmp ne i32 %122, %124
  %126 = zext i1 %125 to i32
  %127 = call i64 @likely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %116
  %130 = load i32, i32* %20, align 4
  store i32 %130, i32* %8, align 4
  br label %149

131:                                              ; preds = %116
  %132 = load %struct.port*, %struct.port** %16, align 8
  %133 = call i64 @port_unreliable(%struct.port* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load %struct.iovec*, %struct.iovec** %13, align 8
  %137 = load i64, i64* %12, align 8
  %138 = call i32 @msg_calc_data_size(%struct.iovec* %136, i64 %137)
  store i32 %138, i32* %8, align 4
  br label %149

139:                                              ; preds = %131
  %140 = load i32, i32* @ELINKCONG, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %8, align 4
  br label %149

142:                                              ; preds = %95
  %143 = load %struct.port*, %struct.port** %16, align 8
  %144 = load %struct.tipc_msg*, %struct.tipc_msg** %17, align 8
  %145 = load %struct.iovec*, %struct.iovec** %13, align 8
  %146 = load i64, i64* %12, align 8
  %147 = load i32, i32* @TIPC_ERR_NO_NAME, align 4
  %148 = call i32 @tipc_port_reject_sections(%struct.port* %143, %struct.tipc_msg* %144, %struct.iovec* %145, i64 %146, i32 %147)
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %142, %139, %135, %129, %111, %32
  %150 = load i32, i32* %8, align 4
  ret i32 %150
}

declare dso_local %struct.port* @tipc_port_deref(i64) #1

declare dso_local i32 @msg_set_type(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_orignode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_origport(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_hdr_sz(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_nametype(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_nameinst(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_lookup_scope(%struct.tipc_msg*, i32) #1

declare dso_local i32 @addr_scope(i64) #1

declare dso_local i32 @msg_set_importance(%struct.tipc_msg*, i32) #1

declare dso_local i64 @tipc_nametbl_translate(i32, i32, i64*) #1

declare dso_local i32 @msg_set_destnode(%struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_set_destport(%struct.tipc_msg*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @tipc_port_recv_sections(%struct.port*, i64, %struct.iovec*) #1

declare dso_local i32 @tipc_link_send_sections_fast(%struct.port*, %struct.iovec*, i64, i64) #1

declare dso_local i64 @port_unreliable(%struct.port*) #1

declare dso_local i32 @msg_calc_data_size(%struct.iovec*, i64) #1

declare dso_local i32 @tipc_port_reject_sections(%struct.port*, %struct.tipc_msg*, %struct.iovec*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
