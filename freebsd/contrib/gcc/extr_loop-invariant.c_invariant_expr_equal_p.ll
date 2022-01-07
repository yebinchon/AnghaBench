; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_invariant_expr_equal_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_invariant_expr_equal_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df_ref = type { i32 }
%struct.invariant = type { i32 }

@df = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @invariant_expr_equal_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invariant_expr_equal_p(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.df_ref*, align 8
  %15 = alloca %struct.df_ref*, align 8
  %16 = alloca %struct.invariant*, align 8
  %17 = alloca %struct.invariant*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @GET_CODE(i32 %20)
  store i32 %21, i32* %10, align 4
  store %struct.invariant* null, %struct.invariant** %16, align 8
  store %struct.invariant* null, %struct.invariant** %17, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @GET_CODE(i32 %23)
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @GET_MODE(i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @GET_MODE(i32 %29)
  %31 = icmp ne i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %4
  store i32 0, i32* %5, align 4
  br label %209

33:                                               ; preds = %26
  %34 = load i32, i32* %10, align 4
  switch i32 %34, label %97 [
    i32 131, label %35
    i32 132, label %35
    i32 128, label %35
    i32 133, label %35
    i32 130, label %35
    i32 129, label %39
  ]

35:                                               ; preds = %33, %33, %33, %33, %33
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @rtx_equal_p(i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %209

39:                                               ; preds = %33
  %40 = load i32, i32* @df, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call %struct.df_ref* @df_find_use(i32 %40, i32 %41, i32 %42)
  store %struct.df_ref* %43, %struct.df_ref** %14, align 8
  %44 = load i32, i32* @df, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call %struct.df_ref* @df_find_use(i32 %44, i32 %45, i32 %46)
  store %struct.df_ref* %47, %struct.df_ref** %15, align 8
  %48 = load %struct.df_ref*, %struct.df_ref** %14, align 8
  %49 = icmp ne %struct.df_ref* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load %struct.df_ref*, %struct.df_ref** %14, align 8
  %52 = call %struct.invariant* @invariant_for_use(%struct.df_ref* %51)
  store %struct.invariant* %52, %struct.invariant** %16, align 8
  br label %53

53:                                               ; preds = %50, %39
  %54 = load %struct.df_ref*, %struct.df_ref** %15, align 8
  %55 = icmp ne %struct.df_ref* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.df_ref*, %struct.df_ref** %15, align 8
  %58 = call %struct.invariant* @invariant_for_use(%struct.df_ref* %57)
  store %struct.invariant* %58, %struct.invariant** %17, align 8
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.invariant*, %struct.invariant** %16, align 8
  %61 = icmp ne %struct.invariant* %60, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = load %struct.invariant*, %struct.invariant** %17, align 8
  %64 = icmp ne %struct.invariant* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @rtx_equal_p(i32 %66, i32 %67)
  store i32 %68, i32* %5, align 4
  br label %209

69:                                               ; preds = %62, %59
  %70 = load %struct.invariant*, %struct.invariant** %16, align 8
  %71 = icmp ne %struct.invariant* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.invariant*, %struct.invariant** %17, align 8
  %74 = icmp ne %struct.invariant* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %72, %69
  store i32 0, i32* %5, align 4
  br label %209

76:                                               ; preds = %72
  %77 = load %struct.invariant*, %struct.invariant** %16, align 8
  %78 = getelementptr inbounds %struct.invariant, %struct.invariant* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, -1
  %81 = zext i1 %80 to i32
  %82 = call i32 @gcc_assert(i32 %81)
  %83 = load %struct.invariant*, %struct.invariant** %17, align 8
  %84 = getelementptr inbounds %struct.invariant, %struct.invariant* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, -1
  %87 = zext i1 %86 to i32
  %88 = call i32 @gcc_assert(i32 %87)
  %89 = load %struct.invariant*, %struct.invariant** %16, align 8
  %90 = getelementptr inbounds %struct.invariant, %struct.invariant* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.invariant*, %struct.invariant** %17, align 8
  %93 = getelementptr inbounds %struct.invariant, %struct.invariant* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %91, %94
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %5, align 4
  br label %209

97:                                               ; preds = %33
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %10, align 4
  %100 = call i8* @GET_RTX_FORMAT(i32 %99)
  store i8* %100, i8** %13, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @GET_RTX_LENGTH(i32 %101)
  %103 = sub nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %205, %98
  %105 = load i32, i32* %11, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %208

107:                                              ; preds = %104
  %108 = load i8*, i8** %13, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 101
  br i1 %114, label %115, label %130

115:                                              ; preds = %107
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @XEXP(i32 %116, i32 %117)
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @XEXP(i32 %119, i32 %120)
  store i32 %121, i32* %19, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %19, align 4
  %126 = call i32 @invariant_expr_equal_p(i32 %122, i32 %123, i32 %124, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %115
  store i32 0, i32* %5, align 4
  br label %209

129:                                              ; preds = %115
  br label %204

130:                                              ; preds = %107
  %131 = load i8*, i8** %13, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 69
  br i1 %137, label %138, label %175

138:                                              ; preds = %130
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @XVECLEN(i32 %139, i32 %140)
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @XVECLEN(i32 %142, i32 %143)
  %145 = icmp ne i32 %141, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  store i32 0, i32* %5, align 4
  br label %209

147:                                              ; preds = %138
  store i32 0, i32* %12, align 4
  br label %148

148:                                              ; preds = %171, %147
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @XVECLEN(i32 %150, i32 %151)
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %174

154:                                              ; preds = %148
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @XVECEXP(i32 %155, i32 %156, i32 %157)
  store i32 %158, i32* %18, align 4
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @XVECEXP(i32 %159, i32 %160, i32 %161)
  store i32 %162, i32* %19, align 4
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %19, align 4
  %167 = call i32 @invariant_expr_equal_p(i32 %163, i32 %164, i32 %165, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %154
  store i32 0, i32* %5, align 4
  br label %209

170:                                              ; preds = %154
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %12, align 4
  br label %148

174:                                              ; preds = %148
  br label %203

175:                                              ; preds = %130
  %176 = load i8*, i8** %13, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 105
  br i1 %182, label %191, label %183

183:                                              ; preds = %175
  %184 = load i8*, i8** %13, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 110
  br i1 %190, label %191, label %201

191:                                              ; preds = %183, %175
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* %11, align 4
  %194 = call i64 @XINT(i32 %192, i32 %193)
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %11, align 4
  %197 = call i64 @XINT(i32 %195, i32 %196)
  %198 = icmp ne i64 %194, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %191
  store i32 0, i32* %5, align 4
  br label %209

200:                                              ; preds = %191
  br label %202

201:                                              ; preds = %183
  store i32 0, i32* %5, align 4
  br label %209

202:                                              ; preds = %200
  br label %203

203:                                              ; preds = %202, %174
  br label %204

204:                                              ; preds = %203, %129
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %11, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %11, align 4
  br label %104

208:                                              ; preds = %104
  store i32 1, i32* %5, align 4
  br label %209

209:                                              ; preds = %208, %201, %199, %169, %146, %128, %76, %75, %65, %35, %32
  %210 = load i32, i32* %5, align 4
  ret i32 %210
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @rtx_equal_p(i32, i32) #1

declare dso_local %struct.df_ref* @df_find_use(i32, i32, i32) #1

declare dso_local %struct.invariant* @invariant_for_use(%struct.df_ref*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i64 @XINT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
