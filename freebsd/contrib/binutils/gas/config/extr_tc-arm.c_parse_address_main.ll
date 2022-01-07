; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_address_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_address_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__, %struct.TYPE_7__*, i8* }
%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.group_reloc_table_entry = type { i64, i64, i64 }

@FAIL = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@REG_PC = common dso_local global i32 0, align 4
@GE_NO_PREFIX = common dso_local global i32 0, align 4
@PARSE_OPERAND_FAIL = common dso_local global i32 0, align 4
@PARSE_OPERAND_SUCCESS = common dso_local global i32 0, align 4
@REG_TYPE_RN = common dso_local global i64 0, align 8
@reg_expected_msgs = common dso_local global i8** null, align 8
@SUCCESS = common dso_local global i32 0, align 4
@SHIFT_IMMEDIATE = common dso_local global i32 0, align 4
@O_constant = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"alignment must be constant\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unknown group relocation\00", align 1
@PARSE_OPERAND_FAIL_NO_BACKTRACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"this group relocation is not allowed on this instruction\00", align 1
@GE_IMM_PREFIX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"']' expected\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"'}' expected at end of 'option' field\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"cannot combine index with option\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"cannot combine pre- and post-indexing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i32, i32)* @parse_address_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_address_main(i8** %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca %struct.group_reloc_table_entry*, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i8**, i8*** %6, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %10, align 8
  %17 = call i32 @skip_past_char(i8** %10, i8 signext 91)
  %18 = load i32, i32* @FAIL, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %4
  %21 = call i32 @skip_past_char(i8** %10, i8 signext 61)
  %22 = load i32, i32* @FAIL, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 0), align 8
  %25 = load i32, i32* @REG_PC, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 %25, i32* %30, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %24, %20
  %42 = load i32, i32* @GE_NO_PREFIX, align 4
  %43 = call i64 @my_get_expression(%struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 2), i8** %10, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @PARSE_OPERAND_FAIL, align 4
  store i32 %46, i32* %5, align 4
  br label %497

47:                                               ; preds = %41
  %48 = load i8*, i8** %10, align 8
  %49 = load i8**, i8*** %6, align 8
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* @PARSE_OPERAND_SUCCESS, align 4
  store i32 %50, i32* %5, align 4
  br label %497

51:                                               ; preds = %4
  %52 = load i64, i64* @REG_TYPE_RN, align 8
  %53 = call i32 @arm_reg_parse(i8** %10, i64 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* @FAIL, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i8**, i8*** @reg_expected_msgs, align 8
  %58 = load i64, i64* @REG_TYPE_RN, align 8
  %59 = getelementptr inbounds i8*, i8** %57, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @_(i8* %60)
  store i8* %61, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 2), align 8
  %62 = load i32, i32* @PARSE_OPERAND_FAIL, align 4
  store i32 %62, i32* %5, align 4
  br label %497

63:                                               ; preds = %51
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 %64, i32* %69, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = call i32 @skip_past_comma(i8** %10)
  %76 = load i32, i32* @SUCCESS, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %260

78:                                               ; preds = %63
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  store i32 1, i32* %83, align 4
  %84 = load i8*, i8** %10, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 43
  br i1 %87, label %88, label %91

88:                                               ; preds = %78
  %89 = load i8*, i8** %10, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %10, align 8
  br label %105

91:                                               ; preds = %78
  %92 = load i8*, i8** %10, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 45
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load i8*, i8** %10, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %10, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  store i32 1, i32* %103, align 4
  br label %104

104:                                              ; preds = %96, %91
  br label %105

