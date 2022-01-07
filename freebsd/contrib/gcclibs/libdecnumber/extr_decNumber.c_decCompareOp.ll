; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decNumber.c_decCompareOp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decNumber.c_decCompareOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, i32, i32*, i64 }
%struct.TYPE_28__ = type { i64, i32 }

@DECSNAN = common dso_local global i32 0, align 4
@DECNAN = common dso_local global i32 0, align 4
@COMPARE = common dso_local global i64 0, align 8
@COMPMAX = common dso_local global i64 0, align 8
@COMPNAN = common dso_local global i64 0, align 8
@BADINT = common dso_local global i32 0, align 4
@DEC_Insufficient_storage = common dso_local global i32 0, align 4
@DECNEG = common dso_local global i32 0, align 4
@COMPMIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_27__* @decCompareOp(%struct.TYPE_27__* %0, %struct.TYPE_27__* %1, %struct.TYPE_27__* %2, %struct.TYPE_28__* %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_27__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %7, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %8, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_28__* %3, %struct.TYPE_28__** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %13, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %22

22:                                               ; preds = %6
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %25, %28
  %30 = load i32, i32* @DECSNAN, align 4
  %31 = load i32, i32* @DECNAN, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %79

36:                                               ; preds = %22
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* @COMPARE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %72

41:                                               ; preds = %36
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* @DECSNAN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %71

47:                                               ; preds = %41
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %50, %53
  %55 = load i32, i32* @DECNAN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %70

59:                                               ; preds = %47
  %60 = load i64, i64* @COMPMAX, align 8
  store i64 %60, i64* %11, align 8
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @DECNAN, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 -1, i32* %15, align 4
  br label %69

68:                                               ; preds = %59
  store i32 1, i32* %15, align 4
  br label %69

69:                                               ; preds = %68, %67
  br label %83

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70, %46
  br label %72

72:                                               ; preds = %71, %40
  %73 = load i64, i64* @COMPNAN, align 8
  store i64 %73, i64* %11, align 8
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @decNaNs(%struct.TYPE_27__* %74, %struct.TYPE_27__* %75, %struct.TYPE_27__* %76, i32* %77)
  br label %83

79:                                               ; preds = %22
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %82 = call i32 @decCompare(%struct.TYPE_27__* %80, %struct.TYPE_27__* %81)
  store i32 %82, i32* %15, align 4
  br label %83

83:                                               ; preds = %79, %72, %69
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* @BADINT, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i32, i32* @DEC_Insufficient_storage, align 4
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 4
  br label %202

92:                                               ; preds = %83
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* @COMPARE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %117

96:                                               ; preds = %92
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %98 = call i32 @decNumberZero(%struct.TYPE_27__* %97)
  %99 = load i32, i32* %15, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* %17, align 4
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  br label %116

105:                                              ; preds = %96
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  store i32 1, i32* %108, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load i32, i32* @DECNEG, align 4
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %111, %105
  br label %116

116:                                              ; preds = %115, %101
  br label %201

117:                                              ; preds = %92
  %118 = load i64, i64* %11, align 8
  %119 = load i64, i64* @COMPNAN, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  br label %200

122:                                              ; preds = %117
  store i32 0, i32* %18, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %175

125:                                              ; preds = %122
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @DECNEG, align 4
  %130 = and i32 %128, %129
  store i32 %130, i32* %20, align 4
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @DECNEG, align 4
  %135 = and i32 %133, %134
  store i32 %135, i32* %21, align 4
  %136 = load i32, i32* %20, align 4
  %137 = load i32, i32* %21, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %125
  %140 = load i32, i32* %20, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  store i32 -1, i32* %15, align 4
  br label %144

143:                                              ; preds = %139
  store i32 1, i32* %15, align 4
  br label %144

144:                                              ; preds = %143, %142
  br label %174

145:                                              ; preds = %125
  %146 = load i32, i32* %20, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %162

148:                                              ; preds = %145
  %149 = load i32, i32* %21, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %148
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = icmp slt i64 %154, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %151
  store i32 1, i32* %15, align 4
  br label %161

160:                                              ; preds = %151
  store i32 -1, i32* %15, align 4
  br label %161

161:                                              ; preds = %160, %159
  br label %173

162:                                              ; preds = %148, %145
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = icmp sgt i64 %165, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  store i32 1, i32* %15, align 4
  br label %172

171:                                              ; preds = %162
  store i32 -1, i32* %15, align 4
  br label %172

172:                                              ; preds = %171, %170
  br label %173

173:                                              ; preds = %172, %161
  br label %174

174:                                              ; preds = %173, %144
  br label %175

175:                                              ; preds = %174, %122
  %176 = load i64, i64* %11, align 8
  %177 = load i64, i64* @COMPMIN, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load i32, i32* %15, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %15, align 4
  br label %182

182:                                              ; preds = %179, %175
  %183 = load i32, i32* %15, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  br label %189

187:                                              ; preds = %182
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  br label %189

189:                                              ; preds = %187, %185
  %190 = phi %struct.TYPE_27__* [ %186, %185 ], [ %188, %187 ]
  store %struct.TYPE_27__* %190, %struct.TYPE_27__** %19, align 8
  %191 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %192 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %193 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %194 = load i32*, i32** %12, align 8
  %195 = call i32 @decCopyFit(%struct.TYPE_27__* %191, %struct.TYPE_27__* %192, %struct.TYPE_28__* %193, i32* %18, i32* %194)
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %197 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %198 = load i32*, i32** %12, align 8
  %199 = call i32 @decFinish(%struct.TYPE_27__* %196, %struct.TYPE_28__* %197, i32* %18, i32* %198)
  br label %200

200:                                              ; preds = %189, %121
  br label %201

201:                                              ; preds = %200, %116
  br label %202

202:                                              ; preds = %201, %87
  %203 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %204 = icmp ne %struct.TYPE_27__* %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %207 = call i32 @free(%struct.TYPE_27__* %206)
  br label %208

208:                                              ; preds = %205, %202
  %209 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %210 = icmp ne %struct.TYPE_27__* %209, null
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %213 = call i32 @free(%struct.TYPE_27__* %212)
  br label %214

214:                                              ; preds = %211, %208
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  ret %struct.TYPE_27__* %215
}

declare dso_local i32 @decNaNs(%struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32*) #1

declare dso_local i32 @decCompare(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @decNumberZero(%struct.TYPE_27__*) #1

declare dso_local i32 @decCopyFit(%struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_28__*, i32*, i32*) #1

declare dso_local i32 @decFinish(%struct.TYPE_27__*, %struct.TYPE_28__*, i32*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
