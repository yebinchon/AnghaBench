; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload.c_reload_cse_simplify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload.c_reload_cse_simplify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SET = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@CLOBBER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @reload_cse_simplify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reload_cse_simplify(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @PATTERN(i64 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @GET_CODE(i64 %15)
  %17 = load i64, i64* @SET, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %57

19:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @reload_cse_simplify_set(i64 %20, i64 %21)
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %19
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @reload_cse_noop_set_p(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @SET_DEST(i64 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @REG_P(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @REG_FUNCTION_VALUE_P(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store i64 0, i64* %7, align 8
  br label %44

44:                                               ; preds = %43, %39, %33
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @delete_insn_and_edges(i64 %45)
  br label %190

47:                                               ; preds = %29, %19
  %48 = load i32, i32* %6, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 (...) @apply_change_group()
  br label %56

52:                                               ; preds = %47
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @reload_cse_simplify_operands(i64 %53, i64 %54)
  br label %56

56:                                               ; preds = %52, %50
  br label %190

57:                                               ; preds = %2
  %58 = load i64, i64* %5, align 8
  %59 = call i64 @GET_CODE(i64 %58)
  %60 = load i64, i64* @PARALLEL, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %189

62:                                               ; preds = %57
  store i32 0, i32* %9, align 4
  %63 = load i64, i64* @NULL_RTX, align 8
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i64 @asm_noperands(i64 %64)
  %66 = icmp sge i64 %65, 0
  br i1 %66, label %67, label %96

67:                                               ; preds = %62
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @XVECLEN(i64 %68, i32 0)
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %92, %67
  %72 = load i32, i32* %8, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %71
  %75 = load i64, i64* %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i64 @XVECEXP(i64 %75, i32 0, i32 %76)
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %11, align 8
  %79 = call i64 @GET_CODE(i64 %78)
  %80 = load i64, i64* @CLOBBER, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %74
  %83 = load i64, i64* %11, align 8
  %84 = call i64 @XEXP(i64 %83, i32 0)
  %85 = call i64 @REG_P(i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i64, i64* %11, align 8
  %89 = call i64 @XEXP(i64 %88, i32 0)
  %90 = call i32 @cselib_invalidate_rtx(i64 %89)
  br label %91

91:                                               ; preds = %87, %82, %74
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %8, align 4
  br label %71

95:                                               ; preds = %71
  br label %96

96:                                               ; preds = %95, %62
  %97 = load i64, i64* %5, align 8
  %98 = call i32 @XVECLEN(i64 %97, i32 0)
  %99 = sub nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %142, %96
  %101 = load i32, i32* %8, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %145

103:                                              ; preds = %100
  %104 = load i64, i64* %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i64 @XVECEXP(i64 %104, i32 0, i32 %105)
  store i64 %106, i64* %12, align 8
  %107 = load i64, i64* %12, align 8
  %108 = call i64 @GET_CODE(i64 %107)
  %109 = load i64, i64* @SET, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %134

111:                                              ; preds = %103
  %112 = load i64, i64* %12, align 8
  %113 = call i64 @reload_cse_noop_set_p(i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  br label %145

116:                                              ; preds = %111
  %117 = load i64, i64* %12, align 8
  %118 = call i64 @SET_DEST(i64 %117)
  %119 = call i64 @REG_P(i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %116
  %122 = load i64, i64* %12, align 8
  %123 = call i64 @SET_DEST(i64 %122)
  %124 = call i64 @REG_FUNCTION_VALUE_P(i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load i64, i64* %10, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %145

130:                                              ; preds = %126
  %131 = load i64, i64* %12, align 8
  %132 = call i64 @SET_DEST(i64 %131)
  store i64 %132, i64* %10, align 8
  br label %133

133:                                              ; preds = %130, %121, %116
  br label %141

134:                                              ; preds = %103
  %135 = load i64, i64* %12, align 8
  %136 = call i64 @GET_CODE(i64 %135)
  %137 = load i64, i64* @CLOBBER, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %145

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140, %133
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %8, align 4
  br label %100

145:                                              ; preds = %139, %129, %115, %100
  %146 = load i32, i32* %8, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i64, i64* %3, align 8
  %150 = call i32 @delete_insn_and_edges(i64 %149)
  br label %190

151:                                              ; preds = %145
  %152 = load i64, i64* %5, align 8
  %153 = call i32 @XVECLEN(i64 %152, i32 0)
  %154 = sub nsw i32 %153, 1
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %176, %151
  %156 = load i32, i32* %8, align 4
  %157 = icmp sge i32 %156, 0
  br i1 %157, label %158, label %179

158:                                              ; preds = %155
  %159 = load i64, i64* %5, align 8
  %160 = load i32, i32* %8, align 4
  %161 = call i64 @XVECEXP(i64 %159, i32 0, i32 %160)
  %162 = call i64 @GET_CODE(i64 %161)
  %163 = load i64, i64* @SET, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %175

165:                                              ; preds = %158
  %166 = load i64, i64* %5, align 8
  %167 = load i32, i32* %8, align 4
  %168 = call i64 @XVECEXP(i64 %166, i32 0, i32 %167)
  %169 = load i64, i64* %3, align 8
  %170 = call i64 @reload_cse_simplify_set(i64 %168, i64 %169)
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %172, %170
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %9, align 4
  br label %175

175:                                              ; preds = %165, %158
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %8, align 4
  br label %155

179:                                              ; preds = %155
  %180 = load i32, i32* %9, align 4
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = call i32 (...) @apply_change_group()
  br label %188

184:                                              ; preds = %179
  %185 = load i64, i64* %3, align 8
  %186 = load i64, i64* %4, align 8
  %187 = call i32 @reload_cse_simplify_operands(i64 %185, i64 %186)
  br label %188

188:                                              ; preds = %184, %182
  br label %189

189:                                              ; preds = %188, %57
  br label %190

190:                                              ; preds = %44, %148, %189, %56
  ret void
}

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @reload_cse_simplify_set(i64, i64) #1

declare dso_local i64 @reload_cse_noop_set_p(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @REG_FUNCTION_VALUE_P(i64) #1

declare dso_local i32 @delete_insn_and_edges(i64) #1

declare dso_local i32 @apply_change_group(...) #1

declare dso_local i32 @reload_cse_simplify_operands(i64, i64) #1

declare dso_local i64 @asm_noperands(i64) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @cselib_invalidate_rtx(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
