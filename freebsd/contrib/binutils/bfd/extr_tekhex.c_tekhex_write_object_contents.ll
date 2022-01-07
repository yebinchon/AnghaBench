; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_tekhex.c_tekhex_write_object_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_tekhex.c_tekhex_write_object_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__**, %struct.TYPE_16__*, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, i64, i32 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_16__ = type { i64, i64, i32, %struct.TYPE_16__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.data_struct* }
%struct.data_struct = type { i32*, i64, i64*, %struct.data_struct* }

@CHUNK_MASK = common dso_local global i32 0, align 4
@bfd_error_wrong_format = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%0781010\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @tekhex_write_object_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tekhex_write_object_contents(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca %struct.TYPE_15__**, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.data_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %17 = call i32 (...) @tekhex_init()
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.data_struct*, %struct.data_struct** %22, align 8
  store %struct.data_struct* %23, %struct.data_struct** %7, align 8
  br label %24

24:                                               ; preds = %100, %1
  %25 = load %struct.data_struct*, %struct.data_struct** %7, align 8
  %26 = icmp ne %struct.data_struct* %25, null
  br i1 %26, label %27, label %104

27:                                               ; preds = %24
  store i32 32, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %96, %27
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @CHUNK_MASK, align 4
  %31 = add nsw i32 %30, 1
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %99

33:                                               ; preds = %28
  store i32 0, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %55, %33
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 32
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i1 [ false, %34 ], [ %39, %37 ]
  br i1 %41, label %42, label %58

42:                                               ; preds = %40
  %43 = load %struct.data_struct*, %struct.data_struct** %7, align 8
  %44 = getelementptr inbounds %struct.data_struct, %struct.data_struct* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %45, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store i32 1, i32* %11, align 4
  br label %54

54:                                               ; preds = %53, %42
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %34

58:                                               ; preds = %40
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %95

61:                                               ; preds = %58
  %62 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  store i8* %62, i8** %12, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.data_struct*, %struct.data_struct** %7, align 8
  %66 = getelementptr inbounds %struct.data_struct, %struct.data_struct* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = call i32 @writevalue(i8** %12, i64 %68)
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %87, %61
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 32
  br i1 %72, label %73, label %90

73:                                               ; preds = %70
  %74 = load i8*, i8** %12, align 8
  %75 = load %struct.data_struct*, %struct.data_struct** %7, align 8
  %76 = getelementptr inbounds %struct.data_struct, %struct.data_struct* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @TOHEX(i8* %74, i32 %83)
  %85 = load i8*, i8** %12, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 2
  store i8* %86, i8** %12, align 8
  br label %87

87:                                               ; preds = %73
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %70

90:                                               ; preds = %70
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %92 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %93 = load i8*, i8** %12, align 8
  %94 = call i32 @out(%struct.TYPE_14__* %91, i8 signext 54, i8* %92, i8* %93)
  br label %95

95:                                               ; preds = %90, %58
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 32
  store i32 %98, i32* %10, align 4
  br label %28

99:                                               ; preds = %28
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.data_struct*, %struct.data_struct** %7, align 8
  %102 = getelementptr inbounds %struct.data_struct, %struct.data_struct* %101, i32 0, i32 3
  %103 = load %struct.data_struct*, %struct.data_struct** %102, align 8
  store %struct.data_struct* %103, %struct.data_struct** %7, align 8
  br label %24

104:                                              ; preds = %24
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  store %struct.TYPE_16__* %107, %struct.TYPE_16__** %6, align 8
  br label %108

108:                                              ; preds = %135, %104
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %110 = icmp ne %struct.TYPE_16__* %109, null
  br i1 %110, label %111, label %139

111:                                              ; preds = %108
  %112 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  store i8* %112, i8** %13, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @writesym(i8** %13, i32 %115)
  %117 = load i8*, i8** %13, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %13, align 8
  store i8 49, i8* %117, align 1
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @writevalue(i8** %13, i64 %121)
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %125, %128
  %130 = call i32 @writevalue(i8** %13, i64 %129)
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %132 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %133 = load i8*, i8** %13, align 8
  %134 = call i32 @out(%struct.TYPE_14__* %131, i8 signext 51, i8* %132, i8* %133)
  br label %135

135:                                              ; preds = %111
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %137, align 8
  store %struct.TYPE_16__* %138, %struct.TYPE_16__** %6, align 8
  br label %108

139:                                              ; preds = %108
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %141, align 8
  %143 = icmp ne %struct.TYPE_15__** %142, null
  br i1 %143, label %144, label %215

144:                                              ; preds = %139
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %146, align 8
  store %struct.TYPE_15__** %147, %struct.TYPE_15__*** %5, align 8
  br label %148

148:                                              ; preds = %211, %144
  %149 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = icmp ne %struct.TYPE_15__* %150, null
  br i1 %151, label %152, label %214

152:                                              ; preds = %148
  %153 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %153, align 8
  %155 = call i32 @bfd_decode_symclass(%struct.TYPE_15__* %154)
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 63
  br i1 %157, label %158, label %210

158:                                              ; preds = %152
  %159 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %159, align 8
  store %struct.TYPE_15__* %160, %struct.TYPE_15__** %15, align 8
  %161 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  store i8* %161, i8** %16, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @writesym(i8** %16, i32 %166)
  %168 = load i32, i32* %14, align 4
  switch i32 %168, label %191 [
    i32 65, label %169
    i32 97, label %172
    i32 68, label %175
    i32 66, label %175
    i32 79, label %175
    i32 100, label %178
    i32 98, label %178
    i32 111, label %178
    i32 84, label %181
    i32 116, label %184
    i32 67, label %187
    i32 85, label %187
  ]

169:                                              ; preds = %158
  %170 = load i8*, i8** %16, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %16, align 8
  store i8 50, i8* %170, align 1
  br label %191

172:                                              ; preds = %158
  %173 = load i8*, i8** %16, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %16, align 8
  store i8 54, i8* %173, align 1
  br label %191

175:                                              ; preds = %158, %158, %158
  %176 = load i8*, i8** %16, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %16, align 8
  store i8 52, i8* %176, align 1
  br label %191

178:                                              ; preds = %158, %158, %158
  %179 = load i8*, i8** %16, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %16, align 8
  store i8 56, i8* %179, align 1
  br label %191

181:                                              ; preds = %158
  %182 = load i8*, i8** %16, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %16, align 8
  store i8 51, i8* %182, align 1
  br label %191

184:                                              ; preds = %158
  %185 = load i8*, i8** %16, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %16, align 8
  store i8 55, i8* %185, align 1
  br label %191

187:                                              ; preds = %158, %158
  %188 = load i32, i32* @bfd_error_wrong_format, align 4
  %189 = call i32 @bfd_set_error(i32 %188)
  %190 = load i32, i32* @FALSE, align 4
  store i32 %190, i32* %2, align 4
  br label %223

191:                                              ; preds = %158, %184, %181, %178, %175, %172, %169
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @writesym(i8** %16, i32 %194)
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %198, %203
  %205 = call i32 @writevalue(i8** %16, i64 %204)
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %207 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %208 = load i8*, i8** %16, align 8
  %209 = call i32 @out(%struct.TYPE_14__* %206, i8 signext 51, i8* %207, i8* %208)
  br label %210

210:                                              ; preds = %191, %152
  br label %211

211:                                              ; preds = %210
  %212 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %212, i32 1
  store %struct.TYPE_15__** %213, %struct.TYPE_15__*** %5, align 8
  br label %148

214:                                              ; preds = %148
  br label %215

215:                                              ; preds = %214, %139
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %217 = call i32 @bfd_bwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9, %struct.TYPE_14__* %216)
  %218 = icmp ne i32 %217, 9
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = call i32 (...) @abort() #3
  unreachable

221:                                              ; preds = %215
  %222 = load i32, i32* @TRUE, align 4
  store i32 %222, i32* %2, align 4
  br label %223

223:                                              ; preds = %221, %187
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local i32 @tekhex_init(...) #1

declare dso_local i32 @writevalue(i8**, i64) #1

declare dso_local i32 @TOHEX(i8*, i32) #1

declare dso_local i32 @out(%struct.TYPE_14__*, i8 signext, i8*, i8*) #1

declare dso_local i32 @writesym(i8**, i32) #1

declare dso_local i32 @bfd_decode_symclass(%struct.TYPE_15__*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @bfd_bwrite(i8*, i32, %struct.TYPE_14__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
