; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_fix_node.c_ip_check_balance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_fix_node.c_ip_check_balance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i32*, i32*, i32, i32, i32, i32, i32, %struct.virtual_node* }
%struct.virtual_node = type { i32, i32 }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"vs-8210\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"S[0] can not be 0\00", align 1
@NO_BALANCING_NEEDED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"vs-8215\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"incorrect return value of get_empty_nodes\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"vs-8220: tree is not balanced on internal level\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"vs-8225: tree is not balanced on leaf level\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"vs-8230: bad h\00", align 1
@SET_PAR_SHIFT_LEFT = common dso_local global i32 0, align 4
@SET_PAR_SHIFT_RIGHT = common dso_local global i32 0, align 4
@FLOW = common dso_local global i32 0, align 4
@LEFT_SHIFT_FLOW = common dso_local global i32 0, align 4
@LEFT_SHIFT_NO_FLOW = common dso_local global i32 0, align 4
@LR_SHIFT_FLOW = common dso_local global i32 0, align 4
@LR_SHIFT_NO_FLOW = common dso_local global i32 0, align 4
@NOTHING_SHIFT_FLOW = common dso_local global i32 0, align 4
@NOTHING_SHIFT_NO_FLOW = common dso_local global i32 0, align 4
@NO_FLOW = common dso_local global i32 0, align 4
@RIGHT_SHIFT_FLOW = common dso_local global i32 0, align 4
@RIGHT_SHIFT_NO_FLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_balance*, i32)* @ip_check_balance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_check_balance(%struct.tree_balance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.virtual_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [40 x i16], align 16
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store i32 %1, i32* %5, align 4
  %29 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %30 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %29, i32 0, i32 8
  %31 = load %struct.virtual_node*, %struct.virtual_node** %30, align 8
  store %struct.virtual_node* %31, %struct.virtual_node** %6, align 8
  %32 = bitcast [40 x i16]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %32, i8 0, i64 80, i1 false)
  %33 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %34 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.buffer_head* @PATH_H_PBUFFER(i32 %35, i32 %36)
  store %struct.buffer_head* %37, %struct.buffer_head** %17, align 8
  %38 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %39 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  %45 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %46 = icmp ne %struct.buffer_head* %45, null
  br i1 %46, label %72, label %47

