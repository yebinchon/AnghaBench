; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_simplify_or_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_simplify_or_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IOR = common dso_local global i64 0, align 8
@AND = common dso_local global i64 0, align 8
@false_rtx = common dso_local global i64 0, align 8
@NOT = common dso_local global i64 0, align 8
@true_rtx = common dso_local global i64 0, align 8
@EQ_ATTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, i32, i32)* @simplify_or_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @simplify_or_tree(i64 %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @GET_CODE(i64 %16)
  %18 = load i64, i64* @IOR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %4
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @XEXP(i64 %21, i32 0)
  %23 = load i64*, i64** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @simplify_or_tree(i64 %22, i64* %23, i32 %24, i32 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @XEXP(i64 %27, i32 1)
  %29 = load i64*, i64** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @simplify_or_tree(i64 %28, i64* %29, i32 %30, i32 %31)
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @XEXP(i64 %34, i32 0)
  %36 = icmp ne i64 %33, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %20
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @XEXP(i64 %39, i32 1)
  %41 = icmp ne i64 %38, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %37, %20
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @GET_CODE(i64 %43)
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i64 @attr_rtx(i64 %44, i64 %45, i64 %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @simplify_test_exp_in_temp(i64 %48, i32 %49, i32 %50)
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %42, %37
  br label %111

53:                                               ; preds = %4
  %54 = load i64, i64* %6, align 8
  %55 = call i64 @GET_CODE(i64 %54)
  %56 = load i64, i64* @AND, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %110

58:                                               ; preds = %53
  %59 = load i64*, i64** %7, align 8
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %13, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i64 @XEXP(i64 %61, i32 0)
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i64 @simplify_or_tree(i64 %62, i64* %13, i32 %63, i32 %64)
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* @false_rtx, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %14, align 4
  %70 = load i64*, i64** %7, align 8
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %6, align 8
  %73 = call i64 @XEXP(i64 %72, i32 1)
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i64 @simplify_or_tree(i64 %73, i64* %13, i32 %74, i32 %75)
  store i64 %76, i64* %11, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* @false_rtx, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %58
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i64, i64* @false_rtx, align 8
  %88 = load i64*, i64** %7, align 8
  store i64 %87, i64* %88, align 8
  br label %89

89:                                               ; preds = %86, %83, %58
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* %6, align 8
  %92 = call i64 @XEXP(i64 %91, i32 0)
  %93 = icmp ne i64 %90, %92
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %6, align 8
  %97 = call i64 @XEXP(i64 %96, i32 1)
  %98 = icmp ne i64 %95, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %94, %89
  %100 = load i64, i64* %6, align 8
  %101 = call i64 @GET_CODE(i64 %100)
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* %11, align 8
  %104 = call i64 @attr_rtx(i64 %101, i64 %102, i64 %103)
  store i64 %104, i64* %12, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i64 @simplify_test_exp_in_temp(i64 %105, i32 %106, i32 %107)
  store i64 %108, i64* %6, align 8
  br label %109

109:                                              ; preds = %99, %94
  br label %110

110:                                              ; preds = %109, %53
  br label %111

111:                                              ; preds = %110, %52
  %112 = load i64, i64* %6, align 8
  %113 = load i64*, i64** %7, align 8
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @attr_equal_p(i64 %112, i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i64, i64* @false_rtx, align 8
  store i64 %118, i64* %5, align 8
  br label %210

119:                                              ; preds = %111
  %120 = load i64, i64* %6, align 8
  %121 = call i64 @GET_CODE(i64 %120)
  %122 = load i64, i64* @NOT, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = load i64, i64* %6, align 8
  %126 = call i64 @XEXP(i64 %125, i32 0)
  %127 = load i64*, i64** %7, align 8
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @attr_equal_p(i64 %126, i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i64, i64* @true_rtx, align 8
  store i64 %132, i64* %5, align 8
  br label %210

133:                                              ; preds = %124, %119
  %134 = load i64*, i64** %7, align 8
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @GET_CODE(i64 %135)
  %137 = load i64, i64* @NOT, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %133
  %140 = load i64*, i64** %7, align 8
  %141 = load i64, i64* %140, align 8
  %142 = call i64 @XEXP(i64 %141, i32 0)
  %143 = load i64, i64* %6, align 8
  %144 = call i64 @attr_equal_p(i64 %142, i64 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load i64, i64* @true_rtx, align 8
  store i64 %147, i64* %5, align 8
  br label %210

148:                                              ; preds = %139, %133
  %149 = load i64*, i64** %7, align 8
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @GET_CODE(i64 %150)
  %152 = load i64, i64* @EQ_ATTR, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %176

154:                                              ; preds = %148
  %155 = load i64, i64* %6, align 8
  %156 = call i64 @GET_CODE(i64 %155)
  %157 = load i64, i64* @NOT, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %176

159:                                              ; preds = %154
  %160 = load i64, i64* %6, align 8
  %161 = call i64 @XEXP(i64 %160, i32 0)
  %162 = call i64 @GET_CODE(i64 %161)
  %163 = load i64, i64* @EQ_ATTR, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %159
  %166 = load i64*, i64** %7, align 8
  %167 = load i64, i64* %166, align 8
  %168 = call i64 @XSTR(i64 %167, i32 0)
  %169 = load i64, i64* %6, align 8
  %170 = call i64 @XEXP(i64 %169, i32 0)
  %171 = call i64 @XSTR(i64 %170, i32 0)
  %172 = icmp eq i64 %168, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %165
  %174 = load i64, i64* @false_rtx, align 8
  %175 = load i64*, i64** %7, align 8
  store i64 %174, i64* %175, align 8
  br label %205

176:                                              ; preds = %165, %159, %154, %148
  %177 = load i64, i64* %6, align 8
  %178 = call i64 @GET_CODE(i64 %177)
  %179 = load i64, i64* @EQ_ATTR, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %204

181:                                              ; preds = %176
  %182 = load i64*, i64** %7, align 8
  %183 = load i64, i64* %182, align 8
  %184 = call i64 @GET_CODE(i64 %183)
  %185 = load i64, i64* @NOT, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %204

187:                                              ; preds = %181
  %188 = load i64*, i64** %7, align 8
  %189 = load i64, i64* %188, align 8
  %190 = call i64 @XEXP(i64 %189, i32 0)
  %191 = call i64 @GET_CODE(i64 %190)
  %192 = load i64, i64* @EQ_ATTR, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %204

194:                                              ; preds = %187
  %195 = load i64, i64* %6, align 8
  %196 = call i64 @XSTR(i64 %195, i32 0)
  %197 = load i64*, i64** %7, align 8
  %198 = load i64, i64* %197, align 8
  %199 = call i64 @XEXP(i64 %198, i32 0)
  %200 = call i64 @XSTR(i64 %199, i32 0)
  %201 = icmp eq i64 %196, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %194
  %203 = load i64, i64* @false_rtx, align 8
  store i64 %203, i64* %5, align 8
  br label %210

204:                                              ; preds = %194, %187, %181, %176
  br label %205

205:                                              ; preds = %204, %173
  br label %206

206:                                              ; preds = %205
  br label %207

207:                                              ; preds = %206
  br label %208

208:                                              ; preds = %207
  %209 = load i64, i64* %6, align 8
  store i64 %209, i64* %5, align 8
  br label %210

210:                                              ; preds = %208, %202, %146, %131, %117
  %211 = load i64, i64* %5, align 8
  ret i64 %211
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @attr_rtx(i64, i64, i64) #1

declare dso_local i64 @simplify_test_exp_in_temp(i64, i32, i32) #1

declare dso_local i64 @attr_equal_p(i64, i64) #1

declare dso_local i64 @XSTR(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
