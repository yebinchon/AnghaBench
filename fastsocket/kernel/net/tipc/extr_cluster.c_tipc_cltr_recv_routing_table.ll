; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_recv_routing_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_recv_routing_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32* }
%struct.tipc_msg = type { i32 }
%struct.cluster = type { %struct.tipc_node**, i32 }
%struct.tipc_node = type { i32 }

@tipc_own_addr = common dso_local global i64 0, align 8
@LOWEST_SLAVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Illegal routing manager message received\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_cltr_recv_routing_table(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.tipc_msg*, align 8
  %4 = alloca %struct.cluster*, align 8
  %5 = alloca %struct.tipc_node*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %17 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %16)
  store %struct.tipc_msg* %17, %struct.tipc_msg** %3, align 8
  %18 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %19 = call i64 @msg_remote_node(%struct.tipc_msg* %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call %struct.cluster* @tipc_cltr_find(i64 %20)
  store %struct.cluster* %21, %struct.cluster** %4, align 8
  %22 = load %struct.cluster*, %struct.cluster** %4, align 8
  %23 = icmp ne %struct.cluster* %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %1
  %25 = load i64, i64* %9, align 8
  %26 = call %struct.cluster* @tipc_cltr_create(i64 %25)
  store %struct.cluster* %26, %struct.cluster** %4, align 8
  %27 = load %struct.cluster*, %struct.cluster** %4, align 8
  %28 = icmp ne %struct.cluster* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %31 = call i32 @buf_discard(%struct.sk_buff* %30)
  br label %260

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %38 = call i32 @msg_hdr_sz(%struct.tipc_msg* %37)
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32* %40, i32** %6, align 8
  %41 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %42 = call i32 @msg_size(%struct.tipc_msg* %41)
  %43 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %44 = call i32 @msg_hdr_sz(%struct.tipc_msg* %43)
  %45 = sub nsw i32 %42, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %7, align 8
  %47 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %48 = call i64 @msg_prevnode(%struct.tipc_msg* %47)
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @tipc_zone(i64 %49)
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i64 @tipc_cluster(i64 %51)
  store i64 %52, i64* %11, align 8
  %53 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %54 = call i32 @msg_type(%struct.tipc_msg* %53)
  switch i32 %54, label %255 [
    i32 131, label %55
    i32 132, label %59
    i32 128, label %99
    i32 130, label %153
    i32 129, label %207
  ]

55:                                               ; preds = %33
  %56 = load i64, i64* @tipc_own_addr, align 8
  %57 = call i32 @is_slave(i64 %56)
  %58 = call i32 @assert(i32 %57)
  br label %59

59:                                               ; preds = %33, %55
  store i64 1, i64* %12, align 8
  br label %60

60:                                               ; preds = %95, %59
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %98

64:                                               ; preds = %60
  %65 = load i32*, i32** %6, align 8
  %66 = load i64, i64* %12, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %64
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i64 @tipc_addr(i64 %71, i64 %72, i64 %73)
  store i64 %74, i64* %13, align 8
  %75 = load %struct.cluster*, %struct.cluster** %4, align 8
  %76 = getelementptr inbounds %struct.cluster, %struct.cluster* %75, i32 0, i32 0
  %77 = load %struct.tipc_node**, %struct.tipc_node*** %76, align 8
  %78 = load i64, i64* %12, align 8
  %79 = getelementptr inbounds %struct.tipc_node*, %struct.tipc_node** %77, i64 %78
  %80 = load %struct.tipc_node*, %struct.tipc_node** %79, align 8
  store %struct.tipc_node* %80, %struct.tipc_node** %5, align 8
  %81 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %82 = icmp ne %struct.tipc_node* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %70
  %84 = load i64, i64* %13, align 8
  %85 = call %struct.tipc_node* @tipc_node_create(i64 %84)
  store %struct.tipc_node* %85, %struct.tipc_node** %5, align 8
  br label %86

86:                                               ; preds = %83, %70
  %87 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %88 = icmp ne %struct.tipc_node* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @tipc_node_add_router(%struct.tipc_node* %90, i64 %91)
  br label %93

93:                                               ; preds = %89, %86
  br label %94

94:                                               ; preds = %93, %64
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %12, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %12, align 8
  br label %60

98:                                               ; preds = %60
  br label %257

99:                                               ; preds = %33
  %100 = load i64, i64* @tipc_own_addr, align 8
  %101 = call i32 @is_slave(i64 %100)
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load %struct.cluster*, %struct.cluster** %4, align 8
  %107 = getelementptr inbounds %struct.cluster, %struct.cluster* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @in_own_cluster(i32 %108)
  %110 = call i32 @assert(i32 %109)
  store i64 1, i64* %12, align 8
  br label %111

111:                                              ; preds = %149, %99
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* %7, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %152

115:                                              ; preds = %111
  %116 = load i32*, i32** %6, align 8
  %117 = load i64, i64* %12, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %148

121:                                              ; preds = %115
  %122 = load i64, i64* %12, align 8
  %123 = load i64, i64* @LOWEST_SLAVE, align 8
  %124 = add i64 %122, %123
  store i64 %124, i64* %14, align 8
  %125 = load i64, i64* %10, align 8
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* %14, align 8
  %128 = call i64 @tipc_addr(i64 %125, i64 %126, i64 %127)
  store i64 %128, i64* %15, align 8
  %129 = load %struct.cluster*, %struct.cluster** %4, align 8
  %130 = getelementptr inbounds %struct.cluster, %struct.cluster* %129, i32 0, i32 0
  %131 = load %struct.tipc_node**, %struct.tipc_node*** %130, align 8
  %132 = load i64, i64* %14, align 8
  %133 = getelementptr inbounds %struct.tipc_node*, %struct.tipc_node** %131, i64 %132
  %134 = load %struct.tipc_node*, %struct.tipc_node** %133, align 8
  store %struct.tipc_node* %134, %struct.tipc_node** %5, align 8
  %135 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %136 = icmp ne %struct.tipc_node* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %121
  %138 = load i64, i64* %15, align 8
  %139 = call %struct.tipc_node* @tipc_node_create(i64 %138)
  store %struct.tipc_node* %139, %struct.tipc_node** %5, align 8
  br label %140

140:                                              ; preds = %137, %121
  %141 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %142 = icmp ne %struct.tipc_node* %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %145 = load i64, i64* %8, align 8
  %146 = call i32 @tipc_node_add_router(%struct.tipc_node* %144, i64 %145)
  br label %147

147:                                              ; preds = %143, %140
  br label %148

148:                                              ; preds = %147, %115
  br label %149

149:                                              ; preds = %148
  %150 = load i64, i64* %12, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %12, align 8
  br label %111

152:                                              ; preds = %111
  br label %257

153:                                              ; preds = %33
  %154 = load i64, i64* @tipc_own_addr, align 8
  %155 = call i32 @is_slave(i64 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %171, label %157

157:                                              ; preds = %153
  %158 = load %struct.cluster*, %struct.cluster** %4, align 8
  %159 = getelementptr inbounds %struct.cluster, %struct.cluster* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @in_own_cluster(i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %157
  %164 = load i64, i64* %9, align 8
  %165 = call i32 @is_slave(i64 %164)
  %166 = icmp ne i32 %165, 0
  br label %167

167:                                              ; preds = %163, %157
  %168 = phi i1 [ true, %157 ], [ %166, %163 ]
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  br label %186

171:                                              ; preds = %153
  %172 = load %struct.cluster*, %struct.cluster** %4, align 8
  %173 = getelementptr inbounds %struct.cluster, %struct.cluster* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @in_own_cluster(i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %171
  %178 = load i64, i64* %9, align 8
  %179 = call i32 @is_slave(i64 %178)
  %180 = icmp ne i32 %179, 0
  %181 = xor i1 %180, true
  br label %182

182:                                              ; preds = %177, %171
  %183 = phi i1 [ false, %171 ], [ %181, %177 ]
  %184 = zext i1 %183 to i32
  %185 = call i32 @assert(i32 %184)
  br label %186

186:                                              ; preds = %182, %167
  %187 = load %struct.cluster*, %struct.cluster** %4, align 8
  %188 = getelementptr inbounds %struct.cluster, %struct.cluster* %187, i32 0, i32 0
  %189 = load %struct.tipc_node**, %struct.tipc_node*** %188, align 8
  %190 = load i64, i64* %9, align 8
  %191 = call i64 @tipc_node(i64 %190)
  %192 = getelementptr inbounds %struct.tipc_node*, %struct.tipc_node** %189, i64 %191
  %193 = load %struct.tipc_node*, %struct.tipc_node** %192, align 8
  store %struct.tipc_node* %193, %struct.tipc_node** %5, align 8
  %194 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %195 = icmp ne %struct.tipc_node* %194, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %186
  %197 = load i64, i64* %9, align 8
  %198 = call %struct.tipc_node* @tipc_node_create(i64 %197)
  store %struct.tipc_node* %198, %struct.tipc_node** %5, align 8
  br label %199

199:                                              ; preds = %196, %186
  %200 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %201 = icmp ne %struct.tipc_node* %200, null
  br i1 %201, label %202, label %206

202:                                              ; preds = %199
  %203 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %204 = load i64, i64* %8, align 8
  %205 = call i32 @tipc_node_add_router(%struct.tipc_node* %203, i64 %204)
  br label %206

206:                                              ; preds = %202, %199
  br label %257

207:                                              ; preds = %33
  %208 = load i64, i64* @tipc_own_addr, align 8
  %209 = call i32 @is_slave(i64 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %225, label %211

211:                                              ; preds = %207
  %212 = load %struct.cluster*, %struct.cluster** %4, align 8
  %213 = getelementptr inbounds %struct.cluster, %struct.cluster* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @in_own_cluster(i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %211
  %218 = load i64, i64* %9, align 8
  %219 = call i32 @is_slave(i64 %218)
  %220 = icmp ne i32 %219, 0
  br label %221

221:                                              ; preds = %217, %211
  %222 = phi i1 [ true, %211 ], [ %220, %217 ]
  %223 = zext i1 %222 to i32
  %224 = call i32 @assert(i32 %223)
  br label %240

225:                                              ; preds = %207
  %226 = load %struct.cluster*, %struct.cluster** %4, align 8
  %227 = getelementptr inbounds %struct.cluster, %struct.cluster* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @in_own_cluster(i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %225
  %232 = load i64, i64* %9, align 8
  %233 = call i32 @is_slave(i64 %232)
  %234 = icmp ne i32 %233, 0
  %235 = xor i1 %234, true
  br label %236

236:                                              ; preds = %231, %225
  %237 = phi i1 [ false, %225 ], [ %235, %231 ]
  %238 = zext i1 %237 to i32
  %239 = call i32 @assert(i32 %238)
  br label %240

240:                                              ; preds = %236, %221
  %241 = load %struct.cluster*, %struct.cluster** %4, align 8
  %242 = getelementptr inbounds %struct.cluster, %struct.cluster* %241, i32 0, i32 0
  %243 = load %struct.tipc_node**, %struct.tipc_node*** %242, align 8
  %244 = load i64, i64* %9, align 8
  %245 = call i64 @tipc_node(i64 %244)
  %246 = getelementptr inbounds %struct.tipc_node*, %struct.tipc_node** %243, i64 %245
  %247 = load %struct.tipc_node*, %struct.tipc_node** %246, align 8
  store %struct.tipc_node* %247, %struct.tipc_node** %5, align 8
  %248 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %249 = icmp ne %struct.tipc_node* %248, null
  br i1 %249, label %250, label %254

250:                                              ; preds = %240
  %251 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %252 = load i64, i64* %8, align 8
  %253 = call i32 @tipc_node_remove_router(%struct.tipc_node* %251, i64 %252)
  br label %254

254:                                              ; preds = %250, %240
  br label %257

255:                                              ; preds = %33
  %256 = call i32 @assert(i32 0)
  br label %257

257:                                              ; preds = %255, %254, %206, %152, %98
  %258 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %259 = call i32 @buf_discard(%struct.sk_buff* %258)
  br label %260

260:                                              ; preds = %257, %29
  ret void
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @msg_remote_node(%struct.tipc_msg*) #1

declare dso_local %struct.cluster* @tipc_cltr_find(i64) #1

declare dso_local %struct.cluster* @tipc_cltr_create(i64) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

declare dso_local i32 @msg_hdr_sz(%struct.tipc_msg*) #1

declare dso_local i32 @msg_size(%struct.tipc_msg*) #1

declare dso_local i64 @msg_prevnode(%struct.tipc_msg*) #1

declare dso_local i64 @tipc_zone(i64) #1

declare dso_local i64 @tipc_cluster(i64) #1

declare dso_local i32 @msg_type(%struct.tipc_msg*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_slave(i64) #1

declare dso_local i64 @tipc_addr(i64, i64, i64) #1

declare dso_local %struct.tipc_node* @tipc_node_create(i64) #1

declare dso_local i32 @tipc_node_add_router(%struct.tipc_node*, i64) #1

declare dso_local i32 @in_own_cluster(i32) #1

declare dso_local i64 @tipc_node(i64) #1

declare dso_local i32 @tipc_node_remove_router(%struct.tipc_node*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