47:                                               ; preds = %2
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %52 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @reiserfs_panic(i32 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %50, %47
  %56 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @get_empty_nodes(%struct.tree_balance* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  switch i32 %58, label %66 [
    i32 130, label %59
    i32 129, label %64
    i32 128, label %64
  ]

59:                                               ; preds = %55
  %60 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @set_parameters(%struct.tree_balance* %60, i32 %61, i32 0, i32 0, i32 1, i16* null, i32 -1, i32 -1)
  %63 = load i32, i32* @NO_BALANCING_NEEDED, align 4
  store i32 %63, i32* %3, align 4
  br label %682

64:                                               ; preds = %55, %55
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %682

66:                                               ; preds = %55
  %67 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %68 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @reiserfs_panic(i32 %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %2
  %73 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @get_parents(%struct.tree_balance* %73, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = icmp ne i32 %75, 130
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %682

79:                                               ; preds = %72
  %80 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %81 = call i32 @B_FREE_SPACE(%struct.buffer_head* %80)
  store i32 %81, i32* %10, align 4
  %82 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @get_rfree(%struct.tree_balance* %82, i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @get_lfree(%struct.tree_balance* %85, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %89 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @can_node_be_removed(i32 %90, i32 %91, i32 %92, i32 %93, %struct.tree_balance* %94, i32 %95)
  %97 = load i32, i32* @NO_BALANCING_NEEDED, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %79
  %100 = load i32, i32* @NO_BALANCING_NEEDED, align 4
  store i32 %100, i32* %3, align 4
  br label %682

101:                                              ; preds = %79
  %102 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @create_virtual_node(%struct.tree_balance* %102, i32 %103)
  %105 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @check_left(%struct.tree_balance* %105, i32 %106, i32 %107)
  %109 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @check_right(%struct.tree_balance* %109, i32 %110, i32 %111)
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %185

115:                                              ; preds = %101
  %116 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %117 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %124 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %122, %129
  %131 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %132 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  %135 = icmp sge i32 %130, %134
  br i1 %135, label %136, label %185

136:                                              ; preds = %115
  %137 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %138 = call i32 @MAX_NR_KEY(%struct.buffer_head* %137)
  %139 = shl i32 %138, 1
  %140 = add nsw i32 %139, 2
  %141 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %142 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = sub nsw i32 %140, %147
  %149 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %150 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %148, %155
  %157 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %158 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %156, %159
  %161 = add nsw i32 %160, 1
  %162 = sdiv i32 %161, 2
  %163 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %164 = call i32 @MAX_NR_KEY(%struct.buffer_head* %163)
  %165 = add nsw i32 %164, 1
  %166 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %167 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = sub nsw i32 %165, %172
  %174 = sub nsw i32 %162, %173
  store i32 %174, i32* %18, align 4
  %175 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %176 = load i32, i32* %5, align 4
  %177 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %178 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, 1
  %181 = load i32, i32* %18, align 4
  %182 = sub nsw i32 %180, %181
  %183 = load i32, i32* %18, align 4
  %184 = call i32 @set_parameters(%struct.tree_balance* %175, i32 %176, i32 %182, i32 %183, i32 0, i16* null, i32 -1, i32 -1)
  store i32 130, i32* %3, align 4
  br label %682

185:                                              ; preds = %115, %101
  %186 = load i32, i32* %5, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %216

188:                                              ; preds = %185
  %189 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %190 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %197 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 1
  %200 = icmp sge i32 %195, %199
  br i1 %200, label %214, label %201

201:                                              ; preds = %188
  %202 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %203 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %5, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %210 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 1
  %213 = icmp sge i32 %208, %212
  br label %214

214:                                              ; preds = %201, %188
  %215 = phi i1 [ true, %188 ], [ %213, %201 ]
  br label %216

216:                                              ; preds = %214, %185
  %217 = phi i1 [ false, %185 ], [ %215, %214 ]
  %218 = zext i1 %217 to i32
  %219 = call i32 @RFALSE(i32 %218, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %220 = load i32, i32* %5, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %260, label %222

222:                                              ; preds = %216
  %223 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %224 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %5, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %231 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = icmp sge i32 %229, %232
  br i1 %233, label %234, label %239

234:                                              ; preds = %222
  %235 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %236 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = icmp eq i32 %237, -1
  br i1 %238, label %258, label %239

239:                                              ; preds = %234, %222
  %240 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %241 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %5, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %248 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = icmp sge i32 %246, %249
  br i1 %250, label %251, label %256

251:                                              ; preds = %239
  %252 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %253 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 4
  %255 = icmp eq i32 %254, -1
  br label %256

256:                                              ; preds = %251, %239
  %257 = phi i1 [ false, %239 ], [ %255, %251 ]
  br label %258

258:                                              ; preds = %256, %234
  %259 = phi i1 [ true, %234 ], [ %257, %256 ]
  br label %260

260:                                              ; preds = %258, %216
  %261 = phi i1 [ false, %216 ], [ %259, %258 ]
  %262 = zext i1 %261 to i32
  %263 = call i32 @RFALSE(i32 %262, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %264 = load i32, i32* %5, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %271, label %266

266:                                              ; preds = %260
  %267 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %268 = call i64 @is_leaf_removable(%struct.tree_balance* %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %266
  store i32 130, i32* %3, align 4
  br label %682

271:                                              ; preds = %266, %260
  %272 = load i32, i32* %10, align 4
  %273 = load i32, i32* %7, align 4
  %274 = icmp sge i32 %272, %273
  br i1 %274, label %275, label %289

275:                                              ; preds = %271
  %276 = load i32, i32* %5, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %284, label %278

278:                                              ; preds = %275
  %279 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %280 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %283 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %282, i32 0, i32 5
  store i32 %281, i32* %283, align 8
  br label %284

284:                                              ; preds = %278, %275
  %285 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %286 = load i32, i32* %5, align 4
  %287 = call i32 @set_parameters(%struct.tree_balance* %285, i32 %286, i32 0, i32 0, i32 1, i16* null, i32 -1, i32 -1)
  %288 = load i32, i32* @NO_BALANCING_NEEDED, align 4
  store i32 %288, i32* %3, align 4
  br label %682

289:                                              ; preds = %271
  %290 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %291 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %290, i32 0, i32 2
  %292 = load i32*, i32** %291, align 8
  %293 = load i32, i32* %5, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  %296 = load i32, i32* %295, align 4
  store i32 %296, i32* %19, align 4
  %297 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %298 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %297, i32 0, i32 1
  %299 = load i32*, i32** %298, align 8
  %300 = load i32, i32* %5, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32, i32* %302, align 4
  store i32 %303, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %304 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %305 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %308 = load i32, i32* %5, align 4
  %309 = load i32, i32* %5, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %289
  %312 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %313 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  br label %316

315:                                              ; preds = %289
  br label %316

316:                                              ; preds = %315, %311
  %317 = phi i32 [ %314, %311 ], [ 0, %315 ]
  %318 = getelementptr inbounds [40 x i16], [40 x i16]* %16, i64 0, i64 0
  %319 = call i32 @get_num_ver(i32 %306, %struct.tree_balance* %307, i32 %308, i32 0, i32 -1, i32 %317, i32 -1, i16* %318, i32 0)
  store i32 %319, i32* %12, align 4
  %320 = load i32, i32* %5, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %337, label %322

322:                                              ; preds = %316
  %323 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %324 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %327 = load i32, i32* %5, align 4
  %328 = getelementptr inbounds [40 x i16], [40 x i16]* %16, i64 0, i64 0
  %329 = getelementptr inbounds i16, i16* %328, i64 5
  %330 = call i32 @get_num_ver(i32 %325, %struct.tree_balance* %326, i32 %327, i32 0, i32 -1, i32 0, i32 -1, i16* %329, i32 1)
  store i32 %330, i32* %25, align 4
  %331 = load i32, i32* %12, align 4
  %332 = load i32, i32* %25, align 4
  %333 = icmp sgt i32 %331, %332
  br i1 %333, label %334, label %336

334:                                              ; preds = %322
  store i32 5, i32* %21, align 4
  %335 = load i32, i32* %25, align 4
  store i32 %335, i32* %12, align 4
  br label %336

336:                                              ; preds = %334, %322
  br label %337

337:                                              ; preds = %336, %316
  store i32 10, i32* %22, align 4
  %338 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %339 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %342 = load i32, i32* %5, align 4
  %343 = load i32, i32* %19, align 4
  %344 = load i32, i32* %5, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %351, label %346

346:                                              ; preds = %337
  %347 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %348 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 8
  %350 = icmp eq i32 %349, -1
  br label %351

351:                                              ; preds = %346, %337
  %352 = phi i1 [ true, %337 ], [ %350, %346 ]
  %353 = zext i1 %352 to i64
  %354 = select i1 %352, i32 0, i32 1
  %355 = sub nsw i32 %343, %354
  %356 = load i32, i32* %5, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %362

358:                                              ; preds = %351
  %359 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %360 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  br label %363

362:                                              ; preds = %351
  br label %363

363:                                              ; preds = %362, %358
  %364 = phi i32 [ %361, %358 ], [ 0, %362 ]
  %365 = getelementptr inbounds [40 x i16], [40 x i16]* %16, i64 0, i64 0
  %366 = getelementptr inbounds i16, i16* %365, i64 10
  %367 = call i32 @get_num_ver(i32 %340, %struct.tree_balance* %341, i32 %342, i32 %355, i32 -1, i32 %364, i32 -1, i16* %366, i32 0)
  store i32 %367, i32* %13, align 4
  %368 = load i32, i32* %5, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %396, label %370

370:                                              ; preds = %363
  %371 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %372 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %375 = load i32, i32* %5, align 4
  %376 = load i32, i32* %19, align 4
  %377 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %378 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 8
  %380 = icmp ne i32 %379, -1
  %381 = zext i1 %380 to i64
  %382 = select i1 %380, i32 1, i32 0
  %383 = sub nsw i32 %376, %382
  %384 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %385 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %384, i32 0, i32 3
  %386 = load i32, i32* %385, align 8
  %387 = getelementptr inbounds [40 x i16], [40 x i16]* %16, i64 0, i64 0
  %388 = getelementptr inbounds i16, i16* %387, i64 15
  %389 = call i32 @get_num_ver(i32 %373, %struct.tree_balance* %374, i32 %375, i32 %383, i32 %386, i32 0, i32 -1, i16* %388, i32 1)
  store i32 %389, i32* %26, align 4
  %390 = load i32, i32* %13, align 4
  %391 = load i32, i32* %26, align 4
  %392 = icmp sgt i32 %390, %391
  br i1 %392, label %393, label %395

393:                                              ; preds = %370
  store i32 15, i32* %22, align 4
  %394 = load i32, i32* %26, align 4
  store i32 %394, i32* %13, align 4
  br label %395

395:                                              ; preds = %393, %370
  br label %396

396:                                              ; preds = %395, %363
  store i32 20, i32* %23, align 4
  %397 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %398 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %401 = load i32, i32* %5, align 4
  %402 = load i32, i32* %5, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %410

404:                                              ; preds = %396
  %405 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %406 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* %20, align 4
  %409 = sub nsw i32 %407, %408
  br label %419

410:                                              ; preds = %396
  %411 = load i32, i32* %20, align 4
  %412 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %413 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %412, i32 0, i32 4
  %414 = load i32, i32* %413, align 4
  %415 = icmp ne i32 %414, -1
  %416 = zext i1 %415 to i64
  %417 = select i1 %415, i32 1, i32 0
  %418 = sub nsw i32 %411, %417
  br label %419

419:                                              ; preds = %410, %404
  %420 = phi i32 [ %409, %404 ], [ %418, %410 ]
  %421 = getelementptr inbounds [40 x i16], [40 x i16]* %16, i64 0, i64 0
  %422 = getelementptr inbounds i16, i16* %421, i64 20
  %423 = call i32 @get_num_ver(i32 %399, %struct.tree_balance* %400, i32 %401, i32 0, i32 -1, i32 %420, i32 -1, i16* %422, i32 0)
  store i32 %423, i32* %14, align 4
  %424 = load i32, i32* %5, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %452, label %426

426:                                              ; preds = %419
  %427 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %428 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %431 = load i32, i32* %5, align 4
  %432 = load i32, i32* %20, align 4
  %433 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %434 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %433, i32 0, i32 4
  %435 = load i32, i32* %434, align 4
  %436 = icmp ne i32 %435, -1
  %437 = zext i1 %436 to i64
  %438 = select i1 %436, i32 1, i32 0
  %439 = sub nsw i32 %432, %438
  %440 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %441 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %440, i32 0, i32 4
  %442 = load i32, i32* %441, align 4
  %443 = getelementptr inbounds [40 x i16], [40 x i16]* %16, i64 0, i64 0
  %444 = getelementptr inbounds i16, i16* %443, i64 25
  %445 = call i32 @get_num_ver(i32 %429, %struct.tree_balance* %430, i32 %431, i32 0, i32 -1, i32 %439, i32 %442, i16* %444, i32 1)
  store i32 %445, i32* %27, align 4
  %446 = load i32, i32* %14, align 4
  %447 = load i32, i32* %27, align 4
  %448 = icmp sgt i32 %446, %447
  br i1 %448, label %449, label %451

449:                                              ; preds = %426
  store i32 25, i32* %23, align 4
  %450 = load i32, i32* %27, align 4
  store i32 %450, i32* %14, align 4
  br label %451

451:                                              ; preds = %449, %426
  br label %452

452:                                              ; preds = %451, %419
  store i32 30, i32* %24, align 4
  %453 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %454 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %457 = load i32, i32* %5, align 4
  %458 = load i32, i32* %19, align 4
  %459 = load i32, i32* %5, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %466, label %461

461:                                              ; preds = %452
  %462 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %463 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %462, i32 0, i32 3
  %464 = load i32, i32* %463, align 8
  %465 = icmp eq i32 %464, -1
  br label %466

466:                                              ; preds = %461, %452
  %467 = phi i1 [ true, %452 ], [ %465, %461 ]
  %468 = zext i1 %467 to i64
  %469 = select i1 %467, i32 0, i32 1
  %470 = sub nsw i32 %458, %469
  %471 = load i32, i32* %5, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %479

473:                                              ; preds = %466
  %474 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %475 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 4
  %477 = load i32, i32* %20, align 4
  %478 = sub nsw i32 %476, %477
  br label %488

479:                                              ; preds = %466
  %480 = load i32, i32* %20, align 4
  %481 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %482 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %481, i32 0, i32 4
  %483 = load i32, i32* %482, align 4
  %484 = icmp ne i32 %483, -1
  %485 = zext i1 %484 to i64
  %486 = select i1 %484, i32 1, i32 0
  %487 = sub nsw i32 %480, %486
  br label %488

488:                                              ; preds = %479, %473
  %489 = phi i32 [ %478, %473 ], [ %487, %479 ]
  %490 = getelementptr inbounds [40 x i16], [40 x i16]* %16, i64 0, i64 0
  %491 = getelementptr inbounds i16, i16* %490, i64 30
  %492 = call i32 @get_num_ver(i32 %455, %struct.tree_balance* %456, i32 %457, i32 %470, i32 -1, i32 %489, i32 -1, i16* %491, i32 0)
  store i32 %492, i32* %15, align 4
  %493 = load i32, i32* %5, align 4
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %532, label %495

495:                                              ; preds = %488
  %496 = load %struct.virtual_node*, %struct.virtual_node** %6, align 8
  %497 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %496, i32 0, i32 1
  %498 = load i32, i32* %497, align 4
  %499 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %500 = load i32, i32* %5, align 4
  %501 = load i32, i32* %19, align 4
  %502 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %503 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %502, i32 0, i32 3
  %504 = load i32, i32* %503, align 8
  %505 = icmp ne i32 %504, -1
  %506 = zext i1 %505 to i64
  %507 = select i1 %505, i32 1, i32 0
  %508 = sub nsw i32 %501, %507
  %509 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %510 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %509, i32 0, i32 3
  %511 = load i32, i32* %510, align 8
  %512 = load i32, i32* %20, align 4
  %513 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %514 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %513, i32 0, i32 4
  %515 = load i32, i32* %514, align 4
  %516 = icmp ne i32 %515, -1
  %517 = zext i1 %516 to i64
  %518 = select i1 %516, i32 1, i32 0
  %519 = sub nsw i32 %512, %518
  %520 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %521 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %520, i32 0, i32 4
  %522 = load i32, i32* %521, align 4
  %523 = getelementptr inbounds [40 x i16], [40 x i16]* %16, i64 0, i64 0
  %524 = getelementptr inbounds i16, i16* %523, i64 35
  %525 = call i32 @get_num_ver(i32 %498, %struct.tree_balance* %499, i32 %500, i32 %508, i32 %511, i32 %519, i32 %522, i16* %524, i32 1)
  store i32 %525, i32* %28, align 4
  %526 = load i32, i32* %15, align 4
  %527 = load i32, i32* %28, align 4
  %528 = icmp sgt i32 %526, %527
  br i1 %528, label %529, label %531

529:                                              ; preds = %495
  store i32 35, i32* %24, align 4
  %530 = load i32, i32* %28, align 4
  store i32 %530, i32* %15, align 4
  br label %531

531:                                              ; preds = %529, %495
  br label %532

532:                                              ; preds = %531, %488
  %533 = load i32, i32* %15, align 4
  %534 = load i32, i32* %13, align 4
  %535 = icmp slt i32 %533, %534
  br i1 %535, label %536, label %648

536:                                              ; preds = %532
  %537 = load i32, i32* %15, align 4
  %538 = load i32, i32* %14, align 4
  %539 = icmp slt i32 %537, %538
  br i1 %539, label %540, label %648

540:                                              ; preds = %536
  %541 = load i32, i32* %5, align 4
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %543, label %575

543:                                              ; preds = %540
  %544 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %545 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %544, i32 0, i32 2
  %546 = load i32*, i32** %545, align 8
  %547 = load i32, i32* %5, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i32, i32* %546, i64 %548
  %550 = load i32, i32* %549, align 4
  %551 = icmp ne i32 %550, 1
  br i1 %551, label %573, label %552

552:                                              ; preds = %543
  %553 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %554 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %553, i32 0, i32 1
  %555 = load i32*, i32** %554, align 8
  %556 = load i32, i32* %5, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds i32, i32* %555, i64 %557
  %559 = load i32, i32* %558, align 4
  %560 = icmp ne i32 %559, 1
  br i1 %560, label %573, label %561

561:                                              ; preds = %552
  %562 = load i32, i32* %15, align 4
  %563 = icmp ne i32 %562, 1
  br i1 %563, label %573, label %564

564:                                              ; preds = %561
  %565 = load i32, i32* %14, align 4
  %566 = icmp ne i32 %565, 2
  br i1 %566, label %573, label %567

567:                                              ; preds = %564
  %568 = load i32, i32* %13, align 4
  %569 = icmp ne i32 %568, 2
  br i1 %569, label %573, label %570

570:                                              ; preds = %567
  %571 = load i32, i32* %5, align 4
  %572 = icmp ne i32 %571, 1
  br label %573

573:                                              ; preds = %570, %567, %564, %561, %552, %543
  %574 = phi i1 [ true, %567 ], [ true, %564 ], [ true, %561 ], [ true, %552 ], [ true, %543 ], [ %572, %570 ]
  br label %575

575:                                              ; preds = %573, %540
  %576 = phi i1 [ false, %540 ], [ %574, %573 ]
  %577 = zext i1 %576 to i32
  %578 = call i32 @RFALSE(i32 %577, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %579 = load i32, i32* %24, align 4
  %580 = icmp eq i32 %579, 35
  br i1 %580, label %581, label %610

581:                                              ; preds = %575
  %582 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %583 = load i32, i32* %5, align 4
  %584 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %585 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %584, i32 0, i32 2
  %586 = load i32*, i32** %585, align 8
  %587 = load i32, i32* %5, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds i32, i32* %586, i64 %588
  %590 = load i32, i32* %589, align 4
  %591 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %592 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %591, i32 0, i32 1
  %593 = load i32*, i32** %592, align 8
  %594 = load i32, i32* %5, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds i32, i32* %593, i64 %595
  %597 = load i32, i32* %596, align 4
  %598 = load i32, i32* %15, align 4
  %599 = getelementptr inbounds [40 x i16], [40 x i16]* %16, i64 0, i64 0
  %600 = load i32, i32* %24, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds i16, i16* %599, i64 %601
  %603 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %604 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %603, i32 0, i32 3
  %605 = load i32, i32* %604, align 8
  %606 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %607 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %606, i32 0, i32 4
  %608 = load i32, i32* %607, align 4
  %609 = call i32 @set_parameters(%struct.tree_balance* %582, i32 %583, i32 %590, i32 %597, i32 %598, i16* %602, i32 %605, i32 %608)
  br label %647

610:                                              ; preds = %575
  %611 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %612 = load i32, i32* %5, align 4
  %613 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %614 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %613, i32 0, i32 2
  %615 = load i32*, i32** %614, align 8
  %616 = load i32, i32* %5, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds i32, i32* %615, i64 %617
  %619 = load i32, i32* %618, align 4
  %620 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %621 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %620, i32 0, i32 3
  %622 = load i32, i32* %621, align 8
  %623 = icmp eq i32 %622, -1
  %624 = zext i1 %623 to i64
  %625 = select i1 %623, i32 0, i32 1
  %626 = sub nsw i32 %619, %625
  %627 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %628 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %627, i32 0, i32 1
  %629 = load i32*, i32** %628, align 8
  %630 = load i32, i32* %5, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds i32, i32* %629, i64 %631
  %633 = load i32, i32* %632, align 4
  %634 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %635 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %634, i32 0, i32 4
  %636 = load i32, i32* %635, align 4
  %637 = icmp eq i32 %636, -1
  %638 = zext i1 %637 to i64
  %639 = select i1 %637, i32 0, i32 1
  %640 = sub nsw i32 %633, %639
  %641 = load i32, i32* %15, align 4
  %642 = getelementptr inbounds [40 x i16], [40 x i16]* %16, i64 0, i64 0
  %643 = load i32, i32* %24, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds i16, i16* %642, i64 %644
  %646 = call i32 @set_parameters(%struct.tree_balance* %611, i32 %612, i32 %626, i32 %640, i32 %641, i16* %645, i32 -1, i32 -1)
  br label %647

647:                                              ; preds = %610, %581
  store i32 130, i32* %3, align 4
  br label %682

648:                                              ; preds = %536, %532
  %649 = load i32, i32* %12, align 4
  %650 = load i32, i32* %15, align 4
  %651 = icmp eq i32 %649, %650
  br i1 %651, label %652, label %661

652:                                              ; preds = %648
  %653 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %654 = load i32, i32* %5, align 4
  %655 = load i32, i32* %12, align 4
  %656 = getelementptr inbounds [40 x i16], [40 x i16]* %16, i64 0, i64 0
  %657 = load i32, i32* %21, align 4
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds i16, i16* %656, i64 %658
  %660 = call i32 @set_parameters(%struct.tree_balance* %653, i32 %654, i32 0, i32 0, i32 %655, i16* %659, i32 -1, i32 -1)
  store i32 130, i32* %3, align 4
  br label %682

661:                                              ; preds = %648
  %662 = load i32, i32* %13, align 4
  %663 = load i32, i32* %14, align 4
  %664 = icmp slt i32 %662, %663
  br i1 %664, label %665, label %667

665:                                              ; preds = %661
  %666 = load i32, i32* @SET_PAR_SHIFT_LEFT, align 4
  store i32 130, i32* %3, align 4
  br label %682

667:                                              ; preds = %661
  %668 = load i32, i32* %13, align 4
  %669 = load i32, i32* %14, align 4
  %670 = icmp sgt i32 %668, %669
  br i1 %670, label %671, label %673

671:                                              ; preds = %667
  %672 = load i32, i32* @SET_PAR_SHIFT_RIGHT, align 4
  store i32 130, i32* %3, align 4
  br label %682

673:                                              ; preds = %667
  %674 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %675 = load i32, i32* %5, align 4
  %676 = call i64 @is_left_neighbor_in_cache(%struct.tree_balance* %674, i32 %675)
  %677 = icmp ne i64 %676, 0
  br i1 %677, label %678, label %680

678:                                              ; preds = %673
  %679 = load i32, i32* @SET_PAR_SHIFT_LEFT, align 4
  store i32 130, i32* %3, align 4
  br label %682

680:                                              ; preds = %673
  %681 = load i32, i32* @SET_PAR_SHIFT_RIGHT, align 4
  store i32 130, i32* %3, align 4
  br label %682

682:                                              ; preds = %680, %678, %671, %665, %652, %647, %284, %270, %136, %99, %77, %64, %59
  %683 = load i32, i32* %3, align 4
  ret i32 %683
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.buffer_head* @PATH_H_PBUFFER(i32, i32) #2

declare dso_local i32 @reiserfs_panic(i32, i8*, i8*) #2

declare dso_local i32 @get_empty_nodes(%struct.tree_balance*, i32) #2

declare dso_local i32 @set_parameters(%struct.tree_balance*, i32, i32, i32, i32, i16*, i32, i32) #2

declare dso_local i32 @get_parents(%struct.tree_balance*, i32) #2

declare dso_local i32 @B_FREE_SPACE(%struct.buffer_head*) #2

declare dso_local i32 @get_rfree(%struct.tree_balance*, i32) #2

declare dso_local i32 @get_lfree(%struct.tree_balance*, i32) #2

declare dso_local i32 @can_node_be_removed(i32, i32, i32, i32, %struct.tree_balance*, i32) #2

declare dso_local i32 @create_virtual_node(%struct.tree_balance*, i32) #2

declare dso_local i32 @check_left(%struct.tree_balance*, i32, i32) #2

declare dso_local i32 @check_right(%struct.tree_balance*, i32, i32) #2

declare dso_local i32 @MAX_NR_KEY(%struct.buffer_head*) #2

declare dso_local i32 @RFALSE(i32, i8*) #2

declare dso_local i64 @is_leaf_removable(%struct.tree_balance*) #2

declare dso_local i32 @get_num_ver(i32, %struct.tree_balance*, i32, i32, i32, i32, i32, i16*, i32) #2

declare dso_local i64 @is_left_neighbor_in_cache(%struct.tree_balance*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
