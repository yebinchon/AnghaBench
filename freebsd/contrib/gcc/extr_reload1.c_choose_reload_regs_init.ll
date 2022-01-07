; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_choose_reload_regs_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_choose_reload_regs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64 }
%struct.insn_chain = type { i32, i32, i32 }

@n_reloads = common dso_local global i32 0, align 4
@rld = common dso_local global %struct.TYPE_2__* null, align 8
@reload_inherited = common dso_local global i32 0, align 4
@MAX_RELOADS = common dso_local global i32 0, align 4
@reload_inheritance_insn = common dso_local global i32 0, align 4
@reload_override_in = common dso_local global i32 0, align 4
@reload_reg_used = common dso_local global i32 0, align 4
@reload_reg_used_at_all = common dso_local global i32 0, align 4
@reload_reg_used_in_op_addr = common dso_local global i32 0, align 4
@reload_reg_used_in_op_addr_reload = common dso_local global i32 0, align 4
@reload_reg_used_in_insn = common dso_local global i32 0, align 4
@reload_reg_used_in_other_addr = common dso_local global i32 0, align 4
@reg_used_in_insn = common dso_local global i32 0, align 4
@reload_n_operands = common dso_local global i32 0, align 4
@reload_reg_used_in_output = common dso_local global i32* null, align 8
@reload_reg_used_in_input = common dso_local global i32* null, align 8
@reload_reg_used_in_input_addr = common dso_local global i32* null, align 8
@reload_reg_used_in_inpaddr_addr = common dso_local global i32* null, align 8
@reload_reg_used_in_output_addr = common dso_local global i32* null, align 8
@reload_reg_used_in_outaddr_addr = common dso_local global i32* null, align 8
@reload_reg_unavailable = common dso_local global i32 0, align 4
@reload_reg_used_for_inherit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.insn_chain*, i64*)* @choose_reload_regs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @choose_reload_regs_init(%struct.insn_chain* %0, i64* %1) #0 {
  %3 = alloca %struct.insn_chain*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.insn_chain* %0, %struct.insn_chain** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %22, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @n_reloads, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load i64*, i64** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store i64 %16, i64* %21, align 8
  br label %22

22:                                               ; preds = %11
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %7

25:                                               ; preds = %7
  %26 = load i32, i32* @reload_inherited, align 4
  %27 = load i32, i32* @MAX_RELOADS, align 4
  %28 = call i32 @memset(i32 %26, i32 0, i32 %27)
  %29 = load i32, i32* @reload_inheritance_insn, align 4
  %30 = load i32, i32* @MAX_RELOADS, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memset(i32 %29, i32 0, i32 %33)
  %35 = load i32, i32* @reload_override_in, align 4
  %36 = load i32, i32* @MAX_RELOADS, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memset(i32 %35, i32 0, i32 %39)
  %41 = load i32, i32* @reload_reg_used, align 4
  %42 = call i32 @CLEAR_HARD_REG_SET(i32 %41)
  %43 = load i32, i32* @reload_reg_used_at_all, align 4
  %44 = call i32 @CLEAR_HARD_REG_SET(i32 %43)
  %45 = load i32, i32* @reload_reg_used_in_op_addr, align 4
  %46 = call i32 @CLEAR_HARD_REG_SET(i32 %45)
  %47 = load i32, i32* @reload_reg_used_in_op_addr_reload, align 4
  %48 = call i32 @CLEAR_HARD_REG_SET(i32 %47)
  %49 = load i32, i32* @reload_reg_used_in_insn, align 4
  %50 = call i32 @CLEAR_HARD_REG_SET(i32 %49)
  %51 = load i32, i32* @reload_reg_used_in_other_addr, align 4
  %52 = call i32 @CLEAR_HARD_REG_SET(i32 %51)
  %53 = load i32, i32* @reg_used_in_insn, align 4
  %54 = call i32 @CLEAR_HARD_REG_SET(i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.insn_chain*, %struct.insn_chain** %3, align 8
  %57 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %56, i32 0, i32 2
  %58 = call i32 @REG_SET_TO_HARD_REG_SET(i32 %55, i32* %57)
  %59 = load i32, i32* @reg_used_in_insn, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @IOR_HARD_REG_SET(i32 %59, i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.insn_chain*, %struct.insn_chain** %3, align 8
  %64 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %63, i32 0, i32 1
  %65 = call i32 @REG_SET_TO_HARD_REG_SET(i32 %62, i32* %64)
  %66 = load i32, i32* @reg_used_in_insn, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @IOR_HARD_REG_SET(i32 %66, i32 %67)
  %69 = load %struct.insn_chain*, %struct.insn_chain** %3, align 8
  %70 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %69, i32 0, i32 2
  %71 = call i32 @compute_use_by_pseudos(i32* @reg_used_in_insn, i32* %70)
  %72 = load %struct.insn_chain*, %struct.insn_chain** %3, align 8
  %73 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %72, i32 0, i32 1
  %74 = call i32 @compute_use_by_pseudos(i32* @reg_used_in_insn, i32* %73)
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %116, %25
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @reload_n_operands, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %119

79:                                               ; preds = %75
  %80 = load i32*, i32** @reload_reg_used_in_output, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @CLEAR_HARD_REG_SET(i32 %84)
  %86 = load i32*, i32** @reload_reg_used_in_input, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @CLEAR_HARD_REG_SET(i32 %90)
  %92 = load i32*, i32** @reload_reg_used_in_input_addr, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @CLEAR_HARD_REG_SET(i32 %96)
  %98 = load i32*, i32** @reload_reg_used_in_inpaddr_addr, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @CLEAR_HARD_REG_SET(i32 %102)
  %104 = load i32*, i32** @reload_reg_used_in_output_addr, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @CLEAR_HARD_REG_SET(i32 %108)
  %110 = load i32*, i32** @reload_reg_used_in_outaddr_addr, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @CLEAR_HARD_REG_SET(i32 %114)
  br label %116

116:                                              ; preds = %79
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %75

119:                                              ; preds = %75
  %120 = load i32, i32* @reload_reg_unavailable, align 4
  %121 = load %struct.insn_chain*, %struct.insn_chain** %3, align 8
  %122 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @COMPL_HARD_REG_SET(i32 %120, i32 %123)
  %125 = load i32, i32* @reload_reg_used_for_inherit, align 4
  %126 = call i32 @CLEAR_HARD_REG_SET(i32 %125)
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %167, %119
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @n_reloads, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %170

131:                                              ; preds = %127
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %166

139:                                              ; preds = %131
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @REGNO(i64 %145)
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @mark_reload_reg_in_use(i32 %146, i32 %152, i32 %158, i32 %164)
  br label %166

166:                                              ; preds = %139, %131
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %5, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %5, align 4
  br label %127

170:                                              ; preds = %127
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @CLEAR_HARD_REG_SET(i32) #1

declare dso_local i32 @REG_SET_TO_HARD_REG_SET(i32, i32*) #1

declare dso_local i32 @IOR_HARD_REG_SET(i32, i32) #1

declare dso_local i32 @compute_use_by_pseudos(i32*, i32*) #1

declare dso_local i32 @COMPL_HARD_REG_SET(i32, i32) #1

declare dso_local i32 @mark_reload_reg_in_use(i32, i32, i32, i32) #1

declare dso_local i32 @REGNO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
