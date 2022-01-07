; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopmanip.c_loop_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopmanip.c_loop_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { i32 }
%struct.loop = type { i32, %struct.TYPE_34__*, %struct.TYPE_33__*, %struct.TYPE_34__*, i64 }
%struct.TYPE_33__ = type { i32, %struct.TYPE_34__*, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_35__ = type { i32 }

@EDGE_IRREDUCIBLE_LOOP = common dso_local global i32 0, align 4
@BB_IRREDUCIBLE_LOOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.loop* @loop_version(%struct.loops* %0, %struct.loop* %1, i8* %2, %struct.TYPE_34__** %3, i32 %4) #0 {
  %6 = alloca %struct.loop*, align 8
  %7 = alloca %struct.loops*, align 8
  %8 = alloca %struct.loop*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_34__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_34__*, align 8
  %13 = alloca %struct.TYPE_34__*, align 8
  %14 = alloca %struct.TYPE_33__*, align 8
  %15 = alloca %struct.TYPE_33__*, align 8
  %16 = alloca %struct.TYPE_33__*, align 8
  %17 = alloca %struct.TYPE_33__*, align 8
  %18 = alloca %struct.TYPE_33__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.loop*, align 8
  %21 = alloca %struct.TYPE_34__*, align 8
  %22 = alloca %struct.TYPE_34__**, align 8
  %23 = alloca %struct.TYPE_34__*, align 8
  %24 = alloca i32, align 4
  store %struct.loops* %0, %struct.loops** %7, align 8
  store %struct.loop* %1, %struct.loop** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_34__** %3, %struct.TYPE_34__*** %10, align 8
  store i32 %4, i32* %11, align 4
  %25 = load %struct.loop*, %struct.loop** %8, align 8
  %26 = getelementptr inbounds %struct.loop, %struct.loop* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store %struct.loop* null, %struct.loop** %6, align 8
  br label %186

30:                                               ; preds = %5
  %31 = load %struct.loop*, %struct.loop** %8, align 8
  %32 = call %struct.TYPE_33__* @loop_preheader_edge(%struct.loop* %31)
  store %struct.TYPE_33__* %32, %struct.TYPE_33__** %14, align 8
  %33 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @EDGE_IRREDUCIBLE_LOOP, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* @EDGE_IRREDUCIBLE_LOOP, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_34__*, %struct.TYPE_34__** %45, align 8
  store %struct.TYPE_34__* %46, %struct.TYPE_34__** %12, align 8
  %47 = load %struct.loop*, %struct.loop** %8, align 8
  %48 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %49 = load %struct.loops*, %struct.loops** %7, align 8
  %50 = call i32 @cfg_hook_duplicate_loop_to_header_edge(%struct.loop* %47, %struct.TYPE_33__* %48, %struct.loops* %49, i32 1, i32* null, i32* null, i32* null, i32* null, i32 0)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %30
  store %struct.loop* null, %struct.loop** %6, align 8
  br label %186

53:                                               ; preds = %30
  %54 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_34__*, %struct.TYPE_34__** %55, align 8
  store %struct.TYPE_34__* %56, %struct.TYPE_34__** %13, align 8
  %57 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %58 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %59 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = call %struct.TYPE_34__* @lv_adjust_loop_entry_edge(%struct.TYPE_34__* %57, %struct.TYPE_34__* %58, %struct.TYPE_33__* %59, i8* %60)
  store %struct.TYPE_34__* %61, %struct.TYPE_34__** %21, align 8
  %62 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %10, align 8
  %63 = icmp ne %struct.TYPE_34__** %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %66 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %10, align 8
  store %struct.TYPE_34__* %65, %struct.TYPE_34__** %66, align 8
  br label %67

67:                                               ; preds = %64, %53
  %68 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %69 = icmp ne %struct.TYPE_34__* %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %19, align 4
  %72 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  store %struct.loop* null, %struct.loop** %6, align 8
  br label %186

76:                                               ; preds = %67
  %77 = load %struct.loop*, %struct.loop** %8, align 8
  %78 = getelementptr inbounds %struct.loop, %struct.loop* %77, i32 0, i32 1
  %79 = load %struct.TYPE_34__*, %struct.TYPE_34__** %78, align 8
  %80 = call %struct.TYPE_34__* @get_bb_copy(%struct.TYPE_34__* %79)
  %81 = call %struct.TYPE_33__* @single_succ_edge(%struct.TYPE_34__* %80)
  store %struct.TYPE_33__* %81, %struct.TYPE_33__** %15, align 8
  %82 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %83 = call i32 @extract_cond_bb_edges(%struct.TYPE_34__* %82, %struct.TYPE_33__** %17, %struct.TYPE_33__** %18)
  %84 = load %struct.loops*, %struct.loops** %7, align 8
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %86 = load %struct.loop*, %struct.loop** %8, align 8
  %87 = getelementptr inbounds %struct.loop, %struct.loop* %86, i32 0, i32 3
  %88 = load %struct.TYPE_34__*, %struct.TYPE_34__** %87, align 8
  %89 = call %struct.TYPE_34__* @get_bb_copy(%struct.TYPE_34__* %88)
  %90 = call %struct.TYPE_35__* @single_pred_edge(%struct.TYPE_34__* %89)
  %91 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %92 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %93 = load %struct.TYPE_33__*, %struct.TYPE_33__** %18, align 8
  %94 = call %struct.loop* @loopify(%struct.loops* %84, %struct.TYPE_33__* %85, %struct.TYPE_35__* %90, %struct.TYPE_34__* %91, %struct.TYPE_33__* %92, %struct.TYPE_33__* %93, i32 0)
  store %struct.loop* %94, %struct.loop** %20, align 8
  %95 = load %struct.loop*, %struct.loop** %8, align 8
  %96 = getelementptr inbounds %struct.loop, %struct.loop* %95, i32 0, i32 2
  %97 = load %struct.TYPE_33__*, %struct.TYPE_33__** %96, align 8
  store %struct.TYPE_33__* %97, %struct.TYPE_33__** %16, align 8
  %98 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %99 = icmp ne %struct.TYPE_33__* %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %76
  %101 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_34__*, %struct.TYPE_34__** %102, align 8
  %104 = call %struct.TYPE_34__* @get_bb_copy(%struct.TYPE_34__* %103)
  %105 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_34__*, %struct.TYPE_34__** %106, align 8
  %108 = call %struct.TYPE_33__* @find_edge(%struct.TYPE_34__* %104, %struct.TYPE_34__* %107)
  %109 = load %struct.loop*, %struct.loop** %20, align 8
  %110 = getelementptr inbounds %struct.loop, %struct.loop* %109, i32 0, i32 2
  store %struct.TYPE_33__* %108, %struct.TYPE_33__** %110, align 8
  br label %111

111:                                              ; preds = %100, %76
  %112 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %113 = call i32 @lv_flush_pending_stmts(%struct.TYPE_33__* %112)
  %114 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %115 = call i32 @extract_cond_bb_edges(%struct.TYPE_34__* %114, %struct.TYPE_33__** %17, %struct.TYPE_33__** %18)
  %116 = load %struct.TYPE_33__*, %struct.TYPE_33__** %18, align 8
  %117 = call i32 @lv_flush_pending_stmts(%struct.TYPE_33__* %116)
  %118 = load i32, i32* %19, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %144

120:                                              ; preds = %111
  %121 = load i32, i32* @BB_IRREDUCIBLE_LOOP, align 4
  %122 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %123 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* @EDGE_IRREDUCIBLE_LOOP, align 4
  %127 = load %struct.loop*, %struct.loop** %8, align 8
  %128 = call %struct.TYPE_33__* @loop_preheader_edge(%struct.loop* %127)
  %129 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %126
  store i32 %131, i32* %129, align 8
  %132 = load i32, i32* @EDGE_IRREDUCIBLE_LOOP, align 4
  %133 = load %struct.loop*, %struct.loop** %20, align 8
  %134 = call %struct.TYPE_33__* @loop_preheader_edge(%struct.loop* %133)
  %135 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %132
  store i32 %137, i32* %135, align 8
  %138 = load i32, i32* @EDGE_IRREDUCIBLE_LOOP, align 4
  %139 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %140 = call %struct.TYPE_35__* @single_pred_edge(%struct.TYPE_34__* %139)
  %141 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %138
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %120, %111
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %178

147:                                              ; preds = %144
  %148 = load %struct.loop*, %struct.loop** %20, align 8
  %149 = call %struct.TYPE_34__** @get_loop_body_in_dom_order(%struct.loop* %148)
  store %struct.TYPE_34__** %149, %struct.TYPE_34__*** %22, align 8
  %150 = load %struct.loop*, %struct.loop** %8, align 8
  %151 = getelementptr inbounds %struct.loop, %struct.loop* %150, i32 0, i32 1
  %152 = load %struct.TYPE_34__*, %struct.TYPE_34__** %151, align 8
  store %struct.TYPE_34__* %152, %struct.TYPE_34__** %23, align 8
  store i32 0, i32* %24, align 4
  br label %153

153:                                              ; preds = %172, %147
  %154 = load i32, i32* %24, align 4
  %155 = load %struct.loop*, %struct.loop** %20, align 8
  %156 = getelementptr inbounds %struct.loop, %struct.loop* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp ult i32 %154, %157
  br i1 %158, label %159, label %175

159:                                              ; preds = %153
  %160 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %22, align 8
  %161 = load i32, i32* %24, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %160, i64 %162
  %164 = load %struct.TYPE_34__*, %struct.TYPE_34__** %163, align 8
  %165 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %166 = call i32 @move_block_after(%struct.TYPE_34__* %164, %struct.TYPE_34__* %165)
  %167 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %22, align 8
  %168 = load i32, i32* %24, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %167, i64 %169
  %171 = load %struct.TYPE_34__*, %struct.TYPE_34__** %170, align 8
  store %struct.TYPE_34__* %171, %struct.TYPE_34__** %23, align 8
  br label %172

172:                                              ; preds = %159
  %173 = load i32, i32* %24, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %24, align 4
  br label %153

175:                                              ; preds = %153
  %176 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %22, align 8
  %177 = call i32 @free(%struct.TYPE_34__** %176)
  br label %178

178:                                              ; preds = %175, %144
  %179 = load %struct.loop*, %struct.loop** %8, align 8
  %180 = call %struct.TYPE_33__* @loop_preheader_edge(%struct.loop* %179)
  %181 = call i32 @loop_split_edge_with(%struct.TYPE_33__* %180, i32* null)
  %182 = load %struct.loop*, %struct.loop** %20, align 8
  %183 = call %struct.TYPE_33__* @loop_preheader_edge(%struct.loop* %182)
  %184 = call i32 @loop_split_edge_with(%struct.TYPE_33__* %183, i32* null)
  %185 = load %struct.loop*, %struct.loop** %20, align 8
  store %struct.loop* %185, %struct.loop** %6, align 8
  br label %186

186:                                              ; preds = %178, %70, %52, %29
  %187 = load %struct.loop*, %struct.loop** %6, align 8
  ret %struct.loop* %187
}

