; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_route.c_route4_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_route.c_route4_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32, %struct.route4_head* }
%struct.route4_head = type { %struct.route4_bucket** }
%struct.route4_bucket = type { %struct.route4_filter** }
%struct.route4_filter = type { i32, i32, %struct.route4_filter*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.route4_filter** }
%struct.nlattr = type { i32 }

@TCA_OPTIONS = common dso_local global i64 0, align 8
@TCA_ROUTE4_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@route4_policy = common dso_local global i32 0, align 4
@TCA_RATE = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i64, i32, %struct.nlattr**, i64*)* @route4_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @route4_change(%struct.tcf_proto* %0, i64 %1, i32 %2, %struct.nlattr** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcf_proto*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.route4_head*, align 8
  %13 = alloca %struct.route4_filter*, align 8
  %14 = alloca %struct.route4_filter*, align 8
  %15 = alloca %struct.route4_filter**, align 8
  %16 = alloca %struct.route4_bucket*, align 8
  %17 = alloca %struct.nlattr*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store i64* %4, i64** %11, align 8
  %25 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %26 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %25, i32 0, i32 1
  %27 = load %struct.route4_head*, %struct.route4_head** %26, align 8
  store %struct.route4_head* %27, %struct.route4_head** %12, align 8
  %28 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %29 = load i64, i64* @TCA_OPTIONS, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  store %struct.nlattr* %31, %struct.nlattr** %17, align 8
  %32 = load i32, i32* @TCA_ROUTE4_MAX, align 4
  %33 = add nsw i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %18, align 8
  %36 = alloca %struct.nlattr*, i64 %34, align 16
  store i64 %34, i64* %19, align 8
  store i32 0, i32* %22, align 4
  %37 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %38 = icmp eq %struct.nlattr* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %5
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  br label %46

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ %44, %42 ], [ 0, %45 ]
  store i32 %47, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %248

48:                                               ; preds = %5
  %49 = load i32, i32* @TCA_ROUTE4_MAX, align 4
  %50 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %51 = load i32, i32* @route4_policy, align 4
  %52 = call i32 @nla_parse_nested(%struct.nlattr** %36, i32 %49, %struct.nlattr* %50, i32 %51)
  store i32 %52, i32* %23, align 4
  %53 = load i32, i32* %23, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %23, align 4
  store i32 %56, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %248

57:                                               ; preds = %48
  %58 = load i64*, i64** %11, align 8
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.route4_filter*
  store %struct.route4_filter* %60, %struct.route4_filter** %13, align 8
  %61 = icmp ne %struct.route4_filter* %60, null
  br i1 %61, label %62, label %99

62:                                               ; preds = %57
  %63 = load %struct.route4_filter*, %struct.route4_filter** %13, align 8
  %64 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %248

74:                                               ; preds = %68, %62
  %75 = load %struct.route4_filter*, %struct.route4_filter** %13, align 8
  %76 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %75, i32 0, i32 3
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = icmp ne %struct.TYPE_2__* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.route4_filter*, %struct.route4_filter** %13, align 8
  %81 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %22, align 4
  br label %83

83:                                               ; preds = %79, %74
  %84 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load %struct.route4_filter*, %struct.route4_filter** %13, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.route4_head*, %struct.route4_head** %12, align 8
  %89 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %90 = load i64, i64* @TCA_RATE, align 8
  %91 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %89, i64 %90
  %92 = load %struct.nlattr*, %struct.nlattr** %91, align 8
  %93 = call i32 @route4_set_parms(%struct.tcf_proto* %84, i64 %85, %struct.route4_filter* %86, i32 %87, %struct.route4_head* %88, %struct.nlattr** %36, %struct.nlattr* %92, i32 0)
  store i32 %93, i32* %23, align 4
  %94 = load i32, i32* %23, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %83
  %97 = load i32, i32* %23, align 4
  store i32 %97, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %248

98:                                               ; preds = %83
  br label %141

99:                                               ; preds = %57
  %100 = load i32, i32* @ENOBUFS, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %23, align 4
  %102 = load %struct.route4_head*, %struct.route4_head** %12, align 8
  %103 = icmp eq %struct.route4_head* %102, null
  br i1 %103, label %104, label %119

104:                                              ; preds = %99
  %105 = load i32, i32* @GFP_KERNEL, align 4
  %106 = call i8* @kzalloc(i32 8, i32 %105)
  %107 = bitcast i8* %106 to %struct.route4_head*
  store %struct.route4_head* %107, %struct.route4_head** %12, align 8
  %108 = load %struct.route4_head*, %struct.route4_head** %12, align 8
  %109 = icmp eq %struct.route4_head* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %244

