; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unswitch.c_unswitch_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unswitch.c_unswitch_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32 }
%struct.loops = type { i32 }
%struct.loop = type { %struct.TYPE_33__*, %struct.TYPE_33__*, i32 }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32, i32, i32, i32 }
%struct.TYPE_32__ = type { i32, %struct.TYPE_33__* }

@EDGE_IRREDUCIBLE_LOOP = common dso_local global i32 0, align 4
@EXIT_BLOCK_PTR = common dso_local global %struct.TYPE_31__* null, align 8
@REG_BR_PROB_BASE = common dso_local global i32 0, align 4
@EDGE_FALLTHRU = common dso_local global i32 0, align 4
@BB_IRREDUCIBLE_LOOP = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.loop* (%struct.loops*, %struct.loop*, %struct.TYPE_33__*, i32, i32)* @unswitch_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.loop* @unswitch_loop(%struct.loops* %0, %struct.loop* %1, %struct.TYPE_33__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.loop*, align 8
  %7 = alloca %struct.loops*, align 8
  %8 = alloca %struct.loop*, align 8
  %9 = alloca %struct.TYPE_33__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca %struct.TYPE_30__*, align 8
  %14 = alloca %struct.TYPE_30__*, align 8
  %15 = alloca %struct.TYPE_30__*, align 8
  %16 = alloca %struct.TYPE_30__*, align 8
  %17 = alloca %struct.TYPE_33__*, align 8
  %18 = alloca %struct.TYPE_33__*, align 8
  %19 = alloca %struct.loop*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.loops* %0, %struct.loops** %7, align 8
  store %struct.loop* %1, %struct.loop** %8, align 8
  store %struct.TYPE_33__* %2, %struct.TYPE_33__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %24 = load %struct.loop*, %struct.loop** %8, align 8
  %25 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %26 = call i32 @flow_bb_inside_loop_p(%struct.loop* %24, %struct.TYPE_33__* %25)
  %27 = call i32 @gcc_assert(i32 %26)
  %28 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @EDGE_COUNT(i32 %30)
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i32
  %34 = call i32 @gcc_assert(i32 %33)
  %35 = load %struct.loop*, %struct.loop** %8, align 8
  %36 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %37 = call i32 @just_once_each_iteration_p(%struct.loop* %35, %struct.TYPE_33__* %36)
  %38 = call i32 @gcc_assert(i32 %37)
  %39 = load %struct.loop*, %struct.loop** %8, align 8
  %40 = getelementptr inbounds %struct.loop, %struct.loop* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @gcc_assert(i32 %44)
  %46 = load %struct.loop*, %struct.loop** %8, align 8
  %47 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %48 = call %struct.TYPE_32__* @EDGE_SUCC(%struct.TYPE_33__* %47, i32 0)
  %49 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_33__*, %struct.TYPE_33__** %49, align 8
  %51 = call i32 @flow_bb_inside_loop_p(%struct.loop* %46, %struct.TYPE_33__* %50)
  %52 = call i32 @gcc_assert(i32 %51)
  %53 = load %struct.loop*, %struct.loop** %8, align 8
  %54 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %55 = call %struct.TYPE_32__* @EDGE_SUCC(%struct.TYPE_33__* %54, i32 1)
  %56 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_33__*, %struct.TYPE_33__** %56, align 8
  %58 = call i32 @flow_bb_inside_loop_p(%struct.loop* %53, %struct.TYPE_33__* %57)
  %59 = call i32 @gcc_assert(i32 %58)
  %60 = load %struct.loop*, %struct.loop** %8, align 8
  %61 = call %struct.TYPE_30__* @loop_preheader_edge(%struct.loop* %60)
  store %struct.TYPE_30__* %61, %struct.TYPE_30__** %12, align 8
  %62 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @EDGE_IRREDUCIBLE_LOOP, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %21, align 4
  %67 = load i32, i32* @EDGE_IRREDUCIBLE_LOOP, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = call i32 @sbitmap_alloc(i32 2)
  store i32 %73, i32* %20, align 4
  %74 = load i32, i32* %20, align 4
  %75 = call i32 @sbitmap_zero(i32 %74)
  %76 = load %struct.loop*, %struct.loop** %8, align 8
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %78 = load %struct.loops*, %struct.loops** %7, align 8
  %79 = load i32, i32* %20, align 4
  %80 = call i32 @duplicate_loop_to_header_edge(%struct.loop* %76, %struct.TYPE_30__* %77, %struct.loops* %78, i32 1, i32 %79, i32* null, i32* null, i32* null, i32 0)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %5
  %83 = load i32, i32* %20, align 4
  %84 = call i32 @sbitmap_free(i32 %83)
  store %struct.loop* null, %struct.loop** %6, align 8
  br label %242

85:                                               ; preds = %5
  %86 = load i32, i32* %20, align 4
  %87 = call i32 @sbitmap_free(i32 %86)
  %88 = load i32, i32* %21, align 4
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %94 = call %struct.TYPE_33__* @get_bb_copy(%struct.TYPE_33__* %93)
  store %struct.TYPE_33__* %94, %struct.TYPE_33__** %18, align 8
  %95 = load %struct.TYPE_33__*, %struct.TYPE_33__** %18, align 8
  %96 = call %struct.TYPE_30__* @BRANCH_EDGE(%struct.TYPE_33__* %95)
  store %struct.TYPE_30__* %96, %struct.TYPE_30__** %14, align 8
  %97 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %98 = call %struct.TYPE_30__* @FALLTHRU_EDGE(%struct.TYPE_33__* %97)
  store %struct.TYPE_30__* %98, %struct.TYPE_30__** %15, align 8
  %99 = load %struct.loop*, %struct.loop** %8, align 8
  %100 = getelementptr inbounds %struct.loop, %struct.loop* %99, i32 0, i32 1
  %101 = load %struct.TYPE_33__*, %struct.TYPE_33__** %100, align 8
  %102 = call %struct.TYPE_33__* @get_bb_copy(%struct.TYPE_33__* %101)
  %103 = call %struct.TYPE_30__* @single_succ_edge(%struct.TYPE_33__* %102)
  store %struct.TYPE_30__* %103, %struct.TYPE_30__** %13, align 8
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %22, align 4
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** @EXIT_BLOCK_PTR, align 8
  %108 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call %struct.TYPE_33__* @create_empty_bb(i32 %109)
  store %struct.TYPE_33__* %110, %struct.TYPE_33__** %17, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @XEXP(i32 %111, i32 0)
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @XEXP(i32 %113, i32 1)
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @GET_CODE(i32 %115)
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @block_label(i32 %119)
  %121 = load i32, i32* %22, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @compare_and_jump_seq(i32 %112, i32 %114, i32 %116, i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %23, align 4
  %124 = load i32, i32* %23, align 4
  %125 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %126 = call i32 @BB_END(%struct.TYPE_33__* %125)
  %127 = call i32 @emit_insn_after(i32 %124, i32 %126)
  %128 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %129 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call %struct.TYPE_30__* @make_edge(%struct.TYPE_33__* %128, i32 %131, i32 0)
  store %struct.TYPE_30__* %132, %struct.TYPE_30__** %16, align 8
  %133 = load i32, i32* %22, align 4
  %134 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %22, align 4
  %140 = mul nsw i32 %138, %139
  %141 = load i32, i32* @REG_BR_PROB_BASE, align 4
  %142 = sdiv i32 %140, %141
  %143 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %146 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %147 = call %struct.TYPE_30__* @FALLTHRU_EDGE(%struct.TYPE_33__* %146)
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @EDGE_FALLTHRU, align 4
  %151 = call %struct.TYPE_30__* @make_edge(%struct.TYPE_33__* %145, i32 %149, i32 %150)
  store %struct.TYPE_30__* %151, %struct.TYPE_30__** %16, align 8
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 %159, %162
  %164 = load i32, i32* @REG_BR_PROB_BASE, align 4
  %165 = sdiv i32 %163, %164
  %166 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* %21, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %188

170:                                              ; preds = %85
  %171 = load i32, i32* @BB_IRREDUCIBLE_LOOP, align 4
  %172 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %173 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  %176 = load i32, i32* @EDGE_IRREDUCIBLE_LOOP, align 4
  %177 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %178 = call %struct.TYPE_32__* @EDGE_SUCC(%struct.TYPE_33__* %177, i32 0)
  %179 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %176
  store i32 %181, i32* %179, align 8
  %182 = load i32, i32* @EDGE_IRREDUCIBLE_LOOP, align 4
  %183 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %184 = call %struct.TYPE_32__* @EDGE_SUCC(%struct.TYPE_33__* %183, i32 1)
  %185 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %182
  store i32 %187, i32* %185, align 8
  br label %209

188:                                              ; preds = %85
  %189 = load i32, i32* @BB_IRREDUCIBLE_LOOP, align 4
  %190 = xor i32 %189, -1
  %191 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %192 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, %190
  store i32 %194, i32* %192, align 4
  %195 = load i32, i32* @EDGE_IRREDUCIBLE_LOOP, align 4
  %196 = xor i32 %195, -1
  %197 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %198 = call %struct.TYPE_32__* @EDGE_SUCC(%struct.TYPE_33__* %197, i32 0)
  %199 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = and i32 %200, %196
  store i32 %201, i32* %199, align 8
  %202 = load i32, i32* @EDGE_IRREDUCIBLE_LOOP, align 4
  %203 = xor i32 %202, -1
  %204 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %205 = call %struct.TYPE_32__* @EDGE_SUCC(%struct.TYPE_33__* %204, i32 1)
  %206 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = and i32 %207, %203
  store i32 %208, i32* %206, align 8
  br label %209

209:                                              ; preds = %188, %170
  %210 = load %struct.loops*, %struct.loops** %7, align 8
  %211 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %212 = load %struct.loop*, %struct.loop** %8, align 8
  %213 = getelementptr inbounds %struct.loop, %struct.loop* %212, i32 0, i32 0
  %214 = load %struct.TYPE_33__*, %struct.TYPE_33__** %213, align 8
  %215 = call %struct.TYPE_33__* @get_bb_copy(%struct.TYPE_33__* %214)
  %216 = call i32 @single_pred_edge(%struct.TYPE_33__* %215)
  %217 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %218 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %219 = call %struct.TYPE_30__* @BRANCH_EDGE(%struct.TYPE_33__* %218)
  %220 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %221 = call %struct.TYPE_30__* @FALLTHRU_EDGE(%struct.TYPE_33__* %220)
  %222 = call %struct.loop* @loopify(%struct.loops* %210, %struct.TYPE_30__* %211, i32 %216, %struct.TYPE_33__* %217, %struct.TYPE_30__* %219, %struct.TYPE_30__* %221, i32 1)
  store %struct.loop* %222, %struct.loop** %19, align 8
  %223 = load %struct.loops*, %struct.loops** %7, align 8
  %224 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %225 = call i32 @remove_path(%struct.loops* %223, %struct.TYPE_30__* %224)
  %226 = load %struct.loops*, %struct.loops** %7, align 8
  %227 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %228 = call i32 @remove_path(%struct.loops* %226, %struct.TYPE_30__* %227)
  %229 = load %struct.loop*, %struct.loop** %8, align 8
  %230 = call i32 @fix_loop_placement(%struct.loop* %229)
  %231 = load %struct.loop*, %struct.loop** %19, align 8
  %232 = call i32 @fix_loop_placement(%struct.loop* %231)
  %233 = load %struct.loop*, %struct.loop** %8, align 8
  %234 = call %struct.TYPE_30__* @loop_preheader_edge(%struct.loop* %233)
  %235 = load i32, i32* @NULL_RTX, align 4
  %236 = call i32 @loop_split_edge_with(%struct.TYPE_30__* %234, i32 %235)
  %237 = load %struct.loop*, %struct.loop** %19, align 8
  %238 = call %struct.TYPE_30__* @loop_preheader_edge(%struct.loop* %237)
  %239 = load i32, i32* @NULL_RTX, align 4
  %240 = call i32 @loop_split_edge_with(%struct.TYPE_30__* %238, i32 %239)
  %241 = load %struct.loop*, %struct.loop** %19, align 8
  store %struct.loop* %241, %struct.loop** %6, align 8
  br label %242

242:                                              ; preds = %209, %82
  %243 = load %struct.loop*, %struct.loop** %6, align 8
  ret %struct.loop* %243
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @flow_bb_inside_loop_p(%struct.loop*, %struct.TYPE_33__*) #1

declare dso_local i32 @EDGE_COUNT(i32) #1

declare dso_local i32 @just_once_each_iteration_p(%struct.loop*, %struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_32__* @EDGE_SUCC(%struct.TYPE_33__*, i32) #1

declare dso_local %struct.TYPE_30__* @loop_preheader_edge(%struct.loop*) #1

declare dso_local i32 @sbitmap_alloc(i32) #1

declare dso_local i32 @sbitmap_zero(i32) #1

declare dso_local i32 @duplicate_loop_to_header_edge(%struct.loop*, %struct.TYPE_30__*, %struct.loops*, i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @sbitmap_free(i32) #1

declare dso_local %struct.TYPE_33__* @get_bb_copy(%struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_30__* @BRANCH_EDGE(%struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_30__* @FALLTHRU_EDGE(%struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_30__* @single_succ_edge(%struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_33__* @create_empty_bb(i32) #1

declare dso_local i32 @compare_and_jump_seq(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @block_label(i32) #1

declare dso_local i32 @emit_insn_after(i32, i32) #1

declare dso_local i32 @BB_END(%struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_30__* @make_edge(%struct.TYPE_33__*, i32, i32) #1

declare dso_local %struct.loop* @loopify(%struct.loops*, %struct.TYPE_30__*, i32, %struct.TYPE_33__*, %struct.TYPE_30__*, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @single_pred_edge(%struct.TYPE_33__*) #1

declare dso_local i32 @remove_path(%struct.loops*, %struct.TYPE_30__*) #1

declare dso_local i32 @fix_loop_placement(%struct.loop*) #1

declare dso_local i32 @loop_split_edge_with(%struct.TYPE_30__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