declare dso_local %struct.TYPE_33__* @loop_preheader_edge(%struct.loop*) #1

declare dso_local i32 @cfg_hook_duplicate_loop_to_header_edge(%struct.loop*, %struct.TYPE_33__*, %struct.loops*, i32, i32*, i32*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_34__* @lv_adjust_loop_entry_edge(%struct.TYPE_34__*, %struct.TYPE_34__*, %struct.TYPE_33__*, i8*) #1

declare dso_local %struct.TYPE_33__* @single_succ_edge(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_34__* @get_bb_copy(%struct.TYPE_34__*) #1

declare dso_local i32 @extract_cond_bb_edges(%struct.TYPE_34__*, %struct.TYPE_33__**, %struct.TYPE_33__**) #1

declare dso_local %struct.loop* @loopify(%struct.loops*, %struct.TYPE_33__*, %struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_33__*, %struct.TYPE_33__*, i32) #1

declare dso_local %struct.TYPE_35__* @single_pred_edge(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_33__* @find_edge(%struct.TYPE_34__*, %struct.TYPE_34__*) #1

declare dso_local i32 @lv_flush_pending_stmts(%struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_34__** @get_loop_body_in_dom_order(%struct.loop*) #1

declare dso_local i32 @move_block_after(%struct.TYPE_34__*, %struct.TYPE_34__*) #1

declare dso_local i32 @free(%struct.TYPE_34__**) #1

declare dso_local i32 @loop_split_edge_with(%struct.TYPE_33__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
