; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_send_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_send_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.port = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.tipc_msg, i32 }
%struct.tipc_msg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tipc_own_addr = common dso_local global i64 0, align 8
@ELINKCONG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_send_buf(i64 %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.port*, align 8
  %9 = alloca %struct.tipc_msg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i64, i64* %5, align 8
  %15 = call %struct.port* @tipc_port_deref(i64 %14)
  store %struct.port* %15, %struct.port** %8, align 8
  %16 = load %struct.port*, %struct.port** %8, align 8
  %17 = icmp ne %struct.port* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.port*, %struct.port** %8, align 8
  %20 = getelementptr inbounds %struct.port, %struct.port* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %112

27:                                               ; preds = %18
  %28 = load %struct.port*, %struct.port** %8, align 8
  %29 = getelementptr inbounds %struct.port, %struct.port* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store %struct.tipc_msg* %30, %struct.tipc_msg** %9, align 8
  %31 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %32 = call i64 @msg_hdr_sz(%struct.tipc_msg* %31)
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  store i64 %36, i64* %12, align 8
  %37 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @msg_set_size(%struct.tipc_msg* %37, i64 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i64 @skb_cow(%struct.sk_buff* %40, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %27
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %112

47:                                               ; preds = %27
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @skb_push(%struct.sk_buff* %48, i64 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %51, %struct.tipc_msg* %52, i64 %53)
  %55 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %56 = call i64 @msg_destnode(%struct.tipc_msg* %55)
  store i64 %56, i64* %10, align 8
  %57 = load %struct.port*, %struct.port** %8, align 8
  %58 = getelementptr inbounds %struct.port, %struct.port* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  %60 = load %struct.port*, %struct.port** %8, align 8
  %61 = call i32 @tipc_port_congested(%struct.port* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %99, label %63

63:                                               ; preds = %47
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* @tipc_own_addr, align 8
  %66 = icmp ne i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i64 @likely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i64 @tipc_send_buf_fast(%struct.sk_buff* %71, i64 %72)
  store i64 %73, i64* %13, align 8
  br label %78

74:                                               ; preds = %63
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = call i32 @tipc_port_recv_msg(%struct.sk_buff* %75)
  %77 = load i64, i64* %12, align 8
  store i64 %77, i64* %13, align 8
  br label %78

78:                                               ; preds = %74, %70
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* @ELINKCONG, align 8
  %81 = sub nsw i64 0, %80
  %82 = icmp ne i64 %79, %81
  %83 = zext i1 %82 to i32
  %84 = call i64 @likely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %78
  %87 = load %struct.port*, %struct.port** %8, align 8
  %88 = call i32 @port_incr_out_seqno(%struct.port* %87)
  %89 = load %struct.port*, %struct.port** %8, align 8
  %90 = getelementptr inbounds %struct.port, %struct.port* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.port*, %struct.port** %8, align 8
  %94 = getelementptr inbounds %struct.port, %struct.port* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 0, i32* %95, align 4
  %96 = load i64, i64* %13, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %4, align 4
  br label %112

98:                                               ; preds = %78
  br label %99

99:                                               ; preds = %98, %47
  %100 = load %struct.port*, %struct.port** %8, align 8
  %101 = call i64 @port_unreliable(%struct.port* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load %struct.port*, %struct.port** %8, align 8
  %105 = getelementptr inbounds %struct.port, %struct.port* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i32 0, i32* %106, align 4
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %4, align 4
  br label %112

108:                                              ; preds = %99
  %109 = load i64, i64* @ELINKCONG, align 8
  %110 = sub nsw i64 0, %109
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %108, %103, %86, %44, %24
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.port* @tipc_port_deref(i64) #1

declare dso_local i64 @msg_hdr_sz(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_size(%struct.tipc_msg*, i64) #1

declare dso_local i64 @skb_cow(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, %struct.tipc_msg*, i64) #1

declare dso_local i64 @msg_destnode(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_port_congested(%struct.port*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @tipc_send_buf_fast(%struct.sk_buff*, i64) #1

declare dso_local i32 @tipc_port_recv_msg(%struct.sk_buff*) #1

declare dso_local i32 @port_incr_out_seqno(%struct.port*) #1

declare dso_local i64 @port_unreliable(%struct.port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
