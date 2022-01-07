; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_lookup_znode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_lookup_znode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_znode = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ubifs_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.ubifs_znode* }
%union.ubifs_key = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_znode* (%struct.ubifs_info*, %union.ubifs_key*, i32, i32, i32)* @lookup_znode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_znode* @lookup_znode(%struct.ubifs_info* %0, %union.ubifs_key* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ubifs_znode*, align 8
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca %union.ubifs_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubifs_znode*, align 8
  %13 = alloca %struct.ubifs_znode*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.ubifs_znode* @ERR_PTR(i32 %20)
  store %struct.ubifs_znode* %21, %struct.ubifs_znode** %6, align 8
  br label %279

22:                                               ; preds = %5
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %24 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load %struct.ubifs_znode*, %struct.ubifs_znode** %25, align 8
  store %struct.ubifs_znode* %26, %struct.ubifs_znode** %12, align 8
  %27 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %28 = icmp ne %struct.ubifs_znode* %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %22
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %32 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %31, i32 0, i32 0
  %33 = call %struct.ubifs_znode* @ubifs_load_znode(%struct.ubifs_info* %30, %struct.TYPE_4__* %32, i32* null, i32 0)
  store %struct.ubifs_znode* %33, %struct.ubifs_znode** %12, align 8
  %34 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %35 = call i64 @IS_ERR(%struct.ubifs_znode* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  store %struct.ubifs_znode* %38, %struct.ubifs_znode** %6, align 8
  br label %279

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %22
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %42 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %49 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  store %struct.ubifs_znode* %55, %struct.ubifs_znode** %6, align 8
  br label %279

56:                                               ; preds = %47, %40
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %59 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sge i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %6, align 8
  br label %279

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %111
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %66 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %67 = load %union.ubifs_key*, %union.ubifs_key** %8, align 8
  %68 = call i32 @ubifs_search_zbranch(%struct.ubifs_info* %65, %struct.ubifs_znode* %66, %union.ubifs_key* %67, i32* %14)
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %64
  %72 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %73 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %74 = call %struct.ubifs_znode* @left_znode(%struct.ubifs_info* %72, %struct.ubifs_znode* %73)
  store %struct.ubifs_znode* %74, %struct.ubifs_znode** %12, align 8
  %75 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %76 = icmp ne %struct.ubifs_znode* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %6, align 8
  br label %279

78:                                               ; preds = %71
  %79 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %80 = call i64 @IS_ERR(%struct.ubifs_znode* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  store %struct.ubifs_znode* %83, %struct.ubifs_znode** %6, align 8
  br label %279

84:                                               ; preds = %78
  %85 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %86 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %87 = load %union.ubifs_key*, %union.ubifs_key** %8, align 8
  %88 = call i32 @ubifs_search_zbranch(%struct.ubifs_info* %85, %struct.ubifs_znode* %86, %union.ubifs_key* %87, i32* %14)
  %89 = load i32, i32* %14, align 4
  %90 = icmp sge i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @ubifs_assert(i32 %91)
  br label %93

93:                                               ; preds = %84, %64
  %94 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %95 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %112

101:                                              ; preds = %93
  %102 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %103 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %104 = load i32, i32* %14, align 4
  %105 = call %struct.ubifs_znode* @get_znode(%struct.ubifs_info* %102, %struct.ubifs_znode* %103, i32 %104)
  store %struct.ubifs_znode* %105, %struct.ubifs_znode** %12, align 8
  %106 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %107 = call i64 @IS_ERR(%struct.ubifs_znode* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  store %struct.ubifs_znode* %110, %struct.ubifs_znode** %6, align 8
  br label %279

111:                                              ; preds = %101
  br label %64

112:                                              ; preds = %100
  %113 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %114 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %113, i32 0, i32 2
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %139

123:                                              ; preds = %112
  %124 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %125 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %124, i32 0, i32 2
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %123
  %135 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %136 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %137 = load i32, i32* %14, align 4
  %138 = call %struct.ubifs_znode* @get_znode(%struct.ubifs_info* %135, %struct.ubifs_znode* %136, i32 %137)
  store %struct.ubifs_znode* %138, %struct.ubifs_znode** %6, align 8
  br label %279

139:                                              ; preds = %123, %112
  %140 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %141 = load %union.ubifs_key*, %union.ubifs_key** %8, align 8
  %142 = call i32 @is_hash_key(%struct.ubifs_info* %140, %union.ubifs_key* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %6, align 8
  br label %279

145:                                              ; preds = %139
  %146 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  store %struct.ubifs_znode* %146, %struct.ubifs_znode** %13, align 8
  %147 = load i32, i32* %14, align 4
  store i32 %147, i32* %15, align 4
  br label %148

148:                                              ; preds = %145, %212
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32, i32* %14, align 4
  %153 = sub nsw i32 %152, 1
  store i32 %153, i32* %14, align 4
  br label %172

154:                                              ; preds = %148
  %155 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %156 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %157 = call %struct.ubifs_znode* @left_znode(%struct.ubifs_info* %155, %struct.ubifs_znode* %156)
  store %struct.ubifs_znode* %157, %struct.ubifs_znode** %12, align 8
  %158 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %159 = icmp ne %struct.ubifs_znode* %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %154
  br label %213

161:                                              ; preds = %154
  %162 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %163 = call i64 @IS_ERR(%struct.ubifs_znode* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  store %struct.ubifs_znode* %166, %struct.ubifs_znode** %6, align 8
  br label %279

167:                                              ; preds = %161
  %168 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %169 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 %170, 1
  store i32 %171, i32* %14, align 4
  br label %172

172:                                              ; preds = %167, %151
  %173 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %174 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %173, i32 0, i32 2
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = load i32, i32* %14, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %10, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %199

183:                                              ; preds = %172
  %184 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %185 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %184, i32 0, i32 2
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %185, align 8
  %187 = load i32, i32* %14, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %11, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %183
  %195 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %196 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %197 = load i32, i32* %14, align 4
  %198 = call %struct.ubifs_znode* @get_znode(%struct.ubifs_info* %195, %struct.ubifs_znode* %196, i32 %197)
  store %struct.ubifs_znode* %198, %struct.ubifs_znode** %6, align 8
  br label %279

199:                                              ; preds = %183, %172
  %200 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %201 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %202 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %201, i32 0, i32 2
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %202, align 8
  %204 = load i32, i32* %14, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 2
  %208 = load %union.ubifs_key*, %union.ubifs_key** %8, align 8
  %209 = call i64 @keys_cmp(%struct.ubifs_info* %200, i32* %207, %union.ubifs_key* %208)
  %210 = icmp slt i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %199
  br label %213

212:                                              ; preds = %199
  br label %148

213:                                              ; preds = %211, %160
  %214 = load %struct.ubifs_znode*, %struct.ubifs_znode** %13, align 8
  store %struct.ubifs_znode* %214, %struct.ubifs_znode** %12, align 8
  %215 = load i32, i32* %15, align 4
  store i32 %215, i32* %14, align 4
  br label %216

216:                                              ; preds = %213, %277
  %217 = load i32, i32* %14, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %14, align 4
  %219 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %220 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = icmp sge i32 %218, %221
  br i1 %222, label %223, label %237

223:                                              ; preds = %216
  %224 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %225 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %226 = call %struct.ubifs_znode* @right_znode(%struct.ubifs_info* %224, %struct.ubifs_znode* %225)
  store %struct.ubifs_znode* %226, %struct.ubifs_znode** %12, align 8
  %227 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %228 = icmp ne %struct.ubifs_znode* %227, null
  br i1 %228, label %230, label %229

229:                                              ; preds = %223
  br label %278

230:                                              ; preds = %223
  %231 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %232 = call i64 @IS_ERR(%struct.ubifs_znode* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %230
  %235 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  store %struct.ubifs_znode* %235, %struct.ubifs_znode** %6, align 8
  br label %279

236:                                              ; preds = %230
  store i32 0, i32* %14, align 4
  br label %237

237:                                              ; preds = %236, %216
  %238 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %239 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %238, i32 0, i32 2
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %239, align 8
  %241 = load i32, i32* %14, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %10, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %264

248:                                              ; preds = %237
  %249 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %250 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %249, i32 0, i32 2
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %250, align 8
  %252 = load i32, i32* %14, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %11, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %264

259:                                              ; preds = %248
  %260 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %261 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %262 = load i32, i32* %14, align 4
  %263 = call %struct.ubifs_znode* @get_znode(%struct.ubifs_info* %260, %struct.ubifs_znode* %261, i32 %262)
  store %struct.ubifs_znode* %263, %struct.ubifs_znode** %6, align 8
  br label %279

264:                                              ; preds = %248, %237
  %265 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %266 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %267 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %266, i32 0, i32 2
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %267, align 8
  %269 = load i32, i32* %14, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 2
  %273 = load %union.ubifs_key*, %union.ubifs_key** %8, align 8
  %274 = call i64 @keys_cmp(%struct.ubifs_info* %265, i32* %272, %union.ubifs_key* %273)
  %275 = icmp sgt i64 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %264
  br label %278

277:                                              ; preds = %264
  br label %216

278:                                              ; preds = %276, %229
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %6, align 8
  br label %279

279:                                              ; preds = %278, %259, %234, %194, %165, %144, %134, %109, %82, %77, %62, %54, %37, %18
  %280 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  ret %struct.ubifs_znode* %280
}

declare dso_local %struct.ubifs_znode* @ERR_PTR(i32) #1

declare dso_local %struct.ubifs_znode* @ubifs_load_znode(%struct.ubifs_info*, %struct.TYPE_4__*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @ubifs_search_zbranch(%struct.ubifs_info*, %struct.ubifs_znode*, %union.ubifs_key*, i32*) #1

declare dso_local %struct.ubifs_znode* @left_znode(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local %struct.ubifs_znode* @get_znode(%struct.ubifs_info*, %struct.ubifs_znode*, i32) #1

declare dso_local i32 @is_hash_key(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i64 @keys_cmp(%struct.ubifs_info*, i32*, %union.ubifs_key*) #1

declare dso_local %struct.ubifs_znode* @right_znode(%struct.ubifs_info*, %struct.ubifs_znode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