111:                                              ; preds = %104
  %112 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %113 = call i32 @tcf_tree_lock(%struct.tcf_proto* %112)
  %114 = load %struct.route4_head*, %struct.route4_head** %12, align 8
  %115 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %116 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %115, i32 0, i32 1
  store %struct.route4_head* %114, %struct.route4_head** %116, align 8
  %117 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %118 = call i32 @tcf_tree_unlock(%struct.tcf_proto* %117)
  br label %119

119:                                              ; preds = %111, %99
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call i8* @kzalloc(i32 24, i32 %120)
  %122 = bitcast i8* %121 to %struct.route4_filter*
  store %struct.route4_filter* %122, %struct.route4_filter** %13, align 8
  %123 = load %struct.route4_filter*, %struct.route4_filter** %13, align 8
  %124 = icmp eq %struct.route4_filter* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %244

126:                                              ; preds = %119
  %127 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %128 = load i64, i64* %8, align 8
  %129 = load %struct.route4_filter*, %struct.route4_filter** %13, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.route4_head*, %struct.route4_head** %12, align 8
  %132 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %133 = load i64, i64* @TCA_RATE, align 8
  %134 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %132, i64 %133
  %135 = load %struct.nlattr*, %struct.nlattr** %134, align 8
  %136 = call i32 @route4_set_parms(%struct.tcf_proto* %127, i64 %128, %struct.route4_filter* %129, i32 %130, %struct.route4_head* %131, %struct.nlattr** %36, %struct.nlattr* %135, i32 1)
  store i32 %136, i32* %23, align 4
  %137 = load i32, i32* %23, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %126
  br label %244

140:                                              ; preds = %126
  br label %141

141:                                              ; preds = %140, %98
  %142 = load %struct.route4_filter*, %struct.route4_filter** %13, align 8
  %143 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = ashr i32 %144, 16
  %146 = call i32 @from_hash(i32 %145)
  store i32 %146, i32* %20, align 4
  %147 = load %struct.route4_filter*, %struct.route4_filter** %13, align 8
  %148 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %147, i32 0, i32 3
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load %struct.route4_filter**, %struct.route4_filter*** %150, align 8
  %152 = load i32, i32* %20, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.route4_filter*, %struct.route4_filter** %151, i64 %153
  store %struct.route4_filter** %154, %struct.route4_filter*** %15, align 8
  br label %155

155:                                              ; preds = %169, %141
  %156 = load %struct.route4_filter**, %struct.route4_filter*** %15, align 8
  %157 = load %struct.route4_filter*, %struct.route4_filter** %156, align 8
  store %struct.route4_filter* %157, %struct.route4_filter** %14, align 8
  %158 = icmp ne %struct.route4_filter* %157, null
  br i1 %158, label %159, label %172

159:                                              ; preds = %155
  %160 = load %struct.route4_filter*, %struct.route4_filter** %13, align 8
  %161 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.route4_filter*, %struct.route4_filter** %14, align 8
  %164 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  br label %172

168:                                              ; preds = %159
  br label %169

169:                                              ; preds = %168
  %170 = load %struct.route4_filter*, %struct.route4_filter** %14, align 8
  %171 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %170, i32 0, i32 2
  store %struct.route4_filter** %171, %struct.route4_filter*** %15, align 8
  br label %155

172:                                              ; preds = %167, %155
  %173 = load %struct.route4_filter*, %struct.route4_filter** %14, align 8
  %174 = load %struct.route4_filter*, %struct.route4_filter** %13, align 8
  %175 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %174, i32 0, i32 2
  store %struct.route4_filter* %173, %struct.route4_filter** %175, align 8
  %176 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %177 = call i32 @tcf_tree_lock(%struct.tcf_proto* %176)
  %178 = load %struct.route4_filter*, %struct.route4_filter** %13, align 8
  %179 = load %struct.route4_filter**, %struct.route4_filter*** %15, align 8
  store %struct.route4_filter* %178, %struct.route4_filter** %179, align 8
  %180 = load i32, i32* %22, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %230

182:                                              ; preds = %172
  %183 = load %struct.route4_filter*, %struct.route4_filter** %13, align 8
  %184 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %22, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %230

