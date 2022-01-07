; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_cubic.c_bictcp_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_cubic.c_bictcp_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bictcp = type { i32, i64, i32, i64, i64, i64, i64, i64, i32, i32, i32 }

@tcp_time_stamp = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@cube_factor = common dso_local global i64 0, align 8
@BICTCP_HZ = common dso_local global i32 0, align 4
@cube_rtt_scale = common dso_local global i32 0, align 4
@tcp_friendliness = common dso_local global i64 0, align 8
@beta_scale = common dso_local global i64 0, align 8
@ACK_RATIO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bictcp*, i64)* @bictcp_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bictcp_update(%struct.bictcp* %0, i64 %1) #0 {
  %3 = alloca %struct.bictcp*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.bictcp* %0, %struct.bictcp** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %12 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 8
  %15 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %16 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load i32, i32* @tcp_time_stamp, align 4
  %22 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %23 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %21, %24
  %26 = load i32, i32* @HZ, align 4
  %27 = sdiv i32 %26, 32
  %28 = icmp sle i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %254

30:                                               ; preds = %20, %2
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %33 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* @tcp_time_stamp, align 4
  %35 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %36 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %38 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %79

41:                                               ; preds = %30
  %42 = load i32, i32* @tcp_time_stamp, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %45 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %44, i32 0, i32 3
  store i64 %43, i64* %45, align 8
  %46 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %47 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %50 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %49, i32 0, i32 4
  store i64 %48, i64* %50, align 8
  %51 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %52 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = icmp sle i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %41
  %57 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %58 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %57, i32 0, i32 6
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* %4, align 8
  %60 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %61 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %60, i32 0, i32 7
  store i64 %59, i64* %61, align 8
  br label %78

62:                                               ; preds = %41
  %63 = load i64, i64* @cube_factor, align 8
  %64 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %65 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %4, align 8
  %68 = sub nsw i64 %66, %67
  %69 = mul nsw i64 %63, %68
  %70 = call i64 @cubic_root(i64 %69)
  %71 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %72 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %71, i32 0, i32 6
  store i64 %70, i64* %72, align 8
  %73 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %74 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %77 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %76, i32 0, i32 7
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %62, %56
  br label %79

79:                                               ; preds = %78, %30
  %80 = load i32, i32* @tcp_time_stamp, align 4
  %81 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %82 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 8
  %84 = ashr i32 %83, 3
  %85 = call i32 @msecs_to_jiffies(i32 %84)
  %86 = add nsw i32 %80, %85
  %87 = sext i32 %86 to i64
  %88 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %89 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %87, %90
  %92 = load i32, i32* @BICTCP_HZ, align 4
  %93 = zext i32 %92 to i64
  %94 = shl i64 %91, %93
  %95 = load i32, i32* @HZ, align 4
  %96 = sext i32 %95 to i64
  %97 = sdiv i64 %94, %96
  store i64 %97, i64* %7, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %100 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %98, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %79
  %104 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %105 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %104, i32 0, i32 6
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %7, align 8
  %108 = sub nsw i64 %106, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %5, align 4
  br label %117

110:                                              ; preds = %79
  %111 = load i64, i64* %7, align 8
  %112 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %113 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %112, i32 0, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %111, %114
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %110, %103
  %118 = load i32, i32* @cube_rtt_scale, align 4
  %119 = load i32, i32* %5, align 4
  %120 = mul nsw i32 %118, %119
  %121 = load i32, i32* %5, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i32, i32* %5, align 4
  %124 = mul nsw i32 %122, %123
  %125 = load i32, i32* @BICTCP_HZ, align 4
  %126 = mul nsw i32 3, %125
  %127 = add nsw i32 10, %126
  %128 = ashr i32 %124, %127
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %6, align 8
  %130 = load i64, i64* %7, align 8
  %131 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %132 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %131, i32 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = icmp slt i64 %130, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %117
  %136 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %137 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %136, i32 0, i32 7
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %6, align 8
  %140 = sub nsw i64 %138, %139
  store i64 %140, i64* %8, align 8
  br label %147

