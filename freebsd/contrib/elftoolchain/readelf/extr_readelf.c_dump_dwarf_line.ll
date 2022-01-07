; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dwarf_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dwarf_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64, i32 (%struct.TYPE_13__*, i32*, i32)*, i32 (i8**, i64)*, i32, %struct.section* }
%struct.TYPE_13__ = type { i64, i64 }
%struct.section = type { i32, i32* }

@.str = private unnamed_addr constant [49 x i8] c"\0ADump of debug contents of section .debug_line:\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c".debug_line\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@DW_DLV_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"dwarf_tag failed: %s\00", align 1
@DW_TAG_compile_unit = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"could not find DW_TAG_compile_unit die\00", align 1
@DW_AT_stmt_list = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"invalid .dwarf_line section\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"  Length:\09\09\09%ju\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"  DWARF version:\09\09%u\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"  Prologue Length:\09\09%ju\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"  Minimum Instruction Length:\09%u\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"  Initial value of 'is_stmt':\09%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"  Line Base:\09\09\09%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"  Line Range:\09\09\09%u\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"  Opcode Base:\09\09\09%u\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"  (Pointer size:\09\09%u)\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c" Opcodes:\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"  Opcode %d has %u args\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c" The Directory Table:\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c" The File Name Table:\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"  Entry\09Dir\09Time\09Size\09Name\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"  %d\09%ju\09%ju\09%ju\09%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c" Line Number Statements:\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"  Extended opcode %u: \00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"End of Sequence\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"set Address to %#jx\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"define new file: %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"unknown opcode\0A\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"  Copy\0A\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"  Advance PC by %ju to %#jx\0A\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"  Advance Line by %jd to %ju\0A\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"  Set File to %ju\0A\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"  Set Column to %ju\0A\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"  Set is_stmt to %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"  Set basic block flag\0A\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"  Advance PC by constant %ju to %#jx\0A\00", align 1
@.str.37 = private unnamed_addr constant [41 x i8] c"  Advance PC by fixed value %ju to %#jx\0A\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"  Set prologue end flag\0A\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"  Set epilogue begin flag\0A\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"  Set isa to %ju\0A\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"  Unknown extended opcode %u\0A\00", align 1
@.str.42 = private unnamed_addr constant [76 x i8] c"  Special opcode %u: advance Address by %ju to %#jx and Line by %jd to %ju\0A\00", align 1
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [25 x i8] c"dwarf_next_cu_header: %s\00", align 1
@RESET_REGISTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*)* @dump_dwarf_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_dwarf_line(%struct.readelf* %0) #0 {
  %2 = alloca %struct.readelf*, align 8
  %3 = alloca %struct.section*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_13__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %2, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store %struct.section* null, %struct.section** %3, align 8
  store i32 0, i32* %34, align 4
  br label %40

