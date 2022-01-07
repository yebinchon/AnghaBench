; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_unifdef.c_eval_unary.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_unifdef.c_eval_unary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ops = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"eval%d !\00", align 1
@eval_ops = common dso_local global i32 0, align 4
@LT_IF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"eval%d (\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"eval%d number\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"defined\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"eval%d defined\00", align 1
@value = common dso_local global i8** null, align 8
@keepthis = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"eval%d symbol\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"eval%d bad expr\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"eval%d = %d\00", align 1
@LT_TRUE = common dso_local global i64 0, align 8
@LT_FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ops*, i32*, i8**)* @eval_unary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @eval_unary(%struct.ops* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ops*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.ops* %0, %struct.ops** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load i8**, i8*** %7, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* @skipcomment(i8* %12)
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 33
  br i1 %17, label %18, label %43

18:                                               ; preds = %3
  %19 = load %struct.ops*, %struct.ops** %5, align 8
  %20 = load i32, i32* @eval_ops, align 4
  %21 = sext i32 %20 to i64
  %22 = sub i64 0, %21
  %23 = getelementptr inbounds %struct.ops, %struct.ops* %19, i64 %22
  %24 = call i32 (i8*, %struct.ops*, ...) @debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.ops* %23)
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %8, align 8
  %27 = load %struct.ops*, %struct.ops** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i64 @eval_unary(%struct.ops* %27, i32* %28, i8** %8)
  %30 = load i64, i64* @LT_IF, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %18
  %33 = load i8*, i8** %8, align 8
  %34 = load i8**, i8*** %7, align 8
  store i8* %33, i8** %34, align 8
  %35 = load i64, i64* @LT_IF, align 8
  store i64 %35, i64* %4, align 8
  br label %237

36:                                               ; preds = %18
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load i32*, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  br label %217

43:                                               ; preds = %3
  %44 = load i8*, i8** %8, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 40
  br i1 %47, label %48, label %75

48:                                               ; preds = %43
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %8, align 8
  %51 = load %struct.ops*, %struct.ops** %5, align 8
  %52 = load i32, i32* @eval_ops, align 4
  %53 = sext i32 %52 to i64
  %54 = sub i64 0, %53
  %55 = getelementptr inbounds %struct.ops, %struct.ops* %51, i64 %54
  %56 = call i32 (i8*, %struct.ops*, ...) @debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.ops* %55)
  %57 = load i32, i32* @eval_ops, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = call i64 @eval_table(i32 %57, i32* %58, i8** %8)
  %60 = load i64, i64* @LT_IF, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %48
  %63 = load i64, i64* @LT_IF, align 8
  store i64 %63, i64* %4, align 8
  br label %237

64:                                               ; preds = %48
  %65 = load i8*, i8** %8, align 8
  %66 = call i8* @skipcomment(i8* %65)
  store i8* %66, i8** %8, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %8, align 8
  %69 = load i8, i8* %67, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 41
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i64, i64* @LT_IF, align 8
  store i64 %73, i64* %4, align 8
  br label %237

74:                                               ; preds = %64
  br label %216

75:                                               ; preds = %43
  %76 = load i8*, i8** %8, align 8
  %77 = load i8, i8* %76, align 1
  %78 = call i64 @isdigit(i8 zeroext %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %75
  %81 = load %struct.ops*, %struct.ops** %5, align 8
  %82 = load i32, i32* @eval_ops, align 4
  %83 = sext i32 %82 to i64
  %84 = sub i64 0, %83
  %85 = getelementptr inbounds %struct.ops, %struct.ops* %81, i64 %84
  %86 = call i32 (i8*, %struct.ops*, ...) @debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %struct.ops* %85)
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @strtol(i8* %87, i8** %9, i32 0)
  %89 = load i32*, i32** %6, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = call i8* @skipsym(i8* %90)
  store i8* %91, i8** %8, align 8
  br label %215

