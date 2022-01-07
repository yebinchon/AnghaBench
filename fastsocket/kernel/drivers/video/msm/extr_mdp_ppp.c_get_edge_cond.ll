; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp_ppp.c_get_edge_cond.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp_ppp.c_get_edge_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp_blit_req = type { i32, %struct.TYPE_4__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mdp_regs = type { i32, i32 }

@MDP_ROT_90 = common dso_local global i32 0, align 4
@PPP_OP_SCALE_Y_ON = common dso_local global i32 0, align 4
@PPP_OP_SCALE_X_ON = common dso_local global i32 0, align 4
@IMG_TOP = common dso_local global i64 0, align 8
@IMG_BOTTOM = common dso_local global i64 0, align 8
@IMG_LEFT = common dso_local global i64 0, align 8
@IMG_RIGHT = common dso_local global i64 0, align 8
@MDP_Y_CBCR_H2V2 = common dso_local global i64 0, align 8
@MDP_Y_CRCB_H2V2 = common dso_local global i64 0, align 8
@MDP_LEFT_CHROMA = common dso_local global i32 0, align 4
@MDP_RIGHT_CHROMA = common dso_local global i32 0, align 4
@MDP_TOP_CHROMA = common dso_local global i32 0, align 4
@MDP_BOTTOM_CHROMA = common dso_local global i32 0, align 4
@MDP_LEFT_LUMA = common dso_local global i32 0, align 4
@MDP_RIGHT_LUMA = common dso_local global i32 0, align 4
@MDP_TOP_LUMA = common dso_local global i32 0, align 4
@MDP_BOTTOM_LUMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdp_blit_req*, %struct.mdp_regs*)* @get_edge_cond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_edge_cond(%struct.mdp_blit_req* %0, %struct.mdp_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mdp_blit_req*, align 8
  %5 = alloca %struct.mdp_regs*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca [4 x i32], align 16
  %8 = alloca [4 x i32], align 16
  %9 = alloca [4 x i32], align 16
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mdp_blit_req* %0, %struct.mdp_blit_req** %4, align 8
  store %struct.mdp_regs* %1, %struct.mdp_regs** %5, align 8
  %13 = bitcast [4 x i32]* %6 to i32**
  %14 = call i32 @memset(i32** %13, i32 0, i32 16)
  %15 = bitcast [4 x i32]* %7 to i32**
  %16 = call i32 @memset(i32** %15, i32 0, i32 16)
  %17 = bitcast [4 x i32]* %8 to i32**
  %18 = call i32 @memset(i32** %17, i32 0, i32 16)
  %19 = bitcast [4 x i32]* %9 to i32**
  %20 = call i32 @memset(i32** %19, i32 0, i32 16)
  %21 = bitcast [4 x i32]* %10 to i32**
  %22 = call i32 @memset(i32** %21, i32 0, i32 16)
  %23 = load %struct.mdp_regs*, %struct.mdp_regs** %5, align 8
  %24 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %4, align 8
  %26 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MDP_ROT_90, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %2
  %32 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %4, align 8
  %33 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %11, align 4
  %36 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %4, align 8
  %37 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  br label %49

40:                                               ; preds = %2
  %41 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %4, align 8
  %42 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  %45 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %4, align 8
  %46 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %40, %31
  %50 = load %struct.mdp_regs*, %struct.mdp_regs** %5, align 8
  %51 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PPP_OP_SCALE_Y_ON, align 4
  %54 = load i32, i32* @PPP_OP_SCALE_X_ON, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %95

58:                                               ; preds = %49
  %59 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %4, align 8
  %60 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %4, align 8
  %64 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i64, i64* @IMG_TOP, align 8
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %68
  %70 = load i64, i64* @IMG_BOTTOM, align 8
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %70
  %72 = load i64, i64* @IMG_TOP, align 8
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %72
  %74 = load i64, i64* @IMG_BOTTOM, align 8
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %74
  %76 = call i32 @get_edge_info(i32 %62, i32 %66, i32 %67, i32* %69, i32* %71, i32* %73, i32* %75)
  %77 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %4, align 8
  %78 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %4, align 8
  %82 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i64, i64* @IMG_LEFT, align 8
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %86
  %88 = load i64, i64* @IMG_RIGHT, align 8
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %88
  %90 = load i64, i64* @IMG_LEFT, align 8
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %90
  %92 = load i64, i64* @IMG_RIGHT, align 8
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %92
  %94 = call i32 @get_edge_info(i32 %80, i32 %84, i32 %85, i32* %87, i32* %89, i32* %91, i32* %93)
  br label %140

95:                                               ; preds = %49
  %96 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %4, align 8
  %97 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i64, i64* @IMG_LEFT, align 8
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %100
  store i32 %99, i32* %101, align 4
  %102 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %4, align 8
  %103 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %4, align 8
  %107 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %105, %109
  %111 = sub nsw i32 %110, 1
  %112 = load i64, i64* @IMG_RIGHT, align 8
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %112
  store i32 %111, i32* %113, align 4
  %114 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %4, align 8
  %115 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i64, i64* @IMG_TOP, align 8
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %118
  store i32 %117, i32* %119, align 4
  %120 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %4, align 8
  %121 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %4, align 8
  %125 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %123, %127
  %129 = sub nsw i32 %128, 1
  %130 = load i64, i64* @IMG_BOTTOM, align 8
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %130
  store i32 %129, i32* %131, align 4
  %132 = load i64, i64* @IMG_LEFT, align 8
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %132
  store i32 0, i32* %133, align 4
  %134 = load i64, i64* @IMG_TOP, align 8
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %134
  store i32 0, i32* %135, align 4
  %136 = load i64, i64* @IMG_RIGHT, align 8
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %136
  store i32 0, i32* %137, align 4
  %138 = load i64, i64* @IMG_BOTTOM, align 8
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %138
  store i32 0, i32* %139, align 4
  br label %140

140:                                              ; preds = %95, %58
  %141 = load i64, i64* @IMG_LEFT, align 8
  %142 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i64, i64* @IMG_LEFT, align 8
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %144
  store i32 %143, i32* %145, align 4
  %146 = load i64, i64* @IMG_RIGHT, align 8
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i64, i64* @IMG_RIGHT, align 8
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %149
  store i32 %148, i32* %150, align 4
  %151 = load i64, i64* @IMG_TOP, align 8
  %152 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i64, i64* @IMG_TOP, align 8
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %154
  store i32 %153, i32* %155, align 4
  %156 = load i64, i64* @IMG_BOTTOM, align 8
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i64, i64* @IMG_BOTTOM, align 8
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %159
  store i32 %158, i32* %160, align 4
  %161 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %4, align 8
  %162 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load i64, i64* @IMG_LEFT, align 8
  %166 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %165
  store i32 %164, i32* %166, align 4
  %167 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %4, align 8
  %168 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %4, align 8
  %172 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %170, %174
  %176 = sub nsw i32 %175, 1
  %177 = load i64, i64* @IMG_RIGHT, align 8
  %178 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %177
  store i32 %176, i32* %178, align 4
  %179 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %4, align 8
  %180 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i64, i64* @IMG_TOP, align 8
  %184 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %183
  store i32 %182, i32* %184, align 4
  %185 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %4, align 8
  %186 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %4, align 8
  %190 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = add nsw i32 %188, %192
  %194 = sub nsw i32 %193, 1
  %195 = load i64, i64* @IMG_BOTTOM, align 8
  %196 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %195
  store i32 %194, i32* %196, align 4
  %197 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %4, align 8
  %198 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = call i64 @IS_YCRCB(i64 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %229

203:                                              ; preds = %140
  %204 = load i64, i64* @IMG_LEFT, align 8
  %205 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = ashr i32 %206, 1
  %208 = load i64, i64* @IMG_LEFT, align 8
  %209 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %208
  store i32 %207, i32* %209, align 4
  %210 = load i64, i64* @IMG_RIGHT, align 8
  %211 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, 1
  %214 = ashr i32 %213, 1
  %215 = load i64, i64* @IMG_RIGHT, align 8
  %216 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %215
  store i32 %214, i32* %216, align 4
  %217 = load i64, i64* @IMG_LEFT, align 8
  %218 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = ashr i32 %219, 1
  %221 = load i64, i64* @IMG_LEFT, align 8
  %222 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %221
  store i32 %220, i32* %222, align 4
  %223 = load i64, i64* @IMG_RIGHT, align 8
  %224 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = ashr i32 %225, 1
  %227 = load i64, i64* @IMG_RIGHT, align 8
  %228 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %227
  store i32 %226, i32* %228, align 4
  br label %229

229:                                              ; preds = %203, %140
  %230 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %4, align 8
  %231 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @MDP_Y_CBCR_H2V2, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %243, label %236

236:                                              ; preds = %229
  %237 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %4, align 8
  %238 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @MDP_Y_CRCB_H2V2, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %271

243:                                              ; preds = %236, %229
  %244 = load i64, i64* @IMG_TOP, align 8
  %245 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = sub nsw i32 %246, 1
  %248 = ashr i32 %247, 1
  %249 = load i64, i64* @IMG_TOP, align 8
  %250 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %249
  store i32 %248, i32* %250, align 4
  %251 = load i64, i64* @IMG_BOTTOM, align 8
  %252 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %253, 1
  %255 = ashr i32 %254, 1
  %256 = load i64, i64* @IMG_BOTTOM, align 8
  %257 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %256
  store i32 %255, i32* %257, align 4
  %258 = load i64, i64* @IMG_TOP, align 8
  %259 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %260, 1
  %262 = ashr i32 %261, 1
  %263 = load i64, i64* @IMG_TOP, align 8
  %264 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %263
  store i32 %262, i32* %264, align 4
  %265 = load i64, i64* @IMG_BOTTOM, align 8
  %266 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = ashr i32 %267, 1
  %269 = load i64, i64* @IMG_BOTTOM, align 8
  %270 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %269
  store i32 %268, i32* %270, align 4
  br label %271

271:                                              ; preds = %243, %236
  %272 = load i64, i64* @IMG_LEFT, align 8
  %273 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load i64, i64* @IMG_LEFT, align 8
  %276 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = sub nsw i32 %274, %277
  %279 = load i64, i64* @IMG_LEFT, align 8
  %280 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %279
  store i32 %278, i32* %280, align 4
  %281 = load i64, i64* @IMG_RIGHT, align 8
  %282 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load i64, i64* @IMG_RIGHT, align 8
  %285 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = sub nsw i32 %283, %286
  %288 = load i64, i64* @IMG_RIGHT, align 8
  %289 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %288
  store i32 %287, i32* %289, align 4
  %290 = load i64, i64* @IMG_TOP, align 8
  %291 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i64, i64* @IMG_TOP, align 8
  %294 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = sub nsw i32 %292, %295
  %297 = load i64, i64* @IMG_TOP, align 8
  %298 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %297
  store i32 %296, i32* %298, align 4
  %299 = load i64, i64* @IMG_BOTTOM, align 8
  %300 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = load i64, i64* @IMG_BOTTOM, align 8
  %303 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = sub nsw i32 %301, %304
  %306 = load i64, i64* @IMG_BOTTOM, align 8
  %307 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %306
  store i32 %305, i32* %307, align 4
  %308 = load i64, i64* @IMG_LEFT, align 8
  %309 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %387, label %312

312:                                              ; preds = %271
  %313 = load i64, i64* @IMG_LEFT, align 8
  %314 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = icmp sgt i32 %315, 3
  br i1 %316, label %387, label %317

317:                                              ; preds = %312
  %318 = load i64, i64* @IMG_RIGHT, align 8
  %319 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = icmp slt i32 %320, 0
  br i1 %321, label %387, label %322

322:                                              ; preds = %317
  %323 = load i64, i64* @IMG_RIGHT, align 8
  %324 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = icmp sgt i32 %325, 3
  br i1 %326, label %387, label %327

327:                                              ; preds = %322
  %328 = load i64, i64* @IMG_TOP, align 8
  %329 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %387, label %332

332:                                              ; preds = %327
  %333 = load i64, i64* @IMG_TOP, align 8
  %334 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = icmp sgt i32 %335, 3
  br i1 %336, label %387, label %337

337:                                              ; preds = %332
  %338 = load i64, i64* @IMG_BOTTOM, align 8
  %339 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %387, label %342

342:                                              ; preds = %337
  %343 = load i64, i64* @IMG_BOTTOM, align 8
  %344 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = icmp sgt i32 %345, 3
  br i1 %346, label %387, label %347

347:                                              ; preds = %342
  %348 = load i64, i64* @IMG_LEFT, align 8
  %349 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = icmp slt i32 %350, 0
  br i1 %351, label %387, label %352

352:                                              ; preds = %347
  %353 = load i64, i64* @IMG_LEFT, align 8
  %354 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = icmp sgt i32 %355, 3
  br i1 %356, label %387, label %357

357:                                              ; preds = %352
  %358 = load i64, i64* @IMG_RIGHT, align 8
  %359 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = icmp slt i32 %360, 0
  br i1 %361, label %387, label %362

362:                                              ; preds = %357
  %363 = load i64, i64* @IMG_RIGHT, align 8
  %364 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = icmp sgt i32 %365, 3
  br i1 %366, label %387, label %367

367:                                              ; preds = %362
  %368 = load i64, i64* @IMG_TOP, align 8
  %369 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = icmp slt i32 %370, 0
  br i1 %371, label %387, label %372

372:                                              ; preds = %367
  %373 = load i64, i64* @IMG_TOP, align 8
  %374 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = icmp sgt i32 %375, 3
  br i1 %376, label %387, label %377

377:                                              ; preds = %372
  %378 = load i64, i64* @IMG_BOTTOM, align 8
  %379 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = icmp slt i32 %380, 0
  br i1 %381, label %387, label %382

382:                                              ; preds = %377
  %383 = load i64, i64* @IMG_BOTTOM, align 8
  %384 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = icmp sgt i32 %385, 3
  br i1 %386, label %387, label %388

387:                                              ; preds = %382, %377, %372, %367, %362, %357, %352, %347, %342, %337, %332, %327, %322, %317, %312, %271
  store i32 -1, i32* %3, align 4
  br label %469

388:                                              ; preds = %382
  %389 = load i64, i64* @IMG_LEFT, align 8
  %390 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = and i32 %391, 3
  %393 = load i32, i32* @MDP_LEFT_CHROMA, align 4
  %394 = shl i32 %392, %393
  %395 = load %struct.mdp_regs*, %struct.mdp_regs** %5, align 8
  %396 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = or i32 %397, %394
  store i32 %398, i32* %396, align 4
  %399 = load i64, i64* @IMG_RIGHT, align 8
  %400 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = and i32 %401, 3
  %403 = load i32, i32* @MDP_RIGHT_CHROMA, align 4
  %404 = shl i32 %402, %403
  %405 = load %struct.mdp_regs*, %struct.mdp_regs** %5, align 8
  %406 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = or i32 %407, %404
  store i32 %408, i32* %406, align 4
  %409 = load i64, i64* @IMG_TOP, align 8
  %410 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = and i32 %411, 3
  %413 = load i32, i32* @MDP_TOP_CHROMA, align 4
  %414 = shl i32 %412, %413
  %415 = load %struct.mdp_regs*, %struct.mdp_regs** %5, align 8
  %416 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = or i32 %417, %414
  store i32 %418, i32* %416, align 4
  %419 = load i64, i64* @IMG_BOTTOM, align 8
  %420 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = and i32 %421, 3
  %423 = load i32, i32* @MDP_BOTTOM_CHROMA, align 4
  %424 = shl i32 %422, %423
  %425 = load %struct.mdp_regs*, %struct.mdp_regs** %5, align 8
  %426 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = or i32 %427, %424
  store i32 %428, i32* %426, align 4
  %429 = load i64, i64* @IMG_LEFT, align 8
  %430 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = and i32 %431, 3
  %433 = load i32, i32* @MDP_LEFT_LUMA, align 4
  %434 = shl i32 %432, %433
  %435 = load %struct.mdp_regs*, %struct.mdp_regs** %5, align 8
  %436 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = or i32 %437, %434
  store i32 %438, i32* %436, align 4
  %439 = load i64, i64* @IMG_RIGHT, align 8
  %440 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = and i32 %441, 3
  %443 = load i32, i32* @MDP_RIGHT_LUMA, align 4
  %444 = shl i32 %442, %443
  %445 = load %struct.mdp_regs*, %struct.mdp_regs** %5, align 8
  %446 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 4
  %448 = or i32 %447, %444
  store i32 %448, i32* %446, align 4
  %449 = load i64, i64* @IMG_TOP, align 8
  %450 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %449
  %451 = load i32, i32* %450, align 4
  %452 = and i32 %451, 3
  %453 = load i32, i32* @MDP_TOP_LUMA, align 4
  %454 = shl i32 %452, %453
  %455 = load %struct.mdp_regs*, %struct.mdp_regs** %5, align 8
  %456 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 4
  %458 = or i32 %457, %454
  store i32 %458, i32* %456, align 4
  %459 = load i64, i64* @IMG_BOTTOM, align 8
  %460 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %459
  %461 = load i32, i32* %460, align 4
  %462 = and i32 %461, 3
  %463 = load i32, i32* @MDP_BOTTOM_LUMA, align 4
  %464 = shl i32 %462, %463
  %465 = load %struct.mdp_regs*, %struct.mdp_regs** %5, align 8
  %466 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 4
  %468 = or i32 %467, %464
  store i32 %468, i32* %466, align 4
  store i32 0, i32* %3, align 4
  br label %469

469:                                              ; preds = %388, %387
  %470 = load i32, i32* %3, align 4
  ret i32 %470
}

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @get_edge_info(i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @IS_YCRCB(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
