; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcbug-rom.c_ppcbug_supply_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcbug-rom.c_ppcbug_supply_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32)* @ppcbug_supply_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppcbug_supply_register(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %4
  br label %229

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  switch i32 %20, label %224 [
    i32 82, label %21
    i32 70, label %74
    i32 73, label %135
    i32 77, label %146
    i32 67, label %163
    i32 83, label %174
  ]

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp slt i32 %25, 48
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sgt i32 %31, 57
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %21
  br label %229

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = sub nsw i32 %41, 48
  store i32 %42, i32* %9, align 4
  br label %73

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %71

46:                                               ; preds = %43
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sge i32 %50, 48
  br i1 %51, label %52, label %71

52:                                               ; preds = %46
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sle i32 %56, 57
  br i1 %57, label %58, label %71

58:                                               ; preds = %52
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = sub nsw i32 %62, 48
  %64 = mul nsw i32 %63, 10
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = sub nsw i32 %68, 48
  %70 = add nsw i32 %64, %69
  store i32 %70, i32* %9, align 4
  br label %72

71:                                               ; preds = %52, %46, %43
  br label %229

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72, %37
  br label %225

74:                                               ; preds = %16
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 82
  br i1 %79, label %92, label %80

80:                                               ; preds = %74
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp slt i32 %84, 48
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 2
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp sgt i32 %90, 57
  br i1 %91, label %92, label %93

92:                                               ; preds = %86, %80, %74
  br label %229

93:                                               ; preds = %86
  %94 = load i32, i32* %6, align 4
  %95 = icmp eq i32 %94, 3
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 2
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = add nsw i32 32, %100
  %102 = sub nsw i32 %101, 48
  store i32 %102, i32* %9, align 4
  br label %134

103:                                              ; preds = %93
  %104 = load i32, i32* %6, align 4
  %105 = icmp eq i32 %104, 4
  br i1 %105, label %106, label %132

106:                                              ; preds = %103
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 3
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp sge i32 %110, 48
  br i1 %111, label %112, label %132

112:                                              ; preds = %106
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 3
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp sle i32 %116, 57
  br i1 %117, label %118, label %132

118:                                              ; preds = %112
  %119 = load i8*, i8** %5, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 2
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = sub nsw i32 %122, 48
  %124 = mul nsw i32 %123, 10
  %125 = add nsw i32 32, %124
  %126 = load i8*, i8** %5, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 3
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = sub nsw i32 %129, 48
  %131 = add nsw i32 %125, %130
  store i32 %131, i32* %9, align 4
  br label %133

132:                                              ; preds = %112, %106, %103
  br label %229

133:                                              ; preds = %118
  br label %134

134:                                              ; preds = %133, %96
  br label %225

135:                                              ; preds = %16
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 2
  br i1 %137, label %144, label %138

138:                                              ; preds = %135
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp ne i32 %142, 80
  br i1 %143, label %144, label %145

144:                                              ; preds = %138, %135
  br label %229

145:                                              ; preds = %138
  store i32 64, i32* %9, align 4
  br label %225

146:                                              ; preds = %16
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %147, 3
  br i1 %148, label %161, label %149

149:                                              ; preds = %146
  %150 = load i8*, i8** %5, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 83
  br i1 %154, label %161, label %155

155:                                              ; preds = %149
  %156 = load i8*, i8** %5, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 2
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 82
  br i1 %160, label %161, label %162

161:                                              ; preds = %155, %149, %146
  br label %229

162:                                              ; preds = %155
  store i32 65, i32* %9, align 4
  br label %225

163:                                              ; preds = %16
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %164, 2
  br i1 %165, label %172, label %166

166:                                              ; preds = %163
  %167 = load i8*, i8** %5, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 1
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 82
  br i1 %171, label %172, label %173

172:                                              ; preds = %166, %163
  br label %229

173:                                              ; preds = %166
  store i32 66, i32* %9, align 4
  br label %225

174:                                              ; preds = %16
  %175 = load i32, i32* %6, align 4
  %176 = icmp ne i32 %175, 4
  br i1 %176, label %189, label %177

177:                                              ; preds = %174
  %178 = load i8*, i8** %5, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 1
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp ne i32 %181, 80
  br i1 %182, label %189, label %183

183:                                              ; preds = %177
  %184 = load i8*, i8** %5, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 2
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp ne i32 %187, 82
  br i1 %188, label %189, label %190

189:                                              ; preds = %183, %177, %174
  br label %229

190:                                              ; preds = %183
  %191 = load i8*, i8** %5, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 3
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %194, 56
  br i1 %195, label %196, label %197

196:                                              ; preds = %190
  store i32 67, i32* %9, align 4
  br label %222

197:                                              ; preds = %190
  %198 = load i8*, i8** %5, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 3
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 57
  br i1 %202, label %203, label %204

203:                                              ; preds = %197
  store i32 68, i32* %9, align 4
  br label %221

204:                                              ; preds = %197
  %205 = load i8*, i8** %5, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 3
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %208, 49
  br i1 %209, label %210, label %211

210:                                              ; preds = %204
  store i32 69, i32* %9, align 4
  br label %220

211:                                              ; preds = %204
  %212 = load i8*, i8** %5, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 3
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp eq i32 %215, 48
  br i1 %216, label %217, label %218

217:                                              ; preds = %211
  store i32 70, i32* %9, align 4
  br label %219

218:                                              ; preds = %211
  br label %229

219:                                              ; preds = %217
  br label %220

220:                                              ; preds = %219, %210
  br label %221

221:                                              ; preds = %220, %203
  br label %222

222:                                              ; preds = %221, %196
  br label %223

223:                                              ; preds = %222
  br label %225

224:                                              ; preds = %16
  br label %229

225:                                              ; preds = %223, %173, %162, %145, %134, %73
  %226 = load i32, i32* %9, align 4
  %227 = load i8*, i8** %7, align 8
  %228 = call i32 @monitor_supply_register(i32 %226, i8* %227)
  br label %229

229:                                              ; preds = %225, %224, %218, %189, %172, %161, %144, %132, %92, %71, %33, %15
  ret void
}

declare dso_local i32 @monitor_supply_register(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
