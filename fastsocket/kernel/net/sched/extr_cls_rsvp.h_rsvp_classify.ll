; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_rsvp.h_rsvp_classify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_rsvp.h_rsvp_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_proto = type { i64 }
%struct.tcf_result = type { i64 }
%struct.rsvp_session = type { i64*, i64, i64, %struct.rsvp_filter**, %struct.TYPE_3__, %struct.rsvp_session* }
%struct.rsvp_filter = type { i64*, i64, %struct.tcf_result, %struct.rsvp_filter*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.iphdr = type { i64, i64, i64, i64, i32, i32 }
%struct.rsvp_head = type { %struct.rsvp_session** }

@IP_MF = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4
@RSVP_DST_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)* @rsvp_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsvp_classify(%struct.sk_buff* %0, %struct.tcf_proto* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca %struct.rsvp_session**, align 8
  %9 = alloca %struct.rsvp_session*, align 8
  %10 = alloca %struct.rsvp_filter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %19 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %20 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.rsvp_head*
  %23 = getelementptr inbounds %struct.rsvp_head, %struct.rsvp_head* %22, i32 0, i32 0
  %24 = load %struct.rsvp_session**, %struct.rsvp_session*** %23, align 8
  store %struct.rsvp_session** %24, %struct.rsvp_session*** %8, align 8
  store i64 0, i64* %16, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %25)
  store %struct.iphdr* %26, %struct.iphdr** %18, align 8
  br label %27

27:                                               ; preds = %178, %3
  %28 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %29 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %28, i32 0, i32 0
  store i64* %29, i64** %14, align 8
  %30 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %31 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %30, i32 0, i32 1
  store i64* %31, i64** %13, align 8
  %32 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %33 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %15, align 8
  %35 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %36 = bitcast %struct.iphdr* %35 to i64*
  %37 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %38 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = shl i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %36, i64 %41
  store i64* %42, i64** %17, align 8
  %43 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IP_MF, align 4
  %47 = load i32, i32* @IP_OFFSET, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @htons(i32 %48)
  %50 = and i32 %45, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %223

53:                                               ; preds = %27
  %54 = load i64*, i64** %13, align 8
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* %16, align 8
  %57 = call i32 @hash_dst(i64* %54, i64 %55, i64 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i64*, i64** %14, align 8
  %59 = call i32 @hash_src(i64* %58)
  store i32 %59, i32* %12, align 4
  %60 = load %struct.rsvp_session**, %struct.rsvp_session*** %8, align 8
  %61 = load i32, i32* %11, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.rsvp_session*, %struct.rsvp_session** %60, i64 %62
  %64 = load %struct.rsvp_session*, %struct.rsvp_session** %63, align 8
  store %struct.rsvp_session* %64, %struct.rsvp_session** %9, align 8
  br label %65

65:                                               ; preds = %218, %53
  %66 = load %struct.rsvp_session*, %struct.rsvp_session** %9, align 8
  %67 = icmp ne %struct.rsvp_session* %66, null
  br i1 %67, label %68, label %222

68:                                               ; preds = %65
  %69 = load i64*, i64** %13, align 8
  %70 = load i32, i32* @RSVP_DST_LEN, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %69, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.rsvp_session*, %struct.rsvp_session** %9, align 8
  %76 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* @RSVP_DST_LEN, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %77, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %74, %82
  br i1 %83, label %84, label %217

84:                                               ; preds = %68
  %85 = load i64, i64* %15, align 8
  %86 = load %struct.rsvp_session*, %struct.rsvp_session** %9, align 8
  %87 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %90, label %217

90:                                               ; preds = %84
  %91 = load %struct.rsvp_session*, %struct.rsvp_session** %9, align 8
  %92 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i64*, i64** %17, align 8
  %96 = load %struct.rsvp_session*, %struct.rsvp_session** %9, align 8
  %97 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %95, i64 %100
  %102 = bitcast i64* %101 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.rsvp_session*, %struct.rsvp_session** %9, align 8
  %105 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = xor i32 %103, %107
  %109 = and i32 %94, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %217, label %111

111:                                              ; preds = %90
  %112 = load i64, i64* %16, align 8
  %113 = load %struct.rsvp_session*, %struct.rsvp_session** %9, align 8
  %114 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %112, %115
  br i1 %116, label %117, label %217

117:                                              ; preds = %111
  %118 = load %struct.rsvp_session*, %struct.rsvp_session** %9, align 8
  %119 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %118, i32 0, i32 3
  %120 = load %struct.rsvp_filter**, %struct.rsvp_filter*** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.rsvp_filter*, %struct.rsvp_filter** %120, i64 %122
  %124 = load %struct.rsvp_filter*, %struct.rsvp_filter** %123, align 8
  store %struct.rsvp_filter* %124, %struct.rsvp_filter** %10, align 8
  br label %125

125:                                              ; preds = %192, %117
  %126 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %127 = icmp ne %struct.rsvp_filter* %126, null
  br i1 %127, label %128, label %196

128:                                              ; preds = %125
  %129 = load i64*, i64** %14, align 8
  %130 = load i32, i32* @RSVP_DST_LEN, align 4
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %129, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %136 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = load i32, i32* @RSVP_DST_LEN, align 4
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %137, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %134, %142
  br i1 %143, label %144, label %191

144:                                              ; preds = %128
  %145 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %146 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i64*, i64** %17, align 8
  %150 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %151 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %149, i64 %154
  %156 = bitcast i64* %155 to i32*
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %159 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = xor i32 %157, %161
  %163 = and i32 %148, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %191, label %165

165:                                              ; preds = %144
  %166 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %167 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %168 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %167, i32 0, i32 2
  %169 = bitcast %struct.tcf_result* %166 to i8*
  %170 = bitcast %struct.tcf_result* %168 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %169, i8* align 8 %170, i64 8, i1 false)
  %171 = call i32 (...) @RSVP_APPLY_RESULT()
  br label %172

