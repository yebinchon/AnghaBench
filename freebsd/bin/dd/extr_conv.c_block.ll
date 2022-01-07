; ModuleID = '/home/carl/AnghaBench/freebsd/bin/dd/extr_conv.c_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/dd/extr_conv.c_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64, i64, i8* }
%struct.TYPE_5__ = type { i8*, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@block.intrunc = internal global i32 0, align 4
@in = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@out = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@cbsz = common dso_local global i64 0, align 8
@ctab = common dso_local global i8* null, align 8
@st = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @block() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @block.intrunc, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %0
  %10 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 0), align 8
  store i8* %10, i8** %1, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 1), align 8
  store i64 %11, i64* %4, align 8
  br label %12

12:                                               ; preds = %24, %9
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i8*, i8** %1, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %1, align 8
  %18 = load i8, i8* %16, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 10
  br label %21

21:                                               ; preds = %15, %12
  %22 = phi i1 [ false, %12 ], [ %20, %15 ]
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %4, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %4, align 8
  br label %12

27:                                               ; preds = %21
  %28 = load i64, i64* %4, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 2), align 8
  %31 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 0), align 8
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 3), align 8
  br label %199

32:                                               ; preds = %27
  store i32 0, i32* @block.intrunc, align 4
  %33 = load i64, i64* %4, align 8
  %34 = sub i64 %33, 1
  store i64 %34, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 2), align 8
  %35 = load i8*, i8** %1, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = getelementptr inbounds i8, i8* %37, i64 -1
  store i8* %38, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 3), align 8
  br label %39

39:                                               ; preds = %32, %0
  store i32 0, i32* %6, align 4
  %40 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 3), align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 2), align 8
  %42 = sub i64 0, %41
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8* %43, i8** %1, align 8
  %44 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @out, i32 0, i32 0), align 8
  store i8* %44, i8** %2, align 8
  br label %45

45:                                               ; preds = %193, %39
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 2), align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %195

48:                                               ; preds = %45
  %49 = load i64, i64* @cbsz, align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 2), align 8
  %51 = call i64 @MIN(i64 %49, i64 %50)
  store i64 %51, i64* %5, align 8
  %52 = load i8*, i8** @ctab, align 8
  store i8* %52, i8** %3, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %79

54:                                               ; preds = %48
  store i64 0, i64* %4, align 8
  br label %55

55:                                               ; preds = %75, %54
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* %5, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i8*, i8** %1, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %1, align 8
  %62 = load i8, i8* %60, align 1
  %63 = sext i8 %62 to i32
  store i32 %63, i32* %6, align 4
  %64 = icmp ne i32 %63, 10
  br label %65

65:                                               ; preds = %59, %55
  %66 = phi i1 [ false, %55 ], [ %64, %59 ]
  br i1 %66, label %67, label %78

67:                                               ; preds = %65
  %68 = load i8*, i8** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = load i8*, i8** %2, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %2, align 8
  store i8 %72, i8* %73, align 1
  br label %75

75:                                               ; preds = %67
  %76 = load i64, i64* %4, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %4, align 8
  br label %55

78:                                               ; preds = %65
  br label %101

79:                                               ; preds = %48
  store i64 0, i64* %4, align 8
  br label %80

80:                                               ; preds = %97, %79
  %81 = load i64, i64* %4, align 8
  %82 = load i64, i64* %5, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i8*, i8** %1, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %1, align 8
  %87 = load i8, i8* %85, align 1
  %88 = sext i8 %87 to i32
  store i32 %88, i32* %6, align 4
  %89 = icmp ne i32 %88, 10
  br label %90

90:                                               ; preds = %84, %80
  %91 = phi i1 [ false, %80 ], [ %89, %84 ]
  br i1 %91, label %92, label %100

92:                                               ; preds = %90
  %93 = load i32, i32* %6, align 4
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %2, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %2, align 8
  store i8 %94, i8* %95, align 1
  br label %97

