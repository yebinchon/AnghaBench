; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regmove.c_find_matches.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regmove.c_find_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8** }
%struct.match = type { i32*, i32*, i32*, i32* }

@MAX_RECOG_OPERANDS = common dso_local global i32 0, align 4
@recog_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@READ = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@READWRITE = common dso_local global i32 0, align 4
@which_alternative = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.match*)* @find_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_matches(i32 %0, %struct.match* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.match*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.match* %1, %struct.match** %5, align 8
  %17 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @extract_insn(i32 %21)
  %23 = call i32 @constrain_operands(i32 0)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %234

26:                                               ; preds = %2
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %32, %26
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %8, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load %struct.match*, %struct.match** %5, align 8
  %34 = getelementptr inbounds %struct.match, %struct.match* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 -1, i32* %38, align 4
  %39 = load %struct.match*, %struct.match** %5, align 8
  %40 = getelementptr inbounds %struct.match, %struct.match* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 -1, i32* %44, align 4
  br label %28

45:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %229, %45
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %232

50:                                               ; preds = %46
  store i32 0, i32* %13, align 4
  %51 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 1), align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %11, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %20, i64 %57
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* @READ, align 4
  %60 = load %struct.match*, %struct.match** %5, align 8
  %61 = getelementptr inbounds %struct.match, %struct.match* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  %66 = load %struct.match*, %struct.match** %5, align 8
  %67 = getelementptr inbounds %struct.match, %struct.match* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 0, i32* %71, align 4
  %72 = load i8*, i8** %11, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 61
  br i1 %75, label %76, label %84

76:                                               ; preds = %50
  %77 = load i32, i32* @WRITE, align 4
  %78 = load %struct.match*, %struct.match** %5, align 8
  %79 = getelementptr inbounds %struct.match, %struct.match* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  br label %98

84:                                               ; preds = %50
  %85 = load i8*, i8** %11, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 43
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load i32, i32* @READWRITE, align 4
  %91 = load %struct.match*, %struct.match** %5, align 8
  %92 = getelementptr inbounds %struct.match, %struct.match* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %90, i32* %96, align 4
  br label %97

97:                                               ; preds = %89, %84
  br label %98

98:                                               ; preds = %97, %76
  br label %99

99:                                               ; preds = %119, %98
  %100 = load i8*, i8** %11, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @which_alternative, align 4
  %107 = icmp slt i32 %105, %106
  br label %108

108:                                              ; preds = %104, %99
  %109 = phi i1 [ false, %99 ], [ %107, %104 ]
  br i1 %109, label %110, label %122

110:                                              ; preds = %108
  %111 = load i8*, i8** %11, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 44
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %115, %110
  br label %119

119:                                              ; preds = %118
  %120 = load i8*, i8** %11, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %11, align 8
  br label %99

122:                                              ; preds = %108
  br label %123

123:                                              ; preds = %221, %209, %178, %122
  %124 = load i8*, i8** %11, align 8
  %125 = load i8, i8* %124, align 1
  store i8 %125, i8* %12, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i8, i8* %12, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 44
  br label %132

132:                                              ; preds = %128, %123
  %133 = phi i1 [ false, %123 ], [ %131, %128 ]
  br i1 %133, label %134, label %228

134:                                              ; preds = %132
  %135 = load i8, i8* %12, align 1
  %136 = sext i8 %135 to i32
  switch i32 %136, label %221 [
    i32 61, label %137
    i32 43, label %138
    i32 38, label %139
    i32 37, label %146
    i32 48, label %163
    i32 49, label %163
    i32 50, label %163
    i32 51, label %163
    i32 52, label %163
    i32 53, label %163
    i32 54, label %163
    i32 55, label %163
    i32 56, label %163
    i32 57, label %163
    i32 97, label %210
    i32 98, label %210
    i32 99, label %210
    i32 100, label %210
    i32 101, label %210
    i32 102, label %210
    i32 104, label %210
    i32 106, label %210
    i32 107, label %210
    i32 108, label %210
    i32 112, label %210
    i32 113, label %210
    i32 116, label %210
    i32 117, label %210
    i32 118, label %210
    i32 119, label %210
    i32 120, label %210
    i32 121, label %210
    i32 122, label %210
    i32 65, label %210
    i32 66, label %210
    i32 67, label %210
    i32 68, label %210
    i32 87, label %210
    i32 89, label %210
    i32 90, label %210
  ]