40:                                               ; preds = %66, %1
  %41 = load i32, i32* %34, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.readelf*, %struct.readelf** %2, align 8
  %44 = getelementptr inbounds %struct.readelf, %struct.readelf* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %40
  %48 = load %struct.readelf*, %struct.readelf** %2, align 8
  %49 = getelementptr inbounds %struct.readelf, %struct.readelf* %48, i32 0, i32 4
  %50 = load %struct.section*, %struct.section** %49, align 8
  %51 = load i32, i32* %34, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.section, %struct.section* %50, i64 %52
  store %struct.section* %53, %struct.section** %3, align 8
  %54 = load %struct.section*, %struct.section** %3, align 8
  %55 = getelementptr inbounds %struct.section, %struct.section* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %47
  %59 = load %struct.section*, %struct.section** %3, align 8
  %60 = getelementptr inbounds %struct.section, %struct.section* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @strcmp(i32* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %69

65:                                               ; preds = %58, %47
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %34, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %34, align 4
  br label %40

69:                                               ; preds = %64, %40
  %70 = load i32, i32* %34, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.readelf*, %struct.readelf** %2, align 8
  %73 = getelementptr inbounds %struct.readelf, %struct.readelf* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp uge i64 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %589

77:                                               ; preds = %69
  %78 = call i32 (...) @elf_errno()
  %79 = load %struct.section*, %struct.section** %3, align 8
  %80 = getelementptr inbounds %struct.section, %struct.section* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call %struct.TYPE_13__* @elf_getdata(i32 %81, i32* null)
  store %struct.TYPE_13__* %82, %struct.TYPE_13__** %21, align 8
  %83 = icmp eq %struct.TYPE_13__* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %77
  %85 = call i32 (...) @elf_errno()
  store i32 %85, i32* %37, align 4
  %86 = load i32, i32* %37, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = call i32 @elf_errmsg(i32 -1)
  %90 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %88, %84
  br label %589

92:                                               ; preds = %77
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp sle i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %589

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %580, %167, %141, %98
  %100 = load %struct.readelf*, %struct.readelf** %2, align 8
  %101 = getelementptr inbounds %struct.readelf, %struct.readelf* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @dwarf_next_cu_header(i32 %102, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %5)
  store i32 %103, i32* %38, align 4
  %104 = load i32, i32* @DW_DLV_OK, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %581

106:                                              ; preds = %99
  store i32* null, i32** %4, align 8
  br label %107

107:                                              ; preds = %129, %106
  %108 = load %struct.readelf*, %struct.readelf** %2, align 8
  %109 = getelementptr inbounds %struct.readelf, %struct.readelf* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 @dwarf_siblingof(i32 %110, i32* %111, i32** %4, i32* %5)
  %113 = load i32, i32* @DW_DLV_OK, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %107
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @dwarf_tag(i32* %116, i64* %6, i32* %5)
  %118 = load i32, i32* @DW_DLV_OK, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @dwarf_errmsg(i32 %121)
  %123 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  br label %589

124:                                              ; preds = %115
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* @DW_TAG_compile_unit, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %130

129:                                              ; preds = %124
  br label %107

130:                                              ; preds = %128, %107
  %131 = load i32*, i32** %4, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %589

135:                                              ; preds = %130
  %136 = load i32*, i32** %4, align 8
  %137 = load i32, i32* @DW_AT_stmt_list, align 4
  %138 = call i32 @dwarf_attrval_unsigned(i32* %136, i32 %137, i32* %9, i32* %5)
  %139 = load i32, i32* @DW_DLV_OK, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %99

142:                                              ; preds = %135
  %143 = load %struct.readelf*, %struct.readelf** %2, align 8
  %144 = getelementptr inbounds %struct.readelf, %struct.readelf* %143, i32 0, i32 1
  %145 = load i32 (%struct.TYPE_13__*, i32*, i32)*, i32 (%struct.TYPE_13__*, i32*, i32)** %144, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %147 = call i32 %145(%struct.TYPE_13__* %146, i32* %9, i32 4)
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp eq i32 %148, -1
  br i1 %149, label %150, label %156

150:                                              ; preds = %142
  store i32 8, i32* %36, align 4
  %151 = load %struct.readelf*, %struct.readelf** %2, align 8
  %152 = getelementptr inbounds %struct.readelf, %struct.readelf* %151, i32 0, i32 1
  %153 = load i32 (%struct.TYPE_13__*, i32*, i32)*, i32 (%struct.TYPE_13__*, i32*, i32)** %152, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %155 = call i32 %153(%struct.TYPE_13__* %154, i32* %9, i32 8)
  store i32 %155, i32* %11, align 4
  br label %157

156:                                              ; preds = %142
  store i32 4, i32* %36, align 4
  br label %157

157:                                              ; preds = %156, %150
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = sub nsw i64 %162, %164
  %166 = icmp sgt i64 %159, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %157
  %168 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %99

169:                                              ; preds = %157
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %170, %171
  store i32 %172, i32* %10, align 4
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = inttoptr i64 %175 to i8*
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  store i8* %179, i8** %32, align 8
  %180 = load %struct.readelf*, %struct.readelf** %2, align 8
  %181 = getelementptr inbounds %struct.readelf, %struct.readelf* %180, i32 0, i32 1
  %182 = load i32 (%struct.TYPE_13__*, i32*, i32)*, i32 (%struct.TYPE_13__*, i32*, i32)** %181, align 8
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %184 = call i32 %182(%struct.TYPE_13__* %183, i32* %9, i32 2)
  %185 = sext i32 %184 to i64
  store i64 %185, i64* %7, align 8
  %186 = load %struct.readelf*, %struct.readelf** %2, align 8
  %187 = getelementptr inbounds %struct.readelf, %struct.readelf* %186, i32 0, i32 1
  %188 = load i32 (%struct.TYPE_13__*, i32*, i32)*, i32 (%struct.TYPE_13__*, i32*, i32)** %187, align 8
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %190 = load i32, i32* %36, align 4
  %191 = call i32 %188(%struct.TYPE_13__* %189, i32* %9, i32 %190)
  store i32 %191, i32* %12, align 4
  %192 = load %struct.readelf*, %struct.readelf** %2, align 8
  %193 = getelementptr inbounds %struct.readelf, %struct.readelf* %192, i32 0, i32 1
  %194 = load i32 (%struct.TYPE_13__*, i32*, i32)*, i32 (%struct.TYPE_13__*, i32*, i32)** %193, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %196 = call i32 %194(%struct.TYPE_13__* %195, i32* %9, i32 1)
  store i32 %196, i32* %16, align 4
  %197 = load %struct.readelf*, %struct.readelf** %2, align 8
  %198 = getelementptr inbounds %struct.readelf, %struct.readelf* %197, i32 0, i32 1
  %199 = load i32 (%struct.TYPE_13__*, i32*, i32)*, i32 (%struct.TYPE_13__*, i32*, i32)** %198, align 8
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %201 = call i32 %199(%struct.TYPE_13__* %200, i32* %9, i32 1)
  store i32 %201, i32* %17, align 4
  %202 = load %struct.readelf*, %struct.readelf** %2, align 8
  %203 = getelementptr inbounds %struct.readelf, %struct.readelf* %202, i32 0, i32 1
  %204 = load i32 (%struct.TYPE_13__*, i32*, i32)*, i32 (%struct.TYPE_13__*, i32*, i32)** %203, align 8
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %206 = call i32 %204(%struct.TYPE_13__* %205, i32* %9, i32 1)
  store i32 %206, i32* %33, align 4
  %207 = load %struct.readelf*, %struct.readelf** %2, align 8
  %208 = getelementptr inbounds %struct.readelf, %struct.readelf* %207, i32 0, i32 1
  %209 = load i32 (%struct.TYPE_13__*, i32*, i32)*, i32 (%struct.TYPE_13__*, i32*, i32)** %208, align 8
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %211 = call i32 %209(%struct.TYPE_13__* %210, i32* %9, i32 1)
  store i32 %211, i32* %18, align 4
  %212 = load %struct.readelf*, %struct.readelf** %2, align 8
  %213 = getelementptr inbounds %struct.readelf, %struct.readelf* %212, i32 0, i32 1
  %214 = load i32 (%struct.TYPE_13__*, i32*, i32)*, i32 (%struct.TYPE_13__*, i32*, i32)** %213, align 8
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %216 = call i32 %214(%struct.TYPE_13__* %215, i32* %9, i32 1)
  store i32 %216, i32* %19, align 4
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = inttoptr i64 %219 to i8*
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %220)
  %222 = load i64, i64* %7, align 8
  %223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i64 %222)
  %224 = load i32, i32* %12, align 4
  %225 = sext i32 %224 to i64
  %226 = inttoptr i64 %225 to i8*
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %226)
  %228 = load i32, i32* %16, align 4
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %228)
  %230 = load i32, i32* %17, align 4
  %231 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* %33, align 4
  %233 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %232)
  %234 = load i32, i32* %18, align 4
  %235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %234)
  %236 = load i32, i32* %19, align 4
  %237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %236)
  %238 = load %struct.readelf*, %struct.readelf** %2, align 8
  %239 = getelementptr inbounds %struct.readelf, %struct.readelf* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @dwarf_get_address_size(i32 %240, i64* %8, i32* %5)
  %242 = load i64, i64* %8, align 8
  %243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i64 %242)
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  store i32 1, i32* %34, align 4
  br label %246