97:                                               ; preds = %92
  %98 = load i64, i64* %4, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %4, align 8
  br label %80

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %100, %78
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 10
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 2), align 8
  %106 = load i64, i64* @cbsz, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 0), align 8
  %110 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 3), align 8
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 2), align 8
  %112 = sub i64 0, %111
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 2), align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 @memmove(i8* %109, i8* %113, i32 %115)
  br label %195

117:                                              ; preds = %104, %101
  %118 = load i64, i64* %4, align 8
  %119 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 2), align 8
  %120 = sub i64 %119, %118
  store i64 %120, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 2), align 8
  %121 = load i32, i32* %6, align 4
  %122 = icmp eq i32 %121, 10
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 2), align 8
  %125 = add i64 %124, -1
  store i64 %125, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 2), align 8
  br label %126

126:                                              ; preds = %123, %117
  %127 = load i64, i64* %4, align 8
  %128 = load i64, i64* @cbsz, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %147

130:                                              ; preds = %126
  %131 = load i8*, i8** %2, align 8
  %132 = load i8*, i8** @ctab, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = load i8*, i8** @ctab, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 32
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  br label %140

139:                                              ; preds = %130
  br label %140

140:                                              ; preds = %139, %134
  %141 = phi i32 [ %138, %134 ], [ 32, %139 ]
  %142 = trunc i32 %141 to i8
  %143 = load i64, i64* @cbsz, align 8
  %144 = load i64, i64* %4, align 8
  %145 = sub i64 %143, %144
  %146 = call i32 @memset(i8* %131, i8 signext %142, i64 %145)
  br label %182

147:                                              ; preds = %126
  %148 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 2), align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i8*, i8** %1, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 10
  br i1 %154, label %155, label %158

155:                                              ; preds = %150, %147
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @st, i32 0, i32 0), align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @st, i32 0, i32 0), align 4
  br label %158

158:                                              ; preds = %155, %150
  br label %159

159:                                              ; preds = %171, %158
  %160 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 2), align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load i8*, i8** %1, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %1, align 8
  %165 = load i8, i8* %163, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp ne i32 %166, 10
  br label %168

168:                                              ; preds = %162, %159
  %169 = phi i1 [ false, %159 ], [ %167, %162 ]
  br i1 %169, label %170, label %174

170:                                              ; preds = %168
  br label %171

171:                                              ; preds = %170
  %172 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 2), align 8
  %173 = add i64 %172, -1
  store i64 %173, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 2), align 8
  br label %159

174:                                              ; preds = %168
  %175 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 2), align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %174
  store i32 1, i32* @block.intrunc, align 4
  br label %181

178:                                              ; preds = %174
  %179 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 2), align 8
  %180 = add i64 %179, -1
  store i64 %180, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 2), align 8
  br label %181

181:                                              ; preds = %178, %177
  br label %182

182:                                              ; preds = %181, %140
  %183 = load i64, i64* @cbsz, align 8
  %184 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @out, i32 0, i32 0), align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 %183
  store i8* %185, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @out, i32 0, i32 0), align 8
  %186 = load i64, i64* @cbsz, align 8
  %187 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @out, i32 0, i32 1), align 8
  %188 = add i64 %187, %186
  store i64 %188, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @out, i32 0, i32 1), align 8
  %189 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @out, i32 0, i32 2), align 8
  %190 = icmp uge i64 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %182
  %192 = call i32 @dd_out(i32 0)
  br label %193

193:                                              ; preds = %191, %182
  %194 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @out, i32 0, i32 0), align 8
  store i8* %194, i8** %2, align 8
  br label %45

195:                                              ; preds = %108, %45
  %196 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 0), align 8
  %197 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 2), align 8
  %198 = getelementptr inbounds i8, i8* %196, i64 %197
  store i8* %198, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 3), align 8
  br label %199

199:                                              ; preds = %195, %30
  ret void
}

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

declare dso_local i32 @dd_out(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
