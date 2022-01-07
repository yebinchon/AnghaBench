; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/doc/extr_chew.c_courierize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/doc/extr_chew.c_courierize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tos = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"\0A@example\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"/*\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"*/\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"@end example\00", align 1
@pc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @courierize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @courierize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = call i32 @init_string(i32* %1)
  br label %5

5:                                                ; preds = %206, %0
  %6 = load i32, i32* @tos, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call signext i8 @at(i32 %6, i32 %7)
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %207

10:                                               ; preds = %5
  %11 = load i32, i32* @tos, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call signext i8 @at(i32 %11, i32 %12)
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %16, label %199

16:                                               ; preds = %10
  %17 = load i32, i32* @tos, align 4
  %18 = load i32, i32* %2, align 4
  %19 = add i32 %18, 1
  %20 = call signext i8 @at(i32 %17, i32 %19)
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 46
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @tos, align 4
  %25 = load i32, i32* %2, align 4
  %26 = add i32 %25, 1
  %27 = call signext i8 @at(i32 %24, i32 %26)
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 124
  br i1 %29, label %30, label %199

30:                                               ; preds = %23, %16
  %31 = call i32 @cattext(i32* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %195, %30
  %33 = load i32, i32* %2, align 4
  %34 = add i32 %33, 2
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %164, %141, %124, %32
  %36 = load i32, i32* @tos, align 4
  %37 = load i32, i32* %2, align 4
  %38 = call signext i8 @at(i32 %36, i32 %37)
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i32, i32* @tos, align 4
  %43 = load i32, i32* %2, align 4
  %44 = call signext i8 @at(i32 %42, i32 %43)
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 10
  br label %47

47:                                               ; preds = %41, %35
  %48 = phi i1 [ false, %35 ], [ %46, %41 ]
  br i1 %48, label %49, label %171

49:                                               ; preds = %47
  %50 = load i32, i32* %3, align 4
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %72

52:                                               ; preds = %49
  %53 = load i32, i32* @tos, align 4
  %54 = load i32, i32* %2, align 4
  %55 = call signext i8 @at(i32 %53, i32 %54)
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 123
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %71

61:                                               ; preds = %52
  %62 = load i32, i32* @tos, align 4
  %63 = load i32, i32* %2, align 4
  %64 = call signext i8 @at(i32 %62, i32 %63)
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 125
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %61
  br label %71

71:                                               ; preds = %70, %58
  br label %164

72:                                               ; preds = %49
  %73 = load i32, i32* %3, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %72
  %76 = load i32, i32* @tos, align 4
  %77 = load i32, i32* %2, align 4
  %78 = call signext i8 @at(i32 %76, i32 %77)
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 123
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %94

84:                                               ; preds = %75
  %85 = load i32, i32* @tos, align 4
  %86 = load i32, i32* %2, align 4
  %87 = call signext i8 @at(i32 %85, i32 %86)
  %88 = call i64 @islower(i8 zeroext %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %90, %84
  br label %94

94:                                               ; preds = %93, %81
  br label %163

95:                                               ; preds = %72
  %96 = load i32, i32* @tos, align 4
  %97 = load i32, i32* %2, align 4
  %98 = call signext i8 @at(i32 %96, i32 %97)
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 64
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load i32, i32* @tos, align 4
  %103 = load i32, i32* %2, align 4
  %104 = add i32 %103, 1
  %105 = call signext i8 @at(i32 %102, i32 %104)
  %106 = call i64 @islower(i8 zeroext %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i32, i32* %3, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %3, align 4
  br label %162

111:                                              ; preds = %101, %95
  %112 = load i32, i32* @tos, align 4
  %113 = load i32, i32* %2, align 4
  %114 = call signext i8 @at(i32 %112, i32 %113)
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 123
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = load i32, i32* @tos, align 4
  %119 = load i32, i32* %2, align 4
  %120 = add i32 %119, 1
  %121 = call signext i8 @at(i32 %118, i32 %120)
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 42
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = call i32 @cattext(i32* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %126 = load i32, i32* %2, align 4
  %127 = add i32 %126, 2
  store i32 %127, i32* %2, align 4
  br label %35

128:                                              ; preds = %117, %111
  %129 = load i32, i32* @tos, align 4
  %130 = load i32, i32* %2, align 4
  %131 = call signext i8 @at(i32 %129, i32 %130)
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 42
  br i1 %133, label %134, label %145

134:                                              ; preds = %128
  %135 = load i32, i32* @tos, align 4
  %136 = load i32, i32* %2, align 4
  %137 = add i32 %136, 1
  %138 = call signext i8 @at(i32 %135, i32 %137)
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 125
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = call i32 @cattext(i32* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %143 = load i32, i32* %2, align 4
  %144 = add i32 %143, 2
  store i32 %144, i32* %2, align 4
  br label %35

145:                                              ; preds = %134, %128
  %146 = load i32, i32* @tos, align 4
  %147 = load i32, i32* %2, align 4
  %148 = call signext i8 @at(i32 %146, i32 %147)
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 123
  br i1 %150, label %157, label %151

151:                                              ; preds = %145
  %152 = load i32, i32* @tos, align 4
  %153 = load i32, i32* %2, align 4
  %154 = call signext i8 @at(i32 %152, i32 %153)
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 125
  br i1 %156, label %157, label %159

157:                                              ; preds = %151, %145
  %158 = call i32 @catchar(i32* %1, i8 signext 64)
  br label %159

159:                                              ; preds = %157, %151
  br label %160

160:                                              ; preds = %159
  br label %161

161:                                              ; preds = %160
  br label %162

162:                                              ; preds = %161, %108
  br label %163

163:                                              ; preds = %162, %94
  br label %164

164:                                              ; preds = %163, %71
  %165 = load i32, i32* @tos, align 4
  %166 = load i32, i32* %2, align 4
  %167 = call signext i8 @at(i32 %165, i32 %166)
  %168 = call i32 @catchar(i32* %1, i8 signext %167)
  %169 = load i32, i32* %2, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %2, align 4
  br label %35

171:                                              ; preds = %47
  %172 = call i32 @catchar(i32* %1, i8 signext 10)
  br label %173

173:                                              ; preds = %171
  %174 = load i32, i32* @tos, align 4
  %175 = load i32, i32* %2, align 4
  %176 = call signext i8 @at(i32 %174, i32 %175)
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 10
  br i1 %178, label %179, label %195

179:                                              ; preds = %173
  %180 = load i32, i32* @tos, align 4
  %181 = load i32, i32* %2, align 4
  %182 = add i32 %181, 1
  %183 = call signext i8 @at(i32 %180, i32 %182)
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 46
  br i1 %185, label %193, label %186

186:                                              ; preds = %179
  %187 = load i32, i32* @tos, align 4
  %188 = load i32, i32* %2, align 4
  %189 = add i32 %188, 1
  %190 = call signext i8 @at(i32 %187, i32 %189)
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 124
  br label %193

193:                                              ; preds = %186, %179
  %194 = phi i1 [ true, %179 ], [ %192, %186 ]
  br label %195

195:                                              ; preds = %193, %173
  %196 = phi i1 [ false, %173 ], [ %194, %193 ]
  br i1 %196, label %32, label %197

197:                                              ; preds = %195
  %198 = call i32 @cattext(i32* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %206

199:                                              ; preds = %23, %10
  %200 = load i32, i32* @tos, align 4
  %201 = load i32, i32* %2, align 4
  %202 = call signext i8 @at(i32 %200, i32 %201)
  %203 = call i32 @catchar(i32* %1, i8 signext %202)
  %204 = load i32, i32* %2, align 4
  %205 = add i32 %204, 1
  store i32 %205, i32* %2, align 4
  br label %206

206:                                              ; preds = %199, %197
  br label %5

207:                                              ; preds = %5
  %208 = load i32, i32* @tos, align 4
  %209 = call i32 @overwrite_string(i32 %208, i32* %1)
  %210 = load i32, i32* @pc, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* @pc, align 4
  ret void
}

declare dso_local i32 @init_string(i32*) #1

declare dso_local signext i8 @at(i32, i32) #1

declare dso_local i32 @cattext(i32*, i8*) #1

declare dso_local i64 @islower(i8 zeroext) #1

declare dso_local i32 @catchar(i32*, i8 signext) #1

declare dso_local i32 @overwrite_string(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
