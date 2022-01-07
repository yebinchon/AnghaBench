; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_claim_suballoc_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_claim_suballoc_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_alloc_context = type { i64, i64, i64, i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.ocfs2_chain_list = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"Chain allocator dinode %llu has %u used bits but only %u total.\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"Search of victim chain %u came up with nothing, trying all chains now.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_alloc_context*, i32*, i64, i64, i64*, i32*, i64*)* @ocfs2_claim_suballoc_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_claim_suballoc_bits(%struct.ocfs2_super* %0, %struct.ocfs2_alloc_context* %1, i32* %2, i64 %3, i64 %4, i64* %5, i32* %6, i64* %7) #0 {
  %9 = alloca %struct.ocfs2_super*, align 8
  %10 = alloca %struct.ocfs2_alloc_context*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.ocfs2_chain_list*, align 8
  %23 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %9, align 8
  store %struct.ocfs2_alloc_context* %1, %struct.ocfs2_alloc_context** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  store i64* %7, i64** %16, align 8
  store i64 0, i64* %20, align 8
  %24 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %25 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %21, align 8
  %27 = call i32 (...) @mlog_entry_void()
  %28 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %29 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %32 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load i64, i64* %12, align 8
  %38 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %39 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %42 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = icmp sgt i64 %37, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %49 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %48, i32 0, i32 5
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = icmp ne %struct.TYPE_6__* %50, null
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @BUG_ON(i32 %53)
  %55 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %56 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %55, i32 0, i32 5
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %60, %struct.ocfs2_dinode** %23, align 8
  %61 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %23, align 8
  %62 = call i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode* %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @BUG_ON(i32 %65)
  %67 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %23, align 8
  %68 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @le32_to_cpu(i32 %71)
  %73 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %23, align 8
  %74 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @le32_to_cpu(i32 %77)
  %79 = icmp sge i64 %72, %78
  br i1 %79, label %80, label %103

80:                                               ; preds = %8
  %81 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %82 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %23, align 8
  %85 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @le64_to_cpu(i32 %86)
  %88 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %23, align 8
  %89 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @le32_to_cpu(i32 %92)
  %94 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %23, align 8
  %95 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @le32_to_cpu(i32 %98)
  %100 = call i32 @ocfs2_error(i32 %83, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %87, i64 %93, i64 %99)
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %17, align 4
  br label %243

103:                                              ; preds = %8
  %104 = load i64, i64* %21, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %132

106:                                              ; preds = %103
  %107 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %108 = load i32*, i32** %11, align 8
  %109 = load i64, i64* %12, align 8
  %110 = load i64, i64* %13, align 8
  %111 = load i64*, i64** %14, align 8
  %112 = load i32*, i32** %15, align 8
  %113 = load i64, i64* %21, align 8
  %114 = call i32 @ocfs2_search_one_group(%struct.ocfs2_alloc_context* %107, i32* %108, i64 %109, i64 %110, i64* %111, i32* %112, i64 %113, i64* %20)
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %17, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %106
  %118 = load i64, i64* %21, align 8
  %119 = load i64*, i64** %16, align 8
  store i64 %118, i64* %119, align 8
  br label %224

120:                                              ; preds = %106
  %121 = load i32, i32* %17, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* @ENOSPC, align 4
  %126 = sub nsw i32 0, %125
  %127 = icmp ne i32 %124, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32, i32* %17, align 4
  %130 = call i32 @mlog_errno(i32 %129)
  br label %243

131:                                              ; preds = %123, %120
  br label %132

132:                                              ; preds = %131, %103
  %133 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %23, align 8
  %134 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = bitcast i32* %135 to %struct.ocfs2_chain_list*
  store %struct.ocfs2_chain_list* %136, %struct.ocfs2_chain_list** %22, align 8
  %137 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %22, align 8
  %138 = call i64 @ocfs2_find_victim_chain(%struct.ocfs2_chain_list* %137)
  store i64 %138, i64* %18, align 8
  %139 = load i64, i64* %18, align 8
  %140 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %141 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %140, i32 0, i32 2
  store i64 %139, i64* %141, align 8
  %142 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %143 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %142, i32 0, i32 3
  store i32 1, i32* %143, align 8
  %144 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %145 = load i32*, i32** %11, align 8
  %146 = load i64, i64* %12, align 8
  %147 = load i64, i64* %13, align 8
  %148 = load i64*, i64** %14, align 8
  %149 = load i32*, i32** %15, align 8
  %150 = load i64*, i64** %16, align 8
  %151 = call i32 @ocfs2_search_chain(%struct.ocfs2_alloc_context* %144, i32* %145, i64 %146, i64 %147, i64* %148, i32* %149, i64* %150, i64* %20)
  store i32 %151, i32* %17, align 4
  %152 = load i32, i32* %17, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %132
  br label %224