105:                                              ; preds = %104, %88
  %106 = load i64, i64* @REG_TYPE_RN, align 8
  %107 = call i32 @arm_reg_parse(i8** %10, i64 %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* @FAIL, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %135

110:                                              ; preds = %105
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 4
  store i32 %111, i32* %116, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 5
  store i32 1, i32* %121, align 4
  %122 = call i32 @skip_past_comma(i8** %10)
  %123 = load i32, i32* @SUCCESS, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %110
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @SHIFT_IMMEDIATE, align 4
  %128 = call i32 @parse_shift(i8** %10, i32 %126, i32 %127)
  %129 = load i32, i32* @FAIL, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = load i32, i32* @PARSE_OPERAND_FAIL, align 4
  store i32 %132, i32* %5, align 4
  br label %497

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %133, %110
  br label %259

135:                                              ; preds = %105
  %136 = call i32 @skip_past_char(i8** %10, i8 signext 58)
  %137 = load i32, i32* @SUCCESS, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %168

139:                                              ; preds = %135
  %140 = load i32, i32* @GE_NO_PREFIX, align 4
  %141 = call i64 @my_get_expression(%struct.TYPE_8__* %12, i8** %10, i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @O_constant, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %139
  %147 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i8* %147, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 2), align 8
  %148 = load i32, i32* @PARSE_OPERAND_FAIL, align 4
  store i32 %148, i32* %5, align 4
  br label %497

149:                                              ; preds = %139
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = shl i32 %151, 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 4
  store i32 %152, i32* %157, align 4
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 6
  store i32 1, i32* %162, align 4
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 2
  store i32 0, i32* %167, align 4
  br label %258

168:                                              ; preds = %135
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %168
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 3
  store i32 0, i32* %181, align 4
  %182 = load i8*, i8** %10, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 -1
  store i8* %183, i8** %10, align 8
  br label %184

184:                                              ; preds = %176, %168
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %250

187:                                              ; preds = %184
  %188 = load i8*, i8** %10, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %190, 35
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  %193 = load i8*, i8** %10, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 1
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 58
  br i1 %197, label %203, label %198

198:                                              ; preds = %192, %187
  %199 = load i8*, i8** %10, align 8
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 58
  br i1 %202, label %203, label %250

203:                                              ; preds = %198, %192
  %204 = load i8*, i8** %10, align 8
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 35
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load i8*, i8** %10, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 2
  store i8* %210, i8** %10, align 8
  br label %214

211:                                              ; preds = %203
  %212 = load i8*, i8** %10, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %10, align 8
  br label %214

214:                                              ; preds = %211, %208
  %215 = call i32 @find_group_reloc_table_entry(i8** %10, %struct.group_reloc_table_entry** %13)
  %216 = load i32, i32* @FAIL, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i8* %219, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 2), align 8
  %220 = load i32, i32* @PARSE_OPERAND_FAIL_NO_BACKTRACK, align 4
  store i32 %220, i32* %5, align 4
  br label %497

221:                                              ; preds = %214
  %222 = load i32, i32* @GE_NO_PREFIX, align 4
  %223 = call i64 @my_get_expression(%struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 2), i8** %10, i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %221
  %226 = load i32, i32* @PARSE_OPERAND_FAIL_NO_BACKTRACK, align 4
  store i32 %226, i32* %5, align 4
  br label %497

227:                                              ; preds = %221
  %228 = load i32, i32* %9, align 4
  switch i32 %228, label %241 [
    i32 129, label %229
    i32 128, label %233
    i32 130, label %237
  ]

229:                                              ; preds = %227
  %230 = load %struct.group_reloc_table_entry*, %struct.group_reloc_table_entry** %13, align 8
  %231 = getelementptr inbounds %struct.group_reloc_table_entry, %struct.group_reloc_table_entry* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  store i64 %232, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 1), align 8
  br label %243

233:                                              ; preds = %227
  %234 = load %struct.group_reloc_table_entry*, %struct.group_reloc_table_entry** %13, align 8
  %235 = getelementptr inbounds %struct.group_reloc_table_entry, %struct.group_reloc_table_entry* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  store i64 %236, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 1), align 8
  br label %243