92:                                               ; preds = %75
  %93 = load i8*, i8** %8, align 8
  %94 = call i64 @strncmp(i8* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %152

96:                                               ; preds = %92
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 7
  %99 = load i8, i8* %98, align 1
  %100 = call i64 @endsym(i8 signext %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %152

102:                                              ; preds = %96
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 7
  %105 = call i8* @skipcomment(i8* %104)
  store i8* %105, i8** %8, align 8
  %106 = load %struct.ops*, %struct.ops** %5, align 8
  %107 = load i32, i32* @eval_ops, align 4
  %108 = sext i32 %107 to i64
  %109 = sub i64 0, %108
  %110 = getelementptr inbounds %struct.ops, %struct.ops* %106, i64 %109
  %111 = call i32 (i8*, %struct.ops*, ...) @debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %struct.ops* %110)
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %8, align 8
  %114 = load i8, i8* %112, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 40
  br i1 %116, label %117, label %119

117:                                              ; preds = %102
  %118 = load i64, i64* @LT_IF, align 8
  store i64 %118, i64* %4, align 8
  br label %237

119:                                              ; preds = %102
  %120 = load i8*, i8** %8, align 8
  %121 = call i8* @skipcomment(i8* %120)
  store i8* %121, i8** %8, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = call i32 @findsym(i8* %122)
  store i32 %123, i32* %10, align 4
  %124 = load i8*, i8** %8, align 8
  %125 = call i8* @skipsym(i8* %124)
  store i8* %125, i8** %8, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = call i8* @skipcomment(i8* %126)
  store i8* %127, i8** %8, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %8, align 8
  %130 = load i8, i8* %128, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 41
  br i1 %132, label %133, label %135

133:                                              ; preds = %119
  %134 = load i64, i64* @LT_IF, align 8
  store i64 %134, i64* %4, align 8
  br label %237

135:                                              ; preds = %119
  %136 = load i32, i32* %10, align 4
  %137 = icmp sge i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %135
  %139 = load i8**, i8*** @value, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  %145 = zext i1 %144 to i32
  %146 = load i32*, i32** %6, align 8
  store i32 %145, i32* %146, align 4
  br label %151

147:                                              ; preds = %135
  %148 = load i8*, i8** %8, align 8
  %149 = load i8**, i8*** %7, align 8
  store i8* %148, i8** %149, align 8
  %150 = load i64, i64* @LT_IF, align 8
  store i64 %150, i64* %4, align 8
  br label %237

151:                                              ; preds = %138
  store i32 0, i32* @keepthis, align 4
  br label %214

152:                                              ; preds = %96, %92
  %153 = load i8*, i8** %8, align 8
  %154 = load i8, i8* %153, align 1
  %155 = call i64 @endsym(i8 signext %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %205, label %157

157:                                              ; preds = %152
  %158 = load %struct.ops*, %struct.ops** %5, align 8
  %159 = load i32, i32* @eval_ops, align 4
  %160 = sext i32 %159 to i64
  %161 = sub i64 0, %160
  %162 = getelementptr inbounds %struct.ops, %struct.ops* %158, i64 %161
  %163 = call i32 (i8*, %struct.ops*, ...) @debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), %struct.ops* %162)
  %164 = load i8*, i8** %8, align 8
  %165 = call i32 @findsym(i8* %164)
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %157
  %169 = load i64, i64* @LT_IF, align 8
  store i64 %169, i64* %4, align 8
  br label %237

170:                                              ; preds = %157
  %171 = load i8**, i8*** @value, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = icmp eq i8* %175, null
  br i1 %176, label %177, label %179

177:                                              ; preds = %170
  %178 = load i32*, i32** %6, align 8
  store i32 0, i32* %178, align 4
  br label %202

179:                                              ; preds = %170
  %180 = load i8**, i8*** @value, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %180, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @strtol(i8* %184, i8** %9, i32 0)
  %186 = load i32*, i32** %6, align 8
  store i32 %185, i32* %186, align 4
  %187 = load i8*, i8** %9, align 8
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %179
  %192 = load i8*, i8** %9, align 8
  %193 = load i8**, i8*** @value, align 8
  %194 = load i32, i32* %10, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = icmp eq i8* %192, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %191, %179
  %200 = load i64, i64* @LT_IF, align 8
  store i64 %200, i64* %4, align 8
  br label %237

201:                                              ; preds = %191
  br label %202

202:                                              ; preds = %201, %177
  %203 = load i8*, i8** %8, align 8
  %204 = call i8* @skipsym(i8* %203)
  store i8* %204, i8** %8, align 8
  store i32 0, i32* @keepthis, align 4
  br label %213

205:                                              ; preds = %152
  %206 = load %struct.ops*, %struct.ops** %5, align 8
  %207 = load i32, i32* @eval_ops, align 4
  %208 = sext i32 %207 to i64
  %209 = sub i64 0, %208
  %210 = getelementptr inbounds %struct.ops, %struct.ops* %206, i64 %209
  %211 = call i32 (i8*, %struct.ops*, ...) @debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), %struct.ops* %210)
  %212 = load i64, i64* @LT_IF, align 8
  store i64 %212, i64* %4, align 8
  br label %237

213:                                              ; preds = %202
  br label %214

214:                                              ; preds = %213, %151
  br label %215

215:                                              ; preds = %214, %80
  br label %216

216:                                              ; preds = %215, %74
  br label %217

217:                                              ; preds = %216, %36
  %218 = load i8*, i8** %8, align 8
  %219 = load i8**, i8*** %7, align 8
  store i8* %218, i8** %219, align 8
  %220 = load %struct.ops*, %struct.ops** %5, align 8
  %221 = load i32, i32* @eval_ops, align 4
  %222 = sext i32 %221 to i64
  %223 = sub i64 0, %222
  %224 = getelementptr inbounds %struct.ops, %struct.ops* %220, i64 %223
  %225 = load i32*, i32** %6, align 8
  %226 = load i32, i32* %225, align 4
  %227 = call i32 (i8*, %struct.ops*, ...) @debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), %struct.ops* %224, i32 %226)
  %228 = load i32*, i32** %6, align 8
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %217
  %232 = load i64, i64* @LT_TRUE, align 8
  br label %235

233:                                              ; preds = %217
  %234 = load i64, i64* @LT_FALSE, align 8
  br label %235

235:                                              ; preds = %233, %231
  %236 = phi i64 [ %232, %231 ], [ %234, %233 ]
  store i64 %236, i64* %4, align 8
  br label %237

237:                                              ; preds = %235, %205, %199, %168, %147, %133, %117, %72, %62, %32
  %238 = load i64, i64* %4, align 8
  ret i64 %238
}

declare dso_local i8* @skipcomment(i8*) #1

declare dso_local i32 @debug(i8*, %struct.ops*, ...) #1

declare dso_local i64 @eval_table(i32, i32*, i8**) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i8* @skipsym(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @endsym(i8 signext) #1

declare dso_local i32 @findsym(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
