; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_ubifs_lpt_scan_nolock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_ubifs_lpt_scan_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, %struct.ubifs_pnode* }
%struct.ubifs_pnode = type { i64, %struct.TYPE_5__*, %struct.ubifs_pnode*, %struct.ubifs_lprops* }
%struct.TYPE_5__ = type { %struct.ubifs_pnode*, %struct.ubifs_pnode* }
%struct.ubifs_lprops = type { i32 }
%struct.ubifs_info.0 = type opaque
%struct.ubifs_lprops.1 = type opaque
%struct.ubifs_nnode = type { i64, %struct.TYPE_5__*, %struct.ubifs_nnode*, %struct.ubifs_lprops* }
%struct.lpt_scan_node = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { %struct.ubifs_pnode*, %struct.ubifs_pnode* }
%struct.TYPE_4__ = type { %struct.ubifs_pnode* }
%struct.ubifs_cnode = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT_SHIFT = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@LPT_SCAN_ADD = common dso_local global i32 0, align 4
@LPT_SCAN_STOP = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_lpt_scan_nolock(%struct.ubifs_info* %0, i32 %1, i32 %2, i32 (%struct.ubifs_info.0*, %struct.ubifs_lprops.1*, i32, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32 (%struct.ubifs_info.0*, %struct.ubifs_lprops.1*, i32, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ubifs_nnode*, align 8
  %18 = alloca %struct.ubifs_pnode*, align 8
  %19 = alloca %struct.lpt_scan_node*, align 8
  %20 = alloca %struct.ubifs_lprops*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca %struct.ubifs_nnode*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.ubifs_nnode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 (%struct.ubifs_info.0*, %struct.ubifs_lprops.1*, i32, i8*)* %3, i32 (%struct.ubifs_info.0*, %struct.ubifs_lprops.1*, i32, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %42

29:                                               ; preds = %5
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %39 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %37, %29
  br label %42

42:                                               ; preds = %41, %5
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %45 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %51 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br label %54

54:                                               ; preds = %48, %42
  %55 = phi i1 [ false, %42 ], [ %53, %48 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @ubifs_assert(i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %60 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sge i32 %58, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %66 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br label %69

69:                                               ; preds = %63, %54
  %70 = phi i1 [ false, %54 ], [ %68, %63 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @ubifs_assert(i32 %71)
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %74 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %73, i32 0, i32 4
  %75 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %74, align 8
  %76 = icmp ne %struct.ubifs_pnode* %75, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %69
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %79 = call i32 @ubifs_read_nnode(%struct.ubifs_info* %78, i32* null, i32 0)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %6, align 4
  br label %494

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %69
  %86 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %87 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = mul i64 48, %90
  %92 = load i32, i32* @GFP_NOFS, align 4
  %93 = call i8* @kmalloc(i64 %91, i32 %92)
  %94 = bitcast i8* %93 to %struct.lpt_scan_node*
  store %struct.lpt_scan_node* %94, %struct.lpt_scan_node** %19, align 8
  %95 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %96 = icmp ne %struct.lpt_scan_node* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %85
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %494

100:                                              ; preds = %85
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %102 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %101, i32 0, i32 4
  %103 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %102, align 8
  %104 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %105 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %104, i64 0
  %106 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store %struct.ubifs_pnode* %103, %struct.ubifs_pnode** %107, align 8
  %108 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %109 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %108, i64 0
  %110 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  br label %111

111:                                              ; preds = %396, %100
  %112 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %113 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %112, i32 0, i32 4
  %114 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %113, align 8
  %115 = bitcast %struct.ubifs_pnode* %114 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %115, %struct.ubifs_nnode** %17, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %118 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %116, %119
  store i32 %120, i32* %13, align 4
  %121 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %122 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %125 = mul nsw i32 %123, %124
  store i32 %125, i32* %16, align 4
  store i32 1, i32* %14, align 4
  br label %126

126:                                              ; preds = %161, %111
  %127 = load i32, i32* %14, align 4
  %128 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %129 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %164

132:                                              ; preds = %126
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %16, align 4
  %135 = ashr i32 %133, %134
  %136 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %137 = sub nsw i32 %136, 1
  %138 = and i32 %135, %137
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %140 = load i32, i32* %16, align 4
  %141 = sub nsw i32 %140, %139
  store i32 %141, i32* %16, align 4
  %142 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %143 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %143, i64 %145
  %147 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %148 = bitcast %struct.ubifs_nnode* %147 to %struct.ubifs_pnode*
  %149 = load i32, i32* %15, align 4
  %150 = call %struct.ubifs_pnode* @scan_get_nnode(%struct.ubifs_info* %142, %struct.lpt_scan_node* %146, %struct.ubifs_pnode* %148, i32 %149)
  %151 = bitcast %struct.ubifs_pnode* %150 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %151, %struct.ubifs_nnode** %17, align 8
  %152 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %153 = bitcast %struct.ubifs_nnode* %152 to %struct.ubifs_pnode*
  %154 = call i64 @IS_ERR(%struct.ubifs_pnode* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %132
  %157 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %158 = bitcast %struct.ubifs_nnode* %157 to %struct.ubifs_pnode*
  %159 = call i32 @PTR_ERR(%struct.ubifs_pnode* %158)
  store i32 %159, i32* %12, align 4
  br label %490

160:                                              ; preds = %132
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %14, align 4
  br label %126

164:                                              ; preds = %126
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* %16, align 4
  %167 = ashr i32 %165, %166
  %168 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %169 = sub nsw i32 %168, 1
  %170 = and i32 %167, %169
  store i32 %170, i32* %15, align 4
  %171 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %172 = load i32, i32* %16, align 4
  %173 = sub nsw i32 %172, %171
  store i32 %173, i32* %16, align 4
  %174 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %175 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %176 = load i32, i32* %14, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %175, i64 %177
  %179 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %180 = bitcast %struct.ubifs_nnode* %179 to %struct.ubifs_pnode*
  %181 = load i32, i32* %15, align 4
  %182 = call %struct.ubifs_pnode* @scan_get_pnode(%struct.ubifs_info* %174, %struct.lpt_scan_node* %178, %struct.ubifs_pnode* %180, i32 %181)
  store %struct.ubifs_pnode* %182, %struct.ubifs_pnode** %18, align 8
  %183 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %184 = call i64 @IS_ERR(%struct.ubifs_pnode* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %164
  %187 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %188 = call i32 @PTR_ERR(%struct.ubifs_pnode* %187)
  store i32 %188, i32* %12, align 4
  br label %490

189:                                              ; preds = %164
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %192 = sub nsw i32 %191, 1
  %193 = and i32 %190, %192
  store i32 %193, i32* %15, align 4
  br label %194

194:                                              ; preds = %189, %405, %488
  %195 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %196 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %195, i32 0, i32 3
  %197 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %196, align 8
  %198 = load i32, i32* %15, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %197, i64 %199
  store %struct.ubifs_lprops* %200, %struct.ubifs_lprops** %20, align 8
  %201 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %20, align 8
  %202 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %22, align 4
  %204 = load i32 (%struct.ubifs_info.0*, %struct.ubifs_lprops.1*, i32, i8*)*, i32 (%struct.ubifs_info.0*, %struct.ubifs_lprops.1*, i32, i8*)** %10, align 8
  %205 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %206 = bitcast %struct.ubifs_info* %205 to %struct.ubifs_info.0*
  %207 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %20, align 8
  %208 = bitcast %struct.ubifs_lprops* %207 to %struct.ubifs_lprops.1*
  %209 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %209, i64 %211
  %213 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i8*, i8** %11, align 8
  %216 = call i32 %204(%struct.ubifs_info.0* %206, %struct.ubifs_lprops.1* %208, i32 %214, i8* %215)
  store i32 %216, i32* %21, align 4
  %217 = load i32, i32* %21, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %194
  %220 = load i32, i32* %21, align 4
  store i32 %220, i32* %12, align 4
  br label %490

221:                                              ; preds = %194
  %222 = load i32, i32* %21, align 4
  %223 = load i32, i32* @LPT_SCAN_ADD, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %376

226:                                              ; preds = %221
  store i32 1, i32* %14, align 4
  br label %227

227:                                              ; preds = %295, %226
  %228 = load i32, i32* %14, align 4
  %229 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %230 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = icmp slt i32 %228, %231
  br i1 %232, label %233, label %298

233:                                              ; preds = %227
  store i64 32, i64* %23, align 8
  %234 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %235 = load i32, i32* %14, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %234, i64 %236
  %238 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %233
  br label %295

242:                                              ; preds = %233
  %243 = load i32, i32* @GFP_NOFS, align 4
  %244 = call i8* @kmalloc(i64 32, i32 %243)
  %245 = bitcast i8* %244 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %245, %struct.ubifs_nnode** %17, align 8
  %246 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %247 = icmp ne %struct.ubifs_nnode* %246, null
  br i1 %247, label %251, label %248

248:                                              ; preds = %242
  %249 = load i32, i32* @ENOMEM, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %12, align 4
  br label %490

251:                                              ; preds = %242
  %252 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %253 = bitcast %struct.ubifs_nnode* %252 to %struct.ubifs_pnode*
  %254 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %255 = load i32, i32* %14, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %254, i64 %256
  %258 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %257, i32 0, i32 4
  %259 = call i32 @memcpy(%struct.ubifs_pnode* %253, i32* %258, i64 32)
  %260 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %261 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %260, i32 0, i32 2
  %262 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %261, align 8
  store %struct.ubifs_nnode* %262, %struct.ubifs_nnode** %24, align 8
  %263 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %264 = bitcast %struct.ubifs_nnode* %263 to %struct.ubifs_pnode*
  %265 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %24, align 8
  %266 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %265, i32 0, i32 1
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %266, align 8
  %268 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %269 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 1
  store %struct.ubifs_pnode* %264, %struct.ubifs_pnode** %272, align 8
  %273 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %274 = bitcast %struct.ubifs_nnode* %273 to %struct.ubifs_pnode*
  %275 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %276 = load i32, i32* %14, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %275, i64 %277
  %279 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 0
  store %struct.ubifs_pnode* %274, %struct.ubifs_pnode** %280, align 8
  %281 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %282 = load i32, i32* %14, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %281, i64 %283
  %285 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %284, i32 0, i32 0
  store i32 1, i32* %285, align 8
  %286 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %287 = bitcast %struct.ubifs_nnode* %286 to %struct.ubifs_pnode*
  %288 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %289 = load i32, i32* %14, align 4
  %290 = add nsw i32 %289, 1
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %288, i64 %291
  %293 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %292, i32 0, i32 3
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 0
  store %struct.ubifs_pnode* %287, %struct.ubifs_pnode** %294, align 8
  br label %295

295:                                              ; preds = %251, %241
  %296 = load i32, i32* %14, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %14, align 4
  br label %227

298:                                              ; preds = %227
  %299 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %300 = load i32, i32* %14, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %299, i64 %301
  %303 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %298
  %307 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %308 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %20, align 8
  %309 = call i32 @ubifs_ensure_cat(%struct.ubifs_info* %307, %struct.ubifs_lprops* %308)
  br label %359

310:                                              ; preds = %298
  store i64 32, i64* %25, align 8
  %311 = load i32, i32* @GFP_NOFS, align 4
  %312 = call i8* @kmalloc(i64 32, i32 %311)
  %313 = bitcast i8* %312 to %struct.ubifs_pnode*
  store %struct.ubifs_pnode* %313, %struct.ubifs_pnode** %18, align 8
  %314 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %315 = icmp ne %struct.ubifs_pnode* %314, null
  br i1 %315, label %319, label %316

316:                                              ; preds = %310
  %317 = load i32, i32* @ENOMEM, align 4
  %318 = sub nsw i32 0, %317
  store i32 %318, i32* %12, align 4
  br label %490

319:                                              ; preds = %310
  %320 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %321 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %322 = load i32, i32* %14, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %321, i64 %323
  %325 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %324, i32 0, i32 2
  %326 = call i32 @memcpy(%struct.ubifs_pnode* %320, i32* %325, i64 32)
  %327 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %328 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %327, i32 0, i32 2
  %329 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %328, align 8
  %330 = bitcast %struct.ubifs_pnode* %329 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %330, %struct.ubifs_nnode** %26, align 8
  %331 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %332 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %26, align 8
  %333 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %332, i32 0, i32 1
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** %333, align 8
  %335 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %336 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 0
  store %struct.ubifs_pnode* %331, %struct.ubifs_pnode** %339, align 8
  %340 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %341 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %342 = load i32, i32* %14, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %341, i64 %343
  %345 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 1
  store %struct.ubifs_pnode* %340, %struct.ubifs_pnode** %346, align 8
  %347 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %348 = load i32, i32* %14, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %347, i64 %349
  %351 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %350, i32 0, i32 0
  store i32 1, i32* %351, align 8
  %352 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %353 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %354 = call i32 @update_cats(%struct.ubifs_info* %352, %struct.ubifs_pnode* %353)
  %355 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %356 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %356, align 4
  br label %359

359:                                              ; preds = %319, %306
  %360 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %361 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %362 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %361, i32 0, i32 4
  %363 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %362, align 8
  %364 = bitcast %struct.ubifs_pnode* %363 to %struct.ubifs_cnode*
  %365 = call i32 @dbg_check_lpt_nodes(%struct.ubifs_info* %360, %struct.ubifs_cnode* %364, i32 0, i32 0)
  store i32 %365, i32* %12, align 4
  %366 = load i32, i32* %12, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %359
  br label %490

369:                                              ; preds = %359
  %370 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %371 = call i32 @dbg_check_cats(%struct.ubifs_info* %370)
  store i32 %371, i32* %12, align 4
  %372 = load i32, i32* %12, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %375

374:                                              ; preds = %369
  br label %490

375:                                              ; preds = %369
  br label %376

376:                                              ; preds = %375, %221
  %377 = load i32, i32* %21, align 4
  %378 = load i32, i32* @LPT_SCAN_STOP, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %382

381:                                              ; preds = %376
  store i32 0, i32* %12, align 4
  br label %489

382:                                              ; preds = %376
  %383 = load i32, i32* %22, align 4
  %384 = load i32, i32* %9, align 4
  %385 = icmp eq i32 %383, %384
  br i1 %385, label %386, label %389

386:                                              ; preds = %382
  %387 = load i32, i32* @ENOSPC, align 4
  %388 = sub nsw i32 0, %387
  store i32 %388, i32* %12, align 4
  br label %490

389:                                              ; preds = %382
  %390 = load i32, i32* %22, align 4
  %391 = add nsw i32 %390, 1
  %392 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %393 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = icmp sge i32 %391, %394
  br i1 %395, label %396, label %400

396:                                              ; preds = %389
  %397 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %398 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  store i32 %399, i32* %8, align 4
  br label %111

400:                                              ; preds = %389
  %401 = load i32, i32* %15, align 4
  %402 = add nsw i32 %401, 1
  %403 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %404 = icmp slt i32 %402, %403
  br i1 %404, label %405, label %408

405:                                              ; preds = %400
  %406 = load i32, i32* %15, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %15, align 4
  br label %194

408:                                              ; preds = %400
  %409 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %410 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %409, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = trunc i64 %411 to i32
  store i32 %412, i32* %15, align 4
  br label %413

413:                                              ; preds = %408, %433
  %414 = load i32, i32* %14, align 4
  %415 = sub nsw i32 %414, 1
  store i32 %415, i32* %14, align 4
  %416 = load i32, i32* %14, align 4
  %417 = icmp sge i32 %416, 0
  %418 = zext i1 %417 to i32
  %419 = call i32 @ubifs_assert(i32 %418)
  %420 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %421 = load i32, i32* %14, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %420, i64 %422
  %424 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %424, i32 0, i32 0
  %426 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %425, align 8
  %427 = bitcast %struct.ubifs_pnode* %426 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %427, %struct.ubifs_nnode** %17, align 8
  %428 = load i32, i32* %15, align 4
  %429 = add nsw i32 %428, 1
  %430 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %431 = icmp slt i32 %429, %430
  br i1 %431, label %432, label %433

432:                                              ; preds = %413
  br label %438

433:                                              ; preds = %413
  %434 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %435 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %434, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = trunc i64 %436 to i32
  store i32 %437, i32* %15, align 4
  br label %413

438:                                              ; preds = %432
  %439 = load i32, i32* %15, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %15, align 4
  %441 = load i32, i32* %14, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %14, align 4
  br label %443

443:                                              ; preds = %469, %438
  %444 = load i32, i32* %14, align 4
  %445 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %446 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %445, i32 0, i32 2
  %447 = load i32, i32* %446, align 8
  %448 = icmp slt i32 %444, %447
  br i1 %448, label %449, label %472

449:                                              ; preds = %443
  %450 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %451 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %452 = load i32, i32* %14, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %451, i64 %453
  %455 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %456 = bitcast %struct.ubifs_nnode* %455 to %struct.ubifs_pnode*
  %457 = load i32, i32* %15, align 4
  %458 = call %struct.ubifs_pnode* @scan_get_nnode(%struct.ubifs_info* %450, %struct.lpt_scan_node* %454, %struct.ubifs_pnode* %456, i32 %457)
  %459 = bitcast %struct.ubifs_pnode* %458 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %459, %struct.ubifs_nnode** %17, align 8
  %460 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %461 = bitcast %struct.ubifs_nnode* %460 to %struct.ubifs_pnode*
  %462 = call i64 @IS_ERR(%struct.ubifs_pnode* %461)
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %468

464:                                              ; preds = %449
  %465 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %466 = bitcast %struct.ubifs_nnode* %465 to %struct.ubifs_pnode*
  %467 = call i32 @PTR_ERR(%struct.ubifs_pnode* %466)
  store i32 %467, i32* %12, align 4
  br label %490

468:                                              ; preds = %449
  store i32 0, i32* %15, align 4
  br label %469

469:                                              ; preds = %468
  %470 = load i32, i32* %14, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %14, align 4
  br label %443

472:                                              ; preds = %443
  %473 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %474 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %475 = load i32, i32* %14, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %474, i64 %476
  %478 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %479 = bitcast %struct.ubifs_nnode* %478 to %struct.ubifs_pnode*
  %480 = load i32, i32* %15, align 4
  %481 = call %struct.ubifs_pnode* @scan_get_pnode(%struct.ubifs_info* %473, %struct.lpt_scan_node* %477, %struct.ubifs_pnode* %479, i32 %480)
  store %struct.ubifs_pnode* %481, %struct.ubifs_pnode** %18, align 8
  %482 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %483 = call i64 @IS_ERR(%struct.ubifs_pnode* %482)
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %488

485:                                              ; preds = %472
  %486 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %487 = call i32 @PTR_ERR(%struct.ubifs_pnode* %486)
  store i32 %487, i32* %12, align 4
  br label %490

488:                                              ; preds = %472
  store i32 0, i32* %15, align 4
  br label %194

489:                                              ; preds = %381
  br label %490

490:                                              ; preds = %489, %485, %464, %386, %374, %368, %316, %248, %219, %186, %156
  %491 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %492 = call i32 @kfree(%struct.lpt_scan_node* %491)
  %493 = load i32, i32* %12, align 4
  store i32 %493, i32* %6, align 4
  br label %494

494:                                              ; preds = %490, %97, %82
  %495 = load i32, i32* %6, align 4
  ret i32 %495
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @ubifs_read_nnode(%struct.ubifs_info*, i32*, i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local %struct.ubifs_pnode* @scan_get_nnode(%struct.ubifs_info*, %struct.lpt_scan_node*, %struct.ubifs_pnode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_pnode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_pnode*) #1

declare dso_local %struct.ubifs_pnode* @scan_get_pnode(%struct.ubifs_info*, %struct.lpt_scan_node*, %struct.ubifs_pnode*, i32) #1

declare dso_local i32 @memcpy(%struct.ubifs_pnode*, i32*, i64) #1

declare dso_local i32 @ubifs_ensure_cat(%struct.ubifs_info*, %struct.ubifs_lprops*) #1

declare dso_local i32 @update_cats(%struct.ubifs_info*, %struct.ubifs_pnode*) #1

declare dso_local i32 @dbg_check_lpt_nodes(%struct.ubifs_info*, %struct.ubifs_cnode*, i32, i32) #1

declare dso_local i32 @dbg_check_cats(%struct.ubifs_info*) #1

declare dso_local i32 @kfree(%struct.lpt_scan_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
