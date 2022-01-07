; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cipso_v4_doi = type { i8* }

@CIPSO_V4_HDR_LEN = common dso_local global i8 0, align 1
@CIPSO_V4_TAG_INVALID = common dso_local global i8 0, align 1
@CIPSO_V4_TAG_MAXCNT = common dso_local global i64 0, align 8
@CIPSO_V4_TAG_RBM_BLEN = common dso_local global i32 0, align 4
@cipso_v4_rbm_strictvalid = common dso_local global i32 0, align 4
@CIPSO_V4_TAG_ENUM_BLEN = common dso_local global i32 0, align 4
@CIPSO_V4_TAG_RNG_BLEN = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@CIPSO_V4_TAG_LOC_BLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cipso_v4_validate(%struct.sk_buff* %0, i8** %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cipso_v4_doi*, align 8
  %12 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i8** %1, i8*** %4, align 8
  %13 = load i8**, i8*** %4, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %5, align 8
  store i8 0, i8* %8, align 1
  store %struct.cipso_v4_doi* null, %struct.cipso_v4_doi** %11, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i8 1, i8* %8, align 1
  br label %257

22:                                               ; preds = %2
  %23 = call i32 (...) @rcu_read_lock()
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 2
  %26 = call i32 @get_unaligned_be32(i8* %25)
  %27 = call %struct.cipso_v4_doi* @cipso_v4_doi_search(i32 %26)
  store %struct.cipso_v4_doi* %27, %struct.cipso_v4_doi** %11, align 8
  %28 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %11, align 8
  %29 = icmp eq %struct.cipso_v4_doi* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i8 2, i8* %8, align 1
  br label %255

31:                                               ; preds = %22
  %32 = load i8, i8* @CIPSO_V4_HDR_LEN, align 1
  store i8 %32, i8* %7, align 1
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %7, align 1
  %35 = zext i8 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  store i8* %37, i8** %6, align 8
  br label %38

38:                                               ; preds = %244, %31
  %39 = load i8, i8* %7, align 1
  %40 = zext i8 %39 to i32
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %254

43:                                               ; preds = %38
  store i64 0, i64* %12, align 8
  br label %44

44:                                               ; preds = %75, %43
  %45 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %11, align 8
  %46 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %51, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %44
  %58 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %11, align 8
  %59 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i64, i64* %12, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* @CIPSO_V4_TAG_INVALID, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %57
  %69 = load i64, i64* %12, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* @CIPSO_V4_TAG_MAXCNT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %68, %57
  %74 = load i8, i8* %7, align 1
  store i8 %74, i8* %8, align 1
  br label %255

75:                                               ; preds = %68
  br label %44

76:                                               ; preds = %44
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i8, i8* %7, align 1
  %84 = zext i8 %83 to i32
  %85 = sub nsw i32 %82, %84
  %86 = icmp sgt i32 %81, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %76
  %88 = load i8, i8* %7, align 1
  %89 = zext i8 %88 to i32
  %90 = add nsw i32 %89, 1
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %8, align 1
  br label %255

92:                                               ; preds = %76
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  switch i32 %96, label %242 [
    i32 128, label %97
    i32 131, label %140
    i32 129, label %179
    i32 130, label %218
  ]

97:                                               ; preds = %92
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @CIPSO_V4_TAG_RBM_BLEN, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load i8, i8* %7, align 1
  %103 = zext i8 %102 to i32
  %104 = add nsw i32 %103, 1
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %8, align 1
  br label %255

106:                                              ; preds = %97
  %107 = load i32, i32* @cipso_v4_rbm_strictvalid, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %139

109:                                              ; preds = %106
  %110 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %11, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 3
  %113 = load i8, i8* %112, align 1
  %114 = call i32 @cipso_v4_map_lvl_valid(%struct.cipso_v4_doi* %110, i8 zeroext %113)
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %109
  %117 = load i8, i8* %7, align 1
  %118 = zext i8 %117 to i32
  %119 = add nsw i32 %118, 3
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %8, align 1
  br label %255

121:                                              ; preds = %109
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @CIPSO_V4_TAG_RBM_BLEN, align 4
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %121
  %126 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %11, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 4
  %129 = load i32, i32* %10, align 4
  %130 = sub nsw i32 %129, 4
  %131 = call i32 @cipso_v4_map_cat_rbm_valid(%struct.cipso_v4_doi* %126, i8* %128, i32 %130)
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %125
  %134 = load i8, i8* %7, align 1
  %135 = zext i8 %134 to i32
  %136 = add nsw i32 %135, 4
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %8, align 1
  br label %255

138:                                              ; preds = %125, %121
  br label %139

139:                                              ; preds = %138, %106
  br label %244

140:                                              ; preds = %92
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @CIPSO_V4_TAG_ENUM_BLEN, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load i8, i8* %7, align 1
  %146 = zext i8 %145 to i32
  %147 = add nsw i32 %146, 1
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %8, align 1
  br label %255

149:                                              ; preds = %140
  %150 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %11, align 8
  %151 = load i8*, i8** %6, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 3
  %153 = load i8, i8* %152, align 1
  %154 = call i32 @cipso_v4_map_lvl_valid(%struct.cipso_v4_doi* %150, i8 zeroext %153)
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %149
  %157 = load i8, i8* %7, align 1
  %158 = zext i8 %157 to i32
  %159 = add nsw i32 %158, 3
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %8, align 1
  br label %255

161:                                              ; preds = %149
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* @CIPSO_V4_TAG_ENUM_BLEN, align 4
  %164 = icmp sgt i32 %162, %163
  br i1 %164, label %165, label %178

165:                                              ; preds = %161
  %166 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %11, align 8
  %167 = load i8*, i8** %6, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 4
  %169 = load i32, i32* %10, align 4
  %170 = sub nsw i32 %169, 4
  %171 = call i32 @cipso_v4_map_cat_enum_valid(%struct.cipso_v4_doi* %166, i8* %168, i32 %170)
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %165
  %174 = load i8, i8* %7, align 1
  %175 = zext i8 %174 to i32
  %176 = add nsw i32 %175, 4
  %177 = trunc i32 %176 to i8
  store i8 %177, i8* %8, align 1
  br label %255

178:                                              ; preds = %165, %161
  br label %244

179:                                              ; preds = %92
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* @CIPSO_V4_TAG_RNG_BLEN, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %179
  %184 = load i8, i8* %7, align 1
  %185 = zext i8 %184 to i32
  %186 = add nsw i32 %185, 1
  %187 = trunc i32 %186 to i8
  store i8 %187, i8* %8, align 1
  br label %255

188:                                              ; preds = %179
  %189 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %11, align 8
  %190 = load i8*, i8** %6, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 3
  %192 = load i8, i8* %191, align 1
  %193 = call i32 @cipso_v4_map_lvl_valid(%struct.cipso_v4_doi* %189, i8 zeroext %192)
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %188
  %196 = load i8, i8* %7, align 1
  %197 = zext i8 %196 to i32
  %198 = add nsw i32 %197, 3
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %8, align 1
  br label %255

200:                                              ; preds = %188
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* @CIPSO_V4_TAG_RNG_BLEN, align 4
  %203 = icmp sgt i32 %201, %202
  br i1 %203, label %204, label %217

204:                                              ; preds = %200
  %205 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %11, align 8
  %206 = load i8*, i8** %6, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 4
  %208 = load i32, i32* %10, align 4
  %209 = sub nsw i32 %208, 4
  %210 = call i32 @cipso_v4_map_cat_rng_valid(%struct.cipso_v4_doi* %205, i8* %207, i32 %209)
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %204
  %213 = load i8, i8* %7, align 1
  %214 = zext i8 %213 to i32
  %215 = add nsw i32 %214, 4
  %216 = trunc i32 %215 to i8
  store i8 %216, i8* %8, align 1
  br label %255

217:                                              ; preds = %204, %200
  br label %244

218:                                              ; preds = %92
  %219 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %220 = icmp eq %struct.sk_buff* %219, null
  br i1 %220, label %230, label %221

221:                                              ; preds = %218
  %222 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %223 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %222, i32 0, i32 0
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @IFF_LOOPBACK, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %221, %218
  %231 = load i8, i8* %7, align 1
  store i8 %231, i8* %8, align 1
  br label %255

232:                                              ; preds = %221
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* @CIPSO_V4_TAG_LOC_BLEN, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %236, label %241

236:                                              ; preds = %232
  %237 = load i8, i8* %7, align 1
  %238 = zext i8 %237 to i32
  %239 = add nsw i32 %238, 1
  %240 = trunc i32 %239 to i8
  store i8 %240, i8* %8, align 1
  br label %255

241:                                              ; preds = %232
  br label %244

242:                                              ; preds = %92
  %243 = load i8, i8* %7, align 1
  store i8 %243, i8* %8, align 1
  br label %255

244:                                              ; preds = %241, %217, %178, %139
  %245 = load i32, i32* %10, align 4
  %246 = load i8*, i8** %6, align 8
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds i8, i8* %246, i64 %247
  store i8* %248, i8** %6, align 8
  %249 = load i32, i32* %10, align 4
  %250 = load i8, i8* %7, align 1
  %251 = zext i8 %250 to i32
  %252 = add nsw i32 %251, %249
  %253 = trunc i32 %252 to i8
  store i8 %253, i8* %7, align 1
  br label %38

254:                                              ; preds = %38
  br label %255

255:                                              ; preds = %254, %242, %236, %230, %212, %195, %183, %173, %156, %144, %133, %116, %101, %87, %73, %30
  %256 = call i32 (...) @rcu_read_unlock()
  br label %257

257:                                              ; preds = %255, %21
  %258 = load i8*, i8** %5, align 8
  %259 = load i8, i8* %8, align 1
  %260 = zext i8 %259 to i32
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8, i8* %258, i64 %261
  %263 = load i8**, i8*** %4, align 8
  store i8* %262, i8** %263, align 8
  %264 = load i8, i8* %8, align 1
  %265 = zext i8 %264 to i32
  ret i32 %265
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cipso_v4_doi* @cipso_v4_doi_search(i32) #1

declare dso_local i32 @get_unaligned_be32(i8*) #1

declare dso_local i32 @cipso_v4_map_lvl_valid(%struct.cipso_v4_doi*, i8 zeroext) #1

declare dso_local i32 @cipso_v4_map_cat_rbm_valid(%struct.cipso_v4_doi*, i8*, i32) #1

declare dso_local i32 @cipso_v4_map_cat_enum_valid(%struct.cipso_v4_doi*, i8*, i32) #1

declare dso_local i32 @cipso_v4_map_cat_rng_valid(%struct.cipso_v4_doi*, i8*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
