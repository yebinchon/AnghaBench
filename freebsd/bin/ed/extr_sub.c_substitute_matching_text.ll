; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_sub.c_substitute_matching_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_sub.c_substitute_matching_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@SE_MAX = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@isbinary = common dso_local global i64 0, align 8
@rbuf = common dso_local global i64 0, align 8
@rbufsz = common dso_local global i32 0, align 4
@GSG = common dso_local global i32 0, align 4
@REG_NOTBOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"infinite substitution loop\00", align 1
@errmsg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @substitute_matching_text(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* @SE_MAX, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca %struct.TYPE_10__, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = call i8* @get_sbuf_line(%struct.TYPE_12__* %23)
  store i8* %24, i8** %16, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @ERR, align 4
  store i32 %27, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %226

28:                                               ; preds = %4
  %29 = load i64, i64* @isbinary, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i8*, i8** %16, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @NUL_TO_NEWLINE(i8* %32, i32 %35)
  br label %37

37:                                               ; preds = %31, %28
  %38 = load i8*, i8** %16, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  store i8* %43, i8** %17, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = load i8*, i8** %16, align 8
  %46 = load i32, i32* @SE_MAX, align 4
  %47 = call i32 @regexec(%struct.TYPE_11__* %44, i8* %45, i32 %46, %struct.TYPE_10__* %22, i32 0)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %215, label %49

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %161, %49
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %100

58:                                               ; preds = %53, %50
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i64 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %13, align 4
  %64 = load i64, i64* @rbuf, align 8
  %65 = load i32, i32* @rbufsz, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* @ERR, align 4
  %70 = call i32 @REALLOC(i64 %64, i32 %65, i32 %68, i32 %69)
  %71 = load i64, i64* @isbinary, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %58
  %74 = load i8*, i8** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i64 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 16
  %78 = call i32 @NEWLINE_TO_NUL(i8* %74, i32 %77)
  br label %79

79:                                               ; preds = %73, %58
  %80 = load i64, i64* @rbuf, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = load i8*, i8** %16, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @memcpy(i64 %83, i8* %84, i32 %85)
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load i8*, i8** %16, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @apply_subst_template(i8* %90, %struct.TYPE_10__* %22, i32 %91, i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %79
  %98 = load i32, i32* @ERR, align 4
  store i32 %98, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %226

99:                                               ; preds = %79
  br label %128

100:                                              ; preds = %53
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i64 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 16
  store i32 %103, i32* %13, align 4
  %104 = load i64, i64* @rbuf, align 8
  %105 = load i32, i32* @rbufsz, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* @ERR, align 4
  %110 = call i32 @REALLOC(i64 %104, i32 %105, i32 %108, i32 %109)
  %111 = load i64, i64* @isbinary, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %100
  %114 = load i8*, i8** %16, align 8
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @NEWLINE_TO_NUL(i8* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %100
  %118 = load i64, i64* @rbuf, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %118, %120
  %122 = load i8*, i8** %16, align 8
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @memcpy(i64 %121, i8* %122, i32 %123)
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %117, %99
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i64 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 16
  %132 = load i8*, i8** %16, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8* %134, i8** %16, align 8
  br label %135

135:                                              ; preds = %128
  %136 = load i8*, i8** %16, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %161

140:                                              ; preds = %135
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %140
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @GSG, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i64 0
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 16
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %148, %140
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %155 = load i8*, i8** %16, align 8
  %156 = load i32, i32* @SE_MAX, align 4
  %157 = load i32, i32* @REG_NOTBOL, align 4
  %158 = call i32 @regexec(%struct.TYPE_11__* %154, i8* %155, i32 %156, %struct.TYPE_10__* %22, i32 %157)
  %159 = icmp ne i32 %158, 0
  %160 = xor i1 %159, true
  br label %161

161:                                              ; preds = %153, %148, %143, %135
  %162 = phi i1 [ false, %148 ], [ false, %143 ], [ false, %135 ], [ %160, %153 ]
  br i1 %162, label %50, label %163

163:                                              ; preds = %161
  %164 = load i8*, i8** %17, align 8
  %165 = load i8*, i8** %16, align 8
  %166 = ptrtoint i8* %164 to i64
  %167 = ptrtoint i8* %165 to i64
  %168 = sub i64 %166, %167
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %13, align 4
  %170 = load i64, i64* @rbuf, align 8
  %171 = load i32, i32* @rbufsz, align 4
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %13, align 4
  %174 = add nsw i32 %172, %173
  %175 = add nsw i32 %174, 2
  %176 = load i32, i32* @ERR, align 4
  %177 = call i32 @REALLOC(i64 %170, i32 %171, i32 %175, i32 %176)
  %178 = load i32, i32* %13, align 4
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %192

180:                                              ; preds = %163
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i64 0
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 16
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %180
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* @GSG, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8** @errmsg, align 8
  %191 = load i32, i32* @ERR, align 4
  store i32 %191, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %226

192:                                              ; preds = %185, %180, %163
  %193 = load i64, i64* @isbinary, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = load i8*, i8** %16, align 8
  %197 = load i32, i32* %13, align 4
  %198 = call i32 @NEWLINE_TO_NUL(i8* %196, i32 %197)
  br label %199

199:                                              ; preds = %195, %192
  %200 = load i64, i64* @rbuf, align 8
  %201 = load i32, i32* %10, align 4
  %202 = sext i32 %201 to i64
  %203 = add nsw i64 %200, %202
  %204 = load i8*, i8** %16, align 8
  %205 = load i32, i32* %13, align 4
  %206 = call i32 @memcpy(i64 %203, i8* %204, i32 %205)
  %207 = load i64, i64* @rbuf, align 8
  %208 = load i32, i32* %10, align 4
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %207, %209
  %211 = load i32, i32* %13, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %210, %212
  %214 = call i32 @memcpy(i64 %213, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 2)
  br label %215

215:                                              ; preds = %199, %37
  %216 = load i32, i32* %11, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %215
  %219 = load i32, i32* %10, align 4
  %220 = load i32, i32* %13, align 4
  %221 = add nsw i32 %219, %220
  %222 = add nsw i32 %221, 1
  br label %224

223:                                              ; preds = %215
  br label %224

224:                                              ; preds = %223, %218
  %225 = phi i32 [ %222, %218 ], [ 0, %223 ]
  store i32 %225, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %226

226:                                              ; preds = %224, %190, %97, %26
  %227 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %227)
  %228 = load i32, i32* %5, align 4
  ret i32 %228
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @get_sbuf_line(%struct.TYPE_12__*) #2

declare dso_local i32 @NUL_TO_NEWLINE(i8*, i32) #2

declare dso_local i32 @regexec(%struct.TYPE_11__*, i8*, i32, %struct.TYPE_10__*, i32) #2

declare dso_local i32 @REALLOC(i64, i32, i32, i32) #2

declare dso_local i32 @NEWLINE_TO_NUL(i8*, i32) #2

declare dso_local i32 @memcpy(i64, i8*, i32) #2

declare dso_local i32 @apply_subst_template(i8*, %struct.TYPE_10__*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
