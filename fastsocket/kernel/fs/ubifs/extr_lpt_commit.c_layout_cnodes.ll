; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_layout_cnodes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_layout_cnodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ubifs_cnode*, i32 }
%struct.ubifs_cnode = type { i64, %struct.ubifs_cnode*, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"LPT out of space\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"LPT out of space at LEB %d:%d needing %d, done_ltab %d, done_lsave %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @layout_cnodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @layout_cnodes(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_cnode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %13 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %12, i32 0, i32 0)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %2, align 4
  br label %460

18:                                               ; preds = %1
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 18
  %21 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %20, align 8
  store %struct.ubifs_cnode* %21, %struct.ubifs_cnode** %11, align 8
  %22 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %11, align 8
  %23 = icmp ne %struct.ubifs_cnode* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %460

25:                                               ; preds = %18
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %4, align 4
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %30 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %33 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %32, i32 0, i32 19
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %67, label %40

40:                                               ; preds = %25
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %41, %44
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %47 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp sle i32 %45, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %40
  store i32 1, i32* %8, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %56 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %58 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %64 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %62, i32 1, i32 %65)
  br label %67

67:                                               ; preds = %50, %40, %25
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %70 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %68, %71
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %74 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = icmp sle i32 %72, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %67
  store i32 1, i32* %9, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %80 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %83 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 8
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %90 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %91 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %89, i32 1, i32 %92)
  br label %94

94:                                               ; preds = %77, %67
  br label %95

95:                                               ; preds = %264, %94
  %96 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %11, align 8
  %97 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %102 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %6, align 4
  %104 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %105 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %104, i32 0, i32 10
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  br label %116

108:                                              ; preds = %95
  %109 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %110 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %109, i32 0, i32 11
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %6, align 4
  %112 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %113 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %112, i32 0, i32 12
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %108, %100
  br label %117

117:                                              ; preds = %192, %172, %116
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %118, %119
  %121 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %122 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = icmp sgt i32 %120, %123
  br i1 %124, label %125, label %210

125:                                              ; preds = %117
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %128 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %127, i32 0, i32 17
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ALIGN(i32 %126, i32 %129)
  store i32 %130, i32* %7, align 4
  %131 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %132 = load i32, i32* %4, align 4
  %133 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %134 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %7, align 4
  %137 = sub nsw i32 %135, %136
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %5, align 4
  %140 = sub nsw i32 %138, %139
  %141 = call i32 @upd_ltab(%struct.ubifs_info* %131, i32 %132, i32 %137, i32 %140)
  %142 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %143 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %144 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %5, align 4
  %147 = sub nsw i32 %145, %146
  %148 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %142, i32 2, i32 %147)
  %149 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %150 = call i32 @alloc_lpt_leb(%struct.ubifs_info* %149, i32* %4)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %125
  br label %446

154:                                              ; preds = %125
  store i32 0, i32* %5, align 4
  %155 = load i32, i32* %4, align 4
  %156 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %157 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %156, i32 0, i32 13
  %158 = load i32, i32* %157, align 4
  %159 = icmp sge i32 %155, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %154
  %161 = load i32, i32* %4, align 4
  %162 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %163 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %162, i32 0, i32 14
  %164 = load i32, i32* %163, align 8
  %165 = icmp sle i32 %161, %164
  br label %166

166:                                              ; preds = %160, %154
  %167 = phi i1 [ false, %154 ], [ %165, %160 ]
  %168 = zext i1 %167 to i32
  %169 = call i32 @ubifs_assert(i32 %168)
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %189, label %172

172:                                              ; preds = %166
  store i32 1, i32* %8, align 4
  %173 = load i32, i32* %4, align 4
  %174 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %175 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %174, i32 0, i32 4
  store i32 %173, i32* %175, align 8
  %176 = load i32, i32* %5, align 4
  %177 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %178 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %177, i32 0, i32 5
  store i32 %176, i32* %178, align 4
  %179 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %180 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %5, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %5, align 4
  %184 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %185 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %186 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %184, i32 1, i32 %187)
  br label %117