237:                                              ; preds = %227
  %238 = load %struct.group_reloc_table_entry*, %struct.group_reloc_table_entry** %13, align 8
  %239 = getelementptr inbounds %struct.group_reloc_table_entry, %struct.group_reloc_table_entry* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 1), align 8
  br label %243

241:                                              ; preds = %227
  %242 = call i32 @assert(i32 0)
  br label %243

243:                                              ; preds = %241, %237, %233, %229
  %244 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 1), align 8
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  %247 = call i8* @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  store i8* %247, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 2), align 8
  %248 = load i32, i32* @PARSE_OPERAND_FAIL_NO_BACKTRACK, align 4
  store i32 %248, i32* %5, align 4
  br label %497

249:                                              ; preds = %243
  br label %257

250:                                              ; preds = %198, %184
  %251 = load i32, i32* @GE_IMM_PREFIX, align 4
  %252 = call i64 @my_get_expression(%struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 2), i8** %10, i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %250
  %255 = load i32, i32* @PARSE_OPERAND_FAIL, align 4
  store i32 %255, i32* %5, align 4
  br label %497

256:                                              ; preds = %250
  br label %257

257:                                              ; preds = %256, %249
  br label %258

258:                                              ; preds = %257, %149
  br label %259

259:                                              ; preds = %258, %134
  br label %294

260:                                              ; preds = %63
  %261 = call i32 @skip_past_char(i8** %10, i8 signext 58)
  %262 = load i32, i32* @SUCCESS, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %293

264:                                              ; preds = %260
  %265 = load i32, i32* @GE_NO_PREFIX, align 4
  %266 = call i64 @my_get_expression(%struct.TYPE_8__* %14, i8** %10, i32 %265)
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @O_constant, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %271, label %274

271:                                              ; preds = %264
  %272 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i8* %272, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 2), align 8
  %273 = load i32, i32* @PARSE_OPERAND_FAIL, align 4
  store i32 %273, i32* %5, align 4
  br label %497

274:                                              ; preds = %264
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = shl i32 %276, 8
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %279 = load i32, i32* %7, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 4
  store i32 %277, i32* %282, align 4
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %284 = load i32, i32* %7, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 6
  store i32 1, i32* %287, align 4
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %289 = load i32, i32* %7, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 2
  store i32 0, i32* %292, align 4
  br label %293

293:                                              ; preds = %274, %260
  br label %294

294:                                              ; preds = %293, %259
  %295 = call i32 @skip_past_char(i8** %10, i8 signext 93)
  %296 = load i32, i32* @FAIL, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %301

298:                                              ; preds = %294
  %299 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i8* %299, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 2), align 8
  %300 = load i32, i32* @PARSE_OPERAND_FAIL, align 4
  store i32 %300, i32* %5, align 4
  br label %497

301:                                              ; preds = %294
  %302 = call i32 @skip_past_char(i8** %10, i8 signext 33)
  %303 = load i32, i32* @SUCCESS, align 4
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %305, label %311

305:                                              ; preds = %301
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %307 = load i32, i32* %7, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 7
  store i32 1, i32* %310, align 4
  br label %470

311:                                              ; preds = %301
  %312 = call i32 @skip_past_comma(i8** %10)
  %313 = load i32, i32* @SUCCESS, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %469

315:                                              ; preds = %311
  %316 = call i32 @skip_past_char(i8** %10, i8 signext 123)
  %317 = load i32, i32* @SUCCESS, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %353

319:                                              ; preds = %315
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %321 = load i32, i32* %7, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 4
  %325 = load i32, i32* @TRUE, align 4
  %326 = call i32 @parse_immediate(i8** %10, i32* %324, i32 0, i32 255, i32 %325)
  %327 = load i32, i32* @FAIL, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %331

329:                                              ; preds = %319
  %330 = load i32, i32* @PARSE_OPERAND_FAIL, align 4
  store i32 %330, i32* %5, align 4
  br label %497

331:                                              ; preds = %319
  %332 = call i32 @skip_past_char(i8** %10, i8 signext 125)
  %333 = load i32, i32* @FAIL, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %335, label %338

