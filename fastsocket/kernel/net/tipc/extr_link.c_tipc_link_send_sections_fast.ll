; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_send_sections_fast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_send_sections_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32, %struct.tipc_msg }
%struct.tipc_msg = type { i32 }
%struct.iovec = type { i32 }
%struct.link = type { %struct.TYPE_3__*, %struct.link** }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { %struct.TYPE_3__*, %struct.sk_buff** }
%struct.tipc_node = type { %struct.TYPE_3__*, %struct.tipc_node** }

@tipc_net_lock = common dso_local global i32 0, align 4
@TIPC_ERR_NO_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_link_send_sections_fast(%struct.port* %0, %struct.iovec* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.port*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tipc_msg*, align 8
  %11 = alloca %struct.link*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.tipc_node*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.port* %0, %struct.port** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.port*, %struct.port** %6, align 8
  %17 = getelementptr inbounds %struct.port, %struct.port* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  store %struct.tipc_msg* %18, %struct.tipc_msg** %10, align 8
  %19 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %20 = call i32 @msg_origport(%struct.tipc_msg* %19)
  %21 = and i32 %20, 1
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %15, align 8
  br label %23

23:                                               ; preds = %137, %4
  %24 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %25 = load %struct.iovec*, %struct.iovec** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.port*, %struct.port** %6, align 8
  %28 = getelementptr inbounds %struct.port, %struct.port* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.port*, %struct.port** %6, align 8
  %32 = getelementptr inbounds %struct.port, %struct.port* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = bitcast %struct.sk_buff** %12 to %struct.tipc_node**
  %38 = call i32 @msg_build(%struct.tipc_msg* %24, %struct.iovec* %25, i64 %26, i64 %30, i32 %36, %struct.tipc_node** %37)
  store i32 %38, i32* %14, align 4
  %39 = call i32 @read_lock_bh(i32* @tipc_net_lock)
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %15, align 8
  %42 = call %struct.tipc_node* @tipc_node_select(i64 %40, i64 %41)
  store %struct.tipc_node* %42, %struct.tipc_node** %13, align 8
  %43 = load %struct.tipc_node*, %struct.tipc_node** %13, align 8
  %44 = call i64 @likely(%struct.tipc_node* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %147

46:                                               ; preds = %23
  %47 = load %struct.tipc_node*, %struct.tipc_node** %13, align 8
  %48 = call i32 @tipc_node_lock(%struct.tipc_node* %47)
  %49 = load %struct.tipc_node*, %struct.tipc_node** %13, align 8
  %50 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %49, i32 0, i32 1
  %51 = load %struct.tipc_node**, %struct.tipc_node*** %50, align 8
  %52 = load i64, i64* %15, align 8
  %53 = getelementptr inbounds %struct.tipc_node*, %struct.tipc_node** %51, i64 %52
  %54 = load %struct.tipc_node*, %struct.tipc_node** %53, align 8
  %55 = bitcast %struct.tipc_node* %54 to %struct.link*
  store %struct.link* %55, %struct.link** %11, align 8
  %56 = load %struct.link*, %struct.link** %11, align 8
  %57 = bitcast %struct.link* %56 to %struct.tipc_node*
  %58 = call i64 @likely(%struct.tipc_node* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %144

60:                                               ; preds = %46
  %61 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %62 = bitcast %struct.sk_buff* %61 to %struct.tipc_node*
  %63 = call i64 @likely(%struct.tipc_node* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %89

65:                                               ; preds = %60
  %66 = load %struct.link*, %struct.link** %11, align 8
  %67 = bitcast %struct.link* %66 to %struct.tipc_node*
  %68 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %69 = bitcast %struct.sk_buff* %68 to %struct.tipc_node*
  %70 = load %struct.port*, %struct.port** %6, align 8
  %71 = getelementptr inbounds %struct.port, %struct.port* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = call i32 @link_send_buf_fast(%struct.tipc_node* %67, %struct.tipc_node* %69, i64* %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %65
  %80 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %81 = bitcast %struct.sk_buff* %80 to %struct.tipc_node*
  %82 = call i32 @buf_discard(%struct.tipc_node* %81)
  br label %83

83:                                               ; preds = %79, %65
  br label %84

84:                                               ; preds = %108, %95, %83
  %85 = load %struct.tipc_node*, %struct.tipc_node** %13, align 8
  %86 = call i32 @tipc_node_unlock(%struct.tipc_node* %85)
  %87 = call i32 @read_unlock_bh(i32* @tipc_net_lock)
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %5, align 4
  br label %168

89:                                               ; preds = %60
  %90 = load i32, i32* %14, align 4
  %91 = icmp slt i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %84

96:                                               ; preds = %89
  %97 = load %struct.link*, %struct.link** %11, align 8
  %98 = bitcast %struct.link* %97 to %struct.tipc_node*
  %99 = call i64 @link_congested(%struct.tipc_node* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %96
  %102 = load %struct.link*, %struct.link** %11, align 8
  %103 = getelementptr inbounds %struct.link, %struct.link* %102, i32 0, i32 0
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = call i32 @list_empty(i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %101, %96
  %109 = load %struct.link*, %struct.link** %11, align 8
  %110 = bitcast %struct.link* %109 to %struct.tipc_node*
  %111 = load %struct.port*, %struct.port** %6, align 8
  %112 = getelementptr inbounds %struct.port, %struct.port* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @link_schedule_port(%struct.tipc_node* %110, i32 %114, i32 %115)
  store i32 %116, i32* %14, align 4
  br label %84

117:                                              ; preds = %101
  %118 = load %struct.link*, %struct.link** %11, align 8
  %119 = bitcast %struct.link* %118 to %struct.tipc_node*
  %120 = call i64 @link_max_pkt(%struct.tipc_node* %119)
  %121 = load %struct.port*, %struct.port** %6, align 8
  %122 = getelementptr inbounds %struct.port, %struct.port* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i64 %120, i64* %123, align 8
  %124 = load %struct.tipc_node*, %struct.tipc_node** %13, align 8
  %125 = call i32 @tipc_node_unlock(%struct.tipc_node* %124)
  %126 = call i32 @read_unlock_bh(i32* @tipc_net_lock)
  %127 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %128 = call i64 @msg_hdr_sz(%struct.tipc_msg* %127)
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %128, %130
  %132 = load %struct.port*, %struct.port** %6, align 8
  %133 = getelementptr inbounds %struct.port, %struct.port* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp sle i64 %131, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %117
  br label %23

138:                                              ; preds = %117
  %139 = load %struct.port*, %struct.port** %6, align 8
  %140 = load %struct.iovec*, %struct.iovec** %7, align 8
  %141 = load i64, i64* %8, align 8
  %142 = load i64, i64* %9, align 8
  %143 = call i32 @link_send_sections_long(%struct.port* %139, %struct.iovec* %140, i64 %141, i64 %142)
  store i32 %143, i32* %5, align 4
  br label %168

144:                                              ; preds = %46
  %145 = load %struct.tipc_node*, %struct.tipc_node** %13, align 8
  %146 = call i32 @tipc_node_unlock(%struct.tipc_node* %145)
  br label %147

147:                                              ; preds = %144, %23
  %148 = call i32 @read_unlock_bh(i32* @tipc_net_lock)
  %149 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %150 = icmp ne %struct.sk_buff* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %153 = bitcast %struct.sk_buff* %152 to %struct.tipc_node*
  %154 = load i32, i32* @TIPC_ERR_NO_NODE, align 4
  %155 = call i32 @tipc_reject_msg(%struct.tipc_node* %153, i32 %154)
  store i32 %155, i32* %5, align 4
  br label %168

156:                                              ; preds = %147
  %157 = load i32, i32* %14, align 4
  %158 = icmp sge i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %156
  %160 = load %struct.port*, %struct.port** %6, align 8
  %161 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %162 = load %struct.iovec*, %struct.iovec** %7, align 8
  %163 = load i64, i64* %8, align 8
  %164 = load i32, i32* @TIPC_ERR_NO_NODE, align 4
  %165 = call i32 @tipc_port_reject_sections(%struct.port* %160, %struct.tipc_msg* %161, %struct.iovec* %162, i64 %163, i32 %164)
  store i32 %165, i32* %5, align 4
  br label %168

166:                                              ; preds = %156
  %167 = load i32, i32* %14, align 4
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %166, %159, %151, %138, %84
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local i32 @msg_origport(%struct.tipc_msg*) #1

declare dso_local i32 @msg_build(%struct.tipc_msg*, %struct.iovec*, i64, i64, i32, %struct.tipc_node**) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.tipc_node* @tipc_node_select(i64, i64) #1

declare dso_local i64 @likely(%struct.tipc_node*) #1

declare dso_local i32 @tipc_node_lock(%struct.tipc_node*) #1

declare dso_local i32 @link_send_buf_fast(%struct.tipc_node*, %struct.tipc_node*, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @buf_discard(%struct.tipc_node*) #1

declare dso_local i32 @tipc_node_unlock(%struct.tipc_node*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i64 @link_congested(%struct.tipc_node*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @link_schedule_port(%struct.tipc_node*, i32, i32) #1

declare dso_local i64 @link_max_pkt(%struct.tipc_node*) #1

declare dso_local i64 @msg_hdr_sz(%struct.tipc_msg*) #1

declare dso_local i32 @link_send_sections_long(%struct.port*, %struct.iovec*, i64, i64) #1

declare dso_local i32 @tipc_reject_msg(%struct.tipc_node*, i32) #1

declare dso_local i32 @tipc_port_reject_sections(%struct.port*, %struct.tipc_msg*, %struct.iovec*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
