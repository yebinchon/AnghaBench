; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_srec.c_srec_read_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_srec.c_srec_read_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_3__*, i32*)* @srec_read_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @srec_read_section(i32* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %10, align 8
  store i32* null, i32** %11, align 8
  store i64 0, i64* %12, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SEEK_SET, align 4
  %23 = call i64 @bfd_seek(i32* %18, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %212

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %192, %38, %26
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @srec_get_byte(i32* %28, i64* %10)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @EOF, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %193

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 13
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %32
  br label %27

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 83
  %42 = zext i1 %41 to i32
  %43 = call i32 @BFD_ASSERT(i32 %42)
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @bfd_bread(i32* %44, i32 3, i32* %45)
  %47 = icmp ne i32 %46, 3
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %212

49:                                               ; preds = %39
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @ISHEX(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @ISHEX(i32 %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %54, %49
  %60 = phi i1 [ false, %49 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @BFD_ASSERT(i32 %61)
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = call i32 @HEX(i32* %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = mul i32 %66, 2
  %68 = zext i32 %67 to i64
  %69 = load i64, i64* %12, align 8
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %59
  %72 = load i32*, i32** %11, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @free(i32* %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %14, align 4
  %79 = mul nsw i32 %78, 2
  %80 = call i32* @bfd_malloc(i32 %79)
  store i32* %80, i32** %11, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %212

84:                                               ; preds = %77
  %85 = load i32, i32* %14, align 4
  %86 = mul i32 %85, 2
  %87 = zext i32 %86 to i64
  store i64 %87, i64* %12, align 8
  br label %88

88:                                               ; preds = %84, %59
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* %14, align 4
  %91 = mul nsw i32 %90, 2
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @bfd_bread(i32* %89, i32 %91, i32* %92)
  %94 = load i32, i32* %14, align 4
  %95 = mul i32 %94, 2
  %96 = icmp ne i32 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %212

98:                                               ; preds = %88
  store i32 0, i32* %15, align 4
  %99 = load i32*, i32** %11, align 8
  store i32* %99, i32** %16, align 8
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %101 = load i32, i32* %100, align 4
  switch i32 %101, label %102 [
    i32 51, label %117
    i32 50, label %124
    i32 49, label %134
  ]

102:                                              ; preds = %98
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %103, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @BFD_ASSERT(i32 %108)
  %110 = load i32*, i32** %11, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %102
  %113 = load i32*, i32** %11, align 8
  %114 = call i32 @free(i32* %113)
  br label %115

115:                                              ; preds = %112, %102
  %116 = load i64, i64* @TRUE, align 8
  store i64 %116, i64* %4, align 8
  br label %220

117:                                              ; preds = %98
  %118 = load i32*, i32** %16, align 8
  %119 = call i32 @HEX(i32* %118)
  store i32 %119, i32* %15, align 4
  %120 = load i32*, i32** %16, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  store i32* %121, i32** %16, align 8
  %122 = load i32, i32* %14, align 4
  %123 = add i32 %122, -1
  store i32 %123, i32* %14, align 4
  br label %124

124:                                              ; preds = %98, %117
  %125 = load i32, i32* %15, align 4
  %126 = shl i32 %125, 8
  %127 = load i32*, i32** %16, align 8
  %128 = call i32 @HEX(i32* %127)
  %129 = or i32 %126, %128
  store i32 %129, i32* %15, align 4
  %130 = load i32*, i32** %16, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  store i32* %131, i32** %16, align 8
  %132 = load i32, i32* %14, align 4
  %133 = add i32 %132, -1
  store i32 %133, i32* %14, align 4
  br label %134

134:                                              ; preds = %98, %124
  %135 = load i32, i32* %15, align 4
  %136 = shl i32 %135, 8
  %137 = load i32*, i32** %16, align 8
  %138 = call i32 @HEX(i32* %137)
  %139 = or i32 %136, %138
  store i32 %139, i32* %15, align 4
  %140 = load i32*, i32** %16, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 2
  store i32* %141, i32** %16, align 8
  %142 = load i32, i32* %15, align 4
  %143 = shl i32 %142, 8
  %144 = load i32*, i32** %16, align 8
  %145 = call i32 @HEX(i32* %144)
  %146 = or i32 %143, %145
  store i32 %146, i32* %15, align 4
  %147 = load i32*, i32** %16, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  store i32* %148, i32** %16, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sub i32 %149, 2
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %15, align 4
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %154, %155
  %157 = icmp ne i32 %151, %156
  br i1 %157, label %158, label %173

158:                                              ; preds = %134
  %159 = load i32, i32* %9, align 4
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %159, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 @BFD_ASSERT(i32 %164)
  %166 = load i32*, i32** %11, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %158
  %169 = load i32*, i32** %11, align 8
  %170 = call i32 @free(i32* %169)
  br label %171

171:                                              ; preds = %168, %158
  %172 = load i64, i64* @TRUE, align 8
  store i64 %172, i64* %4, align 8
  br label %220

173:                                              ; preds = %134
  %174 = load i32, i32* %14, align 4
  %175 = add i32 %174, -1
  store i32 %175, i32* %14, align 4
  br label %176

176:                                              ; preds = %180, %173
  %177 = load i32, i32* %14, align 4
  %178 = add i32 %177, -1
  store i32 %178, i32* %14, align 4
  %179 = icmp ne i32 %177, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %176
  %181 = load i32*, i32** %16, align 8
  %182 = call i32 @HEX(i32* %181)
  %183 = load i32*, i32** %7, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 %182, i32* %186, align 4
  %187 = load i32*, i32** %16, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 2
  store i32* %188, i32** %16, align 8
  %189 = load i32, i32* %9, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %9, align 4
  br label %176

191:                                              ; preds = %176
  br label %192

192:                                              ; preds = %191
  br label %27

193:                                              ; preds = %27
  %194 = load i64, i64* %10, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  br label %212

197:                                              ; preds = %193
  %198 = load i32, i32* %9, align 4
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %198, %201
  %203 = zext i1 %202 to i32
  %204 = call i32 @BFD_ASSERT(i32 %203)
  %205 = load i32*, i32** %11, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %197
  %208 = load i32*, i32** %11, align 8
  %209 = call i32 @free(i32* %208)
  br label %210

210:                                              ; preds = %207, %197
  %211 = load i64, i64* @TRUE, align 8
  store i64 %211, i64* %4, align 8
  br label %220

212:                                              ; preds = %196, %97, %83, %48, %25
  %213 = load i32*, i32** %11, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load i32*, i32** %11, align 8
  %217 = call i32 @free(i32* %216)
  br label %218

218:                                              ; preds = %215, %212
  %219 = load i64, i64* @FALSE, align 8
  store i64 %219, i64* %4, align 8
  br label %220

220:                                              ; preds = %218, %210, %171, %115
  %221 = load i64, i64* %4, align 8
  ret i64 %221
}

declare dso_local i64 @bfd_seek(i32*, i32, i32) #1

declare dso_local i32 @srec_get_byte(i32*, i64*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @bfd_bread(i32*, i32, i32*) #1

declare dso_local i64 @ISHEX(i32) #1

declare dso_local i32 @HEX(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @bfd_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