155:                                              ; preds = %132
  %156 = load i32, i32* %17, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %155
  %159 = load i32, i32* %17, align 4
  %160 = load i32, i32* @ENOSPC, align 4
  %161 = sub nsw i32 0, %160
  %162 = icmp ne i32 %159, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load i32, i32* %17, align 4
  %165 = call i32 @mlog_errno(i32 %164)
  br label %243

166:                                              ; preds = %158, %155
  %167 = load i64, i64* %18, align 8
  %168 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i64 %167)
  %169 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %170 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %169, i32 0, i32 3
  store i32 0, i32* %170, align 8
  store i64 0, i64* %19, align 8
  br label %171

171:                                              ; preds = %220, %166
  %172 = load i64, i64* %19, align 8
  %173 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %22, align 8
  %174 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @le16_to_cpu(i32 %175)
  %177 = icmp ult i64 %172, %176
  br i1 %177, label %178, label %223

178:                                              ; preds = %171
  %179 = load i64, i64* %19, align 8
  %180 = load i64, i64* %18, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  br label %220

183:                                              ; preds = %178
  %184 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %22, align 8
  %185 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %184, i32 0, i32 0
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %185, align 8
  %187 = load i64, i64* %19, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %183
  br label %220

193:                                              ; preds = %183
  %194 = load i64, i64* %19, align 8
  %195 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %196 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %195, i32 0, i32 2
  store i64 %194, i64* %196, align 8
  %197 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %198 = load i32*, i32** %11, align 8
  %199 = load i64, i64* %12, align 8
  %200 = load i64, i64* %13, align 8
  %201 = load i64*, i64** %14, align 8
  %202 = load i32*, i32** %15, align 8
  %203 = load i64*, i64** %16, align 8
  %204 = call i32 @ocfs2_search_chain(%struct.ocfs2_alloc_context* %197, i32* %198, i64 %199, i64 %200, i64* %201, i32* %202, i64* %203, i64* %20)
  store i32 %204, i32* %17, align 4
  %205 = load i32, i32* %17, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %193
  br label %223

208:                                              ; preds = %193
  %209 = load i32, i32* %17, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %208
  %212 = load i32, i32* %17, align 4
  %213 = load i32, i32* @ENOSPC, align 4
  %214 = sub nsw i32 0, %213
  %215 = icmp ne i32 %212, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %211
  %217 = load i32, i32* %17, align 4
  %218 = call i32 @mlog_errno(i32 %217)
  br label %243

219:                                              ; preds = %211, %208
  br label %220

220:                                              ; preds = %219, %192, %182
  %221 = load i64, i64* %19, align 8
  %222 = add i64 %221, 1
  store i64 %222, i64* %19, align 8
  br label %171

223:                                              ; preds = %207, %171
  br label %224

224:                                              ; preds = %223, %154, %117
  %225 = load i32, i32* %17, align 4
  %226 = load i32, i32* @ENOSPC, align 4
  %227 = sub nsw i32 0, %226
  %228 = icmp ne i32 %225, %227
  br i1 %228, label %229, label %242

229:                                              ; preds = %224
  %230 = load i64, i64* %20, align 8
  %231 = load i64, i64* %13, align 8
  %232 = icmp ult i64 %230, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %229
  %234 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %235 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %234, i32 0, i32 4
  store i64 0, i64* %235, align 8
  br label %241

236:                                              ; preds = %229
  %237 = load i64*, i64** %16, align 8
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %240 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %239, i32 0, i32 4
  store i64 %238, i64* %240, align 8
  br label %241

241:                                              ; preds = %236, %233
  br label %242

242:                                              ; preds = %241, %224
  br label %243

243:                                              ; preds = %242, %216, %163, %128, %80
  %244 = load i32, i32* %17, align 4
  %245 = call i32 @mlog_exit(i32 %244)
  %246 = load i32, i32* %17, align 4
  ret i32 %246
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i64, i64, i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_search_one_group(%struct.ocfs2_alloc_context*, i32*, i64, i64, i64*, i32*, i64, i64*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_find_victim_chain(%struct.ocfs2_chain_list*) #1

declare dso_local i32 @ocfs2_search_chain(%struct.ocfs2_alloc_context*, i32*, i64, i64, i64*, i32*, i64*, i64*) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