189:                                              ; preds = %166
  %190 = load i32, i32* %9, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %209, label %192

192:                                              ; preds = %189
  store i32 1, i32* %9, align 4
  %193 = load i32, i32* %4, align 4
  %194 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %195 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %194, i32 0, i32 7
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* %5, align 4
  %197 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %198 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %197, i32 0, i32 8
  store i32 %196, i32* %198, align 8
  %199 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %200 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %5, align 4
  %203 = add nsw i32 %202, %201
  store i32 %203, i32* %5, align 4
  %204 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %205 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %206 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %204, i32 1, i32 %207)
  br label %117

209:                                              ; preds = %189
  br label %210

210:                                              ; preds = %209, %117
  %211 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %11, align 8
  %212 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %211, i32 0, i32 2
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = icmp ne %struct.TYPE_4__* %213, null
  br i1 %214, label %215, label %238

215:                                              ; preds = %210
  %216 = load i32, i32* %4, align 4
  %217 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %11, align 8
  %218 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %217, i32 0, i32 2
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %220, align 8
  %222 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %11, align 8
  %223 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 0
  store i32 %216, i32* %226, align 4
  %227 = load i32, i32* %5, align 4
  %228 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %11, align 8
  %229 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %228, i32 0, i32 2
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %231, align 8
  %233 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %11, align 8
  %234 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 1
  store i32 %227, i32* %237, align 4
  br label %245

238:                                              ; preds = %210
  %239 = load i32, i32* %4, align 4
  %240 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %241 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %240, i32 0, i32 15
  store i32 %239, i32* %241, align 4
  %242 = load i32, i32* %5, align 4
  %243 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %244 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %243, i32 0, i32 16
  store i32 %242, i32* %244, align 8
  br label %245

245:                                              ; preds = %238, %215
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* %5, align 4
  %248 = add nsw i32 %247, %246
  store i32 %248, i32* %5, align 4
  %249 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %250 = load i32, i32* %6, align 4
  %251 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %249, i32 1, i32 %250)
  %252 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %11, align 8
  %253 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %252, i32 0, i32 1
  %254 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %253, align 8
  store %struct.ubifs_cnode* %254, %struct.ubifs_cnode** %11, align 8
  br label %255

255:                                              ; preds = %245
  %256 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %11, align 8
  %257 = icmp ne %struct.ubifs_cnode* %256, null
  br i1 %257, label %258, label %264

258:                                              ; preds = %255
  %259 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %11, align 8
  %260 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %261 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %260, i32 0, i32 18
  %262 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %261, align 8
  %263 = icmp ne %struct.ubifs_cnode* %259, %262
  br label %264

264:                                              ; preds = %258, %255
  %265 = phi i1 [ false, %255 ], [ %263, %258 ]
  br i1 %265, label %95, label %266

266:                                              ; preds = %264
  %267 = load i32, i32* %8, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %341, label %269

269:                                              ; preds = %266
  %270 = load i32, i32* %5, align 4
  %271 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %272 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = add nsw i32 %270, %273
  %275 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %276 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = icmp sgt i32 %274, %277
  br i1 %278, label %279, label %324

279:                                              ; preds = %269
  %280 = load i32, i32* %5, align 4
  %281 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %282 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %281, i32 0, i32 17
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @ALIGN(i32 %280, i32 %283)
  store i32 %284, i32* %7, align 4
  %285 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %286 = load i32, i32* %4, align 4
  %287 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %288 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %7, align 4
  %291 = sub nsw i32 %289, %290
  %292 = load i32, i32* %7, align 4
  %293 = load i32, i32* %5, align 4
  %294 = sub nsw i32 %292, %293
  %295 = call i32 @upd_ltab(%struct.ubifs_info* %285, i32 %286, i32 %291, i32 %294)
  %296 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %297 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %298 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* %5, align 4
  %301 = sub nsw i32 %299, %300
  %302 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %296, i32 2, i32 %301)
  %303 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %304 = call i32 @alloc_lpt_leb(%struct.ubifs_info* %303, i32* %4)
  store i32 %304, i32* %10, align 4
  %305 = load i32, i32* %10, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %279
  br label %446

