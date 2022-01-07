; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_parse_operands.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_parse_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@END_OF_INSN = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [39 x i8] c"invalid character %s before operand %d\00", align 1
@i = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@intel_syntax = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"unbalanced parenthesis in operand %d.\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"unbalanced brackets in operand %d.\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"invalid character %s in operand %d\00", align 1
@this_operand = common dso_local global i64 0, align 8
@MAX_OPERANDS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [49 x i8] c"spurious operands; (%d operands/instruction max)\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"expecting operand after ','; got nothing\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"expecting operand before ','; got nothing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @parse_operands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_operands(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %206, %2
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8, i8* @END_OF_INSN, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %207

17:                                               ; preds = %10
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i64 @is_space_char(i8 signext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i32 @is_operand_char(i8 signext %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8, i8* @END_OF_INSN, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %39 = load i8*, i8** %4, align 8
  %40 = load i8, i8* %39, align 1
  %41 = call i32 @output_invalid(i8 signext %40)
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i, i32 0, i32 0), align 8
  %43 = add nsw i64 %42, 1
  %44 = call i32 (i32, ...) @as_bad(i32 %38, i32 %41, i64 %43)
  store i8* null, i8** %3, align 8
  br label %209

45:                                               ; preds = %30, %25
  %46 = load i8*, i8** %4, align 8
  store i8* %46, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %138, %45
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load i8*, i8** %4, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 44
  br label %55

55:                                               ; preds = %50, %47
  %56 = phi i1 [ true, %47 ], [ %54, %50 ]
  br i1 %56, label %57, label %141

57:                                               ; preds = %55
  %58 = load i8*, i8** %4, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8, i8* @END_OF_INSN, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = load i64, i64* @intel_syntax, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i, i32 0, i32 0), align 8
  %73 = add nsw i64 %72, 1
  %74 = call i32 (i32, ...) @as_bad(i32 %71, i64 %73)
  br label %80

75:                                               ; preds = %67
  %76 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i, i32 0, i32 0), align 8
  %78 = add nsw i64 %77, 1
  %79 = call i32 (i32, ...) @as_bad(i32 %76, i64 %78)
  br label %80

80:                                               ; preds = %75, %70
  store i8* null, i8** %3, align 8
  br label %209

81:                                               ; preds = %64
  br label %141

82:                                               ; preds = %57
  %83 = load i8*, i8** %4, align 8
  %84 = load i8, i8* %83, align 1
  %85 = call i32 @is_operand_char(i8 signext %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %100, label %87

87:                                               ; preds = %82
  %88 = load i8*, i8** %4, align 8
  %89 = load i8, i8* %88, align 1
  %90 = call i64 @is_space_char(i8 signext %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %87
  %93 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i8*, i8** %4, align 8
  %95 = load i8, i8* %94, align 1
  %96 = call i32 @output_invalid(i8 signext %95)
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i, i32 0, i32 0), align 8
  %98 = add nsw i64 %97, 1
  %99 = call i32 (i32, ...) @as_bad(i32 %93, i32 %96, i64 %98)
  store i8* null, i8** %3, align 8
  br label %209

100:                                              ; preds = %87, %82
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* @intel_syntax, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %121, label %104

104:                                              ; preds = %101
  %105 = load i8*, i8** %4, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 40
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* %8, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %109, %104
  %113 = load i8*, i8** %4, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 41
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load i32, i32* %8, align 4
  %119 = add i32 %118, -1
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %117, %112
  br label %138

121:                                              ; preds = %101
  %122 = load i8*, i8** %4, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 91
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* %8, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %126, %121
  %130 = load i8*, i8** %4, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 93
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, i32* %8, align 4
  %136 = add i32 %135, -1
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %134, %129
  br label %138

138:                                              ; preds = %137, %120
  %139 = load i8*, i8** %4, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %4, align 8
  br label %47

141:                                              ; preds = %81, %55
  %142 = load i8*, i8** %4, align 8
  %143 = load i8*, i8** %6, align 8
  %144 = icmp ne i8* %142, %143
  br i1 %144, label %145, label %175

145:                                              ; preds = %141
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i, i32 0, i32 0), align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i, i32 0, i32 0), align 8
  store i64 %146, i64* @this_operand, align 8
  %148 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i, i32 0, i32 0), align 8
  %149 = load i64, i64* @MAX_OPERANDS, align 8
  %150 = icmp sgt i64 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %153 = load i64, i64* @MAX_OPERANDS, align 8
  %154 = call i32 (i32, ...) @as_bad(i32 %152, i64 %153)
  store i8* null, i8** %3, align 8
  br label %209

155:                                              ; preds = %145
  %156 = load i8*, i8** %4, align 8
  %157 = call i32 @END_STRING_AND_SAVE(i8* %156)
  %158 = load i64, i64* @intel_syntax, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load i8*, i8** %6, align 8
  %162 = load i8*, i8** %5, align 8
  %163 = call i32 @intel_float_operand(i8* %162)
  %164 = call i32 @i386_intel_operand(i8* %161, i32 %163)
  store i32 %164, i32* %9, align 4
  br label %168

165:                                              ; preds = %155
  %166 = load i8*, i8** %6, align 8
  %167 = call i32 @i386_operand(i8* %166)
  store i32 %167, i32* %9, align 4
  br label %168

168:                                              ; preds = %165, %160
  %169 = load i8*, i8** %4, align 8
  %170 = call i32 @RESTORE_END_STRING(i8* %169)
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %168
  store i8* null, i8** %3, align 8
  br label %209

174:                                              ; preds = %168
  br label %191

175:                                              ; preds = %141
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  br label %179

179:                                              ; preds = %204, %178
  %180 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %181 = call i32 (i32, ...) @as_bad(i32 %180)
  store i8* null, i8** %3, align 8
  br label %209

182:                                              ; preds = %175
  %183 = load i8*, i8** %4, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 44
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %189 = call i32 (i32, ...) @as_bad(i32 %188)
  store i8* null, i8** %3, align 8
  br label %209

190:                                              ; preds = %182
  br label %191

191:                                              ; preds = %190, %174
  %192 = load i8*, i8** %4, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %194, 44
  br i1 %195, label %196, label %206

196:                                              ; preds = %191
  %197 = load i8*, i8** %4, align 8
  %198 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %198, i8** %4, align 8
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = load i8, i8* @END_OF_INSN, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %200, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %196
  br label %179

205:                                              ; preds = %196
  store i32 1, i32* %7, align 4
  br label %206

206:                                              ; preds = %205, %191
  br label %10

207:                                              ; preds = %10
  %208 = load i8*, i8** %4, align 8
  store i8* %208, i8** %3, align 8
  br label %209

209:                                              ; preds = %207, %187, %179, %173, %151, %92, %80, %37
  %210 = load i8*, i8** %3, align 8
  ret i8* %210
}

declare dso_local i64 @is_space_char(i8 signext) #1

declare dso_local i32 @is_operand_char(i8 signext) #1

declare dso_local i32 @as_bad(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @output_invalid(i8 signext) #1

declare dso_local i32 @END_STRING_AND_SAVE(i8*) #1

declare dso_local i32 @i386_intel_operand(i8*, i32) #1

declare dso_local i32 @intel_float_operand(i8*) #1

declare dso_local i32 @i386_operand(i8*) #1

declare dso_local i32 @RESTORE_END_STRING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
