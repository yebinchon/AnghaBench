; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_find_macro_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_find_macro_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpha_macro = type { i32*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@alpha_macros = common dso_local global %struct.alpha_macro* null, align 8
@alpha_num_macros = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.alpha_macro* (%struct.alpha_macro*, %struct.TYPE_3__*, i32*)* @find_macro_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.alpha_macro* @find_macro_match(%struct.alpha_macro* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca %struct.alpha_macro*, align 8
  %5 = alloca %struct.alpha_macro*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.alpha_macro*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.alpha_macro* %0, %struct.alpha_macro** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.alpha_macro*, %struct.alpha_macro** %5, align 8
  store %struct.alpha_macro* %12, %struct.alpha_macro** %8, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  br label %15

15:                                               ; preds = %211, %3
  %16 = load %struct.alpha_macro*, %struct.alpha_macro** %8, align 8
  %17 = getelementptr inbounds %struct.alpha_macro, %struct.alpha_macro* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %185, %15
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %188

23:                                               ; preds = %19
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %185 [
    i32 147, label %26
    i32 144, label %34
    i32 142, label %59
    i32 143, label %84
    i32 148, label %109
    i32 145, label %134
    i32 146, label %159
  ]

26:                                               ; preds = %23
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load %struct.alpha_macro*, %struct.alpha_macro** %8, align 8
  store %struct.alpha_macro* %31, %struct.alpha_macro** %4, align 8
  br label %214

32:                                               ; preds = %26
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %32
  br label %185

34:                                               ; preds = %23
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %55, label %38

38:                                               ; preds = %34
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 129
  br i1 %45, label %55, label %46

46:                                               ; preds = %38
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @is_ir_num(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %46, %38, %34
  br label %176

56:                                               ; preds = %46
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %185

59:                                               ; preds = %23
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %80, label %63

63:                                               ; preds = %59
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 130
  br i1 %70, label %80, label %71

71:                                               ; preds = %63
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @is_ir_num(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %71, %63, %59
  br label %176

81:                                               ; preds = %71
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %185

84:                                               ; preds = %23
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %108

88:                                               ; preds = %84
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 130
  br i1 %95, label %96, label %108

96:                                               ; preds = %88
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @is_ir_num(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %96
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %105, %96, %88, %84
  br label %185

109:                                              ; preds = %23
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp sge i32 %110, %111
  br i1 %112, label %130, label %113

113:                                              ; preds = %109
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 140
  br i1 %120, label %130, label %121

121:                                              ; preds = %113
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @is_ir_num(i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %121, %113, %109
  br label %176

131:                                              ; preds = %121
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %11, align 4
  br label %185

134:                                              ; preds = %23
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp sge i32 %135, %136
  br i1 %137, label %155, label %138

138:                                              ; preds = %134
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 129
  br i1 %145, label %155, label %146

146:                                              ; preds = %138
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @is_fpr_num(i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %146, %138, %134
  br label %176

156:                                              ; preds = %146
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %11, align 4
  br label %185

159:                                              ; preds = %23
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp sge i32 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  br label %176

164:                                              ; preds = %159
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  switch i32 %170, label %172 [
    i32 135, label %171
    i32 141, label %171
    i32 129, label %171
    i32 130, label %171
    i32 140, label %171
    i32 134, label %171
    i32 133, label %171
    i32 132, label %171
    i32 131, label %171
    i32 139, label %171
    i32 137, label %171
    i32 136, label %171
    i32 138, label %171
    i32 128, label %171
  ]

171:                                              ; preds = %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164
  br label %176

172:                                              ; preds = %164
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %11, align 4
  br label %185

176:                                              ; preds = %171, %163, %155, %130, %80, %55
  br label %177

177:                                              ; preds = %181, %176
  %178 = load i32*, i32** %10, align 8
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 147
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = load i32*, i32** %10, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %10, align 8
  br label %177

184:                                              ; preds = %177
  store i32 0, i32* %11, align 4
  br label %185

185:                                              ; preds = %23, %184, %173, %156, %131, %108, %81, %56, %33
  %186 = load i32*, i32** %10, align 8
  %187 = getelementptr inbounds i32, i32* %186, i32 1
  store i32* %187, i32** %10, align 8
  br label %19

188:                                              ; preds = %19
  br label %189

189:                                              ; preds = %188
  %190 = load %struct.alpha_macro*, %struct.alpha_macro** %8, align 8
  %191 = getelementptr inbounds %struct.alpha_macro, %struct.alpha_macro* %190, i32 1
  store %struct.alpha_macro* %191, %struct.alpha_macro** %8, align 8
  %192 = load %struct.alpha_macro*, %struct.alpha_macro** @alpha_macros, align 8
  %193 = ptrtoint %struct.alpha_macro* %191 to i64
  %194 = ptrtoint %struct.alpha_macro* %192 to i64
  %195 = sub i64 %193, %194
  %196 = sdiv exact i64 %195, 16
  %197 = load i64, i64* @alpha_num_macros, align 8
  %198 = trunc i64 %197 to i32
  %199 = sext i32 %198 to i64
  %200 = icmp slt i64 %196, %199
  br i1 %200, label %201, label %211

201:                                              ; preds = %189
  %202 = load %struct.alpha_macro*, %struct.alpha_macro** %8, align 8
  %203 = getelementptr inbounds %struct.alpha_macro, %struct.alpha_macro* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.alpha_macro*, %struct.alpha_macro** %5, align 8
  %206 = getelementptr inbounds %struct.alpha_macro, %struct.alpha_macro* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @strcmp(i32 %204, i32 %207)
  %209 = icmp ne i32 %208, 0
  %210 = xor i1 %209, true
  br label %211

211:                                              ; preds = %201, %189
  %212 = phi i1 [ false, %189 ], [ %210, %201 ]
  br i1 %212, label %15, label %213

213:                                              ; preds = %211
  store %struct.alpha_macro* null, %struct.alpha_macro** %4, align 8
  br label %214

214:                                              ; preds = %213, %30
  %215 = load %struct.alpha_macro*, %struct.alpha_macro** %4, align 8
  ret %struct.alpha_macro* %215
}

declare dso_local i32 @is_ir_num(i32) #1

declare dso_local i32 @is_fpr_num(i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