246:                                              ; preds = %259, %169
  %247 = load i32, i32* %34, align 4
  %248 = load i32, i32* %19, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %262

250:                                              ; preds = %246
  %251 = load %struct.readelf*, %struct.readelf** %2, align 8
  %252 = getelementptr inbounds %struct.readelf, %struct.readelf* %251, i32 0, i32 1
  %253 = load i32 (%struct.TYPE_13__*, i32*, i32)*, i32 (%struct.TYPE_13__*, i32*, i32)** %252, align 8
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %255 = call i32 %253(%struct.TYPE_13__* %254, i32* %9, i32 1)
  store i32 %255, i32* %20, align 4
  %256 = load i32, i32* %34, align 4
  %257 = load i32, i32* %20, align 4
  %258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 %256, i32 %257)
  br label %259

259:                                              ; preds = %250
  %260 = load i32, i32* %34, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %34, align 4
  br label %246

262:                                              ; preds = %246
  %263 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %264 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = inttoptr i64 %267 to i8*
  %269 = load i32, i32* %9, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8, i8* %268, i64 %270
  store i8* %271, i8** %31, align 8
  br label %272

272:                                              ; preds = %277, %262
  %273 = load i8*, i8** %31, align 8
  %274 = load i8, i8* %273, align 1
  %275 = sext i8 %274 to i32
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %285

