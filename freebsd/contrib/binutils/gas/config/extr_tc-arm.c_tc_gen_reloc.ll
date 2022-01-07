; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_tc_gen_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_tc_gen_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32*, i64, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32, i64, i64, i32, i32, i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@BFD_RELOC_8_PCREL = common dso_local global i64 0, align 8
@BFD_RELOC_16_PCREL = common dso_local global i64 0, align 8
@BFD_RELOC_32_PCREL = common dso_local global i64 0, align 8
@BFD_RELOC_ARM_MOVW_PCREL = common dso_local global i64 0, align 8
@BFD_RELOC_ARM_MOVT_PCREL = common dso_local global i64 0, align 8
@BFD_RELOC_ARM_THUMB_MOVW_PCREL = common dso_local global i64 0, align 8
@BFD_RELOC_ARM_THUMB_MOVT_PCREL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"literal referenced across section boundary\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"internal relocation (type: IMMEDIATE) not fixed up\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"ADRL used for a symbol not defined in the same file\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"undefined local label `%s'\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"internal_relocation (type: OFFSET_IMM) not fixed up\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"OFFSET_IMM8\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"SHIFT_IMM\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"SMC\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"SWI\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"MULTI\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"CP_OFF_IMM\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"T32_CP_OFF_IMM\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"THUMB_ADD\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"THUMB_SHIFT\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"THUMB_IMM\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"THUMB_OFFSET\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"cannot represent %s relocation in this object file format\00", align 1
@stdoutput = common dso_local global i32 0, align 4
@BFD_RELOC_ARM_GOTPC = common dso_local global i64 0, align 8
@GOT_symbol = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @tc_gen_reloc(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %9 = call i8* @xmalloc(i32 32)
  %10 = bitcast i8* %9 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %6, align 8
  %11 = call i8* @xmalloc(i32 8)
  %12 = bitcast i8* %11 to %struct.TYPE_15__**
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 3
  store %struct.TYPE_15__** %12, %struct.TYPE_15__*** %14, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = call %struct.TYPE_15__* @symbol_get_bfdsym(i32* %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %21, align 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %22, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 7
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %2
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = call i64 @md_pcrel_from_section(%struct.TYPE_12__* %44, %struct.TYPE_13__* %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, %46
  store i64 %50, i64* %48, align 8
  br label %57

51:                                               ; preds = %38
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %51, %43
  br label %58

58:                                               ; preds = %57, %2
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %208 [
    i32 204, label %67
    i32 207, label %75
    i32 206, label %83
    i32 167, label %91
    i32 168, label %99
    i32 146, label %107
    i32 147, label %115
    i32 138, label %123
    i32 162, label %123
    i32 163, label %123
    i32 137, label %123
    i32 131, label %123
    i32 130, label %123
    i32 135, label %123
    i32 134, label %123
    i32 133, label %123
    i32 132, label %123
    i32 136, label %123
    i32 129, label %123
    i32 128, label %123
    i32 169, label %128
    i32 189, label %128
    i32 188, label %137
    i32 203, label %146
    i32 165, label %155
  ]

67:                                               ; preds = %58
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i64, i64* @BFD_RELOC_8_PCREL, align 8
  store i64 %73, i64* %7, align 8
  br label %236

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %58, %74
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i64, i64* @BFD_RELOC_16_PCREL, align 8
  store i64 %81, i64* %7, align 8
  br label %236

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %58, %82
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i64, i64* @BFD_RELOC_32_PCREL, align 8
  store i64 %89, i64* %7, align 8
  br label %236

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %58, %90
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i64, i64* @BFD_RELOC_ARM_MOVW_PCREL, align 8
  store i64 %97, i64* %7, align 8
  br label %236

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %58, %98
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i64, i64* @BFD_RELOC_ARM_MOVT_PCREL, align 8
  store i64 %105, i64* %7, align 8
  br label %236

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %58, %106
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i64, i64* @BFD_RELOC_ARM_THUMB_MOVW_PCREL, align 8
  store i64 %113, i64* %7, align 8
  br label %236

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %58, %114
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i64, i64* @BFD_RELOC_ARM_THUMB_MOVT_PCREL, align 8
  store i64 %121, i64* %7, align 8
  br label %236

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %122
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %7, align 8
  br label %236

128:                                              ; preds = %58, %58
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %136 = call i32 (i32, i32, i8*, ...) @as_bad_where(i32 %131, i32 %134, i8* %135)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %270

137:                                              ; preds = %58
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %145 = call i32 (i32, i32, i8*, ...) @as_bad_where(i32 %140, i32 %143, i8* %144)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %270

146:                                              ; preds = %58
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %154 = call i32 (i32, i32, i8*, ...) @as_bad_where(i32 %149, i32 %152, i8* %153)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %270

155:                                              ; preds = %58
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  store i64 %164, i64* %7, align 8
  br label %236

165:                                              ; preds = %155
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to i8*
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %199

171:                                              ; preds = %165
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = inttoptr i64 %174 to i32*
  %176 = call i32 @S_IS_DEFINED(i32* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %199, label %178

178:                                              ; preds = %171
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = inttoptr i64 %181 to i32*
  %183 = call i32 @S_IS_LOCAL(i32* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %199

185:                                              ; preds = %178
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = inttoptr i64 %195 to i32*
  %197 = call i8* @S_GET_NAME(i32* %196)
  %198 = call i32 (i32, i32, i8*, ...) @as_bad_where(i32 %188, i32 %191, i8* %192, i8* %197)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %270

199:                                              ; preds = %178, %171, %165
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %207 = call i32 (i32, i32, i8*, ...) @as_bad_where(i32 %202, i32 %205, i8* %206)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %270

208:                                              ; preds = %58
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  switch i32 %211, label %224 [
    i32 138, label %212
    i32 164, label %213
    i32 155, label %214
    i32 154, label %215
    i32 153, label %216
    i32 166, label %217
    i32 192, label %218
    i32 152, label %219
    i32 149, label %220
    i32 144, label %221
    i32 148, label %222
    i32 145, label %223
  ]

212:                                              ; preds = %208
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %226

213:                                              ; preds = %208
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  br label %226

214:                                              ; preds = %208
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  br label %226

215:                                              ; preds = %208
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  br label %226

216:                                              ; preds = %208
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %8, align 8
  br label %226

217:                                              ; preds = %208
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %8, align 8
  br label %226

218:                                              ; preds = %208
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8** %8, align 8
  br label %226

219:                                              ; preds = %208
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8** %8, align 8
  br label %226

220:                                              ; preds = %208
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8** %8, align 8
  br label %226

221:                                              ; preds = %208
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8** %8, align 8
  br label %226

222:                                              ; preds = %208
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8** %8, align 8
  br label %226

223:                                              ; preds = %208
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8** %8, align 8
  br label %226

224:                                              ; preds = %208
  %225 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  store i8* %225, i8** %8, align 8
  br label %226

226:                                              ; preds = %224, %223, %222, %221, %220, %219, %218, %217, %216, %215, %214, %213, %212
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0))
  %234 = load i8*, i8** %8, align 8
  %235 = call i32 (i32, i32, i8*, ...) @as_bad_where(i32 %229, i32 %232, i8* %233, i8* %234)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %270

236:                                              ; preds = %160, %123, %120, %112, %104, %96, %88, %80, %72
  %237 = load i32, i32* @stdoutput, align 4
  %238 = load i64, i64* %7, align 8
  %239 = call i32* @bfd_reloc_type_lookup(i32 %237, i64 %238)
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 1
  store i32* %239, i32** %241, align 8
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = icmp eq i32* %244, null
  br i1 %245, label %246, label %257

246:                                              ; preds = %236
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0))
  %254 = load i64, i64* %7, align 8
  %255 = call i8* @bfd_get_reloc_code_name(i64 %254)
  %256 = call i32 (i32, i32, i8*, ...) @as_bad_where(i32 %249, i32 %252, i8* %253, i8* %255)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %270

257:                                              ; preds = %236
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp eq i32 %260, 129
  br i1 %261, label %262, label %268

262:                                              ; preds = %257
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 0
  store i64 %265, i64* %267, align 8
  br label %268

268:                                              ; preds = %262, %257
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %269, %struct.TYPE_14__** %3, align 8
  br label %270

270:                                              ; preds = %268, %246, %226, %199, %185, %146, %137, %128
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %271
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local %struct.TYPE_15__* @symbol_get_bfdsym(i32*) #1

declare dso_local i64 @md_pcrel_from_section(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @as_bad_where(i32, i32, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @S_IS_DEFINED(i32*) #1

declare dso_local i32 @S_IS_LOCAL(i32*) #1

declare dso_local i8* @S_GET_NAME(i32*) #1

declare dso_local i32* @bfd_reloc_type_lookup(i32, i64) #1

declare dso_local i8* @bfd_get_reloc_code_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