335:                                              ; preds = %331
  %336 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  store i8* %336, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 2), align 8
  %337 = load i32, i32* @PARSE_OPERAND_FAIL, align 4
  store i32 %337, i32* %5, align 4
  br label %497

338:                                              ; preds = %331
  %339 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %340 = load i32, i32* %7, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %338
  %347 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  store i8* %347, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 2), align 8
  %348 = load i32, i32* @PARSE_OPERAND_FAIL, align 4
  store i32 %348, i32* %5, align 4
  br label %497

349:                                              ; preds = %338
  %350 = load i8*, i8** %10, align 8
  %351 = load i8**, i8*** %6, align 8
  store i8* %350, i8** %351, align 8
  %352 = load i32, i32* @PARSE_OPERAND_SUCCESS, align 4
  store i32 %352, i32* %5, align 4
  br label %497

353:                                              ; preds = %315
  %354 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %355 = load i32, i32* %7, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i32 0, i32 8
  store i32 1, i32* %358, align 4
  %359 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %360 = load i32, i32* %7, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %359, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 7
  store i32 1, i32* %363, align 4
  %364 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %365 = load i32, i32* %7, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %364, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %353
  %372 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  store i8* %372, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 2), align 8
  %373 = load i32, i32* @PARSE_OPERAND_FAIL, align 4
  store i32 %373, i32* %5, align 4
  br label %497

374:                                              ; preds = %353
  %375 = load i8*, i8** %10, align 8
  %376 = load i8, i8* %375, align 1
  %377 = sext i8 %376 to i32
  %378 = icmp eq i32 %377, 43
  br i1 %378, label %379, label %382

379:                                              ; preds = %374
  %380 = load i8*, i8** %10, align 8
  %381 = getelementptr inbounds i8, i8* %380, i32 1
  store i8* %381, i8** %10, align 8
  br label %396

382:                                              ; preds = %374
  %383 = load i8*, i8** %10, align 8
  %384 = load i8, i8* %383, align 1
  %385 = sext i8 %384 to i32
  %386 = icmp eq i32 %385, 45
  br i1 %386, label %387, label %395

387:                                              ; preds = %382
  %388 = load i8*, i8** %10, align 8
  %389 = getelementptr inbounds i8, i8* %388, i32 1
  store i8* %389, i8** %10, align 8
  %390 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %391 = load i32, i32* %7, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %393, i32 0, i32 3
  store i32 1, i32* %394, align 4
  br label %395

395:                                              ; preds = %387, %382
  br label %396

396:                                              ; preds = %395, %379
  %397 = load i64, i64* @REG_TYPE_RN, align 8
  %398 = call i32 @arm_reg_parse(i8** %10, i64 %397)
  store i32 %398, i32* %11, align 4
  %399 = load i32, i32* @FAIL, align 4
  %400 = icmp ne i32 %398, %399
  br i1 %400, label %401, label %444

401:                                              ; preds = %396
  %402 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %403 = load i32, i32* %7, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %402, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %405, i32 0, i32 6
  %407 = load i32, i32* %406, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %418

409:                                              ; preds = %401
  %410 = load i32, i32* %11, align 4
  %411 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %412 = load i32, i32* %7, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %411, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %414, i32 0, i32 4
  %416 = load i32, i32* %415, align 4
  %417 = or i32 %416, %410
  store i32 %417, i32* %415, align 4
  br label %425

418:                                              ; preds = %401
  %419 = load i32, i32* %11, align 4
  %420 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %421 = load i32, i32* %7, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %420, i64 %422
  %424 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %423, i32 0, i32 4
  store i32 %419, i32* %424, align 4
  br label %425

