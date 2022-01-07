; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_do_input_reload.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_do_input_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn_chain = type { i64 }
%struct.reload = type { i64, i64, i64, i64, i64, i64 }

@reload_inherited = common dso_local global i64* null, align 8
@rld = common dso_local global i64 0, align 8
@optimize = common dso_local global i64 0, align 8
@reload_spill_index = common dso_local global i64* null, align 8
@reg_reloaded_valid = common dso_local global i32 0, align 4
@regno_reg_rtx = common dso_local global i64* null, align 8
@reg_reloaded_contents = common dso_local global i64* null, align 8
@RELOAD_FOR_INPUT = common dso_local global i64 0, align 8
@reload_override_in = common dso_local global i64* null, align 8
@spill_reg_store = common dso_local global i64* null, align 8
@spill_reg_stored_to = common dso_local global i64* null, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.insn_chain*, %struct.reload*, i32)* @do_input_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_input_reload(%struct.insn_chain* %0, %struct.reload* %1, i32 %2) #0 {
  %4 = alloca %struct.insn_chain*, align 8
  %5 = alloca %struct.reload*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.insn_chain* %0, %struct.insn_chain** %4, align 8
  store %struct.reload* %1, %struct.reload** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.insn_chain*, %struct.insn_chain** %4, align 8
  %10 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.reload*, %struct.reload** %5, align 8
  %13 = getelementptr inbounds %struct.reload, %struct.reload* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.reload*, %struct.reload** %5, align 8
  %18 = getelementptr inbounds %struct.reload, %struct.reload* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @MEM_P(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.reload*, %struct.reload** %5, align 8
  %24 = getelementptr inbounds %struct.reload, %struct.reload* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  br label %30

26:                                               ; preds = %16, %3
  %27 = load %struct.reload*, %struct.reload** %5, align 8
  %28 = getelementptr inbounds %struct.reload, %struct.reload* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i64 [ %25, %22 ], [ %29, %26 ]
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %72

34:                                               ; preds = %30
  %35 = load i64*, i64** @reload_inherited, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load %struct.reload*, %struct.reload** %5, align 8
  %43 = getelementptr inbounds %struct.reload, %struct.reload* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %41
  %47 = load %struct.reload*, %struct.reload** %5, align 8
  %48 = getelementptr inbounds %struct.reload, %struct.reload* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %72, label %51

51:                                               ; preds = %46, %34
  %52 = load %struct.reload*, %struct.reload** %5, align 8
  %53 = getelementptr inbounds %struct.reload, %struct.reload* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @rtx_equal_p(i64 %54, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %51
  %59 = load %struct.reload*, %struct.reload** %5, align 8
  %60 = getelementptr inbounds %struct.reload, %struct.reload* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.insn_chain*, %struct.insn_chain** %4, align 8
  %65 = load i64, i64* @rld, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = load i64, i64* %8, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @emit_input_reload_insns(%struct.insn_chain* %64, i64 %68, i64 %69, i32 %70)
  br label %72

72:                                               ; preds = %63, %58, %51, %46, %41, %30
  %73 = load i64, i64* @optimize, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %129

75:                                               ; preds = %72
  %76 = load i64*, i64** @reload_inherited, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %129

82:                                               ; preds = %75
  %83 = load %struct.reload*, %struct.reload** %5, align 8
  %84 = getelementptr inbounds %struct.reload, %struct.reload* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %129

87:                                               ; preds = %82
  %88 = load %struct.reload*, %struct.reload** %5, align 8
  %89 = getelementptr inbounds %struct.reload, %struct.reload* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @MEM_P(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %129

93:                                               ; preds = %87
  %94 = load %struct.reload*, %struct.reload** %5, align 8
  %95 = getelementptr inbounds %struct.reload, %struct.reload* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @MEM_P(i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %129

99:                                               ; preds = %93
  %100 = load i64*, i64** @reload_spill_index, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = icmp uge i64 %104, 0
  br i1 %105, label %106, label %129

106:                                              ; preds = %99
  %107 = load i32, i32* @reg_reloaded_valid, align 4
  %108 = load i64*, i64** @reload_spill_index, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @TEST_HARD_REG_BIT(i32 %107, i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %106
  %116 = load i64*, i64** @regno_reg_rtx, align 8
  %117 = load i64*, i64** @reg_reloaded_contents, align 8
  %118 = load i64*, i64** @reload_spill_index, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i64, i64* %117, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i64, i64* %116, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.reload*, %struct.reload** %5, align 8
  %128 = getelementptr inbounds %struct.reload, %struct.reload* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %115, %106, %99, %93, %87, %82, %75, %72
  %130 = load i64, i64* @optimize, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %204

132:                                              ; preds = %129
  %133 = load %struct.reload*, %struct.reload** %5, align 8
  %134 = getelementptr inbounds %struct.reload, %struct.reload* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @RELOAD_FOR_INPUT, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %204

138:                                              ; preds = %132
  %139 = load i64*, i64** @reload_inherited, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %138
  %146 = load i64*, i64** @reload_override_in, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %204

152:                                              ; preds = %145, %138
  %153 = load %struct.reload*, %struct.reload** %5, align 8
  %154 = getelementptr inbounds %struct.reload, %struct.reload* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %204

157:                                              ; preds = %152
  %158 = load %struct.reload*, %struct.reload** %5, align 8
  %159 = getelementptr inbounds %struct.reload, %struct.reload* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = call i64 @REG_P(i64 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %204

163:                                              ; preds = %157
  %164 = load i64*, i64** @spill_reg_store, align 8
  %165 = load %struct.reload*, %struct.reload** %5, align 8
  %166 = getelementptr inbounds %struct.reload, %struct.reload* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = call i64 @REGNO(i64 %167)
  %169 = getelementptr inbounds i64, i64* %164, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %204

172:                                              ; preds = %163
  %173 = load i64, i64* %7, align 8
  %174 = load i64*, i64** @spill_reg_stored_to, align 8
  %175 = load %struct.reload*, %struct.reload** %5, align 8
  %176 = getelementptr inbounds %struct.reload, %struct.reload* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = call i64 @REGNO(i64 %177)
  %179 = getelementptr inbounds i64, i64* %174, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = call i64 @dead_or_set_p(i64 %173, i64 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %196, label %183

183:                                              ; preds = %172
  %184 = load i64*, i64** @spill_reg_stored_to, align 8
  %185 = load %struct.reload*, %struct.reload** %5, align 8
  %186 = getelementptr inbounds %struct.reload, %struct.reload* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = call i64 @REGNO(i64 %187)
  %189 = getelementptr inbounds i64, i64* %184, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.reload*, %struct.reload** %5, align 8
  %192 = getelementptr inbounds %struct.reload, %struct.reload* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = call i64 @rtx_equal_p(i64 %190, i64 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %183, %172
  %197 = load i64, i64* %7, align 8
  %198 = load i32, i32* %6, align 4
  %199 = load %struct.reload*, %struct.reload** %5, align 8
  %200 = getelementptr inbounds %struct.reload, %struct.reload* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = call i64 @REGNO(i64 %201)
  %203 = call i32 @delete_output_reload(i64 %197, i32 %198, i64 %202)
  br label %204

204:                                              ; preds = %196, %183, %163, %157, %152, %145, %132, %129
  ret void
}

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local i32 @emit_input_reload_insns(%struct.insn_chain*, i64, i64, i32) #1

declare dso_local i64 @TEST_HARD_REG_BIT(i32, i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @dead_or_set_p(i64, i64) #1

declare dso_local i32 @delete_output_reload(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
