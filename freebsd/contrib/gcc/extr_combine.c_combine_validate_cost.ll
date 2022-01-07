; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_combine_validate_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_combine_validate_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@last_insn_cost = common dso_local global i64 0, align 8
@uid_insn_cost = common dso_local global i32* null, align 8
@undobuf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"rejecting combination of insns %d, %d and %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"original costs %d + %d + %d = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"rejecting combination of insns %d and %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"original costs %d + %d = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"replacement costs %d + %d = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"replacement cost %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i64)* @combine_validate_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @combine_validate_cost(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @INSN_UID(i64 %21)
  %23 = load i64, i64* @last_insn_cost, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %5
  %26 = load i32*, i32** @uid_insn_cost, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @INSN_UID(i64 %27)
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  br label %32

31:                                               ; preds = %5
  br label %32

32:                                               ; preds = %31, %25
  %33 = phi i32 [ %30, %25 ], [ 0, %31 ]
  store i32 %33, i32* %13, align 4
  %34 = load i64, i64* %9, align 8
  %35 = call i64 @INSN_UID(i64 %34)
  %36 = load i64, i64* @last_insn_cost, align 8
  %37 = icmp ule i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i32*, i32** @uid_insn_cost, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @INSN_UID(i64 %40)
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  br label %45

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %38
  %46 = phi i32 [ %43, %38 ], [ 0, %44 ]
  store i32 %46, i32* %14, align 4
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %45
  %50 = load i64, i64* %7, align 8
  %51 = call i64 @INSN_UID(i64 %50)
  %52 = load i64, i64* @last_insn_cost, align 8
  %53 = icmp ule i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32*, i32** @uid_insn_cost, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i64 @INSN_UID(i64 %56)
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  br label %61

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %54
  %62 = phi i32 [ %59, %54 ], [ 0, %60 ]
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load i32, i32* %13, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i32, i32* %14, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %74, %75
  br label %78

77:                                               ; preds = %68, %65, %61
  br label %78

78:                                               ; preds = %77, %71
  %79 = phi i32 [ %76, %71 ], [ 0, %77 ]
  store i32 %79, i32* %17, align 4
  br label %93

80:                                               ; preds = %45
  %81 = load i32, i32* %13, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32, i32* %14, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %87, %88
  br label %91

90:                                               ; preds = %83, %80
  br label %91

91:                                               ; preds = %90, %86
  %92 = phi i32 [ %89, %86 ], [ 0, %90 ]
  store i32 %92, i32* %17, align 4
  store i32 0, i32* %12, align 4
  br label %93

93:                                               ; preds = %91, %78
  %94 = load i64, i64* %10, align 8
  %95 = call i32 @insn_rtx_cost(i64 %94)
  store i32 %95, i32* %16, align 4
  %96 = load i64, i64* %11, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %93
  %99 = load i64, i64* %11, align 8
  %100 = call i32 @insn_rtx_cost(i64 %99)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load i32, i32* %16, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %16, align 4
  %109 = add nsw i32 %107, %108
  br label %111

110:                                              ; preds = %103, %98
  br label %111

111:                                              ; preds = %110, %106
  %112 = phi i32 [ %109, %106 ], [ 0, %110 ]
  store i32 %112, i32* %18, align 4
  br label %115

113:                                              ; preds = %93
  %114 = load i32, i32* %16, align 4
  store i32 %114, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @undobuf, i32 0, i32 0), align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %149

118:                                              ; preds = %115
  %119 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @undobuf, i32 0, i32 0), align 8
  %120 = call i64 @INSN_UID(i64 %119)
  %121 = load i64, i64* @last_insn_cost, align 8
  %122 = icmp ule i64 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load i32*, i32** @uid_insn_cost, align 8
  %125 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @undobuf, i32 0, i32 0), align 8
  %126 = call i64 @INSN_UID(i64 %125)
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  br label %130

129:                                              ; preds = %118
  br label %130