188:                                              ; preds = %182
  %189 = load i32, i32* %22, align 4
  %190 = call i32 @to_hash(i32 %189)
  store i32 %190, i32* %21, align 4
  %191 = load i32, i32* %22, align 4
  %192 = ashr i32 %191, 16
  %193 = call i32 @from_hash(i32 %192)
  store i32 %193, i32* %20, align 4
  %194 = load %struct.route4_head*, %struct.route4_head** %12, align 8
  %195 = getelementptr inbounds %struct.route4_head, %struct.route4_head* %194, i32 0, i32 0
  %196 = load %struct.route4_bucket**, %struct.route4_bucket*** %195, align 8
  %197 = load i32, i32* %21, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.route4_bucket*, %struct.route4_bucket** %196, i64 %198
  %200 = load %struct.route4_bucket*, %struct.route4_bucket** %199, align 8
  store %struct.route4_bucket* %200, %struct.route4_bucket** %16, align 8
  %201 = icmp ne %struct.route4_bucket* %200, null
  br i1 %201, label %202, label %229

202:                                              ; preds = %188
  %203 = load %struct.route4_bucket*, %struct.route4_bucket** %16, align 8
  %204 = getelementptr inbounds %struct.route4_bucket, %struct.route4_bucket* %203, i32 0, i32 0
  %205 = load %struct.route4_filter**, %struct.route4_filter*** %204, align 8
  %206 = load i32, i32* %20, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.route4_filter*, %struct.route4_filter** %205, i64 %207
  store %struct.route4_filter** %208, %struct.route4_filter*** %15, align 8
  br label %209

209:                                              ; preds = %224, %202
  %210 = load %struct.route4_filter**, %struct.route4_filter*** %15, align 8
  %211 = load %struct.route4_filter*, %struct.route4_filter** %210, align 8
  %212 = icmp ne %struct.route4_filter* %211, null
  br i1 %212, label %213, label %228

213:                                              ; preds = %209
  %214 = load %struct.route4_filter**, %struct.route4_filter*** %15, align 8
  %215 = load %struct.route4_filter*, %struct.route4_filter** %214, align 8
  %216 = load %struct.route4_filter*, %struct.route4_filter** %13, align 8
  %217 = icmp eq %struct.route4_filter* %215, %216
  br i1 %217, label %218, label %223

218:                                              ; preds = %213
  %219 = load %struct.route4_filter*, %struct.route4_filter** %13, align 8
  %220 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %219, i32 0, i32 2
  %221 = load %struct.route4_filter*, %struct.route4_filter** %220, align 8
  %222 = load %struct.route4_filter**, %struct.route4_filter*** %15, align 8
  store %struct.route4_filter* %221, %struct.route4_filter** %222, align 8
  br label %228

223:                                              ; preds = %213
  br label %224

224:                                              ; preds = %223
  %225 = load %struct.route4_filter**, %struct.route4_filter*** %15, align 8
  %226 = load %struct.route4_filter*, %struct.route4_filter** %225, align 8
  %227 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %226, i32 0, i32 2
  store %struct.route4_filter** %227, %struct.route4_filter*** %15, align 8
  br label %209

228:                                              ; preds = %218, %209
  br label %229

229:                                              ; preds = %228, %188
  br label %230

230:                                              ; preds = %229, %182, %172
  %231 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %232 = call i32 @tcf_tree_unlock(%struct.tcf_proto* %231)
  %233 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %234 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.route4_head*, %struct.route4_head** %12, align 8
  %237 = load %struct.route4_filter*, %struct.route4_filter** %13, align 8
  %238 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @route4_reset_fastmap(i32 %235, %struct.route4_head* %236, i32 %239)
  %241 = load %struct.route4_filter*, %struct.route4_filter** %13, align 8
  %242 = ptrtoint %struct.route4_filter* %241 to i64
  %243 = load i64*, i64** %11, align 8
  store i64 %242, i64* %243, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %248

244:                                              ; preds = %139, %125, %110
  %245 = load %struct.route4_filter*, %struct.route4_filter** %13, align 8
  %246 = call i32 @kfree(%struct.route4_filter* %245)
  %247 = load i32, i32* %23, align 4
  store i32 %247, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %248

248:                                              ; preds = %244, %230, %96, %71, %55, %46
  %249 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %249)
  %250 = load i32, i32* %6, align 4
  ret i32 %250
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local i32 @route4_set_parms(%struct.tcf_proto*, i64, %struct.route4_filter*, i32, %struct.route4_head*, %struct.nlattr**, %struct.nlattr*, i32) #2

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local i32 @tcf_tree_lock(%struct.tcf_proto*) #2

declare dso_local i32 @tcf_tree_unlock(%struct.tcf_proto*) #2

declare dso_local i32 @from_hash(i32) #2

declare dso_local i32 @to_hash(i32) #2

declare dso_local i32 @route4_reset_fastmap(i32, %struct.route4_head*, i32) #2

declare dso_local i32 @kfree(%struct.route4_filter*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