172:                                              ; preds = %205, %165
  %173 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %174 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  store i32 0, i32* %4, align 4
  br label %223

178:                                              ; preds = %172
  %179 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %180 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %16, align 8
  %183 = load i64*, i64** %17, align 8
  %184 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %185 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds i64, i64* %183, i64 %186
  %188 = getelementptr inbounds i64, i64* %187, i64 -40
  %189 = bitcast i64* %188 to i8*
  %190 = bitcast i8* %189 to %struct.iphdr*
  store %struct.iphdr* %190, %struct.iphdr** %18, align 8
  br label %27

191:                                              ; preds = %144, %128
  br label %192

192:                                              ; preds = %191
  %193 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %194 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %193, i32 0, i32 3
  %195 = load %struct.rsvp_filter*, %struct.rsvp_filter** %194, align 8
  store %struct.rsvp_filter* %195, %struct.rsvp_filter** %10, align 8
  br label %125

196:                                              ; preds = %125
  %197 = load %struct.rsvp_session*, %struct.rsvp_session** %9, align 8
  %198 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %197, i32 0, i32 3
  %199 = load %struct.rsvp_filter**, %struct.rsvp_filter*** %198, align 8
  %200 = getelementptr inbounds %struct.rsvp_filter*, %struct.rsvp_filter** %199, i64 16
  %201 = load %struct.rsvp_filter*, %struct.rsvp_filter** %200, align 8
  store %struct.rsvp_filter* %201, %struct.rsvp_filter** %10, align 8
  br label %202

202:                                              ; preds = %212, %196
  %203 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %204 = icmp ne %struct.rsvp_filter* %203, null
  br i1 %204, label %205, label %216

205:                                              ; preds = %202
  %206 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %207 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %208 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %207, i32 0, i32 2
  %209 = bitcast %struct.tcf_result* %206 to i8*
  %210 = bitcast %struct.tcf_result* %208 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %209, i8* align 8 %210, i64 8, i1 false)
  %211 = call i32 (...) @RSVP_APPLY_RESULT()
  br label %172

212:                                              ; No predecessors!
  %213 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %214 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %213, i32 0, i32 3
  %215 = load %struct.rsvp_filter*, %struct.rsvp_filter** %214, align 8
  store %struct.rsvp_filter* %215, %struct.rsvp_filter** %10, align 8
  br label %202

216:                                              ; preds = %202
  store i32 -1, i32* %4, align 4
  br label %223

217:                                              ; preds = %111, %90, %84, %68
  br label %218

218:                                              ; preds = %217
  %219 = load %struct.rsvp_session*, %struct.rsvp_session** %9, align 8
  %220 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %219, i32 0, i32 5
  %221 = load %struct.rsvp_session*, %struct.rsvp_session** %220, align 8
  store %struct.rsvp_session* %221, %struct.rsvp_session** %9, align 8
  br label %65

222:                                              ; preds = %65
  store i32 -1, i32* %4, align 4
  br label %223

223:                                              ; preds = %222, %216, %177, %52
  %224 = load i32, i32* %4, align 4
  ret i32 %224
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @hash_dst(i64*, i64, i64) #1

declare dso_local i32 @hash_src(i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @RSVP_APPLY_RESULT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
