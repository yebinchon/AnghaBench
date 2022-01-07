; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_forward_buf2name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_forward_buf2name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_name = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_portid = type { i32, i32 }
%struct.port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tipc_msg, i64 }
%struct.tipc_msg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TIPC_CRITICAL_IMPORTANCE = common dso_local global i32 0, align 4
@TIPC_NAMED_MSG = common dso_local global i32 0, align 4
@LONG_H_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"forw2name ==> \00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"PREP:\00", align 1
@tipc_own_addr = common dso_local global i64 0, align 8
@ELINKCONG = common dso_local global i32 0, align 4
@TIPC_ERR_NO_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_forward_buf2name(i64 %0, %struct.tipc_name* %1, i64 %2, %struct.sk_buff* %3, i32 %4, %struct.tipc_portid* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.tipc_name*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
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
  store %struct.sk_buff* %3, %struct.sk_buff** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.tipc_portid* %5, %struct.tipc_portid** %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = load i64, i64* %11, align 8
  store i64 %21, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i64 @tipc_ref_deref(i64 %22)
  %24 = inttoptr i64 %23 to %struct.port*
  store %struct.port* %24, %struct.port** %16, align 8
  %25 = load %struct.port*, %struct.port** %16, align 8
  %26 = icmp ne %struct.port* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %7
  %28 = load %struct.port*, %struct.port** %16, align 8
  %29 = getelementptr inbounds %struct.port, %struct.port* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %7
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %164

36:                                               ; preds = %27
  %37 = load %struct.port*, %struct.port** %16, align 8
  %38 = getelementptr inbounds %struct.port, %struct.port* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store %struct.tipc_msg* %39, %struct.tipc_msg** %17, align 8
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @TIPC_CRITICAL_IMPORTANCE, align 4
  %42 = icmp ule i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load %struct.tipc_msg*, %struct.tipc_msg** %17, align 8
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @msg_set_importance(%struct.tipc_msg* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %36
  %48 = load %struct.tipc_msg*, %struct.tipc_msg** %17, align 8
  %49 = load i32, i32* @TIPC_NAMED_MSG, align 4
  %50 = call i32 @msg_set_type(%struct.tipc_msg* %48, i32 %49)
  %51 = load %struct.tipc_msg*, %struct.tipc_msg** %17, align 8
  %52 = load %struct.tipc_portid*, %struct.tipc_portid** %14, align 8
  %53 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @msg_set_orignode(%struct.tipc_msg* %51, i32 %54)
  %56 = load %struct.tipc_msg*, %struct.tipc_msg** %17, align 8
  %57 = load %struct.tipc_portid*, %struct.tipc_portid** %14, align 8
  %58 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @msg_set_origport(%struct.tipc_msg* %56, i32 %59)
  %61 = load %struct.tipc_msg*, %struct.tipc_msg** %17, align 8
  %62 = load %struct.tipc_name*, %struct.tipc_name** %10, align 8
  %63 = getelementptr inbounds %struct.tipc_name, %struct.tipc_name* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @msg_set_nametype(%struct.tipc_msg* %61, i32 %64)
  %66 = load %struct.tipc_msg*, %struct.tipc_msg** %17, align 8
  %67 = load %struct.tipc_name*, %struct.tipc_name** %10, align 8
  %68 = getelementptr inbounds %struct.tipc_name, %struct.tipc_name* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @msg_set_nameinst(%struct.tipc_msg* %66, i32 %69)
  %71 = load %struct.tipc_msg*, %struct.tipc_msg** %17, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @addr_scope(i64 %72)
  %74 = call i32 @msg_set_lookup_scope(%struct.tipc_msg* %71, i32 %73)
  %75 = load %struct.tipc_msg*, %struct.tipc_msg** %17, align 8
  %76 = load i64, i64* @LONG_H_SIZE, align 8
  %77 = call i32 @msg_set_hdr_sz(%struct.tipc_msg* %75, i64 %76)
  %78 = load %struct.tipc_msg*, %struct.tipc_msg** %17, align 8
  %79 = load i64, i64* @LONG_H_SIZE, align 8
  %80 = load i32, i32* %13, align 4
  %81 = zext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = call i32 @msg_set_size(%struct.tipc_msg* %78, i64 %82)
  %84 = load %struct.tipc_name*, %struct.tipc_name** %10, align 8
  %85 = getelementptr inbounds %struct.tipc_name, %struct.tipc_name* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.tipc_name*, %struct.tipc_name** %10, align 8
  %88 = getelementptr inbounds %struct.tipc_name, %struct.tipc_name* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @tipc_nametbl_translate(i32 %86, i32 %89, i64* %18)
  store i64 %90, i64* %19, align 8
  %91 = load %struct.tipc_msg*, %struct.tipc_msg** %17, align 8
  %92 = load i64, i64* %18, align 8
  %93 = call i32 @msg_set_destnode(%struct.tipc_msg* %91, i64 %92)
  %94 = load %struct.tipc_msg*, %struct.tipc_msg** %17, align 8
  %95 = load i64, i64* %19, align 8
  %96 = call i32 @msg_set_destport(%struct.tipc_msg* %94, i64 %95)
  %97 = load %struct.tipc_msg*, %struct.tipc_msg** %17, align 8
  %98 = call i32 @msg_dbg(%struct.tipc_msg* %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %99 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %100 = load i64, i64* @LONG_H_SIZE, align 8
  %101 = call i64 @skb_cow(%struct.sk_buff* %99, i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %47
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %8, align 4
  br label %164

106:                                              ; preds = %47
  %107 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %108 = load i64, i64* @LONG_H_SIZE, align 8
  %109 = call i32 @skb_push(%struct.sk_buff* %107, i64 %108)
  %110 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %111 = load %struct.tipc_msg*, %struct.tipc_msg** %17, align 8
  %112 = load i64, i64* @LONG_H_SIZE, align 8
  %113 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %110, %struct.tipc_msg* %111, i64 %112)
  %114 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %115 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %114)
  %116 = call i32 @msg_dbg(%struct.tipc_msg* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %117 = load i64, i64* %19, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %106
  %120 = load i64, i64* %18, align 8
  %121 = icmp ne i64 %120, 0
  br label %122

122:                                              ; preds = %119, %106
  %123 = phi i1 [ true, %106 ], [ %121, %119 ]
  %124 = zext i1 %123 to i32
  %125 = call i64 @likely(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %160

127:                                              ; preds = %122
  %128 = load %struct.port*, %struct.port** %16, align 8
  %129 = getelementptr inbounds %struct.port, %struct.port* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 8
  %132 = load i64, i64* %18, align 8
  %133 = load i64, i64* @tipc_own_addr, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %127
  %136 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %137 = call i32 @tipc_port_recv_msg(%struct.sk_buff* %136)
  store i32 %137, i32* %8, align 4
  br label %164

138:                                              ; preds = %127
  %139 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %140 = load i64, i64* %18, align 8
  %141 = call i32 @tipc_send_buf_fast(%struct.sk_buff* %139, i64 %140)
  store i32 %141, i32* %20, align 4
  %142 = load i32, i32* %20, align 4
  %143 = load i32, i32* @ELINKCONG, align 4
  %144 = sub nsw i32 0, %143
  %145 = icmp ne i32 %142, %144
  %146 = zext i1 %145 to i32
  %147 = call i64 @likely(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %138
  %150 = load i32, i32* %20, align 4
  store i32 %150, i32* %8, align 4
  br label %164

151:                                              ; preds = %138
  %152 = load %struct.port*, %struct.port** %16, align 8
  %153 = call i64 @port_unreliable(%struct.port* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i32, i32* %13, align 4
  store i32 %156, i32* %8, align 4
  br label %164

157:                                              ; preds = %151
  %158 = load i32, i32* @ELINKCONG, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %8, align 4
  br label %164

160:                                              ; preds = %122
  %161 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %162 = load i32, i32* @TIPC_ERR_NO_NAME, align 4
  %163 = call i32 @tipc_reject_msg(%struct.sk_buff* %161, i32 %162)
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %160, %157, %155, %149, %135, %103, %33
  %165 = load i32, i32* %8, align 4
  ret i32 %165
}

declare dso_local i64 @tipc_ref_deref(i64) #1

declare dso_local i32 @msg_set_importance(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_type(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_orignode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_origport(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_nametype(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_nameinst(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_lookup_scope(%struct.tipc_msg*, i32) #1

declare dso_local i32 @addr_scope(i64) #1

declare dso_local i32 @msg_set_hdr_sz(%struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_set_size(%struct.tipc_msg*, i64) #1

declare dso_local i64 @tipc_nametbl_translate(i32, i32, i64*) #1

declare dso_local i32 @msg_set_destnode(%struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_set_destport(%struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_dbg(%struct.tipc_msg*, i8*) #1

declare dso_local i64 @skb_cow(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, %struct.tipc_msg*, i64) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @tipc_port_recv_msg(%struct.sk_buff*) #1

declare dso_local i32 @tipc_send_buf_fast(%struct.sk_buff*, i64) #1

declare dso_local i64 @port_unreliable(%struct.port*) #1

declare dso_local i32 @tipc_reject_msg(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