141:                                              ; preds = %117
  %142 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %143 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %142, i32 0, i32 7
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %6, align 8
  %146 = add nsw i64 %144, %145
  store i64 %146, i64* %8, align 8
  br label %147

147:                                              ; preds = %141, %135
  %148 = load i64, i64* %8, align 8
  %149 = load i64, i64* %4, align 8
  %150 = icmp sgt i64 %148, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %147
  %152 = load i64, i64* %4, align 8
  %153 = load i64, i64* %8, align 8
  %154 = load i64, i64* %4, align 8
  %155 = sub nsw i64 %153, %154
  %156 = sdiv i64 %152, %155
  %157 = trunc i64 %156 to i32
  %158 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %159 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %158, i32 0, i32 9
  store i32 %157, i32* %159, align 4
  br label %166

160:                                              ; preds = %147
  %161 = load i64, i64* %4, align 8
  %162 = mul nsw i64 100, %161
  %163 = trunc i64 %162 to i32
  %164 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %165 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %164, i32 0, i32 9
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %160, %151
  %167 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %168 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %167, i32 0, i32 5
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %166
  %172 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %173 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %172, i32 0, i32 9
  %174 = load i32, i32* %173, align 4
  %175 = icmp sgt i32 %174, 20
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %178 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %177, i32 0, i32 9
  store i32 20, i32* %178, align 4
  br label %179

179:                                              ; preds = %176, %171, %166
  %180 = load i64, i64* @tcp_friendliness, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %235

182:                                              ; preds = %179
  %183 = load i64, i64* @beta_scale, align 8
  store i64 %183, i64* %10, align 8
  %184 = load i64, i64* %4, align 8
  %185 = load i64, i64* %10, align 8
  %186 = mul nsw i64 %184, %185
  %187 = ashr i64 %186, 3
  store i64 %187, i64* %6, align 8
  br label %188

188:                                              ; preds = %195, %182
  %189 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %190 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = load i64, i64* %6, align 8
  %194 = icmp sgt i64 %192, %193
  br i1 %194, label %195, label %207

195:                                              ; preds = %188
  %196 = load i64, i64* %6, align 8
  %197 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %198 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = sext i32 %199 to i64
  %201 = sub nsw i64 %200, %196
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %198, align 8
  %203 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %204 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %203, i32 0, i32 4
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %205, 1
  store i64 %206, i64* %204, align 8
  br label %188

207:                                              ; preds = %188
  %208 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %209 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* %4, align 8
  %212 = icmp sgt i64 %210, %211
  br i1 %212, label %213, label %234

213:                                              ; preds = %207
  %214 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %215 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* %4, align 8
  %218 = sub nsw i64 %216, %217
  store i64 %218, i64* %6, align 8
  %219 = load i64, i64* %4, align 8
  %220 = load i64, i64* %6, align 8
  %221 = sdiv i64 %219, %220
  store i64 %221, i64* %9, align 8
  %222 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %223 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %222, i32 0, i32 9
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  %226 = load i64, i64* %9, align 8
  %227 = icmp sgt i64 %225, %226
  br i1 %227, label %228, label %233

228:                                              ; preds = %213
  %229 = load i64, i64* %9, align 8
  %230 = trunc i64 %229 to i32
  %231 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %232 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %231, i32 0, i32 9
  store i32 %230, i32* %232, align 4
  br label %233

233:                                              ; preds = %228, %213
  br label %234

234:                                              ; preds = %233, %207
  br label %235

235:                                              ; preds = %234, %179
  %236 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %237 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %236, i32 0, i32 9
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @ACK_RATIO_SHIFT, align 4
  %240 = shl i32 %238, %239
  %241 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %242 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %241, i32 0, i32 10
  %243 = load i32, i32* %242, align 8
  %244 = sdiv i32 %240, %243
  %245 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %246 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %245, i32 0, i32 9
  store i32 %244, i32* %246, align 4
  %247 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %248 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %247, i32 0, i32 9
  %249 = load i32, i32* %248, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %235
  %252 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %253 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %252, i32 0, i32 9
  store i32 1, i32* %253, align 4
  br label %254

254:                                              ; preds = %29, %251, %235
  ret void
}

declare dso_local i64 @cubic_root(i64) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
