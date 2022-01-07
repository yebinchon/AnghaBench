; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_try_sign_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_try_sign_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.noce_if_info = type { i64, i64, i64, i32, i32, i32, i32 }

@no_new_pseudos = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@LT = common dso_local global i32 0, align 4
@LE = common dso_local global i32 0, align 4
@constm1_rtx = common dso_local global i64 0, align 8
@GE = common dso_local global i32 0, align 4
@GT = common dso_local global i32 0, align 4
@SET = common dso_local global i32 0, align 4
@and_optab = common dso_local global i32 0, align 4
@OPTAB_DIRECT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.noce_if_info*)* @noce_try_sign_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noce_try_sign_mask(%struct.noce_if_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.noce_if_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.noce_if_info* %0, %struct.noce_if_info** %3, align 8
  %11 = load i64, i64* @no_new_pseudos, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %2, align 4
  br label %168

15:                                               ; preds = %1
  %16 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %17 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @GET_CODE(i64 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @XEXP(i64 %21, i32 0)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @XEXP(i64 %23, i32 1)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* @NULL_RTX, align 8
  store i64 %25, i64* %5, align 8
  %26 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %27 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @const0_rtx, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %15
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @LT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @const0_rtx, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %35, %31
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @LE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @constm1_rtx, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43, %35
  %48 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %49 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %47, %43, %39
  br label %80

52:                                               ; preds = %15
  %53 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %54 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @const0_rtx, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %52
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @GE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @const0_rtx, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %62, %58
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @GT, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @constm1_rtx, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70, %62
  %75 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %76 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %5, align 8
  br label %78

78:                                               ; preds = %74, %70, %66
  br label %79

79:                                               ; preds = %78, %52
  br label %80

80:                                               ; preds = %79, %51
  %81 = load i64, i64* %5, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i64, i64* %5, align 8
  %85 = call i64 @side_effects_p(i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83, %80
  %88 = load i32, i32* @FALSE, align 4
  store i32 %88, i32* %2, align 4
  br label %168

89:                                               ; preds = %83
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @GET_MODE(i64 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @GET_MODE(i64 %92)
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* @FALSE, align 4
  store i32 %97, i32* %2, align 4
  br label %168

98:                                               ; preds = %89
  %99 = load i64, i64* %5, align 8
  %100 = load i32, i32* @SET, align 4
  %101 = call i64 @rtx_cost(i64 %99, i32 %100)
  %102 = call i64 @COSTS_N_INSNS(i32 2)
  %103 = icmp sge i64 %101, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %98
  %105 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %106 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load i64, i64* %5, align 8
  %111 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %112 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %110, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %109, %104
  %116 = load i32, i32* @FALSE, align 4
  store i32 %116, i32* %2, align 4
  br label %168

117:                                              ; preds = %109, %98
  %118 = call i32 (...) @start_sequence()
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @gen_reg_rtx(i32 %119)
  %121 = load i32, i32* @LT, align 4
  %122 = load i64, i64* %6, align 8
  %123 = load i64, i64* @const0_rtx, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i64 @emit_store_flag(i32 %120, i32 %121, i64 %122, i64 %123, i32 %124, i32 0, i32 -1)
  store i64 %125, i64* %6, align 8
  %126 = load i64, i64* %6, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %117
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @and_optab, align 4
  %131 = load i64, i64* %6, align 8
  %132 = load i64, i64* %5, align 8
  %133 = load i64, i64* @NULL_RTX, align 8
  %134 = load i32, i32* @OPTAB_DIRECT, align 4
  %135 = call i64 @expand_binop(i32 %129, i32 %130, i64 %131, i64 %132, i64 %133, i32 0, i32 %134)
  br label %138

136:                                              ; preds = %117
  %137 = load i64, i64* @NULL_RTX, align 8
  br label %138

138:                                              ; preds = %136, %128
  %139 = phi i64 [ %135, %128 ], [ %137, %136 ]
  store i64 %139, i64* %5, align 8
  %140 = load i64, i64* %5, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %138
  %143 = call i32 (...) @end_sequence()
  %144 = load i32, i32* @FALSE, align 4
  store i32 %144, i32* %2, align 4
  br label %168

145:                                              ; preds = %138
  %146 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %147 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = load i64, i64* %5, align 8
  %150 = call i32 @noce_emit_move_insn(i32 %148, i64 %149)
  %151 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %152 = call i64 @end_ifcvt_sequence(%struct.noce_if_info* %151)
  store i64 %152, i64* %8, align 8
  %153 = load i64, i64* %8, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %145
  %156 = load i32, i32* @FALSE, align 4
  store i32 %156, i32* %2, align 4
  br label %168

157:                                              ; preds = %145
  %158 = load i64, i64* %8, align 8
  %159 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %160 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %163 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @INSN_LOCATOR(i32 %164)
  %166 = call i32 @emit_insn_before_setloc(i64 %158, i32 %161, i32 %165)
  %167 = load i32, i32* @TRUE, align 4
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %157, %155, %142, %115, %96, %87, %13
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @side_effects_p(i64) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @rtx_cost(i64, i32) #1

declare dso_local i64 @COSTS_N_INSNS(i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i64 @emit_store_flag(i32, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i64 @expand_binop(i32, i32, i64, i64, i64, i32, i32) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @noce_emit_move_insn(i32, i64) #1

declare dso_local i64 @end_ifcvt_sequence(%struct.noce_if_info*) #1

declare dso_local i32 @emit_insn_before_setloc(i64, i32, i32) #1

declare dso_local i32 @INSN_LOCATOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
