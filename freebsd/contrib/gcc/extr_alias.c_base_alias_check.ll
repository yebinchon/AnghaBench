; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_base_alias_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_base_alias_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_expensive_optimizations = common dso_local global i32 0, align 4
@ADDRESS = common dso_local global i64 0, align 8
@AND = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@Pmode = common dso_local global i64 0, align 8
@flag_argument_noalias = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32)* @base_alias_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @base_alias_check(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @find_base_term(i64 %14)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @find_base_term(i64 %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %4
  %21 = load i32, i32* @flag_expensive_optimizations, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @canon_rtx(i64 %24)
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %20
  store i32 1, i32* %5, align 4
  br label %168

29:                                               ; preds = %23
  %30 = load i64, i64* %12, align 8
  %31 = call i64 @find_base_term(i64 %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  br label %168

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %4
  %37 = load i64, i64* %11, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load i32, i32* @flag_expensive_optimizations, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @canon_rtx(i64 %43)
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %39
  store i32 1, i32* %5, align 4
  br label %168

48:                                               ; preds = %42
  %49 = load i64, i64* %13, align 8
  %50 = call i64 @find_base_term(i64 %49)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 1, i32* %5, align 4
  br label %168

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i64 @rtx_equal_p(i64 %56, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 1, i32* %5, align 4
  br label %168

61:                                               ; preds = %55
  %62 = load i64, i64* %10, align 8
  %63 = call i64 @GET_CODE(i64 %62)
  %64 = load i64, i64* @ADDRESS, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %125

66:                                               ; preds = %61
  %67 = load i64, i64* %11, align 8
  %68 = call i64 @GET_CODE(i64 %67)
  %69 = load i64, i64* @ADDRESS, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %125

71:                                               ; preds = %66
  %72 = load i64, i64* %6, align 8
  %73 = call i64 @GET_CODE(i64 %72)
  %74 = load i64, i64* @AND, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i64, i64* %7, align 8
  %78 = call i64 @GET_CODE(i64 %77)
  %79 = load i64, i64* @AND, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 1, i32* %5, align 4
  br label %168

82:                                               ; preds = %76, %71
  %83 = load i64, i64* %6, align 8
  %84 = call i64 @GET_CODE(i64 %83)
  %85 = load i64, i64* @AND, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %82
  %88 = load i64, i64* %6, align 8
  %89 = call i64 @XEXP(i64 %88, i32 1)
  %90 = call i64 @GET_CODE(i64 %89)
  %91 = load i64, i64* @CONST_INT, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %102, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* %9, align 4
  %95 = call i64 @GET_MODE_UNIT_SIZE(i32 %94)
  %96 = trunc i64 %95 to i32
  %97 = load i64, i64* %6, align 8
  %98 = call i64 @XEXP(i64 %97, i32 1)
  %99 = call i32 @INTVAL(i64 %98)
  %100 = sub nsw i32 0, %99
  %101 = icmp slt i32 %96, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %93, %87
  store i32 1, i32* %5, align 4
  br label %168

103:                                              ; preds = %93, %82
  %104 = load i64, i64* %7, align 8
  %105 = call i64 @GET_CODE(i64 %104)
  %106 = load i64, i64* @AND, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %103
  %109 = load i64, i64* %7, align 8
  %110 = call i64 @XEXP(i64 %109, i32 1)
  %111 = call i64 @GET_CODE(i64 %110)
  %112 = load i64, i64* @CONST_INT, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %123, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %8, align 4
  %116 = call i64 @GET_MODE_UNIT_SIZE(i32 %115)
  %117 = trunc i64 %116 to i32
  %118 = load i64, i64* %7, align 8
  %119 = call i64 @XEXP(i64 %118, i32 1)
  %120 = call i32 @INTVAL(i64 %119)
  %121 = sub nsw i32 0, %120
  %122 = icmp slt i32 %117, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %114, %108
  store i32 1, i32* %5, align 4
  br label %168

124:                                              ; preds = %114, %103
  store i32 0, i32* %5, align 4
  br label %168

125:                                              ; preds = %66, %61
  %126 = load i64, i64* %10, align 8
  %127 = call i64 @GET_CODE(i64 %126)
  %128 = load i64, i64* @ADDRESS, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load i64, i64* %10, align 8
  %132 = call i64 @GET_MODE(i64 %131)
  %133 = load i64, i64* @Pmode, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %145, label %135

135:                                              ; preds = %130, %125
  %136 = load i64, i64* %11, align 8
  %137 = call i64 @GET_CODE(i64 %136)
  %138 = load i64, i64* @ADDRESS, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load i64, i64* %11, align 8
  %142 = call i64 @GET_MODE(i64 %141)
  %143 = load i64, i64* @Pmode, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %140, %130
  store i32 0, i32* %5, align 4
  br label %168

146:                                              ; preds = %140, %135
  %147 = load i32, i32* @flag_argument_noalias, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %146
  store i32 1, i32* %5, align 4
  br label %168

150:                                              ; preds = %146
  %151 = load i32, i32* @flag_argument_noalias, align 4
  %152 = icmp sgt i32 %151, 1
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  store i32 0, i32* %5, align 4
  br label %168

154:                                              ; preds = %150
  %155 = load i64, i64* %10, align 8
  %156 = call i64 @GET_MODE(i64 %155)
  %157 = load i64, i64* @VOIDmode, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load i64, i64* %11, align 8
  %161 = call i64 @GET_MODE(i64 %160)
  %162 = load i64, i64* @VOIDmode, align 8
  %163 = icmp eq i64 %161, %162
  br label %164

164:                                              ; preds = %159, %154
  %165 = phi i1 [ false, %154 ], [ %163, %159 ]
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %164, %153, %149, %145, %124, %123, %102, %81, %60, %53, %47, %34, %28
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local i64 @find_base_term(i64) #1

declare dso_local i64 @canon_rtx(i64) #1

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @GET_MODE_UNIT_SIZE(i32) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
