; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_route.c_route4_classify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_route.c_route4_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route4_filter = type { i64, i32, %struct.route4_filter*, %struct.tcf_result }
%struct.tcf_result = type { i64, i64 }
%struct.sk_buff = type { i32 }
%struct.tcf_proto = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.route4_head = type { %struct.route4_bucket**, %struct.TYPE_5__* }
%struct.route4_bucket = type { %struct.route4_filter** }
%struct.TYPE_5__ = type { i64, i32, %struct.route4_filter* }
%struct.dst_entry = type { i64 }
%struct.rtable = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ROUTE4_FAILURE = common dso_local global %struct.route4_filter* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)* @route4_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @route4_classify(%struct.sk_buff* %0, %struct.tcf_proto* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca %struct.route4_head*, align 8
  %9 = alloca %struct.dst_entry*, align 8
  %10 = alloca %struct.route4_bucket*, align 8
  %11 = alloca %struct.route4_filter*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %16 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %17 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.route4_head*
  store %struct.route4_head* %19, %struct.route4_head** %8, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %20)
  store %struct.dst_entry* %21, %struct.dst_entry** %9, align 8
  %22 = icmp eq %struct.dst_entry* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %171

24:                                               ; preds = %3
  %25 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %26 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  %28 = load %struct.route4_head*, %struct.route4_head** %8, align 8
  %29 = icmp eq %struct.route4_head* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %172

31:                                               ; preds = %24
  %32 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %33 = bitcast %struct.dst_entry* %32 to %struct.rtable*
  %34 = getelementptr inbounds %struct.rtable, %struct.rtable* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %14, align 4
  %37 = load i64, i64* %12, align 8
  %38 = load i32, i32* %14, align 4
  %39 = call i64 @route4_fastmap_hash(i64 %37, i32 %38)
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load %struct.route4_head*, %struct.route4_head** %8, align 8
  %42 = getelementptr inbounds %struct.route4_head, %struct.route4_head* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i64, i64* %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %40, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %31
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.route4_head*, %struct.route4_head** %8, align 8
  %52 = getelementptr inbounds %struct.route4_head, %struct.route4_head* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i64, i64* %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %50, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %49
  %60 = load %struct.route4_head*, %struct.route4_head** %8, align 8
  %61 = getelementptr inbounds %struct.route4_head, %struct.route4_head* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i64, i64* %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load %struct.route4_filter*, %struct.route4_filter** %65, align 8
  store %struct.route4_filter* %66, %struct.route4_filter** %11, align 8
  %67 = icmp ne %struct.route4_filter* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %59
  %69 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %70 = load %struct.route4_filter*, %struct.route4_filter** @ROUTE4_FAILURE, align 8
  %71 = icmp eq %struct.route4_filter* %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %171

73:                                               ; preds = %68
  %74 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %75 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %76 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %75, i32 0, i32 3
  %77 = bitcast %struct.tcf_result* %74 to i8*
  %78 = bitcast %struct.tcf_result* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 16, i1 false)
  store i32 0, i32* %4, align 4
  br label %196

79:                                               ; preds = %59, %49, %31
  %80 = load i64, i64* %12, align 8
  %81 = call i64 @route4_hash_to(i64 %80)
  store i64 %81, i64* %13, align 8
  br label %82

82:                                               ; preds = %158, %79
  %83 = load %struct.route4_head*, %struct.route4_head** %8, align 8
  %84 = getelementptr inbounds %struct.route4_head, %struct.route4_head* %83, i32 0, i32 0
  %85 = load %struct.route4_bucket**, %struct.route4_bucket*** %84, align 8
  %86 = load i64, i64* %13, align 8
  %87 = getelementptr inbounds %struct.route4_bucket*, %struct.route4_bucket** %85, i64 %86
  %88 = load %struct.route4_bucket*, %struct.route4_bucket** %87, align 8
  store %struct.route4_bucket* %88, %struct.route4_bucket** %10, align 8
  %89 = icmp ne %struct.route4_bucket* %88, null
  br i1 %89, label %90, label %155

90:                                               ; preds = %82
  %91 = load %struct.route4_bucket*, %struct.route4_bucket** %10, align 8
  %92 = getelementptr inbounds %struct.route4_bucket, %struct.route4_bucket* %91, i32 0, i32 0
  %93 = load %struct.route4_filter**, %struct.route4_filter*** %92, align 8
  %94 = load i64, i64* %12, align 8
  %95 = call i64 @route4_hash_from(i64 %94)
  %96 = getelementptr inbounds %struct.route4_filter*, %struct.route4_filter** %93, i64 %95
  %97 = load %struct.route4_filter*, %struct.route4_filter** %96, align 8
  store %struct.route4_filter* %97, %struct.route4_filter** %11, align 8
  br label %98

98:                                               ; preds = %110, %90
  %99 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %100 = icmp ne %struct.route4_filter* %99, null
  br i1 %100, label %101, label %114

101:                                              ; preds = %98
  %102 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %103 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %12, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = call i32 (...) @ROUTE4_APPLY_RESULT()
  br label %109

109:                                              ; preds = %107, %101
  br label %110

