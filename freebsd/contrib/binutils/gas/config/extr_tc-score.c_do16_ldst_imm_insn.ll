; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do16_ldst_imm_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do16_ldst_imm_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@MAX_LITERAL_POOL_SIZE = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@LDST16_RI_MASK = common dso_local global i32 0, align 4
@N16_LIU = common dso_local global i32 0, align 4
@_IMM8 = common dso_local global i32 0, align 4
@N16_LHP = common dso_local global i32 0, align 4
@N16_SHP = common dso_local global i32 0, align 4
@_IMM5_RSHIFT_1 = common dso_local global i32 0, align 4
@N16_LWP = common dso_local global i32 0, align 4
@N16_SWP = common dso_local global i32 0, align 4
@_IMM5_RSHIFT_2 = common dso_local global i32 0, align 4
@_IMM5 = common dso_local global i32 0, align 4
@N16_LBUP = common dso_local global i32 0, align 4
@N16_SBP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do16_ldst_imm_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do16_ldst_imm_insn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i32, i32* @MAX_LITERAL_POOL_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %3, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load i64, i64* @FAIL, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @skip_whitespace(i8* %18)
  %20 = call i32 @reglow_required_here(i8** %2, i32 8)
  store i32 %20, i32* %5, align 4
  %21 = load i64, i64* @FAIL, align 8
  %22 = trunc i64 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = call i32 @skip_past_comma(i8** %2)
  %26 = load i64, i64* @FAIL, align 8
  %27 = trunc i64 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %1
  store i32 1, i32* %11, align 4
  br label %203

30:                                               ; preds = %24
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @skip_whitespace(i8* %31)
  %33 = load i8*, i8** %2, align 8
  store i8* %33, i8** %6, align 8
  br label %34

34:                                               ; preds = %50, %30
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 124
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @MAX_LITERAL_POOL_SIZE, align 4
  %47 = icmp sle i32 %45, %46
  br label %48

48:                                               ; preds = %44, %39, %34
  %49 = phi i1 [ false, %39 ], [ false, %34 ], [ %47, %44 ]
  br i1 %49, label %50, label %60

50:                                               ; preds = %48
  %51 = load i8*, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %15, i64 %54
  store i8 %52, i8* %55, align 1
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %34

60:                                               ; preds = %48
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %15, i64 %62
  store i8 0, i8* %63, align 1
  %64 = getelementptr inbounds i8, i8* %15, i64 0
  store i8* %64, i8** %7, align 8
  %65 = load i8*, i8** %6, align 8
  store i8* %65, i8** %2, align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %67 = load i32, i32* @LDST16_RI_MASK, align 4
  %68 = and i32 %66, %67
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @N16_LIU, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %60
  %73 = load i32, i32* @_IMM8, align 4
  %74 = call i32 @exp_ldst_offset(i8** %7, i32 0, i32 %73)
  store i32 %74, i32* %9, align 4
  br label %102

75:                                               ; preds = %60
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @N16_LHP, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @N16_SHP, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79, %75
  %84 = load i32, i32* @_IMM5_RSHIFT_1, align 4
  %85 = call i32 @exp_ldst_offset(i8** %7, i32 3, i32 %84)
  store i32 %85, i32* %9, align 4
  br label %101

86:                                               ; preds = %79
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @N16_LWP, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @N16_SWP, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90, %86
  %95 = load i32, i32* @_IMM5_RSHIFT_2, align 4
  %96 = call i32 @exp_ldst_offset(i8** %7, i32 3, i32 %95)
  store i32 %96, i32* %9, align 4
  br label %100

97:                                               ; preds = %90
  %98 = load i32, i32* @_IMM5, align 4
  %99 = call i32 @exp_ldst_offset(i8** %7, i32 3, i32 %98)
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %97, %94
  br label %101

101:                                              ; preds = %100, %83
  br label %102

102:                                              ; preds = %101, %72
  %103 = load i32, i32* %9, align 4
  %104 = load i64, i64* @FAIL, align 8
  %105 = trunc i64 %104 to i32
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %113, label %107

107:                                              ; preds = %102
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 @end_of_line(i8* %108)
  %110 = load i64, i64* @FAIL, align 8
  %111 = trunc i64 %110 to i32
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107, %102
  store i32 1, i32* %11, align 4
  br label %203

114:                                              ; preds = %107
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %116 = and i32 %115, 28672
  %117 = load i32, i32* @N16_LIU, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %114
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %121 = lshr i32 %120, 8
  %122 = and i32 %121, 15
  %123 = shl i32 %122, 20
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %125 = and i32 %124, 255
  %126 = shl i32 %125, 1
  %127 = or i32 %123, %126
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  br label %201

130:                                              ; preds = %114
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %132 = and i32 %131, 28679
  %133 = load i32, i32* @N16_LHP, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %137 = and i32 %136, 28679
  %138 = load i32, i32* @N16_SHP, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %153

140:                                              ; preds = %135, %130
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %142 = lshr i32 %141, 8
  %143 = and i32 %142, 15
  %144 = shl i32 %143, 20
  %145 = or i32 %144, 65536
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %147 = lshr i32 %146, 3
  %148 = and i32 %147, 31
  %149 = shl i32 %148, 1
  %150 = or i32 %145, %149
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  br label %200

153:                                              ; preds = %135
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %155 = and i32 %154, 28679
  %156 = load i32, i32* @N16_LWP, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %160 = and i32 %159, 28679
  %161 = load i32, i32* @N16_SWP, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %176

163:                                              ; preds = %158, %153
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %165 = lshr i32 %164, 8
  %166 = and i32 %165, 15
  %167 = shl i32 %166, 20
  %168 = or i32 %167, 65536
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %170 = lshr i32 %169, 3
  %171 = and i32 %170, 31
  %172 = shl i32 %171, 2
  %173 = or i32 %168, %172
  %174 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  br label %199

176:                                              ; preds = %158
  %177 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %178 = and i32 %177, 28679
  %179 = load i32, i32* @N16_LBUP, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %186, label %181

181:                                              ; preds = %176
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %183 = and i32 %182, 28679
  %184 = load i32, i32* @N16_SBP, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %198

186:                                              ; preds = %181, %176
  %187 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %188 = lshr i32 %187, 8
  %189 = and i32 %188, 15
  %190 = shl i32 %189, 20
  %191 = or i32 %190, 65536
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %193 = lshr i32 %192, 3
  %194 = and i32 %193, 31
  %195 = or i32 %191, %194
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  br label %198

198:                                              ; preds = %186, %181
  br label %199

199:                                              ; preds = %198, %163
  br label %200

200:                                              ; preds = %199, %140
  br label %201

201:                                              ; preds = %200, %119
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 2), align 4
  br label %202

202:                                              ; preds = %201
  store i32 0, i32* %11, align 4
  br label %203

203:                                              ; preds = %202, %113, %29
  %204 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %204)
  %205 = load i32, i32* %11, align 4
  switch i32 %205, label %207 [
    i32 0, label %206
    i32 1, label %206
  ]

206:                                              ; preds = %203, %203
  ret void

207:                                              ; preds = %203
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @skip_whitespace(i8*) #2

declare dso_local i32 @reglow_required_here(i8**, i32) #2

declare dso_local i32 @skip_past_comma(i8**) #2

declare dso_local i32 @exp_ldst_offset(i8**, i32, i32) #2

declare dso_local i32 @end_of_line(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
