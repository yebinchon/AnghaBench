; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_yeah.c_tcp_yeah_cong_avoid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_yeah.c_tcp_yeah_cong_avoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64, i64, i8*, i64, i32 }
%struct.yeah = type { i32, i32, i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@TCP_SCALABLE_AI_CNT = common dso_local global i32 0, align 4
@TCP_YEAH_ALPHA = common dso_local global i32 0, align 4
@TCP_YEAH_PHY = common dso_local global i32 0, align 4
@TCP_YEAH_GAMMA = common dso_local global i32 0, align 4
@TCP_YEAH_EPSILON = common dso_local global i32 0, align 4
@TCP_YEAH_ZETA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i32)* @tcp_yeah_cong_avoid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_yeah_cong_avoid(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca %struct.yeah*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %13)
  store %struct.tcp_sock* %14, %struct.tcp_sock** %7, align 8
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call %struct.yeah* @inet_csk_ca(%struct.sock* %15)
  store %struct.yeah* %16, %struct.yeah** %8, align 8
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @tcp_is_cwnd_limited(%struct.sock* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %261

22:                                               ; preds = %3
  %23 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %24 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %27 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sle i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %32 = call i32 @tcp_slow_start(%struct.tcp_sock* %31)
  br label %83

33:                                               ; preds = %22
  %34 = load %struct.yeah*, %struct.yeah** %8, align 8
  %35 = getelementptr inbounds %struct.yeah, %struct.yeah* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %76, label %38

38:                                               ; preds = %33
  %39 = load %struct.yeah*, %struct.yeah** %8, align 8
  %40 = getelementptr inbounds %struct.yeah, %struct.yeah* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %43 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = sext i32 %41 to i64
  %46 = getelementptr i8, i8* %44, i64 %45
  store i8* %46, i8** %43, align 8
  %47 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %48 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %51 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* @TCP_SCALABLE_AI_CNT, align 4
  %55 = call i8* @min(i32 %53, i32 %54)
  %56 = icmp ugt i8* %49, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %38
  %58 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %59 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %62 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %67 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %65, %57
  %71 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %72 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %71, i32 0, i32 2
  store i8* null, i8** %72, align 8
  br label %73

73:                                               ; preds = %70, %38
  %74 = load %struct.yeah*, %struct.yeah** %8, align 8
  %75 = getelementptr inbounds %struct.yeah, %struct.yeah* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  br label %82

76:                                               ; preds = %33
  %77 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %78 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %79 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @tcp_cong_avoid_ai(%struct.tcp_sock* %77, i64 %80)
  br label %82

82:                                               ; preds = %76, %73
  br label %83

83:                                               ; preds = %82, %30
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.yeah*, %struct.yeah** %8, align 8
  %86 = getelementptr inbounds %struct.yeah, %struct.yeah* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @after(i32 %84, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %261

91:                                               ; preds = %83
  %92 = load %struct.yeah*, %struct.yeah** %8, align 8
  %93 = getelementptr inbounds %struct.yeah, %struct.yeah* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %95, 2
  br i1 %96, label %97, label %234

97:                                               ; preds = %91
  %98 = load %struct.yeah*, %struct.yeah** %8, align 8
  %99 = getelementptr inbounds %struct.yeah, %struct.yeah* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %9, align 4
  %102 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %103 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.yeah*, %struct.yeah** %8, align 8
  %108 = getelementptr inbounds %struct.yeah, %struct.yeah* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %106, %110
  %112 = load i32, i32* %11, align 4
  %113 = mul nsw i32 %112, %111
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @do_div(i32 %114, i32 %115)
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @TCP_YEAH_ALPHA, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %135, label %121

121:                                              ; preds = %97
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.yeah*, %struct.yeah** %8, align 8
  %124 = getelementptr inbounds %struct.yeah, %struct.yeah* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %122, %126
  %128 = load %struct.yeah*, %struct.yeah** %8, align 8
  %129 = getelementptr inbounds %struct.yeah, %struct.yeah* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @TCP_YEAH_PHY, align 4
  %133 = sdiv i32 %131, %132
  %134 = icmp sgt i32 %127, %133
  br i1 %134, label %135, label %212

135:                                              ; preds = %121, %97
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @TCP_YEAH_ALPHA, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %183

139:                                              ; preds = %135
  %140 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %141 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.yeah*, %struct.yeah** %8, align 8
  %144 = getelementptr inbounds %struct.yeah, %struct.yeah* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp sgt i64 %142, %145
  br i1 %146, label %147, label %183

147:                                              ; preds = %139
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @TCP_YEAH_GAMMA, align 4
  %150 = sdiv i32 %148, %149
  %151 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %152 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* @TCP_YEAH_EPSILON, align 4
  %155 = zext i32 %154 to i64
  %156 = ashr i64 %153, %155
  %157 = trunc i64 %156 to i32
  %158 = call i8* @min(i32 %150, i32 %157)
  %159 = ptrtoint i8* %158 to i32
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %163 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %164, %161
  store i64 %165, i64* %163, align 8
  %166 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %167 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = trunc i64 %168 to i32
  %170 = load %struct.yeah*, %struct.yeah** %8, align 8
  %171 = getelementptr inbounds %struct.yeah, %struct.yeah* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  %174 = call i8* @max(i32 %169, i32 %173)
  %175 = ptrtoint i8* %174 to i64
  %176 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %177 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %176, i32 0, i32 0
  store i64 %175, i64* %177, align 8
  %178 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %179 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %182 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %181, i32 0, i32 1
  store i64 %180, i64* %182, align 8
  br label %183

183:                                              ; preds = %147, %139, %135
  %184 = load %struct.yeah*, %struct.yeah** %8, align 8
  %185 = getelementptr inbounds %struct.yeah, %struct.yeah* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp sle i64 %186, 2
  br i1 %187, label %188, label %198

188:                                              ; preds = %183
  %189 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %190 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = ashr i64 %191, 1
  %193 = trunc i64 %192 to i32
  %194 = call i8* @max(i32 %193, i32 2)
  %195 = ptrtoint i8* %194 to i64
  %196 = load %struct.yeah*, %struct.yeah** %8, align 8
  %197 = getelementptr inbounds %struct.yeah, %struct.yeah* %196, i32 0, i32 2
  store i64 %195, i64* %197, align 8
  br label %203

198:                                              ; preds = %183
  %199 = load %struct.yeah*, %struct.yeah** %8, align 8
  %200 = getelementptr inbounds %struct.yeah, %struct.yeah* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %201, 1
  store i64 %202, i64* %200, align 8
  br label %203

203:                                              ; preds = %198, %188
  %204 = load %struct.yeah*, %struct.yeah** %8, align 8
  %205 = getelementptr inbounds %struct.yeah, %struct.yeah* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = add nsw i32 %206, 1
  %208 = call i8* @min(i32 %207, i32 16777215)
  %209 = ptrtoint i8* %208 to i32
  %210 = load %struct.yeah*, %struct.yeah** %8, align 8
  %211 = getelementptr inbounds %struct.yeah, %struct.yeah* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  br label %230

212:                                              ; preds = %121
  %213 = load %struct.yeah*, %struct.yeah** %8, align 8
  %214 = getelementptr inbounds %struct.yeah, %struct.yeah* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = add nsw i64 %215, 1
  store i64 %216, i64* %214, align 8
  %217 = load %struct.yeah*, %struct.yeah** %8, align 8
  %218 = getelementptr inbounds %struct.yeah, %struct.yeah* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @TCP_YEAH_ZETA, align 8
  %221 = icmp sgt i64 %219, %220
  br i1 %221, label %222, label %227

222:                                              ; preds = %212
  %223 = load %struct.yeah*, %struct.yeah** %8, align 8
  %224 = getelementptr inbounds %struct.yeah, %struct.yeah* %223, i32 0, i32 2
  store i64 2, i64* %224, align 8
  %225 = load %struct.yeah*, %struct.yeah** %8, align 8
  %226 = getelementptr inbounds %struct.yeah, %struct.yeah* %225, i32 0, i32 3
  store i64 0, i64* %226, align 8
  br label %227

227:                                              ; preds = %222, %212
  %228 = load %struct.yeah*, %struct.yeah** %8, align 8
  %229 = getelementptr inbounds %struct.yeah, %struct.yeah* %228, i32 0, i32 0
  store i32 0, i32* %229, align 8
  br label %230

230:                                              ; preds = %227, %203
  %231 = load i32, i32* %10, align 4
  %232 = load %struct.yeah*, %struct.yeah** %8, align 8
  %233 = getelementptr inbounds %struct.yeah, %struct.yeah* %232, i32 0, i32 4
  store i32 %231, i32* %233, align 8
  br label %234

234:                                              ; preds = %230, %91
  %235 = load %struct.yeah*, %struct.yeah** %8, align 8
  %236 = getelementptr inbounds %struct.yeah, %struct.yeah* %235, i32 0, i32 5
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.yeah*, %struct.yeah** %8, align 8
  %240 = getelementptr inbounds %struct.yeah, %struct.yeah* %239, i32 0, i32 5
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 5
  store i32 %238, i32* %241, align 4
  %242 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %243 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.yeah*, %struct.yeah** %8, align 8
  %246 = getelementptr inbounds %struct.yeah, %struct.yeah* %245, i32 0, i32 5
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 4
  store i32 %244, i32* %247, align 4
  %248 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %249 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = trunc i64 %250 to i32
  %252 = load %struct.yeah*, %struct.yeah** %8, align 8
  %253 = getelementptr inbounds %struct.yeah, %struct.yeah* %252, i32 0, i32 5
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 3
  store i32 %251, i32* %254, align 4
  %255 = load %struct.yeah*, %struct.yeah** %8, align 8
  %256 = getelementptr inbounds %struct.yeah, %struct.yeah* %255, i32 0, i32 5
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 0
  store i32 0, i32* %257, align 4
  %258 = load %struct.yeah*, %struct.yeah** %8, align 8
  %259 = getelementptr inbounds %struct.yeah, %struct.yeah* %258, i32 0, i32 5
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 1
  store i32 2147483647, i32* %260, align 4
  br label %261

261:                                              ; preds = %21, %234, %83
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.yeah* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @tcp_is_cwnd_limited(%struct.sock*, i32) #1

declare dso_local i32 @tcp_slow_start(%struct.tcp_sock*) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @tcp_cong_avoid_ai(%struct.tcp_sock*, i64) #1

declare dso_local i64 @after(i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i8* @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
