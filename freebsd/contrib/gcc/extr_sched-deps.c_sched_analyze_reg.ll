; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-deps.c_sched_analyze_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-deps.c_sched_analyze_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deps = type { i32, i32, i32 }

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8
@SET = common dso_local global i32 0, align 4
@reg_pending_sets = common dso_local global i32 0, align 4
@USE = common dso_local global i32 0, align 4
@reg_pending_uses = common dso_local global i32 0, align 4
@reg_pending_clobbers = common dso_local global i32 0, align 4
@CLOBBER = common dso_local global i32 0, align 4
@reload_completed = common dso_local global i32 0, align 4
@REG_DEP_ANTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.deps*, i32, i32, i32, i32)* @sched_analyze_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sched_analyze_reg(%struct.deps* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.deps*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.deps* %0, %struct.deps** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %72

17:                                               ; preds = %5
  %18 = load i32**, i32*** @hard_regno_nregs, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @SET, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %35, %30
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %11, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* @reg_pending_sets, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %37, %38
  %40 = call i32 @SET_REGNO_REG_SET(i32 %36, i32 %39)
  br label %31

41:                                               ; preds = %31
  br label %71

42:                                               ; preds = %17
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @USE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %51, %46
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %11, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* @reg_pending_uses, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %53, %54
  %56 = call i32 @SET_REGNO_REG_SET(i32 %52, i32 %55)
  br label %47

57:                                               ; preds = %47
  br label %70

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %63, %58
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %11, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* @reg_pending_clobbers, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %65, %66
  %68 = call i32 @SET_REGNO_REG_SET(i32 %64, i32 %67)
  br label %59

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %57
  br label %71

71:                                               ; preds = %70, %41
  br label %160

72:                                               ; preds = %5
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.deps*, %struct.deps** %6, align 8
  %75 = getelementptr inbounds %struct.deps, %struct.deps* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp sge i32 %73, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %72
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @PATTERN(i32 %79)
  %81 = call i32 @GET_CODE(i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @USE, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @CLOBBER, align 4
  %88 = icmp eq i32 %86, %87
  br label %89

89:                                               ; preds = %85, %78
  %90 = phi i1 [ true, %78 ], [ %88, %85 ]
  %91 = zext i1 %90 to i32
  %92 = call i32 @gcc_assert(i32 %91)
  br label %159

93:                                               ; preds = %72
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @SET, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i32, i32* @reg_pending_sets, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @SET_REGNO_REG_SET(i32 %98, i32 %99)
  br label %114

101:                                              ; preds = %93
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @USE, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, i32* @reg_pending_uses, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @SET_REGNO_REG_SET(i32 %106, i32 %107)
  br label %113

109:                                              ; preds = %101
  %110 = load i32, i32* @reg_pending_clobbers, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @SET_REGNO_REG_SET(i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %105
  br label %114

114:                                              ; preds = %113, %97
  %115 = load i32, i32* @reload_completed, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %134, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %7, align 4
  %119 = call i64 @get_reg_known_equiv_p(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %117
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @get_reg_known_value(i32 %122)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = call i64 @MEM_P(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load %struct.deps*, %struct.deps** %6, align 8
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @XEXP(i32 %129, i32 0)
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @sched_analyze_2(%struct.deps* %128, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %127, %121
  br label %134

134:                                              ; preds = %133, %117, %114
  %135 = load i32, i32* %7, align 4
  %136 = call i64 @REG_N_CALLS_CROSSED(i32 %135)
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %134
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @USE, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.deps*, %struct.deps** %6, align 8
  %145 = getelementptr inbounds %struct.deps, %struct.deps* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @alloc_INSN_LIST(i32 %143, i32 %146)
  %148 = load %struct.deps*, %struct.deps** %6, align 8
  %149 = getelementptr inbounds %struct.deps, %struct.deps* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 4
  br label %157

150:                                              ; preds = %138
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.deps*, %struct.deps** %6, align 8
  %153 = getelementptr inbounds %struct.deps, %struct.deps* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @REG_DEP_ANTI, align 4
  %156 = call i32 @add_dependence_list(i32 %151, i32 %154, i32 1, i32 %155)
  br label %157

157:                                              ; preds = %150, %142
  br label %158

158:                                              ; preds = %157, %134
  br label %159

159:                                              ; preds = %158, %89
  br label %160

160:                                              ; preds = %159, %71
  ret void
}

declare dso_local i32 @SET_REGNO_REG_SET(i32, i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @get_reg_known_equiv_p(i32) #1

declare dso_local i32 @get_reg_known_value(i32) #1

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i32 @sched_analyze_2(%struct.deps*, i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @REG_N_CALLS_CROSSED(i32) #1

declare dso_local i32 @alloc_INSN_LIST(i32, i32) #1

declare dso_local i32 @add_dependence_list(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