277:                                              ; preds = %272
  %278 = load i8*, i8** %31, align 8
  %279 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* %278)
  %280 = load i8*, i8** %31, align 8
  %281 = call i64 @strlen(i8* %280)
  %282 = add nsw i64 %281, 1
  %283 = load i8*, i8** %31, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 %282
  store i8* %284, i8** %31, align 8
  br label %272

285:                                              ; preds = %272
  %286 = load i8*, i8** %31, align 8
  %287 = getelementptr inbounds i8, i8* %286, i32 1
  store i8* %287, i8** %31, align 8
  %288 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %289 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  %290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0))
  store i32 0, i32* %34, align 4
  br label %291

291:                                              ; preds = %296, %285
  %292 = load i8*, i8** %31, align 8
  %293 = load i8, i8* %292, align 1
  %294 = sext i8 %293 to i32
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %323

296:                                              ; preds = %291
  %297 = load i32, i32* %34, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %34, align 4
  %299 = load i8*, i8** %31, align 8
  store i8* %299, i8** %22, align 8
  %300 = load i8*, i8** %22, align 8
  %301 = call i64 @strlen(i8* %300)
  %302 = add nsw i64 %301, 1
  %303 = load i8*, i8** %31, align 8
  %304 = getelementptr inbounds i8, i8* %303, i64 %302
  store i8* %304, i8** %31, align 8
  %305 = load i8*, i8** %32, align 8
  %306 = call i32 @_decode_uleb128(i8** %31, i8* %305)
  store i32 %306, i32* %13, align 4
  %307 = load i8*, i8** %32, align 8
  %308 = call i32 @_decode_uleb128(i8** %31, i8* %307)
  store i32 %308, i32* %14, align 4
  %309 = load i8*, i8** %32, align 8
  %310 = call i32 @_decode_uleb128(i8** %31, i8* %309)
  store i32 %310, i32* %15, align 4
  %311 = load i32, i32* %34, align 4
  %312 = load i32, i32* %13, align 4
  %313 = sext i32 %312 to i64
  %314 = inttoptr i64 %313 to i8*
  %315 = load i32, i32* %14, align 4
  %316 = sext i32 %315 to i64
  %317 = inttoptr i64 %316 to i8*
  %318 = load i32, i32* %15, align 4
  %319 = sext i32 %318 to i64
  %320 = inttoptr i64 %319 to i8*
  %321 = load i8*, i8** %22, align 8
  %322 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i32 %311, i8* %314, i8* %317, i8* %320, i8* %321)
  br label %291

