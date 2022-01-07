; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_print_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_print_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@instruction = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"cbitb\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"sbitb\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"tbitb\00", align 1
@LD_STOR_INS = common dso_local global i32 0, align 4
@CSTBIT_INS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_5__*)* @print_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_operand(i32 %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %209 [
    i32 138, label %10
    i32 130, label %16
    i32 128, label %23
    i32 132, label %30
    i32 131, label %37
    i32 133, label %44
    i32 134, label %86
    i32 135, label %125
    i32 139, label %125
    i32 129, label %130
    i32 137, label %137
    i32 136, label %149
  ]

10:                                               ; preds = %3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @CR16_PRINT(i32 0, i32 %13, i32 %14)
  br label %210

16:                                               ; preds = %3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @getreg_image(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @CR16_PRINT(i32 0, i32 %20, i32 %21)
  br label %210

23:                                               ; preds = %3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @getregp_image(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @CR16_PRINT(i32 0, i32 %27, i32 %28)
  br label %210

30:                                               ; preds = %3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @getprocreg_image(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @CR16_PRINT(i32 0, i32 %34, i32 %35)
  br label %210

37:                                               ; preds = %3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @getprocregp_image(i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @CR16_PRINT(i32 0, i32 %41, i32 %42)
  br label %210

44:                                               ; preds = %3
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @instruction, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @getidxregp_image(i32 %52)
  %54 = call i32 @CR16_PRINT(i32 0, i32 %53, i32 0)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @getreg_image(i32 %57)
  %59 = icmp eq i32 %58, 12
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = call i32 @CR16_PRINT(i32 0, i32 0, i32 3)
  br label %64

62:                                               ; preds = %49
  %63 = call i32 @CR16_PRINT(i32 0, i32 1, i32 3)
  br label %64

64:                                               ; preds = %62, %60
  br label %81

65:                                               ; preds = %44
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @getidxregp_image(i32 %68)
  %70 = call i32 @CR16_PRINT(i32 0, i32 %69, i32 16)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @getreg_image(i32 %73)
  %75 = icmp eq i32 %74, 12
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = call i32 @CR16_PRINT(i32 0, i32 0, i32 19)
  br label %80

78:                                               ; preds = %65
  %79 = call i32 @CR16_PRINT(i32 0, i32 1, i32 19)
  br label %80

80:                                               ; preds = %78, %76
  br label %81

81:                                               ; preds = %80, %64
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = call i32 @print_constant(i32 %82, i32 %83, %struct.TYPE_5__* %84)
  br label %210

86:                                               ; preds = %3
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @getreg_image(i32 %89)
  %91 = icmp eq i32 %90, 12
  br i1 %91, label %92, label %106

92:                                               ; preds = %86
  %93 = call i32 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  %96 = call i32 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = call i32 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98, %95, %92
  %102 = call i32 @CR16_PRINT(i32 0, i32 0, i32 23)
  br label %105

103:                                              ; preds = %98
  %104 = call i32 @CR16_PRINT(i32 0, i32 0, i32 24)
  br label %105

105:                                              ; preds = %103, %101
  br label %120

106:                                              ; preds = %86
  %107 = call i32 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %106
  %110 = call i32 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = call i32 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112, %109, %106
  %116 = call i32 @CR16_PRINT(i32 0, i32 1, i32 23)
  br label %119

117:                                              ; preds = %112
  %118 = call i32 @CR16_PRINT(i32 0, i32 1, i32 24)
  br label %119

119:                                              ; preds = %117, %115
  br label %120

120:                                              ; preds = %119, %105
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %124 = call i32 @print_constant(i32 %121, i32 %122, %struct.TYPE_5__* %123)
  br label %210

125:                                              ; preds = %3, %3
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* %5, align 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %129 = call i32 @print_constant(i32 %126, i32 %127, %struct.TYPE_5__* %128)
  br label %210

130:                                              ; preds = %3
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @getreg_image(i32 %133)
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @CR16_PRINT(i32 0, i32 %134, i32 %135)
  br label %210

137:                                              ; preds = %3
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* %5, align 4
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %141 = call i32 @print_constant(i32 %138, i32 %139, %struct.TYPE_5__* %140)
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @getreg_image(i32 %144)
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 16
  %148 = call i32 @CR16_PRINT(i32 0, i32 %145, i32 %147)
  br label %210

149:                                              ; preds = %3
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* %5, align 4
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %153 = call i32 @print_constant(i32 %150, i32 %151, %struct.TYPE_5__* %152)
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** @instruction, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp sgt i32 %156, 1
  br i1 %157, label %158, label %166

158:                                              ; preds = %149
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @getregp_image(i32 %161)
  %163 = load i32, i32* %5, align 4
  %164 = add nsw i32 %163, 16
  %165 = call i32 @CR16_PRINT(i32 0, i32 %162, i32 %164)
  br label %208

166:                                              ; preds = %149
  %167 = load i32, i32* @LD_STOR_INS, align 4
  %168 = call i32 @IS_INSN_TYPE(i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = load i32, i32* @CSTBIT_INS, align 4
  %172 = call i32 @IS_INSN_TYPE(i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %200

174:                                              ; preds = %170, %166
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** @instruction, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 2
  br i1 %178, label %179, label %187

179:                                              ; preds = %174
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @getregp_image(i32 %182)
  %184 = load i32, i32* %5, align 4
  %185 = sub nsw i32 %184, 8
  %186 = call i32 @CR16_PRINT(i32 0, i32 %183, i32 %185)
  br label %199

187:                                              ; preds = %174
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** @instruction, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @getregp_image(i32 %195)
  %197 = call i32 @CR16_PRINT(i32 0, i32 %196, i32 16)
  br label %198

198:                                              ; preds = %192, %187
  br label %199

199:                                              ; preds = %198, %179
  br label %207

200:                                              ; preds = %170
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @getregp_image(i32 %203)
  %205 = load i32, i32* %5, align 4
  %206 = call i32 @CR16_PRINT(i32 0, i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %200, %199
  br label %208

208:                                              ; preds = %207, %158
  br label %210

209:                                              ; preds = %3
  br label %210

210:                                              ; preds = %209, %208, %137, %130, %125, %120, %81, %37, %30, %23, %16, %10
  ret void
}

declare dso_local i32 @CR16_PRINT(i32, i32, i32) #1

declare dso_local i32 @getreg_image(i32) #1

declare dso_local i32 @getregp_image(i32) #1

declare dso_local i32 @getprocreg_image(i32) #1

declare dso_local i32 @getprocregp_image(i32) #1

declare dso_local i32 @getidxregp_image(i32) #1

declare dso_local i32 @print_constant(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @IS_INSN_MNEMONIC(i8*) #1

declare dso_local i32 @IS_INSN_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