308:                                              ; preds = %279
  store i32 0, i32* %5, align 4
  %309 = load i32, i32* %4, align 4
  %310 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %311 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %310, i32 0, i32 13
  %312 = load i32, i32* %311, align 4
  %313 = icmp sge i32 %309, %312
  br i1 %313, label %314, label %320

314:                                              ; preds = %308
  %315 = load i32, i32* %4, align 4
  %316 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %317 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %316, i32 0, i32 14
  %318 = load i32, i32* %317, align 8
  %319 = icmp sle i32 %315, %318
  br label %320

320:                                              ; preds = %314, %308
  %321 = phi i1 [ false, %308 ], [ %319, %314 ]
  %322 = zext i1 %321 to i32
  %323 = call i32 @ubifs_assert(i32 %322)
  br label %324

324:                                              ; preds = %320, %269
  store i32 1, i32* %8, align 4
  %325 = load i32, i32* %4, align 4
  %326 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %327 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %326, i32 0, i32 4
  store i32 %325, i32* %327, align 8
  %328 = load i32, i32* %5, align 4
  %329 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %330 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %329, i32 0, i32 5
  store i32 %328, i32* %330, align 4
  %331 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %332 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* %5, align 4
  %335 = add nsw i32 %334, %333
  store i32 %335, i32* %5, align 4
  %336 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %337 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %338 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %336, i32 1, i32 %339)
  br label %341

341:                                              ; preds = %324, %266
  %342 = load i32, i32* %9, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %416, label %344

344:                                              ; preds = %341
  %345 = load i32, i32* %5, align 4
  %346 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %347 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %346, i32 0, i32 6
  %348 = load i32, i32* %347, align 8
  %349 = add nsw i32 %345, %348
  %350 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %351 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 4
  %353 = icmp sgt i32 %349, %352
  br i1 %353, label %354, label %399

354:                                              ; preds = %344
  %355 = load i32, i32* %5, align 4
  %356 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %357 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %356, i32 0, i32 17
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @ALIGN(i32 %355, i32 %358)
  store i32 %359, i32* %7, align 4
  %360 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %361 = load i32, i32* %4, align 4
  %362 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %363 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %362, i32 0, i32 3
  %364 = load i32, i32* %363, align 4
  %365 = load i32, i32* %7, align 4
  %366 = sub nsw i32 %364, %365
  %367 = load i32, i32* %7, align 4
  %368 = load i32, i32* %5, align 4
  %369 = sub nsw i32 %367, %368
  %370 = call i32 @upd_ltab(%struct.ubifs_info* %360, i32 %361, i32 %366, i32 %369)
  %371 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %372 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %373 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* %5, align 4
  %376 = sub nsw i32 %374, %375
  %377 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %371, i32 2, i32 %376)
  %378 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %379 = call i32 @alloc_lpt_leb(%struct.ubifs_info* %378, i32* %4)
  store i32 %379, i32* %10, align 4
  %380 = load i32, i32* %10, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %354
  br label %446

383:                                              ; preds = %354
  store i32 0, i32* %5, align 4
  %384 = load i32, i32* %4, align 4
  %385 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %386 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %385, i32 0, i32 13
  %387 = load i32, i32* %386, align 4
  %388 = icmp sge i32 %384, %387
  br i1 %388, label %389, label %395

389:                                              ; preds = %383
  %390 = load i32, i32* %4, align 4
  %391 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %392 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %391, i32 0, i32 14
  %393 = load i32, i32* %392, align 8
  %394 = icmp sle i32 %390, %393
  br label %395

