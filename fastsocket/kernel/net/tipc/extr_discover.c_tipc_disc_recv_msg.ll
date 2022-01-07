; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_discover.c_tipc_disc_recv_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_discover.c_tipc_disc_recv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.bearer = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.tipc_media_addr }
%struct.tipc_media_addr = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.sk_buff*, %struct.TYPE_4__*, %struct.tipc_media_addr*)* }
%struct.link = type { i64, i32, i32, %struct.tipc_media_addr }
%struct.tipc_msg = type { i32 }
%struct.tipc_node = type { i32, %struct.link** }

@.str = private unnamed_addr constant [6 x i8] c"RECV:\00", align 1
@tipc_net_id = common dso_local global i64 0, align 8
@tipc_own_addr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c" in own cluster\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"creating link\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Resetting link <%s>, peer interface address changed\0A\00", align 1
@WORKING_WORKING = common dso_local global i64 0, align 8
@DSC_RESP_MSG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"SEND:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_disc_recv_msg(%struct.sk_buff* %0, %struct.bearer* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.bearer*, align 8
  %5 = alloca %struct.link*, align 8
  %6 = alloca %struct.tipc_media_addr, align 4
  %7 = alloca %struct.tipc_msg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.tipc_media_addr*, align 8
  %14 = alloca %struct.tipc_node*, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.bearer* %1, %struct.bearer** %4, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %16)
  store %struct.tipc_msg* %17, %struct.tipc_msg** %7, align 8
  %18 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %19 = call i64 @msg_dest_domain(%struct.tipc_msg* %18)
  store i64 %19, i64* %8, align 8
  %20 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %21 = call i64 @msg_prevnode(%struct.tipc_msg* %20)
  store i64 %21, i64* %9, align 8
  %22 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %23 = call i64 @msg_bc_netid(%struct.tipc_msg* %22)
  store i64 %23, i64* %10, align 8
  %24 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %25 = call i64 @msg_type(%struct.tipc_msg* %24)
  store i64 %25, i64* %11, align 8
  %26 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %27 = call i32 @msg_get_media_addr(%struct.tipc_msg* %26, %struct.tipc_media_addr* %6)
  %28 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %29 = call i32 @msg_dbg(%struct.tipc_msg* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = call i32 @buf_discard(%struct.sk_buff* %30)
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @tipc_net_id, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %199

36:                                               ; preds = %2
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @tipc_addr_domain_valid(i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %199

41:                                               ; preds = %36
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @tipc_addr_node_valid(i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %199

46:                                               ; preds = %41
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @tipc_own_addr, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load %struct.bearer*, %struct.bearer** %4, align 8
  %52 = getelementptr inbounds %struct.bearer, %struct.bearer* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i64 @memcmp(%struct.tipc_media_addr* %6, %struct.tipc_media_addr* %53, i32 4)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.bearer*, %struct.bearer** %4, align 8
  %58 = load i64, i64* @tipc_own_addr, align 8
  %59 = call i32 @disc_dupl_alert(%struct.bearer* %57, i64 %58, %struct.tipc_media_addr* %6)
  br label %60

60:                                               ; preds = %56, %50
  br label %199

61:                                               ; preds = %46
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* @tipc_own_addr, align 8
  %64 = call i32 @in_scope(i64 %62, i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %199

67:                                               ; preds = %61
  %68 = load i64, i64* @tipc_own_addr, align 8
  %69 = call i64 @is_slave(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i64, i64* %9, align 8
  %73 = call i64 @is_slave(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %199

76:                                               ; preds = %71, %67
  %77 = load i64, i64* %9, align 8
  %78 = call i64 @is_slave(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i64, i64* %9, align 8
  %82 = call i64 @in_own_cluster(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  br label %199

85:                                               ; preds = %80, %76
  %86 = load i64, i64* %9, align 8
  %87 = call i64 @in_own_cluster(i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %199

89:                                               ; preds = %85
  %90 = load i64, i64* %9, align 8
  %91 = call %struct.tipc_node* @tipc_node_find(i64 %90)
  store %struct.tipc_node* %91, %struct.tipc_node** %14, align 8
  %92 = call i32 @dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %94 = icmp eq %struct.tipc_node* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load i64, i64* %9, align 8
  %97 = call %struct.tipc_node* @tipc_node_create(i64 %96)
  store %struct.tipc_node* %97, %struct.tipc_node** %14, align 8
  %98 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %99 = icmp ne %struct.tipc_node* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  br label %199

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %89
  %103 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %104 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %103, i32 0, i32 0
  %105 = call i32 @spin_lock_bh(i32* %104)
  %106 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %107 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %106, i32 0, i32 1
  %108 = load %struct.link**, %struct.link*** %107, align 8
  %109 = load %struct.bearer*, %struct.bearer** %4, align 8
  %110 = getelementptr inbounds %struct.bearer, %struct.bearer* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.link*, %struct.link** %108, i64 %111
  %113 = load %struct.link*, %struct.link** %112, align 8
  store %struct.link* %113, %struct.link** %5, align 8
  %114 = load %struct.link*, %struct.link** %5, align 8
  %115 = icmp ne %struct.link* %114, null
  br i1 %115, label %128, label %116

116:                                              ; preds = %102
  %117 = call i32 @dbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %118 = load %struct.bearer*, %struct.bearer** %4, align 8
  %119 = load i64, i64* %9, align 8
  %120 = call %struct.link* @tipc_link_create(%struct.bearer* %118, i64 %119, %struct.tipc_media_addr* %6)
  store %struct.link* %120, %struct.link** %5, align 8
  %121 = load %struct.link*, %struct.link** %5, align 8
  %122 = icmp ne %struct.link* %121, null
  br i1 %122, label %127, label %123

123:                                              ; preds = %116
  %124 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %125 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %124, i32 0, i32 0
  %126 = call i32 @spin_unlock_bh(i32* %125)
  br label %199

127:                                              ; preds = %116
  br label %128

128:                                              ; preds = %127, %102
  %129 = load %struct.link*, %struct.link** %5, align 8
  %130 = getelementptr inbounds %struct.link, %struct.link* %129, i32 0, i32 3
  store %struct.tipc_media_addr* %130, %struct.tipc_media_addr** %13, align 8
  %131 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %13, align 8
  %132 = call i64 @memcmp(%struct.tipc_media_addr* %131, %struct.tipc_media_addr* %6, i32 4)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %159

134:                                              ; preds = %128
  %135 = load %struct.link*, %struct.link** %5, align 8
  %136 = call i64 @tipc_link_is_up(%struct.link* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %134
  %139 = load %struct.link*, %struct.link** %5, align 8
  %140 = getelementptr inbounds %struct.link, %struct.link* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %150, label %143

143:                                              ; preds = %138, %134
  %144 = load %struct.bearer*, %struct.bearer** %4, align 8
  %145 = load i64, i64* %9, align 8
  %146 = call i32 @disc_dupl_alert(%struct.bearer* %144, i64 %145, %struct.tipc_media_addr* %6)
  %147 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %148 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %147, i32 0, i32 0
  %149 = call i32 @spin_unlock_bh(i32* %148)
  br label %199

150:                                              ; preds = %138
  %151 = load %struct.link*, %struct.link** %5, align 8
  %152 = getelementptr inbounds %struct.link, %struct.link* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %153)
  %155 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %13, align 8
  %156 = call i32 @memcpy(%struct.tipc_media_addr* %155, %struct.tipc_media_addr* %6, i32 4)
  %157 = load %struct.link*, %struct.link** %5, align 8
  %158 = call i32 @tipc_link_reset(%struct.link* %157)
  br label %159

159:                                              ; preds = %150, %128
  %160 = load %struct.link*, %struct.link** %5, align 8
  %161 = getelementptr inbounds %struct.link, %struct.link* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @WORKING_WORKING, align 8
  %164 = icmp eq i64 %162, %163
  %165 = zext i1 %164 to i32
  store i32 %165, i32* %15, align 4
  %166 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %167 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %166, i32 0, i32 0
  %168 = call i32 @spin_unlock_bh(i32* %167)
  %169 = load i64, i64* %11, align 8
  %170 = load i64, i64* @DSC_RESP_MSG, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %175, label %172

172:                                              ; preds = %159
  %173 = load i32, i32* %15, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %172, %159
  br label %199

176:                                              ; preds = %172
  %177 = load i64, i64* @DSC_RESP_MSG, align 8
  %178 = load i64, i64* %9, align 8
  %179 = load %struct.bearer*, %struct.bearer** %4, align 8
  %180 = call %struct.sk_buff* @tipc_disc_init_msg(i64 %177, i32 1, i64 %178, %struct.bearer* %179)
  store %struct.sk_buff* %180, %struct.sk_buff** %12, align 8
  %181 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %182 = icmp ne %struct.sk_buff* %181, null
  br i1 %182, label %183, label %198

183:                                              ; preds = %176
  %184 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %185 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %184)
  %186 = call i32 @msg_dbg(%struct.tipc_msg* %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %187 = load %struct.bearer*, %struct.bearer** %4, align 8
  %188 = getelementptr inbounds %struct.bearer, %struct.bearer* %187, i32 0, i32 2
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = load i32 (%struct.sk_buff*, %struct.TYPE_4__*, %struct.tipc_media_addr*)*, i32 (%struct.sk_buff*, %struct.TYPE_4__*, %struct.tipc_media_addr*)** %190, align 8
  %192 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %193 = load %struct.bearer*, %struct.bearer** %4, align 8
  %194 = getelementptr inbounds %struct.bearer, %struct.bearer* %193, i32 0, i32 1
  %195 = call i32 %191(%struct.sk_buff* %192, %struct.TYPE_4__* %194, %struct.tipc_media_addr* %6)
  %196 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %197 = call i32 @buf_discard(%struct.sk_buff* %196)
  br label %198

198:                                              ; preds = %183, %176
  br label %199

199:                                              ; preds = %35, %40, %45, %60, %66, %75, %84, %100, %123, %143, %175, %198, %85
  ret void
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @msg_dest_domain(%struct.tipc_msg*) #1

declare dso_local i64 @msg_prevnode(%struct.tipc_msg*) #1

declare dso_local i64 @msg_bc_netid(%struct.tipc_msg*) #1

declare dso_local i64 @msg_type(%struct.tipc_msg*) #1

declare dso_local i32 @msg_get_media_addr(%struct.tipc_msg*, %struct.tipc_media_addr*) #1

declare dso_local i32 @msg_dbg(%struct.tipc_msg*, i8*) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

declare dso_local i32 @tipc_addr_domain_valid(i64) #1

declare dso_local i32 @tipc_addr_node_valid(i64) #1

declare dso_local i64 @memcmp(%struct.tipc_media_addr*, %struct.tipc_media_addr*, i32) #1

declare dso_local i32 @disc_dupl_alert(%struct.bearer*, i64, %struct.tipc_media_addr*) #1

declare dso_local i32 @in_scope(i64, i64) #1

declare dso_local i64 @is_slave(i64) #1

declare dso_local i64 @in_own_cluster(i64) #1

declare dso_local %struct.tipc_node* @tipc_node_find(i64) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local %struct.tipc_node* @tipc_node_create(i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.link* @tipc_link_create(%struct.bearer*, i64, %struct.tipc_media_addr*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @tipc_link_is_up(%struct.link*) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @memcpy(%struct.tipc_media_addr*, %struct.tipc_media_addr*, i32) #1

declare dso_local i32 @tipc_link_reset(%struct.link*) #1

declare dso_local %struct.sk_buff* @tipc_disc_init_msg(i64, i32, i64, %struct.bearer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