323:                                              ; preds = %291
  %324 = load i8*, i8** %31, align 8
  %325 = getelementptr inbounds i8, i8* %324, i32 1
  store i8* %325, i8** %31, align 8
  %326 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %327 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0))
  br label %328

328:                                              ; preds = %323
  store i32 0, i32* %23, align 4
  store i32 1, i32* %24, align 4
  store i32 1, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %329 = load i32, i32* %17, align 4
  store i32 %329, i32* %35, align 4
  br label %330

330:                                              ; preds = %328
  br label %331

331:                                              ; preds = %579, %330
  %332 = load i8*, i8** %31, align 8
  %333 = load i8*, i8** %32, align 8
  %334 = icmp ult i8* %332, %333
  br i1 %334, label %335, label %580

335:                                              ; preds = %331
  %336 = load i8*, i8** %31, align 8
  %337 = load i8, i8* %336, align 1
  %338 = sext i8 %337 to i32
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %395

340:                                              ; preds = %335
  %341 = load i8*, i8** %31, align 8
  %342 = getelementptr inbounds i8, i8* %341, i32 1
  store i8* %342, i8** %31, align 8
  %343 = load i8*, i8** %32, align 8
  %344 = call i32 @_decode_uleb128(i8** %31, i8* %343)
  store i32 %344, i32* %28, align 4
  %345 = load i8*, i8** %31, align 8
  %346 = load i8, i8* %345, align 1
  %347 = sext i8 %346 to i32
  %348 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 %347)
  %349 = load i8*, i8** %31, align 8
  %350 = load i8, i8* %349, align 1
  %351 = sext i8 %350 to i32
  switch i32 %351, label %388 [
    i32 141, label %352
    i32 140, label %359
    i32 142, label %371
  ]

352:                                              ; preds = %340
  %353 = load i8*, i8** %31, align 8
  %354 = getelementptr inbounds i8, i8* %353, i32 1
  store i8* %354, i8** %31, align 8
  br label %355

355:                                              ; preds = %352
  store i32 0, i32* %23, align 4
  store i32 1, i32* %24, align 4
  store i32 1, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %356 = load i32, i32* %17, align 4
  store i32 %356, i32* %35, align 4
  br label %357

357:                                              ; preds = %355
  %358 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0))
  br label %394

359:                                              ; preds = %340
  %360 = load i8*, i8** %31, align 8
  %361 = getelementptr inbounds i8, i8* %360, i32 1
  store i8* %361, i8** %31, align 8
  %362 = load %struct.readelf*, %struct.readelf** %2, align 8
  %363 = getelementptr inbounds %struct.readelf, %struct.readelf* %362, i32 0, i32 2
  %364 = load i32 (i8**, i64)*, i32 (i8**, i64)** %363, align 8
  %365 = load i64, i64* %8, align 8
  %366 = call i32 %364(i8** %31, i64 %365)
  store i32 %366, i32* %23, align 4
  %367 = load i32, i32* %23, align 4
  %368 = sext i32 %367 to i64
  %369 = inttoptr i64 %368 to i8*
  %370 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i8* %369)
  br label %394

371:                                              ; preds = %340
  %372 = load i8*, i8** %31, align 8
  %373 = getelementptr inbounds i8, i8* %372, i32 1
  store i8* %373, i8** %31, align 8
  %374 = load i8*, i8** %31, align 8
  store i8* %374, i8** %22, align 8
  %375 = load i8*, i8** %22, align 8
  %376 = call i64 @strlen(i8* %375)
  %377 = add nsw i64 %376, 1
  %378 = load i8*, i8** %31, align 8
  %379 = getelementptr inbounds i8, i8* %378, i64 %377
  store i8* %379, i8** %31, align 8
  %380 = load i8*, i8** %32, align 8
  %381 = call i32 @_decode_uleb128(i8** %31, i8* %380)
  store i32 %381, i32* %13, align 4
  %382 = load i8*, i8** %32, align 8
  %383 = call i32 @_decode_uleb128(i8** %31, i8* %382)
  store i32 %383, i32* %14, align 4
  %384 = load i8*, i8** %32, align 8
  %385 = call i32 @_decode_uleb128(i8** %31, i8* %384)
  store i32 %385, i32* %15, align 4
  %386 = load i8*, i8** %22, align 8
  %387 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0), i8* %386)
  br label %394

