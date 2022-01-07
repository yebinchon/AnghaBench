; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmltok.c_parsePseudoAttribute.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmltok.c_parsePseudoAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ASCII_EQUALS = common dso_local global i32 0, align 4
@ASCII_QUOT = common dso_local global i32 0, align 4
@ASCII_APOS = common dso_local global i32 0, align 4
@ASCII_a = common dso_local global i32 0, align 4
@ASCII_z = common dso_local global i32 0, align 4
@ASCII_A = common dso_local global i32 0, align 4
@ASCII_Z = common dso_local global i32 0, align 4
@ASCII_0 = common dso_local global i32 0, align 4
@ASCII_9 = common dso_local global i32 0, align 4
@ASCII_PERIOD = common dso_local global i32 0, align 4
@ASCII_MINUS = common dso_local global i32 0, align 4
@ASCII_UNDERSCORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i8*, i8**, i8**, i8**, i8**)* @parsePseudoAttribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parsePseudoAttribute(%struct.TYPE_4__* %0, i8* %1, i8* %2, i8** %3, i8** %4, i8** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i8** %4, i8*** %13, align 8
  store i8** %5, i8*** %14, align 8
  store i8** %6, i8*** %15, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = icmp eq i8* %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = load i8**, i8*** %12, align 8
  store i8* null, i8** %22, align 8
  store i32 1, i32* %8, align 4
  br label %231

23:                                               ; preds = %7
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 @toAscii(%struct.TYPE_4__* %24, i8* %25, i8* %26)
  %28 = call i64 @isSpace(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i8*, i8** %10, align 8
  %32 = load i8**, i8*** %15, align 8
  store i8* %31, i8** %32, align 8
  store i32 0, i32* %8, align 4
  br label %231

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %41, %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %10, align 8
  br label %41

41:                                               ; preds = %34
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @toAscii(%struct.TYPE_4__* %42, i8* %43, i8* %44)
  %46 = call i64 @isSpace(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %34, label %48

48:                                               ; preds = %41
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = icmp eq i8* %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i8**, i8*** %12, align 8
  store i8* null, i8** %53, align 8
  store i32 1, i32* %8, align 4
  br label %231

54:                                               ; preds = %48
  %55 = load i8*, i8** %10, align 8
  %56 = load i8**, i8*** %12, align 8
  store i8* %55, i8** %56, align 8
  br label %57

57:                                               ; preds = %103, %54
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @toAscii(%struct.TYPE_4__* %58, i8* %59, i8* %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i8*, i8** %10, align 8
  %66 = load i8**, i8*** %15, align 8
  store i8* %65, i8** %66, align 8
  store i32 0, i32* %8, align 4
  br label %231

67:                                               ; preds = %57
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* @ASCII_EQUALS, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i8*, i8** %10, align 8
  %73 = load i8**, i8*** %13, align 8
  store i8* %72, i8** %73, align 8
  br label %110

74:                                               ; preds = %67
  %75 = load i32, i32* %16, align 4
  %76 = call i64 @isSpace(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %74
  %79 = load i8*, i8** %10, align 8
  %80 = load i8**, i8*** %13, align 8
  store i8* %79, i8** %80, align 8
  br label %81

81:                                               ; preds = %88, %78
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %10, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %10, align 8
  br label %88

88:                                               ; preds = %81
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @toAscii(%struct.TYPE_4__* %89, i8* %90, i8* %91)
  store i32 %92, i32* %16, align 4
  %93 = call i64 @isSpace(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %81, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* @ASCII_EQUALS, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i8*, i8** %10, align 8
  %101 = load i8**, i8*** %15, align 8
  store i8* %100, i8** %101, align 8
  store i32 0, i32* %8, align 4
  br label %231

102:                                              ; preds = %95
  br label %110

103:                                              ; preds = %74
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %10, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %10, align 8
  br label %57

110:                                              ; preds = %102, %71
  %111 = load i8*, i8** %10, align 8
  %112 = load i8**, i8*** %12, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = icmp eq i8* %111, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i8*, i8** %10, align 8
  %117 = load i8**, i8*** %15, align 8
  store i8* %116, i8** %117, align 8
  store i32 0, i32* %8, align 4
  br label %231

118:                                              ; preds = %110
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %10, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8* %124, i8** %10, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = load i8*, i8** %11, align 8
  %128 = call i32 @toAscii(%struct.TYPE_4__* %125, i8* %126, i8* %127)
  store i32 %128, i32* %16, align 4
  br label %129

129:                                              ; preds = %133, %118
  %130 = load i32, i32* %16, align 4
  %131 = call i64 @isSpace(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %129
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i8*, i8** %10, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  store i8* %139, i8** %10, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = load i8*, i8** %11, align 8
  %143 = call i32 @toAscii(%struct.TYPE_4__* %140, i8* %141, i8* %142)
  store i32 %143, i32* %16, align 4
  br label %129

144:                                              ; preds = %129
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* @ASCII_QUOT, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %144
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* @ASCII_APOS, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load i8*, i8** %10, align 8
  %154 = load i8**, i8*** %15, align 8
  store i8* %153, i8** %154, align 8
  store i32 0, i32* %8, align 4
  br label %231

155:                                              ; preds = %148, %144
  %156 = load i32, i32* %16, align 4
  %157 = trunc i32 %156 to i8
  store i8 %157, i8* %17, align 1
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i8*, i8** %10, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8* %163, i8** %10, align 8
  %164 = load i8*, i8** %10, align 8
  %165 = load i8**, i8*** %14, align 8
  store i8* %164, i8** %165, align 8
  br label %166

166:                                              ; preds = %216, %155
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %168 = load i8*, i8** %10, align 8
  %169 = load i8*, i8** %11, align 8
  %170 = call i32 @toAscii(%struct.TYPE_4__* %167, i8* %168, i8* %169)
  store i32 %170, i32* %16, align 4
  %171 = load i32, i32* %16, align 4
  %172 = load i8, i8* %17, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %171, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %166
  br label %223

176:                                              ; preds = %166
  %177 = load i32, i32* @ASCII_a, align 4
  %178 = load i32, i32* %16, align 4
  %179 = icmp sle i32 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %176
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* @ASCII_z, align 4
  %183 = icmp sle i32 %181, %182
  br i1 %183, label %215, label %184

184:                                              ; preds = %180, %176
  %185 = load i32, i32* @ASCII_A, align 4
  %186 = load i32, i32* %16, align 4
  %187 = icmp sle i32 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* @ASCII_Z, align 4
  %191 = icmp sle i32 %189, %190
  br i1 %191, label %215, label %192

192:                                              ; preds = %188, %184
  %193 = load i32, i32* @ASCII_0, align 4
  %194 = load i32, i32* %16, align 4
  %195 = icmp sle i32 %193, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %192
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* @ASCII_9, align 4
  %199 = icmp sle i32 %197, %198
  br i1 %199, label %215, label %200

200:                                              ; preds = %196, %192
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* @ASCII_PERIOD, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %215

204:                                              ; preds = %200
  %205 = load i32, i32* %16, align 4
  %206 = load i32, i32* @ASCII_MINUS, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %215

208:                                              ; preds = %204
  %209 = load i32, i32* %16, align 4
  %210 = load i32, i32* @ASCII_UNDERSCORE, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %208
  %213 = load i8*, i8** %10, align 8
  %214 = load i8**, i8*** %15, align 8
  store i8* %213, i8** %214, align 8
  store i32 0, i32* %8, align 4
  br label %231

215:                                              ; preds = %208, %204, %200, %196, %188, %180
  br label %216

216:                                              ; preds = %215
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i8*, i8** %10, align 8
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i8, i8* %220, i64 %221
  store i8* %222, i8** %10, align 8
  br label %166

223:                                              ; preds = %175
  %224 = load i8*, i8** %10, align 8
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %224, i64 %228
  %230 = load i8**, i8*** %15, align 8
  store i8* %229, i8** %230, align 8
  store i32 1, i32* %8, align 4
  br label %231

231:                                              ; preds = %223, %212, %152, %115, %99, %64, %52, %30, %21
  %232 = load i32, i32* %8, align 4
  ret i32 %232
}

declare dso_local i64 @isSpace(i32) #1

declare dso_local i32 @toAscii(%struct.TYPE_4__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
