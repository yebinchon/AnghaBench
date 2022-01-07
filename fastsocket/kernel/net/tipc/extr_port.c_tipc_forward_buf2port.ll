; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_forward_buf2port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_forward_buf2port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tipc_portid = type { i32, i32 }
%struct.port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tipc_msg, i64 }
%struct.tipc_msg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TIPC_DIRECT_MSG = common dso_local global i32 0, align 4
@DIR_MSG_H_SIZE = common dso_local global i64 0, align 8
@TIPC_CRITICAL_IMPORTANCE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"buf2port: \00", align 1
@tipc_own_addr = common dso_local global i32 0, align 4
@ELINKCONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_forward_buf2port(i32 %0, %struct.tipc_portid* %1, %struct.sk_buff* %2, i32 %3, %struct.tipc_portid* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tipc_portid*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tipc_portid*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.port*, align 8
  %15 = alloca %struct.tipc_msg*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.tipc_portid* %1, %struct.tipc_portid** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.tipc_portid* %4, %struct.tipc_portid** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @tipc_ref_deref(i32 %17)
  %19 = inttoptr i64 %18 to %struct.port*
  store %struct.port* %19, %struct.port** %14, align 8
  %20 = load %struct.port*, %struct.port** %14, align 8
  %21 = icmp ne %struct.port* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %6
  %23 = load %struct.port*, %struct.port** %14, align 8
  %24 = getelementptr inbounds %struct.port, %struct.port* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %6
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %128

31:                                               ; preds = %22
  %32 = load %struct.port*, %struct.port** %14, align 8
  %33 = getelementptr inbounds %struct.port, %struct.port* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store %struct.tipc_msg* %34, %struct.tipc_msg** %15, align 8
  %35 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %36 = load i32, i32* @TIPC_DIRECT_MSG, align 4
  %37 = call i32 @msg_set_type(%struct.tipc_msg* %35, i32 %36)
  %38 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %39 = load %struct.tipc_portid*, %struct.tipc_portid** %12, align 8
  %40 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @msg_set_orignode(%struct.tipc_msg* %38, i32 %41)
  %43 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %44 = load %struct.tipc_portid*, %struct.tipc_portid** %12, align 8
  %45 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @msg_set_origport(%struct.tipc_msg* %43, i32 %46)
  %48 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %49 = load %struct.tipc_portid*, %struct.tipc_portid** %9, align 8
  %50 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @msg_set_destnode(%struct.tipc_msg* %48, i32 %51)
  %53 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %54 = load %struct.tipc_portid*, %struct.tipc_portid** %9, align 8
  %55 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @msg_set_destport(%struct.tipc_msg* %53, i32 %56)
  %58 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %59 = load i64, i64* @DIR_MSG_H_SIZE, align 8
  %60 = call i32 @msg_set_hdr_sz(%struct.tipc_msg* %58, i64 %59)
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @TIPC_CRITICAL_IMPORTANCE, align 4
  %63 = icmp ule i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %31
  %65 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @msg_set_importance(%struct.tipc_msg* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %31
  %69 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %70 = load i64, i64* @DIR_MSG_H_SIZE, align 8
  %71 = load i32, i32* %11, align 4
  %72 = zext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = call i32 @msg_set_size(%struct.tipc_msg* %69, i64 %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %76 = load i64, i64* @DIR_MSG_H_SIZE, align 8
  %77 = call i64 @skb_cow(%struct.sk_buff* %75, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  br label %128

82:                                               ; preds = %68
  %83 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %84 = load i64, i64* @DIR_MSG_H_SIZE, align 8
  %85 = call i32 @skb_push(%struct.sk_buff* %83, i64 %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %87 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %88 = load i64, i64* @DIR_MSG_H_SIZE, align 8
  %89 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %86, %struct.tipc_msg* %87, i64 %88)
  %90 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %91 = call i32 @msg_dbg(%struct.tipc_msg* %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %92 = load %struct.port*, %struct.port** %14, align 8
  %93 = getelementptr inbounds %struct.port, %struct.port* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = load %struct.tipc_portid*, %struct.tipc_portid** %9, align 8
  %97 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @tipc_own_addr, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %82
  %102 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %103 = call i32 @tipc_port_recv_msg(%struct.sk_buff* %102)
  store i32 %103, i32* %7, align 4
  br label %128

104:                                              ; preds = %82
  %105 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %106 = load %struct.tipc_portid*, %struct.tipc_portid** %9, align 8
  %107 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @tipc_send_buf_fast(%struct.sk_buff* %105, i32 %108)
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* @ELINKCONG, align 4
  %112 = sub nsw i32 0, %111
  %113 = icmp ne i32 %110, %112
  %114 = zext i1 %113 to i32
  %115 = call i64 @likely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %104
  %118 = load i32, i32* %16, align 4
  store i32 %118, i32* %7, align 4
  br label %128

119:                                              ; preds = %104
  %120 = load %struct.port*, %struct.port** %14, align 8
  %121 = call i64 @port_unreliable(%struct.port* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %7, align 4
  br label %128

125:                                              ; preds = %119
  %126 = load i32, i32* @ELINKCONG, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %125, %123, %117, %101, %79, %28
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

declare dso_local i64 @tipc_ref_deref(i32) #1

declare dso_local i32 @msg_set_type(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_orignode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_origport(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_destnode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_destport(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_hdr_sz(%struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_set_importance(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_size(%struct.tipc_msg*, i64) #1

declare dso_local i64 @skb_cow(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, %struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_dbg(%struct.tipc_msg*, i8*) #1

declare dso_local i32 @tipc_port_recv_msg(%struct.sk_buff*) #1

declare dso_local i32 @tipc_send_buf_fast(%struct.sk_buff*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @port_unreliable(%struct.port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