388:                                              ; preds = %340
  %389 = load i32, i32* %28, align 4
  %390 = load i8*, i8** %31, align 8
  %391 = sext i32 %389 to i64
  %392 = getelementptr inbounds i8, i8* %390, i64 %391
  store i8* %392, i8** %31, align 8
  %393 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0))
  br label %394

394:                                              ; preds = %388, %371, %359, %357
  br label %579

395:                                              ; preds = %335
  %396 = load i8*, i8** %31, align 8
  %397 = load i8, i8* %396, align 1
  %398 = sext i8 %397 to i32
  %399 = icmp sgt i32 %398, 0
  br i1 %399, label %400, label %519

400:                                              ; preds = %395
  %401 = load i8*, i8** %31, align 8
  %402 = load i8, i8* %401, align 1
  %403 = sext i8 %402 to i32
  %404 = load i32, i32* %19, align 4
  %405 = icmp slt i32 %403, %404
  br i1 %405, label %406, label %519

406:                                              ; preds = %400
  %407 = load i8*, i8** %31, align 8
  %408 = getelementptr inbounds i8, i8* %407, i32 1
  store i8* %408, i8** %31, align 8
  %409 = load i8, i8* %407, align 1
  %410 = sext i8 %409 to i32
  switch i32 %410, label %512 [
    i32 136, label %411
    i32 138, label %413
    i32 139, label %428
    i32 130, label %442
    i32 132, label %449
    i32 134, label %456
    i32 133, label %463
    i32 137, label %465
    i32 135, label %486
    i32 128, label %501
    i32 131, label %503
    i32 129, label %505
  ]

411:                                              ; preds = %406
  %412 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0))
  br label %518

413:                                              ; preds = %406
  %414 = load i8*, i8** %32, align 8
  %415 = call i32 @_decode_uleb128(i8** %31, i8* %414)
  %416 = load i32, i32* %16, align 4
  %417 = mul nsw i32 %415, %416
  store i32 %417, i32* %29, align 4
  %418 = load i32, i32* %29, align 4
  %419 = load i32, i32* %23, align 4
  %420 = add nsw i32 %419, %418
  store i32 %420, i32* %23, align 4
  %421 = load i32, i32* %29, align 4
  %422 = sext i32 %421 to i64
  %423 = inttoptr i64 %422 to i8*
  %424 = load i32, i32* %23, align 4
  %425 = sext i32 %424 to i64
  %426 = inttoptr i64 %425 to i8*
  %427 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0), i8* %423, i8* %426)
  br label %518

428:                                              ; preds = %406
  %429 = load i8*, i8** %32, align 8
  %430 = call i64 @_decode_sleb128(i8** %31, i8* %429)
  store i64 %430, i64* %30, align 8
  %431 = load i64, i64* %30, align 8
  %432 = load i32, i32* %25, align 4
  %433 = sext i32 %432 to i64
  %434 = add nsw i64 %433, %431
  %435 = trunc i64 %434 to i32
  store i32 %435, i32* %25, align 4
  %436 = load i64, i64* %30, align 8
  %437 = inttoptr i64 %436 to i8*
  %438 = load i32, i32* %25, align 4
  %439 = sext i32 %438 to i64
  %440 = inttoptr i64 %439 to i8*
  %441 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i64 0, i64 0), i8* %437, i8* %440)
  br label %518

442:                                              ; preds = %406
  %443 = load i8*, i8** %32, align 8
  %444 = call i32 @_decode_uleb128(i8** %31, i8* %443)
  store i32 %444, i32* %24, align 4
  %445 = load i32, i32* %24, align 4
  %446 = sext i32 %445 to i64
  %447 = inttoptr i64 %446 to i8*
  %448 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0), i8* %447)
  br label %518