425:                                              ; preds = %418, %409
  %426 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %427 = load i32, i32* %7, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %426, i64 %428
  %430 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %429, i32 0, i32 5
  store i32 1, i32* %430, align 4
  %431 = call i32 @skip_past_comma(i8** %10)
  %432 = load i32, i32* @SUCCESS, align 4
  %433 = icmp eq i32 %431, %432
  br i1 %433, label %434, label %443

434:                                              ; preds = %425
  %435 = load i32, i32* %7, align 4
  %436 = load i32, i32* @SHIFT_IMMEDIATE, align 4
  %437 = call i32 @parse_shift(i8** %10, i32 %435, i32 %436)
  %438 = load i32, i32* @FAIL, align 4
  %439 = icmp eq i32 %437, %438
  br i1 %439, label %440, label %442

440:                                              ; preds = %434
  %441 = load i32, i32* @PARSE_OPERAND_FAIL, align 4
  store i32 %441, i32* %5, align 4
  br label %497

442:                                              ; preds = %434
  br label %443

443:                                              ; preds = %442, %425
  br label %467

444:                                              ; preds = %396
  %445 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %446 = load i32, i32* %7, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %445, i64 %447
  %449 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %448, i32 0, i32 3
  %450 = load i32, i32* %449, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %460

452:                                              ; preds = %444
  %453 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %454 = load i32, i32* %7, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %453, i64 %455
  %457 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %456, i32 0, i32 3
  store i32 0, i32* %457, align 4
  %458 = load i8*, i8** %10, align 8
  %459 = getelementptr inbounds i8, i8* %458, i32 -1
  store i8* %459, i8** %10, align 8
  br label %460

460:                                              ; preds = %452, %444
  %461 = load i32, i32* @GE_IMM_PREFIX, align 4
  %462 = call i64 @my_get_expression(%struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 2), i8** %10, i32 %461)
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %466

464:                                              ; preds = %460
  %465 = load i32, i32* @PARSE_OPERAND_FAIL, align 4
  store i32 %465, i32* %5, align 4
  br label %497

466:                                              ; preds = %460
  br label %467

467:                                              ; preds = %466, %443
  br label %468

468:                                              ; preds = %467
  br label %469

469:                                              ; preds = %468, %311
  br label %470

470:                                              ; preds = %469, %305
  %471 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %472 = load i32, i32* %7, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %471, i64 %473
  %475 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %474, i32 0, i32 2
  %476 = load i32, i32* %475, align 4
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %493

478:                                              ; preds = %470
  %479 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %480 = load i32, i32* %7, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %479, i64 %481
  %483 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %482, i32 0, i32 8
  %484 = load i32, i32* %483, align 4
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %486, label %493

486:                                              ; preds = %478
  %487 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %488 = load i32, i32* %7, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %487, i64 %489
  %491 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %490, i32 0, i32 2
  store i32 1, i32* %491, align 4
  %492 = load i64, i64* @O_constant, align 8
  store i64 %492, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 2, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 2, i32 1), align 8
  br label %493

493:                                              ; preds = %486, %478, %470
  %494 = load i8*, i8** %10, align 8
  %495 = load i8**, i8*** %6, align 8
  store i8* %494, i8** %495, align 8
  %496 = load i32, i32* @PARSE_OPERAND_SUCCESS, align 4
  store i32 %496, i32* %5, align 4
  br label %497

497:                                              ; preds = %493, %464, %440, %371, %349, %346, %335, %329, %298, %271, %254, %246, %225, %218, %146, %131, %56, %47, %45
  %498 = load i32, i32* %5, align 4
  ret i32 %498
}

declare dso_local i32 @skip_past_char(i8**, i8 signext) #1

declare dso_local i64 @my_get_expression(%struct.TYPE_8__*, i8**, i32) #1

declare dso_local i32 @arm_reg_parse(i8**, i64) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @skip_past_comma(i8**) #1

declare dso_local i32 @parse_shift(i8**, i32, i32) #1

declare dso_local i32 @find_group_reloc_table_entry(i8**, %struct.group_reloc_table_entry**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @parse_immediate(i8**, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
