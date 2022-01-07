; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_optab_for_tree_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_optab_for_tree_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@and_optab = common dso_local global i32* null, align 8
@ior_optab = common dso_local global i32* null, align 8
@one_cmpl_optab = common dso_local global i32* null, align 8
@xor_optab = common dso_local global i32* null, align 8
@umod_optab = common dso_local global i32* null, align 8
@smod_optab = common dso_local global i32* null, align 8
@udiv_optab = common dso_local global i32* null, align 8
@sdiv_optab = common dso_local global i32* null, align 8
@ashl_optab = common dso_local global i32* null, align 8
@lshr_optab = common dso_local global i32* null, align 8
@ashr_optab = common dso_local global i32* null, align 8
@rotl_optab = common dso_local global i32* null, align 8
@rotr_optab = common dso_local global i32* null, align 8
@umax_optab = common dso_local global i32* null, align 8
@smax_optab = common dso_local global i32* null, align 8
@umin_optab = common dso_local global i32* null, align 8
@smin_optab = common dso_local global i32* null, align 8
@vec_realign_load_optab = common dso_local global i32* null, align 8
@usum_widen_optab = common dso_local global i32* null, align 8
@ssum_widen_optab = common dso_local global i32* null, align 8
@udot_prod_optab = common dso_local global i32* null, align 8
@sdot_prod_optab = common dso_local global i32* null, align 8
@reduc_umax_optab = common dso_local global i32* null, align 8
@reduc_smax_optab = common dso_local global i32* null, align 8
@reduc_umin_optab = common dso_local global i32* null, align 8
@reduc_smin_optab = common dso_local global i32* null, align 8
@reduc_uplus_optab = common dso_local global i32* null, align 8
@reduc_splus_optab = common dso_local global i32* null, align 8
@vec_shl_optab = common dso_local global i32* null, align 8
@vec_shr_optab = common dso_local global i32* null, align 8
@addv_optab = common dso_local global i32* null, align 8
@add_optab = common dso_local global i32* null, align 8
@subv_optab = common dso_local global i32* null, align 8
@sub_optab = common dso_local global i32* null, align 8
@smulv_optab = common dso_local global i32* null, align 8
@smul_optab = common dso_local global i32* null, align 8
@negv_optab = common dso_local global i32* null, align 8
@neg_optab = common dso_local global i32* null, align 8
@absv_optab = common dso_local global i32* null, align 8
@abs_optab = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @optab_for_tree_code(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %128 [
    i32 159, label %8
    i32 158, label %10
    i32 157, label %12
    i32 156, label %14
    i32 131, label %16
    i32 154, label %16
    i32 150, label %16
    i32 135, label %16
    i32 141, label %26
    i32 132, label %26
    i32 155, label %26
    i32 151, label %26
    i32 136, label %26
    i32 152, label %26
    i32 148, label %36
    i32 133, label %38
    i32 149, label %48
    i32 134, label %50
    i32 147, label %52
    i32 145, label %62
    i32 140, label %72
    i32 128, label %74
    i32 153, label %84
    i32 139, label %94
    i32 138, label %104
    i32 137, label %114
    i32 130, label %124
    i32 129, label %126
  ]

8:                                                ; preds = %2
  %9 = load i32*, i32** @and_optab, align 8
  store i32* %9, i32** %3, align 8
  br label %187

10:                                               ; preds = %2
  %11 = load i32*, i32** @ior_optab, align 8
  store i32* %11, i32** %3, align 8
  br label %187

12:                                               ; preds = %2
  %13 = load i32*, i32** @one_cmpl_optab, align 8
  store i32* %13, i32** %3, align 8
  br label %187

14:                                               ; preds = %2
  %15 = load i32*, i32** @xor_optab, align 8
  store i32* %15, i32** %3, align 8
  br label %187

16:                                               ; preds = %2, %2, %2, %2
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @TYPE_UNSIGNED(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32*, i32** @umod_optab, align 8
  br label %24

22:                                               ; preds = %16
  %23 = load i32*, i32** @smod_optab, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32* [ %21, %20 ], [ %23, %22 ]
  store i32* %25, i32** %3, align 8
  br label %187

26:                                               ; preds = %2, %2, %2, %2, %2, %2
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @TYPE_UNSIGNED(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32*, i32** @udiv_optab, align 8
  br label %34

32:                                               ; preds = %26
  %33 = load i32*, i32** @sdiv_optab, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32* [ %31, %30 ], [ %33, %32 ]
  store i32* %35, i32** %3, align 8
  br label %187

36:                                               ; preds = %2
  %37 = load i32*, i32** @ashl_optab, align 8
  store i32* %37, i32** %3, align 8
  br label %187

38:                                               ; preds = %2
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @TYPE_UNSIGNED(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32*, i32** @lshr_optab, align 8
  br label %46

44:                                               ; preds = %38
  %45 = load i32*, i32** @ashr_optab, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32* [ %43, %42 ], [ %45, %44 ]
  store i32* %47, i32** %3, align 8
  br label %187

48:                                               ; preds = %2
  %49 = load i32*, i32** @rotl_optab, align 8
  store i32* %49, i32** %3, align 8
  br label %187

50:                                               ; preds = %2
  %51 = load i32*, i32** @rotr_optab, align 8
  store i32* %51, i32** %3, align 8
  br label %187

52:                                               ; preds = %2
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @TYPE_UNSIGNED(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32*, i32** @umax_optab, align 8
  br label %60

58:                                               ; preds = %52
  %59 = load i32*, i32** @smax_optab, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32* [ %57, %56 ], [ %59, %58 ]
  store i32* %61, i32** %3, align 8
  br label %187

62:                                               ; preds = %2
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @TYPE_UNSIGNED(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32*, i32** @umin_optab, align 8
  br label %70

68:                                               ; preds = %62
  %69 = load i32*, i32** @smin_optab, align 8
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32* [ %67, %66 ], [ %69, %68 ]
  store i32* %71, i32** %3, align 8
  br label %187

72:                                               ; preds = %2
  %73 = load i32*, i32** @vec_realign_load_optab, align 8
  store i32* %73, i32** %3, align 8
  br label %187

74:                                               ; preds = %2
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @TYPE_UNSIGNED(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32*, i32** @usum_widen_optab, align 8
  br label %82

80:                                               ; preds = %74
  %81 = load i32*, i32** @ssum_widen_optab, align 8
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32* [ %79, %78 ], [ %81, %80 ]
  store i32* %83, i32** %3, align 8
  br label %187

84:                                               ; preds = %2
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @TYPE_UNSIGNED(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32*, i32** @udot_prod_optab, align 8
  br label %92

90:                                               ; preds = %84
  %91 = load i32*, i32** @sdot_prod_optab, align 8
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32* [ %89, %88 ], [ %91, %90 ]
  store i32* %93, i32** %3, align 8
  br label %187

94:                                               ; preds = %2
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @TYPE_UNSIGNED(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32*, i32** @reduc_umax_optab, align 8
  br label %102

100:                                              ; preds = %94
  %101 = load i32*, i32** @reduc_smax_optab, align 8
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32* [ %99, %98 ], [ %101, %100 ]
  store i32* %103, i32** %3, align 8
  br label %187

104:                                              ; preds = %2
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @TYPE_UNSIGNED(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i32*, i32** @reduc_umin_optab, align 8
  br label %112

110:                                              ; preds = %104
  %111 = load i32*, i32** @reduc_smin_optab, align 8
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32* [ %109, %108 ], [ %111, %110 ]
  store i32* %113, i32** %3, align 8
  br label %187

114:                                              ; preds = %2
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @TYPE_UNSIGNED(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32*, i32** @reduc_uplus_optab, align 8
  br label %122

120:                                              ; preds = %114
  %121 = load i32*, i32** @reduc_splus_optab, align 8
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32* [ %119, %118 ], [ %121, %120 ]
  store i32* %123, i32** %3, align 8
  br label %187

124:                                              ; preds = %2
  %125 = load i32*, i32** @vec_shl_optab, align 8
  store i32* %125, i32** %3, align 8
  br label %187

126:                                              ; preds = %2
  %127 = load i32*, i32** @vec_shr_optab, align 8
  store i32* %127, i32** %3, align 8
  br label %187

128:                                              ; preds = %2
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %5, align 4
  %131 = call i64 @INTEGRAL_TYPE_P(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i32, i32* %5, align 4
  %135 = call i64 @TYPE_OVERFLOW_TRAPS(i32 %134)
  %136 = icmp ne i64 %135, 0
  br label %137

137:                                              ; preds = %133, %129
  %138 = phi i1 [ false, %129 ], [ %136, %133 ]
  %139 = zext i1 %138 to i32
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %4, align 4
  switch i32 %140, label %186 [
    i32 142, label %141
    i32 146, label %150
    i32 144, label %159
    i32 143, label %168
    i32 160, label %177
  ]

141:                                              ; preds = %137
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load i32*, i32** @addv_optab, align 8
  br label %148

146:                                              ; preds = %141
  %147 = load i32*, i32** @add_optab, align 8
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i32* [ %145, %144 ], [ %147, %146 ]
  store i32* %149, i32** %3, align 8
  br label %187

150:                                              ; preds = %137
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = load i32*, i32** @subv_optab, align 8
  br label %157

155:                                              ; preds = %150
  %156 = load i32*, i32** @sub_optab, align 8
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32* [ %154, %153 ], [ %156, %155 ]
  store i32* %158, i32** %3, align 8
  br label %187

159:                                              ; preds = %137
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = load i32*, i32** @smulv_optab, align 8
  br label %166

164:                                              ; preds = %159
  %165 = load i32*, i32** @smul_optab, align 8
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i32* [ %163, %162 ], [ %165, %164 ]
  store i32* %167, i32** %3, align 8
  br label %187

168:                                              ; preds = %137
  %169 = load i32, i32* %6, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = load i32*, i32** @negv_optab, align 8
  br label %175

173:                                              ; preds = %168
  %174 = load i32*, i32** @neg_optab, align 8
  br label %175

175:                                              ; preds = %173, %171
  %176 = phi i32* [ %172, %171 ], [ %174, %173 ]
  store i32* %176, i32** %3, align 8
  br label %187

177:                                              ; preds = %137
  %178 = load i32, i32* %6, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = load i32*, i32** @absv_optab, align 8
  br label %184

182:                                              ; preds = %177
  %183 = load i32*, i32** @abs_optab, align 8
  br label %184

184:                                              ; preds = %182, %180
  %185 = phi i32* [ %181, %180 ], [ %183, %182 ]
  store i32* %185, i32** %3, align 8
  br label %187

186:                                              ; preds = %137
  store i32* null, i32** %3, align 8
  br label %187

187:                                              ; preds = %186, %184, %175, %166, %157, %148, %126, %124, %122, %112, %102, %92, %82, %72, %70, %60, %50, %48, %46, %36, %34, %24, %14, %12, %10, %8
  %188 = load i32*, i32** %3, align 8
  ret i32* %188
}

declare dso_local i32 @TYPE_UNSIGNED(i32) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i64 @TYPE_OVERFLOW_TRAPS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