130:                                              ; preds = %129, %123
  %131 = phi i32 [ %128, %123 ], [ 0, %129 ]
  store i32 %131, i32* %19, align 4
  %132 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @undobuf, i32 0, i32 0), align 8
  %133 = call i64 @PATTERN(i64 %132)
  %134 = call i32 @insn_rtx_cost(i64 %133)
  store i32 %134, i32* %20, align 4
  %135 = load i32, i32* %19, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %130
  %138 = load i32, i32* %20, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load i32, i32* %19, align 4
  %142 = load i32, i32* %17, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %17, align 4
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* %18, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %18, align 4
  br label %148

147:                                              ; preds = %137, %130
  store i32 0, i32* %17, align 4
  br label %148

148:                                              ; preds = %147, %140
  br label %149

149:                                              ; preds = %148, %115
  %150 = load i32, i32* %17, align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %206

152:                                              ; preds = %149
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %17, align 4
  %155 = icmp sgt i32 %153, %154
  br i1 %155, label %156, label %206

156:                                              ; preds = %152
  %157 = load i64, i64* @dump_file, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %205

159:                                              ; preds = %156
  %160 = load i64, i64* %7, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %178

162:                                              ; preds = %159
  %163 = load i64, i64* @dump_file, align 8
  %164 = load i64, i64* %7, align 8
  %165 = call i64 @INSN_UID(i64 %164)
  %166 = trunc i64 %165 to i32
  %167 = load i64, i64* %8, align 8
  %168 = call i64 @INSN_UID(i64 %167)
  %169 = load i64, i64* %9, align 8
  %170 = call i64 @INSN_UID(i64 %169)
  %171 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %163, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %166, i64 %168, i64 %170)
  %172 = load i64, i64* @dump_file, align 8
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %14, align 4
  %176 = load i32, i32* %17, align 4
  %177 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %172, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %173, i32 %174, i32 %175, i32 %176)
  br label %191

178:                                              ; preds = %159
  %179 = load i64, i64* @dump_file, align 8
  %180 = load i64, i64* %8, align 8
  %181 = call i64 @INSN_UID(i64 %180)
  %182 = trunc i64 %181 to i32
  %183 = load i64, i64* %9, align 8
  %184 = call i64 @INSN_UID(i64 %183)
  %185 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %179, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %182, i64 %184)
  %186 = load i64, i64* @dump_file, align 8
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* %17, align 4
  %190 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %186, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %187, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %178, %162
  %192 = load i64, i64* %11, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load i64, i64* @dump_file, align 8
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* %18, align 4
  %199 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %195, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %196, i32 %197, i32 %198)
  br label %204

200:                                              ; preds = %191
  %201 = load i64, i64* @dump_file, align 8
  %202 = load i32, i32* %18, align 4
  %203 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %201, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %202)
  br label %204

204:                                              ; preds = %200, %194
  br label %205

205:                                              ; preds = %204, %156
  store i32 0, i32* %6, align 4
  br label %225

206:                                              ; preds = %152, %149
  %207 = load i32, i32* %15, align 4
  %208 = load i32*, i32** @uid_insn_cost, align 8
  %209 = load i64, i64* %8, align 8
  %210 = call i64 @INSN_UID(i64 %209)
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  store i32 %207, i32* %211, align 4
  %212 = load i32, i32* %16, align 4
  %213 = load i32*, i32** @uid_insn_cost, align 8
  %214 = load i64, i64* %9, align 8
  %215 = call i64 @INSN_UID(i64 %214)
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %212, i32* %216, align 4
  %217 = load i64, i64* %7, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %206
  %220 = load i32*, i32** @uid_insn_cost, align 8
  %221 = load i64, i64* %7, align 8
  %222 = call i64 @INSN_UID(i64 %221)
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  store i32 0, i32* %223, align 4
  br label %224

224:                                              ; preds = %219, %206
  store i32 1, i32* %6, align 4
  br label %225

225:                                              ; preds = %224, %205
  %226 = load i32, i32* %6, align 4
  ret i32 %226
}

declare dso_local i64 @INSN_UID(i64) #1

declare dso_local i32 @insn_rtx_cost(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i32 @fprintf(i64, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