110:                                              ; preds = %109
  %111 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %112 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %111, i32 0, i32 2
  %113 = load %struct.route4_filter*, %struct.route4_filter** %112, align 8
  store %struct.route4_filter* %113, %struct.route4_filter** %11, align 8
  br label %98

114:                                              ; preds = %98
  %115 = load %struct.route4_bucket*, %struct.route4_bucket** %10, align 8
  %116 = getelementptr inbounds %struct.route4_bucket, %struct.route4_bucket* %115, i32 0, i32 0
  %117 = load %struct.route4_filter**, %struct.route4_filter*** %116, align 8
  %118 = load i32, i32* %14, align 4
  %119 = call i64 @route4_hash_iif(i32 %118)
  %120 = getelementptr inbounds %struct.route4_filter*, %struct.route4_filter** %117, i64 %119
  %121 = load %struct.route4_filter*, %struct.route4_filter** %120, align 8
  store %struct.route4_filter* %121, %struct.route4_filter** %11, align 8
  br label %122

122:                                              ; preds = %134, %114
  %123 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %124 = icmp ne %struct.route4_filter* %123, null
  br i1 %124, label %125, label %138

125:                                              ; preds = %122
  %126 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %127 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %14, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = call i32 (...) @ROUTE4_APPLY_RESULT()
  br label %133

133:                                              ; preds = %131, %125
  br label %134

134:                                              ; preds = %133
  %135 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %136 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %135, i32 0, i32 2
  %137 = load %struct.route4_filter*, %struct.route4_filter** %136, align 8
  store %struct.route4_filter* %137, %struct.route4_filter** %11, align 8
  br label %122

138:                                              ; preds = %122
  %139 = load %struct.route4_bucket*, %struct.route4_bucket** %10, align 8
  %140 = getelementptr inbounds %struct.route4_bucket, %struct.route4_bucket* %139, i32 0, i32 0
  %141 = load %struct.route4_filter**, %struct.route4_filter*** %140, align 8
  %142 = call i64 (...) @route4_hash_wild()
  %143 = getelementptr inbounds %struct.route4_filter*, %struct.route4_filter** %141, i64 %142
  %144 = load %struct.route4_filter*, %struct.route4_filter** %143, align 8
  store %struct.route4_filter* %144, %struct.route4_filter** %11, align 8
  br label %145

145:                                              ; preds = %150, %138
  %146 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %147 = icmp ne %struct.route4_filter* %146, null
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = call i32 (...) @ROUTE4_APPLY_RESULT()
  br label %150

150:                                              ; preds = %148
  %151 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %152 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %151, i32 0, i32 2
  %153 = load %struct.route4_filter*, %struct.route4_filter** %152, align 8
  store %struct.route4_filter* %153, %struct.route4_filter** %11, align 8
  br label %145

154:                                              ; preds = %145
  br label %155

155:                                              ; preds = %154, %82
  %156 = load i64, i64* %13, align 8
  %157 = icmp ult i64 %156, 256
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  store i64 256, i64* %13, align 8
  %159 = load i64, i64* %12, align 8
  %160 = and i64 %159, -65536
  store i64 %160, i64* %12, align 8
  br label %82

161:                                              ; preds = %155
  %162 = load i32, i32* %15, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %161
  %165 = load %struct.route4_head*, %struct.route4_head** %8, align 8
  %166 = load i64, i64* %12, align 8
  %167 = load i32, i32* %14, align 4
  %168 = load %struct.route4_filter*, %struct.route4_filter** @ROUTE4_FAILURE, align 8
  %169 = call i32 @route4_set_fastmap(%struct.route4_head* %165, i64 %166, i32 %167, %struct.route4_filter* %168)
  br label %170

170:                                              ; preds = %164, %161
  br label %171

171:                                              ; preds = %170, %72, %23
  store i32 -1, i32* %4, align 4
  br label %196

172:                                              ; preds = %30
  %173 = load i64, i64* %12, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %195

175:                                              ; preds = %172
  %176 = load i64, i64* %12, align 8
  %177 = call i64 @TC_H_MAJ(i64 %176)
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %189, label %179

179:                                              ; preds = %175
  %180 = load i64, i64* %12, align 8
  %181 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %182 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %181, i32 0, i32 0
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = xor i64 %180, %185
  %187 = call i64 @TC_H_MAJ(i64 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %179, %175
  %190 = load i64, i64* %12, align 8
  %191 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %192 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %191, i32 0, i32 0
  store i64 %190, i64* %192, align 8
  %193 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %194 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %193, i32 0, i32 1
  store i64 0, i64* %194, align 8
  store i32 0, i32* %4, align 4
  br label %196

195:                                              ; preds = %179, %172
  store i32 -1, i32* %4, align 4
  br label %196

196:                                              ; preds = %195, %189, %171, %73
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i64 @route4_fastmap_hash(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @route4_hash_to(i64) #1

declare dso_local i64 @route4_hash_from(i64) #1

declare dso_local i32 @ROUTE4_APPLY_RESULT(...) #1

declare dso_local i64 @route4_hash_iif(i32) #1

declare dso_local i64 @route4_hash_wild(...) #1

declare dso_local i32 @route4_set_fastmap(%struct.route4_head*, i64, i32, %struct.route4_filter*) #1

declare dso_local i64 @TC_H_MAJ(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