137:                                              ; preds = %134
  br label %221

138:                                              ; preds = %134
  br label %221

139:                                              ; preds = %134
  %140 = load %struct.match*, %struct.match** %5, align 8
  %141 = getelementptr inbounds %struct.match, %struct.match* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 1, i32* %145, align 4
  br label %221

146:                                              ; preds = %134
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  %149 = load %struct.match*, %struct.match** %5, align 8
  %150 = getelementptr inbounds %struct.match, %struct.match* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 %148, i32* %154, align 4
  %155 = load i32, i32* %8, align 4
  %156 = load %struct.match*, %struct.match** %5, align 8
  %157 = getelementptr inbounds %struct.match, %struct.match* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  store i32 %155, i32* %162, align 4
  br label %221

163:                                              ; preds = %134, %134, %134, %134, %134, %134, %134, %134, %134, %134
  %164 = load i8*, i8** %11, align 8
  %165 = call i64 @strtoul(i8* %164, i8** %14, i32 10)
  store i64 %165, i64* %15, align 8
  %166 = load i64, i64* %15, align 8
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %16, align 4
  %168 = load i8*, i8** %14, align 8
  store i8* %168, i8** %11, align 8
  %169 = load i32, i32* %16, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %163
  %173 = load i32, i32* %16, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %20, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %172
  br label %123

179:                                              ; preds = %172, %163
  %180 = load i32, i32* %16, align 4
  %181 = load %struct.match*, %struct.match** %5, align 8
  %182 = getelementptr inbounds %struct.match, %struct.match* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 %180, i32* %186, align 4
  store i32 1, i32* %9, align 4
  %187 = load %struct.match*, %struct.match** %5, align 8
  %188 = getelementptr inbounds %struct.match, %struct.match* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = icmp sge i32 %193, 0
  br i1 %194, label %195, label %209

195:                                              ; preds = %179
  %196 = load i32, i32* %16, align 4
  %197 = load %struct.match*, %struct.match** %5, align 8
  %198 = getelementptr inbounds %struct.match, %struct.match* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.match*, %struct.match** %5, align 8
  %201 = getelementptr inbounds %struct.match, %struct.match* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %199, i64 %207
  store i32 %196, i32* %208, align 4
  br label %209

209:                                              ; preds = %195, %179
  br label %123

210:                                              ; preds = %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134, %134
  %211 = load i8, i8* %12, align 1
  %212 = load i8*, i8** %11, align 8
  %213 = call i32 @REG_CLASS_FROM_CONSTRAINT(i8 zeroext %211, i8* %212)
  %214 = call i32 @CLASS_LIKELY_SPILLED_P(i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %210
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %20, i64 %218
  store i32 1, i32* %219, align 4
  br label %220

220:                                              ; preds = %216, %210
  br label %221

221:                                              ; preds = %134, %220, %146, %139, %138, %137
  %222 = load i8, i8* %12, align 1
  %223 = load i8*, i8** %11, align 8
  %224 = call i32 @CONSTRAINT_LEN(i8 signext %222, i8* %223)
  %225 = load i8*, i8** %11, align 8
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i8, i8* %225, i64 %226
  store i8* %227, i8** %11, align 8
  br label %123

228:                                              ; preds = %132
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %8, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %8, align 4
  br label %46

232:                                              ; preds = %46
  %233 = load i32, i32* %9, align 4
  store i32 %233, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %234

234:                                              ; preds = %232, %25
  %235 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %235)
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @extract_insn(i32) #2

declare dso_local i32 @constrain_operands(i32) #2

declare dso_local i64 @strtoul(i8*, i8**, i32) #2

declare dso_local i32 @CLASS_LIKELY_SPILLED_P(i32) #2

declare dso_local i32 @REG_CLASS_FROM_CONSTRAINT(i8 zeroext, i8*) #2

declare dso_local i32 @CONSTRAINT_LEN(i8 signext, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
