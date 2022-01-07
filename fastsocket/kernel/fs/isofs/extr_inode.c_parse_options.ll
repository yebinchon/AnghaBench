; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/isofs/extr_inode.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/isofs/extr_inode.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso9660_options = type { i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@ISOFS_INVALID_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@tokens = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.iso9660_options*)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_options(i8* %0, %struct.iso9660_options* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iso9660_options*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.iso9660_options* %1, %struct.iso9660_options** %5, align 8
  %13 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %14 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %13, i32 0, i32 0
  store i8 110, i8* %14, align 8
  %15 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %16 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  %17 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %18 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %17, i32 0, i32 2
  store i32 1, i32* %18, align 8
  %19 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %20 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %19, i32 0, i32 3
  store i32 0, i32* %20, align 4
  %21 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %22 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %21, i32 0, i32 4
  store i32 0, i32* %22, align 8
  %23 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %24 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %23, i32 0, i32 5
  store i32 0, i32* %24, align 4
  %25 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %26 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %25, i32 0, i32 6
  store i8 117, i8* %26, align 8
  %27 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %28 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %27, i32 0, i32 7
  store i32 0, i32* %28, align 4
  %29 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %30 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %29, i32 0, i32 8
  store i32 1024, i32* %30, align 8
  %31 = load i32, i32* @ISOFS_INVALID_MODE, align 4
  %32 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %33 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %32, i32 0, i32 10
  store i32 %31, i32* %33, align 8
  %34 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %35 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %34, i32 0, i32 9
  store i32 %31, i32* %35, align 4
  %36 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %37 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %36, i32 0, i32 11
  store i32 0, i32* %37, align 4
  %38 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %39 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %38, i32 0, i32 12
  store i32 0, i32* %39, align 8
  %40 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %41 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %40, i32 0, i32 13
  store i32 0, i32* %41, align 4
  %42 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %43 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %42, i32 0, i32 14
  store i32 0, i32* %43, align 8
  %44 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %45 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %44, i32 0, i32 19
  store i32* null, i32** %45, align 8
  %46 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %47 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %46, i32 0, i32 15
  store i32 0, i32* %47, align 4
  %48 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %49 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %48, i32 0, i32 16
  store i32 0, i32* %49, align 8
  %50 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %51 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %50, i32 0, i32 17
  store i32 -1, i32* %51, align 4
  %52 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %53 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %52, i32 0, i32 18
  store i32 -1, i32* %53, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %206

57:                                               ; preds = %2
  br label %58

58:                                               ; preds = %204, %201, %57
  %59 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %59, i8** %6, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %205

61:                                               ; preds = %58
  %62 = load i32, i32* @MAX_OPT_ARGS, align 4
  %63 = zext i32 %62 to i64
  %64 = call i8* @llvm.stacksave()
  store i8* %64, i8** %9, align 8
  %65 = alloca i32, i64 %63, align 16
  store i64 %63, i64* %10, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = icmp ne i8 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %61
  store i32 2, i32* %12, align 4
  br label %201

70:                                               ; preds = %61
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* @tokens, align 4
  %73 = call i32 @match_token(i8* %71, i32 %72, i32* %65)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  switch i32 %74, label %199 [
    i32 135, label %75
    i32 136, label %78
    i32 144, label %81
    i32 129, label %84
    i32 131, label %84
    i32 147, label %87
    i32 128, label %90
    i32 141, label %93
    i32 139, label %96
    i32 140, label %99
    i32 132, label %102
    i32 133, label %117
    i32 149, label %126
    i32 148, label %129
    i32 143, label %132
    i32 130, label %133
    i32 145, label %144
    i32 138, label %155
    i32 146, label %164
    i32 134, label %173
    i32 150, label %176
    i32 137, label %196
  ]

75:                                               ; preds = %70
  %76 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %77 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %76, i32 0, i32 1
  store i32 0, i32* %77, align 4
  br label %200

78:                                               ; preds = %70
  %79 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %80 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %79, i32 0, i32 2
  store i32 0, i32* %80, align 8
  br label %200

81:                                               ; preds = %70
  %82 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %83 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %82, i32 0, i32 4
  store i32 1, i32* %83, align 8
  br label %200

84:                                               ; preds = %70, %70
  %85 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %86 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %85, i32 0, i32 5
  store i32 1, i32* %86, align 4
  br label %200

87:                                               ; preds = %70
  %88 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %89 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %88, i32 0, i32 3
  store i32 1, i32* %89, align 4
  br label %200

90:                                               ; preds = %70
  %91 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %92 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %91, i32 0, i32 15
  store i32 1, i32* %92, align 4
  br label %200

93:                                               ; preds = %70
  %94 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %95 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %94, i32 0, i32 0
  store i8 97, i8* %95, align 8
  br label %200

96:                                               ; preds = %70
  %97 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %98 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %97, i32 0, i32 0
  store i8 111, i8* %98, align 8
  br label %200

99:                                               ; preds = %70
  %100 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %101 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %100, i32 0, i32 0
  store i8 110, i8* %101, align 8
  br label %200

102:                                              ; preds = %70
  %103 = getelementptr inbounds i32, i32* %65, i64 0
  %104 = call i32 @match_int(i32* %103, i32* %7)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %201

107:                                              ; preds = %102
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ugt i32 %109, 99
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %201

112:                                              ; preds = %107
  %113 = load i32, i32* %11, align 4
  %114 = add i32 %113, 1
  %115 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %116 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %115, i32 0, i32 17
  store i32 %114, i32* %116, align 4
  br label %200

117:                                              ; preds = %70
  %118 = getelementptr inbounds i32, i32* %65, i64 0
  %119 = call i32 @match_int(i32* %118, i32* %7)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %201

122:                                              ; preds = %117
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %125 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %124, i32 0, i32 18
  store i32 %123, i32* %125, align 8
  br label %200

126:                                              ; preds = %70
  %127 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %128 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %127, i32 0, i32 6
  store i8 114, i8* %128, align 8
  br label %200

129:                                              ; preds = %70
  %130 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %131 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %130, i32 0, i32 6
  store i8 115, i8* %131, align 8
  br label %200

132:                                              ; preds = %70
  br label %200

133:                                              ; preds = %70
  %134 = getelementptr inbounds i32, i32* %65, i64 0
  %135 = call i32 @match_int(i32* %134, i32* %7)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %201

138:                                              ; preds = %133
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %141 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %140, i32 0, i32 14
  store i32 %139, i32* %141, align 8
  %142 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %143 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %142, i32 0, i32 11
  store i32 1, i32* %143, align 4
  br label %200

144:                                              ; preds = %70
  %145 = getelementptr inbounds i32, i32* %65, i64 0
  %146 = call i32 @match_int(i32* %145, i32* %7)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %201

149:                                              ; preds = %144
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %152 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %151, i32 0, i32 13
  store i32 %150, i32* %152, align 4
  %153 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %154 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %153, i32 0, i32 12
  store i32 1, i32* %154, align 8
  br label %200

155:                                              ; preds = %70
  %156 = getelementptr inbounds i32, i32* %65, i64 0
  %157 = call i32 @match_int(i32* %156, i32* %7)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %201

160:                                              ; preds = %155
  %161 = load i32, i32* %7, align 4
  %162 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %163 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %162, i32 0, i32 9
  store i32 %161, i32* %163, align 4
  br label %200

164:                                              ; preds = %70
  %165 = getelementptr inbounds i32, i32* %65, i64 0
  %166 = call i32 @match_int(i32* %165, i32* %7)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %201

169:                                              ; preds = %164
  %170 = load i32, i32* %7, align 4
  %171 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %172 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %171, i32 0, i32 10
  store i32 %170, i32* %172, align 8
  br label %200

173:                                              ; preds = %70
  %174 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %175 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %174, i32 0, i32 16
  store i32 1, i32* %175, align 8
  br label %200

176:                                              ; preds = %70
  %177 = getelementptr inbounds i32, i32* %65, i64 0
  %178 = call i32 @match_int(i32* %177, i32* %7)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %201

181:                                              ; preds = %176
  %182 = load i32, i32* %7, align 4
  store i32 %182, i32* %11, align 4
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 512
  br i1 %184, label %185, label %192

185:                                              ; preds = %181
  %186 = load i32, i32* %11, align 4
  %187 = icmp ne i32 %186, 1024
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load i32, i32* %11, align 4
  %190 = icmp ne i32 %189, 2048
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %201

192:                                              ; preds = %188, %185, %181
  %193 = load i32, i32* %11, align 4
  %194 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %195 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %194, i32 0, i32 8
  store i32 %193, i32* %195, align 8
  br label %200

196:                                              ; preds = %70
  %197 = load %struct.iso9660_options*, %struct.iso9660_options** %5, align 8
  %198 = getelementptr inbounds %struct.iso9660_options, %struct.iso9660_options* %197, i32 0, i32 7
  store i32 1, i32* %198, align 4
  br label %200

199:                                              ; preds = %70
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %201

200:                                              ; preds = %196, %192, %173, %169, %160, %149, %138, %132, %129, %126, %122, %112, %99, %96, %93, %90, %87, %84, %81, %78, %75
  store i32 0, i32* %12, align 4
  br label %201

201:                                              ; preds = %200, %199, %191, %180, %168, %159, %148, %137, %121, %111, %106, %69
  %202 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %202)
  %203 = load i32, i32* %12, align 4
  switch i32 %203, label %208 [
    i32 0, label %204
    i32 2, label %58
    i32 1, label %206
  ]

204:                                              ; preds = %201
  br label %58

205:                                              ; preds = %58
  store i32 1, i32* %3, align 4
  br label %206

206:                                              ; preds = %205, %201, %56
  %207 = load i32, i32* %3, align 4
  ret i32 %207

208:                                              ; preds = %201
  unreachable
}

declare dso_local i8* @strsep(i8**, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @match_token(i8*, i32, i32*) #1

declare dso_local i32 @match_int(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
