; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bitmap.c_bitmap_clear_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bitmap.c_bitmap_clear_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32*, %struct.TYPE_8__* }

@BITMAP_ELEMENT_ALL_BITS = common dso_local global i32 0, align 4
@BITMAP_WORD_BITS = common dso_local global i32 0, align 4
@BITMAP_ELEMENT_WORDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitmap_clear_range(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @BITMAP_ELEMENT_ALL_BITS, align 4
  %24 = udiv i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sub i32 %28, 1
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @BITMAP_ELEMENT_ALL_BITS, align 4
  %32 = udiv i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.TYPE_8__* @bitmap_find_bit(%struct.TYPE_9__* %33, i32 %34)
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %11, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %37 = icmp ne %struct.TYPE_8__* %36, null
  br i1 %37, label %66, label %38

38:                                               ; preds = %3
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %64

43:                                               ; preds = %38
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %11, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %56 = icmp ne %struct.TYPE_8__* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  br label %240

58:                                               ; preds = %49
  br label %63

59:                                               ; preds = %43
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %11, align 8
  br label %63

63:                                               ; preds = %59, %58
  br label %65

64:                                               ; preds = %38
  br label %240

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65, %3
  br label %67

67:                                               ; preds = %224, %66
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %69 = icmp ne %struct.TYPE_8__* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = icmp ule i32 %73, %74
  br label %76

76:                                               ; preds = %70, %67
  %77 = phi i1 [ false, %67 ], [ %75, %70 ]
  br i1 %77, label %78, label %226

78:                                               ; preds = %76
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %12, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @BITMAP_ELEMENT_ALL_BITS, align 4
  %86 = mul i32 %84, %85
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @BITMAP_ELEMENT_ALL_BITS, align 4
  %89 = add i32 %87, %88
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp uge i32 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %78
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ule i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %100 = call i32 @bitmap_element_free(%struct.TYPE_9__* %98, %struct.TYPE_8__* %99)
  br label %224

101:                                              ; preds = %93, %78
  store i32 1, i32* %20, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp ule i32 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %101
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %13, align 4
  %108 = sub i32 %106, %107
  %109 = load i32, i32* @BITMAP_WORD_BITS, align 4
  %110 = udiv i32 %108, %109
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @BITMAP_WORD_BITS, align 4
  %113 = urem i32 %111, %112
  %114 = shl i32 1, %113
  %115 = sub i32 %114, 1
  store i32 %115, i32* %16, align 4
  %116 = load i32, i32* %16, align 4
  %117 = xor i32 %116, -1
  store i32 %117, i32* %16, align 4
  br label %121

118:                                              ; preds = %101
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %119 = load i32, i32* %16, align 4
  %120 = xor i32 %119, -1
  store i32 %120, i32* %16, align 4
  br label %121

121:                                              ; preds = %118, %105
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ule i32 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load i32, i32* @BITMAP_ELEMENT_WORDS, align 4
  %127 = sub nsw i32 %126, 1
  store i32 %127, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %128 = load i32, i32* %18, align 4
  %129 = xor i32 %128, -1
  store i32 %129, i32* %18, align 4
  br label %141

130:                                              ; preds = %121
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %13, align 4
  %133 = sub i32 %131, %132
  %134 = load i32, i32* @BITMAP_WORD_BITS, align 4
  %135 = udiv i32 %133, %134
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @BITMAP_WORD_BITS, align 4
  %138 = urem i32 %136, %137
  %139 = shl i32 1, %138
  %140 = sub i32 %139, 1
  store i32 %140, i32* %18, align 4
  br label %141

141:                                              ; preds = %130, %125
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %17, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %159

145:                                              ; preds = %141
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %18, align 4
  %148 = and i32 %146, %147
  store i32 %148, i32* %21, align 4
  %149 = load i32, i32* %21, align 4
  %150 = xor i32 %149, -1
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %15, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, %150
  store i32 %158, i32* %156, align 4
  br label %197

159:                                              ; preds = %141
  %160 = load i32, i32* %16, align 4
  %161 = xor i32 %160, -1
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %15, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, %161
  store i32 %169, i32* %167, align 4
  %170 = load i32, i32* %15, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %19, align 4
  br label %172

172:                                              ; preds = %183, %159
  %173 = load i32, i32* %19, align 4
  %174 = load i32, i32* %17, align 4
  %175 = icmp ult i32 %173, %174
  br i1 %175, label %176, label %186

176:                                              ; preds = %172
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %19, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32 0, i32* %182, align 4
  br label %183

183:                                              ; preds = %176
  %184 = load i32, i32* %19, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %19, align 4
  br label %172

186:                                              ; preds = %172
  %187 = load i32, i32* %18, align 4
  %188 = xor i32 %187, -1
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %17, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = and i32 %195, %188
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %186, %145
  store i32 0, i32* %19, align 4
  br label %198

198:                                              ; preds = %213, %197
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* @BITMAP_ELEMENT_WORDS, align 4
  %201 = icmp ult i32 %199, %200
  br i1 %201, label %202, label %216

202:                                              ; preds = %198
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %19, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %202
  store i32 0, i32* %20, align 4
  br label %216

212:                                              ; preds = %202
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %19, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %19, align 4
  br label %198

216:                                              ; preds = %211, %198
  %217 = load i32, i32* %20, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %216
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %222 = call i32 @bitmap_element_free(%struct.TYPE_9__* %220, %struct.TYPE_8__* %221)
  br label %223

223:                                              ; preds = %219, %216
  br label %224

224:                                              ; preds = %223, %97
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %225, %struct.TYPE_8__** %11, align 8
  br label %67

226:                                              ; preds = %76
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %228 = icmp ne %struct.TYPE_8__* %227, null
  br i1 %228, label %229, label %240

229:                                              ; preds = %226
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 1
  store %struct.TYPE_8__* %230, %struct.TYPE_8__** %232, align 8
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 8
  br label %240

240:                                              ; preds = %57, %64, %229, %226
  ret void
}

declare dso_local %struct.TYPE_8__* @bitmap_find_bit(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @bitmap_element_free(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
