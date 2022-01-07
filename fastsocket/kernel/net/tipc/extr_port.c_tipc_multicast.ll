; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_name_seq = type { i32, i32, i32 }
%struct.iovec = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.sk_buff = type { i32 }
%struct.port_list = type { i64, i32*, i32 }
%struct.port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tipc_msg }

@EINVAL = common dso_local global i32 0, align 4
@TIPC_MCAST_MSG = common dso_local global i32 0, align 4
@MCAST_H_SIZE = common dso_local global i32 0, align 4
@MAX_MSG_SIZE = common dso_local global i32 0, align 4
@TIPC_NODE_SCOPE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_multicast(i32 %0, %struct.tipc_name_seq* %1, i32 %2, i32 %3, %struct.iovec* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tipc_name_seq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iovec*, align 8
  %12 = alloca %struct.tipc_msg*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.port_list, align 8
  %16 = alloca %struct.port*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.tipc_name_seq* %1, %struct.tipc_name_seq** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.iovec* %4, %struct.iovec** %11, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %14, align 8
  %19 = bitcast %struct.port_list* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 24, i1 false)
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.port* @tipc_port_deref(i32 %20)
  store %struct.port* %21, %struct.port** %16, align 8
  %22 = load %struct.port*, %struct.port** %16, align 8
  %23 = icmp ne %struct.port* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %135

31:                                               ; preds = %5
  %32 = load %struct.port*, %struct.port** %16, align 8
  %33 = getelementptr inbounds %struct.port, %struct.port* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store %struct.tipc_msg* %34, %struct.tipc_msg** %12, align 8
  %35 = load %struct.tipc_msg*, %struct.tipc_msg** %12, align 8
  %36 = load i32, i32* @TIPC_MCAST_MSG, align 4
  %37 = call i32 @msg_set_type(%struct.tipc_msg* %35, i32 %36)
  %38 = load %struct.tipc_msg*, %struct.tipc_msg** %12, align 8
  %39 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %8, align 8
  %40 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @msg_set_nametype(%struct.tipc_msg* %38, i32 %41)
  %43 = load %struct.tipc_msg*, %struct.tipc_msg** %12, align 8
  %44 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %8, align 8
  %45 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @msg_set_namelower(%struct.tipc_msg* %43, i32 %46)
  %48 = load %struct.tipc_msg*, %struct.tipc_msg** %12, align 8
  %49 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %8, align 8
  %50 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @msg_set_nameupper(%struct.tipc_msg* %48, i32 %51)
  %53 = load %struct.tipc_msg*, %struct.tipc_msg** %12, align 8
  %54 = load i32, i32* @MCAST_H_SIZE, align 4
  %55 = call i32 @msg_set_hdr_sz(%struct.tipc_msg* %53, i32 %54)
  %56 = load %struct.tipc_msg*, %struct.tipc_msg** %12, align 8
  %57 = load %struct.iovec*, %struct.iovec** %11, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @MAX_MSG_SIZE, align 4
  %60 = load %struct.port*, %struct.port** %16, align 8
  %61 = getelementptr inbounds %struct.port, %struct.port* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @msg_build(%struct.tipc_msg* %56, %struct.iovec* %57, i32 %58, i32 %59, i32 %65, %struct.sk_buff** %13)
  store i32 %66, i32* %18, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %68 = icmp ne %struct.sk_buff* %67, null
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %31
  %74 = load i32, i32* %18, align 4
  store i32 %74, i32* %6, align 4
  br label %135

75:                                               ; preds = %31
  %76 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %8, align 8
  %77 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %8, align 8
  %80 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %8, align 8
  %83 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @TIPC_NODE_SCOPE, align 4
  %86 = call i32 @tipc_nametbl_mc_translate(i32 %78, i32 %81, i32 %84, i32 %85, %struct.port_list* %15)
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %17, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %119

89:                                               ; preds = %75
  %90 = getelementptr inbounds %struct.port_list, %struct.port_list* %15, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %89
  %94 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %95 = load i32, i32* @GFP_ATOMIC, align 4
  %96 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %94, i32 %95)
  store %struct.sk_buff* %96, %struct.sk_buff** %14, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %98 = icmp eq %struct.sk_buff* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = call i32 @tipc_port_list_free(%struct.port_list* %15)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %102 = call i32 @buf_discard(%struct.sk_buff* %101)
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  br label %135

105:                                              ; preds = %93
  br label %106

106:                                              ; preds = %105, %89
  %107 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %108 = call i32 @tipc_bclink_send_msg(%struct.sk_buff* %107)
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.port_list, %struct.port_list* %15, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %117 = call i32 @buf_discard(%struct.sk_buff* %116)
  br label %118

118:                                              ; preds = %115, %111, %106
  br label %121

119:                                              ; preds = %75
  %120 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %120, %struct.sk_buff** %14, align 8
  br label %121

121:                                              ; preds = %119, %118
  %122 = load i32, i32* %18, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %126 = icmp ne %struct.sk_buff* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %129 = call i32 @tipc_port_recv_mcast(%struct.sk_buff* %128, %struct.port_list* %15)
  br label %130

130:                                              ; preds = %127, %124
  br label %133

131:                                              ; preds = %121
  %132 = call i32 @tipc_port_list_free(%struct.port_list* %15)
  br label %133

133:                                              ; preds = %131, %130
  %134 = load i32, i32* %18, align 4
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %133, %99, %73, %28
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.port* @tipc_port_deref(i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @msg_set_type(%struct.tipc_msg*, i32) #2

declare dso_local i32 @msg_set_nametype(%struct.tipc_msg*, i32) #2

declare dso_local i32 @msg_set_namelower(%struct.tipc_msg*, i32) #2

declare dso_local i32 @msg_set_nameupper(%struct.tipc_msg*, i32) #2

declare dso_local i32 @msg_set_hdr_sz(%struct.tipc_msg*, i32) #2

declare dso_local i32 @msg_build(%struct.tipc_msg*, %struct.iovec*, i32, i32, i32, %struct.sk_buff**) #2

declare dso_local i32 @tipc_nametbl_mc_translate(i32, i32, i32, i32, %struct.port_list*) #2

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #2

declare dso_local i32 @tipc_port_list_free(%struct.port_list*) #2

declare dso_local i32 @buf_discard(%struct.sk_buff*) #2

declare dso_local i32 @tipc_bclink_send_msg(%struct.sk_buff*) #2

declare dso_local i32 @tipc_port_recv_mcast(%struct.sk_buff*, %struct.port_list*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