449:                                              ; preds = %406
  %450 = load i8*, i8** %32, align 8
  %451 = call i32 @_decode_uleb128(i8** %31, i8* %450)
  store i32 %451, i32* %26, align 4
  %452 = load i32, i32* %26, align 4
  %453 = sext i32 %452 to i64
  %454 = inttoptr i64 %453 to i8*
  %455 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i64 0, i64 0), i8* %454)
  br label %518

456:                                              ; preds = %406
  %457 = load i32, i32* %35, align 4
  %458 = icmp ne i32 %457, 0
  %459 = xor i1 %458, true
  %460 = zext i1 %459 to i32
  store i32 %460, i32* %35, align 4
  %461 = load i32, i32* %35, align 4
  %462 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0), i32 %461)
  br label %518

463:                                              ; preds = %406
  %464 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0))
  br label %518

465:                                              ; preds = %406
  %466 = load i32, i32* %19, align 4
  %467 = sub nsw i32 255, %466
  %468 = load i32, i32* %18, align 4
  %469 = sdiv i32 %467, %468
  %470 = load i32, i32* %16, align 4
  %471 = mul nsw i32 %469, %470
  %472 = load i32, i32* %23, align 4
  %473 = add nsw i32 %472, %471
  store i32 %473, i32* %23, align 4
  %474 = load i32, i32* %19, align 4
  %475 = sub nsw i32 255, %474
  %476 = load i32, i32* %18, align 4
  %477 = sdiv i32 %475, %476
  %478 = load i32, i32* %16, align 4
  %479 = mul nsw i32 %477, %478
  %480 = sext i32 %479 to i64
  %481 = inttoptr i64 %480 to i8*
  %482 = load i32, i32* %23, align 4
  %483 = sext i32 %482 to i64
  %484 = inttoptr i64 %483 to i8*
  %485 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.36, i64 0, i64 0), i8* %481, i8* %484)
  br label %518

486:                                              ; preds = %406
  %487 = load %struct.readelf*, %struct.readelf** %2, align 8
  %488 = getelementptr inbounds %struct.readelf, %struct.readelf* %487, i32 0, i32 2
  %489 = load i32 (i8**, i64)*, i32 (i8**, i64)** %488, align 8
  %490 = call i32 %489(i8** %31, i64 2)
  store i32 %490, i32* %29, align 4
  %491 = load i32, i32* %29, align 4
  %492 = load i32, i32* %23, align 4
  %493 = add nsw i32 %492, %491
  store i32 %493, i32* %23, align 4
  %494 = load i32, i32* %29, align 4
  %495 = sext i32 %494 to i64
  %496 = inttoptr i64 %495 to i8*
  %497 = load i32, i32* %23, align 4
  %498 = sext i32 %497 to i64
  %499 = inttoptr i64 %498 to i8*
  %500 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37, i64 0, i64 0), i8* %496, i8* %499)
  br label %518

501:                                              ; preds = %406
  %502 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i64 0, i64 0))
  br label %518

503:                                              ; preds = %406
  %504 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0))
  br label %518

505:                                              ; preds = %406
  %506 = load i8*, i8** %32, align 8
  %507 = call i32 @_decode_uleb128(i8** %31, i8* %506)
  store i32 %507, i32* %27, align 4
  %508 = load i32, i32* %27, align 4
  %509 = sext i32 %508 to i64
  %510 = inttoptr i64 %509 to i8*
  %511 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0), i8* %510)
  br label %518

512:                                              ; preds = %406
  %513 = load i8*, i8** %31, align 8
  %514 = getelementptr inbounds i8, i8* %513, i64 -1
  %515 = load i8, i8* %514, align 1
  %516 = sext i8 %515 to i32
  %517 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i64 0, i64 0), i32 %516)
  br label %518

518:                                              ; preds = %512, %505, %503, %501, %486, %465, %463, %456, %449, %442, %428, %413, %411
  br label %578