395:                                              ; preds = %389, %383
  %396 = phi i1 [ false, %383 ], [ %394, %389 ]
  %397 = zext i1 %396 to i32
  %398 = call i32 @ubifs_assert(i32 %397)
  br label %399

399:                                              ; preds = %395, %344
  store i32 1, i32* %9, align 4
  %400 = load i32, i32* %4, align 4
  %401 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %402 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %401, i32 0, i32 7
  store i32 %400, i32* %402, align 4
  %403 = load i32, i32* %5, align 4
  %404 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %405 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %404, i32 0, i32 8
  store i32 %403, i32* %405, align 8
  %406 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %407 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %406, i32 0, i32 6
  %408 = load i32, i32* %407, align 8
  %409 = load i32, i32* %5, align 4
  %410 = add nsw i32 %409, %408
  store i32 %410, i32* %5, align 4
  %411 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %412 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %413 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %412, i32 0, i32 6
  %414 = load i32, i32* %413, align 8
  %415 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %411, i32 1, i32 %414)
  br label %416

416:                                              ; preds = %399, %341
  %417 = load i32, i32* %5, align 4
  %418 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %419 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %418, i32 0, i32 17
  %420 = load i32, i32* %419, align 4
  %421 = call i32 @ALIGN(i32 %417, i32 %420)
  store i32 %421, i32* %7, align 4
  %422 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %423 = load i32, i32* %4, align 4
  %424 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %425 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %424, i32 0, i32 3
  %426 = load i32, i32* %425, align 4
  %427 = load i32, i32* %7, align 4
  %428 = sub nsw i32 %426, %427
  %429 = load i32, i32* %7, align 4
  %430 = load i32, i32* %5, align 4
  %431 = sub nsw i32 %429, %430
  %432 = call i32 @upd_ltab(%struct.ubifs_info* %422, i32 %423, i32 %428, i32 %431)
  %433 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %434 = load i32, i32* %7, align 4
  %435 = load i32, i32* %5, align 4
  %436 = sub nsw i32 %434, %435
  %437 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %433, i32 4, i32 %436)
  %438 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %439 = load i32, i32* %7, align 4
  %440 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %438, i32 3, i32 %439)
  store i32 %440, i32* %10, align 4
  %441 = load i32, i32* %10, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %445

443:                                              ; preds = %416
  %444 = load i32, i32* %10, align 4
  store i32 %444, i32* %2, align 4
  br label %460

445:                                              ; preds = %416
  store i32 0, i32* %2, align 4
  br label %460

446:                                              ; preds = %382, %307, %153
  %447 = call i32 @ubifs_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %448 = load i32, i32* %4, align 4
  %449 = load i32, i32* %5, align 4
  %450 = load i32, i32* %6, align 4
  %451 = load i32, i32* %9, align 4
  %452 = load i32, i32* %8, align 4
  %453 = call i32 @dbg_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %448, i32 %449, i32 %450, i32 %451, i32 %452)
  %454 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %455 = call i32 @dbg_dump_lpt_info(%struct.ubifs_info* %454)
  %456 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %457 = call i32 @dbg_dump_lpt_lebs(%struct.ubifs_info* %456)
  %458 = call i32 (...) @dump_stack()
  %459 = load i32, i32* %10, align 4
  store i32 %459, i32* %2, align 4
  br label %460

460:                                              ; preds = %446, %445, %443, %24, %16
  %461 = load i32, i32* %2, align 4
  ret i32 %461
}

declare dso_local i32 @dbg_chk_lpt_sz(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @upd_ltab(%struct.ubifs_info*, i32, i32, i32) #1

declare dso_local i32 @alloc_lpt_leb(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @ubifs_err(i8*) #1

declare dso_local i32 @dbg_err(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dbg_dump_lpt_info(%struct.ubifs_info*) #1

declare dso_local i32 @dbg_dump_lpt_lebs(%struct.ubifs_info*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
