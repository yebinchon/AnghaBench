; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_includes_rldic_lshift_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_includes_rldic_lshift_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST_INT = common dso_local global i64 0, align 8
@CONST_DOUBLE = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i64 0, align 8
@DImode = common dso_local global i64 0, align 8
@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @includes_rldic_lshift_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @GET_CODE(i32 %14)
  %16 = load i64, i64* @CONST_INT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %57

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @INTVAL(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %18
  store i32 0, i32* %3, align 4
  br label %208

27:                                               ; preds = %23
  store i32 -1, i32* %8, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @INTVAL(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = shl i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 0, %33
  %35 = and i32 %32, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 0, %36
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %208

41:                                               ; preds = %27
  %42 = load i32, i32* %6, align 4
  %43 = xor i32 %42, -1
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 0, %44
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 0, %49
  %51 = and i32 %48, %50
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %3, align 4
  br label %208

57:                                               ; preds = %2
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @GET_CODE(i32 %58)
  %60 = load i64, i64* @CONST_DOUBLE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %207

62:                                               ; preds = %57
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @GET_MODE(i32 %63)
  %65 = load i64, i64* @VOIDmode, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %5, align 4
  %69 = call i64 @GET_MODE(i32 %68)
  %70 = load i64, i64* @DImode, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %207

72:                                               ; preds = %67, %62
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @CONST_DOUBLE_LOW(i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %76 = icmp slt i32 %75, 64
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @CONST_DOUBLE_HIGH(i32 %78)
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i32, i32* %9, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %85 = icmp sge i32 %84, 64
  br i1 %85, label %98, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %86, %80
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %94 = icmp sge i32 %93, 64
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %99

98:                                               ; preds = %95, %92, %86, %83
  store i32 0, i32* %3, align 4
  br label %208

99:                                               ; preds = %95, %89
  %100 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %101 = icmp slt i32 %100, 64
  br i1 %101, label %102, label %145

102:                                              ; preds = %99
  %103 = load i32, i32* %9, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %145

105:                                              ; preds = %102
  store i32 -1, i32* %13, align 4
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @INTVAL(i32 %106)
  %108 = icmp sgt i32 %107, 32
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @INTVAL(i32 %110)
  %112 = sub nsw i32 %111, 32
  %113 = load i32, i32* %13, align 4
  %114 = shl i32 %113, %112
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %109, %105
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = sub nsw i32 0, %117
  %119 = and i32 %116, %118
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = sub nsw i32 0, %120
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %128, label %124

124:                                              ; preds = %115
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @INTVAL(i32 %125)
  %127 = icmp slt i32 %126, 32
  br i1 %127, label %128, label %129

128:                                              ; preds = %124, %115
  store i32 0, i32* %3, align 4
  br label %208

129:                                              ; preds = %124
  %130 = load i32, i32* %10, align 4
  %131 = xor i32 %130, -1
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %11, align 4
  %133 = sub nsw i32 0, %132
  %134 = load i32, i32* %10, align 4
  %135 = and i32 %134, %133
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = sub nsw i32 0, %137
  %139 = and i32 %136, %138
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %11, align 4
  %142 = sub nsw i32 0, %141
  %143 = icmp eq i32 %140, %142
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %3, align 4
  br label %208

145:                                              ; preds = %102, %99
  store i32 -1, i32* %12, align 4
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @INTVAL(i32 %146)
  %148 = load i32, i32* %12, align 4
  %149 = shl i32 %148, %147
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = sub nsw i32 0, %151
  %153 = and i32 %150, %152
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = sub nsw i32 0, %154
  %156 = load i32, i32* %12, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %145
  store i32 0, i32* %3, align 4
  br label %208

159:                                              ; preds = %145
  %160 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %161 = icmp slt i32 %160, 64
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32, i32* %10, align 4
  %164 = xor i32 %163, -1
  store i32 %164, i32* %10, align 4
  br label %165

165:                                              ; preds = %162, %159
  %166 = load i32, i32* %9, align 4
  %167 = xor i32 %166, -1
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* %11, align 4
  %169 = sub nsw i32 0, %168
  %170 = load i32, i32* %9, align 4
  %171 = and i32 %170, %169
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %173 = icmp slt i32 %172, 64
  br i1 %173, label %174, label %187

174:                                              ; preds = %165
  %175 = load i32, i32* %9, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %174
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* %10, align 4
  %180 = sub nsw i32 0, %179
  %181 = and i32 %178, %180
  store i32 %181, i32* %11, align 4
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* %11, align 4
  %184 = sub nsw i32 0, %183
  %185 = icmp eq i32 %182, %184
  %186 = zext i1 %185 to i32
  store i32 %186, i32* %3, align 4
  br label %208

187:                                              ; preds = %174, %165
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* %9, align 4
  %190 = sub nsw i32 0, %189
  %191 = and i32 %188, %190
  store i32 %191, i32* %11, align 4
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* %11, align 4
  %194 = sub nsw i32 0, %193
  %195 = icmp eq i32 %192, %194
  br i1 %195, label %196, label %204

196:                                              ; preds = %187
  %197 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %198 = icmp sge i32 %197, 64
  br i1 %198, label %202, label %199

199:                                              ; preds = %196
  %200 = load i32, i32* %10, align 4
  %201 = icmp eq i32 %200, -1
  br label %202

202:                                              ; preds = %199, %196
  %203 = phi i1 [ true, %196 ], [ %201, %199 ]
  br label %204

204:                                              ; preds = %202, %187
  %205 = phi i1 [ false, %187 ], [ %203, %202 ]
  %206 = zext i1 %205 to i32
  store i32 %206, i32* %3, align 4
  br label %208

207:                                              ; preds = %67, %57
  store i32 0, i32* %3, align 4
  br label %208

208:                                              ; preds = %207, %204, %177, %158, %129, %128, %98, %41, %40, %26
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @CONST_DOUBLE_LOW(i32) #1

declare dso_local i32 @CONST_DOUBLE_HIGH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