519:                                              ; preds = %400, %395
  %520 = load i32, i32* %33, align 4
  %521 = load i8*, i8** %31, align 8
  %522 = load i8, i8* %521, align 1
  %523 = sext i8 %522 to i32
  %524 = load i32, i32* %19, align 4
  %525 = sub nsw i32 %523, %524
  %526 = load i32, i32* %18, align 4
  %527 = srem i32 %525, %526
  %528 = add nsw i32 %520, %527
  %529 = load i32, i32* %25, align 4
  %530 = add nsw i32 %529, %528
  store i32 %530, i32* %25, align 4
  %531 = load i8*, i8** %31, align 8
  %532 = load i8, i8* %531, align 1
  %533 = sext i8 %532 to i32
  %534 = load i32, i32* %19, align 4
  %535 = sub nsw i32 %533, %534
  %536 = load i32, i32* %18, align 4
  %537 = sdiv i32 %535, %536
  %538 = load i32, i32* %16, align 4
  %539 = mul nsw i32 %537, %538
  %540 = load i32, i32* %23, align 4
  %541 = add nsw i32 %540, %539
  store i32 %541, i32* %23, align 4
  %542 = load i8*, i8** %31, align 8
  %543 = load i8, i8* %542, align 1
  %544 = sext i8 %543 to i32
  %545 = load i32, i32* %19, align 4
  %546 = sub nsw i32 %544, %545
  %547 = load i8*, i8** %31, align 8
  %548 = load i8, i8* %547, align 1
  %549 = sext i8 %548 to i32
  %550 = load i32, i32* %19, align 4
  %551 = sub nsw i32 %549, %550
  %552 = load i32, i32* %18, align 4
  %553 = sdiv i32 %551, %552
  %554 = load i32, i32* %16, align 4
  %555 = mul nsw i32 %553, %554
  %556 = sext i32 %555 to i64
  %557 = inttoptr i64 %556 to i8*
  %558 = load i32, i32* %23, align 4
  %559 = sext i32 %558 to i64
  %560 = inttoptr i64 %559 to i8*
  %561 = load i32, i32* %33, align 4
  %562 = load i8*, i8** %31, align 8
  %563 = load i8, i8* %562, align 1
  %564 = sext i8 %563 to i32
  %565 = load i32, i32* %19, align 4
  %566 = sub nsw i32 %564, %565
  %567 = load i32, i32* %18, align 4
  %568 = srem i32 %566, %567
  %569 = add nsw i32 %561, %568
  %570 = sext i32 %569 to i64
  %571 = inttoptr i64 %570 to i8*
  %572 = load i32, i32* %25, align 4
  %573 = sext i32 %572 to i64
  %574 = inttoptr i64 %573 to i8*
  %575 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.42, i64 0, i64 0), i32 %546, i8* %557, i8* %560, i8* %571, i8* %574)
  %576 = load i8*, i8** %31, align 8
  %577 = getelementptr inbounds i8, i8* %576, i32 1
  store i8* %577, i8** %31, align 8
  br label %578

578:                                              ; preds = %519, %518
  br label %579

579:                                              ; preds = %578, %394
  br label %331

580:                                              ; preds = %331
  br label %99

581:                                              ; preds = %99
  %582 = load i32, i32* %38, align 4
  %583 = load i32, i32* @DW_DLV_ERROR, align 4
  %584 = icmp eq i32 %582, %583
  br i1 %584, label %585, label %589

585:                                              ; preds = %581
  %586 = load i32, i32* %5, align 4
  %587 = call i32 @dwarf_errmsg(i32 %586)
  %588 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i64 0, i64 0), i32 %587)
  br label %589

589:                                              ; preds = %76, %91, %97, %120, %133, %585, %581
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_13__* @elf_getdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @dwarf_next_cu_header(i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dwarf_siblingof(i32, i32*, i32**, i32*) #1

declare dso_local i32 @dwarf_tag(i32*, i64*, i32*) #1

declare dso_local i32 @dwarf_errmsg(i32) #1

declare dso_local i32 @dwarf_attrval_unsigned(i32*, i32, i32*, i32*) #1

declare dso_local i32 @dwarf_get_address_size(i32, i64*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @_decode_uleb128(i8**, i8*) #1

declare dso_local i64 @_decode_sleb128(i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
