; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_in_iclass.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_in_iclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iclass = type { i8*, i32, i64, i8*, i32, i64*, i64*, i32 }
%struct.ia64_opcode = type { i8*, i64*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"Format\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"most recent format '%s'\0Aappears more restrictive than '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Field\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"overlapping field %s->%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mov\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"hint\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"(sf)==\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c".s\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"(lftype)\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"fault\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"(ctype)\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"or.andcm\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"and.orcm\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"orcm\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"or orcm\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"andcm\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"and andcm\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"unc\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"Field(ctype)==\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"dep\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"I13\00", align 1
@IA64_OPND_IMM8 = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [4 x i8] c"chk\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"M21\00", align 1
@IA64_OPND_F2 = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [7 x i8] c"lfetch\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"M14 M15\00", align 1
@IA64_OPND_R2 = common dso_local global i64 0, align 8
@IA64_OPND_IMM9b = common dso_local global i64 0, align 8
@.str.30 = private unnamed_addr constant [8 x i8] c"br.call\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"B5\00", align 1
@IA64_OPND_B2 = common dso_local global i64 0, align 8
@.str.32 = private unnamed_addr constant [3 x i8] c"B3\00", align 1
@IA64_OPND_TGT25c = common dso_local global i64 0, align 8
@.str.33 = private unnamed_addr constant [4 x i8] c"brp\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"B7\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"invala\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"M5\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"M10\00", align 1
@IA64_OPCODE_POSTINC = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [3 x i8] c"ld\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"M2 M3\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"M12\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"M7 M8\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"brl\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"brl.\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"brl.cond\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"br\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"br.\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"br.cond\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"B4\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"B1\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"probe\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"M40\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"fmerge\00", align 1
@IA64_OPND_F1 = common dso_local global i64 0, align 8
@IA64_OPND_F3 = common dso_local global i64 0, align 8
@.str.54 = private unnamed_addr constant [5 x i8] c"adds\00", align 1
@IA64_OPND_R1 = common dso_local global i64 0, align 8
@IA64_OPND_R3 = common dso_local global i64 0, align 8
@IA64_OPND_IMM14 = common dso_local global i64 0, align 8
@.str.55 = private unnamed_addr constant [5 x i8] c"addl\00", align 1
@IA64_OPND_IMM22 = common dso_local global i64 0, align 8
@.str.56 = private unnamed_addr constant [5 x i8] c"mov_\00", align 1
@ics = common dso_local global %struct.iclass** null, align 8
@debug = common dso_local global i32 0, align 4
@.str.57 = private unnamed_addr constant [16 x i8] c"%s is in IC %s\0A\00", align 1
@.str.58 = private unnamed_addr constant [42 x i8] c"overwriting note %d with note %d (IC:%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ia64_opcode*, %struct.iclass*, i8*, i8*, i32*)* @in_iclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_iclass(%struct.ia64_opcode* %0, %struct.iclass* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ia64_opcode*, align 8
  %8 = alloca %struct.iclass*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.ia64_opcode* %0, %struct.ia64_opcode** %7, align 8
  store %struct.iclass* %1, %struct.iclass** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.iclass*, %struct.iclass** %8, align 8
  %20 = getelementptr inbounds %struct.iclass, %struct.iclass* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %78

23:                                               ; preds = %5
  %24 = load %struct.iclass*, %struct.iclass** %8, align 8
  %25 = getelementptr inbounds %struct.iclass, %struct.iclass* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @CONST_STRNEQ(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %23
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = load %struct.iclass*, %struct.iclass** %8, align 8
  %34 = getelementptr inbounds %struct.iclass, %struct.iclass* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.iclass*, %struct.iclass** %8, align 8
  %43 = getelementptr inbounds %struct.iclass, %struct.iclass* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 (i32, ...) @warn(i32 %41, i8* %44, i8* %45)
  %47 = load %struct.iclass*, %struct.iclass** %8, align 8
  %48 = getelementptr inbounds %struct.iclass, %struct.iclass* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %9, align 8
  br label %50

50:                                               ; preds = %40, %32
  br label %55

51:                                               ; preds = %29
  %52 = load %struct.iclass*, %struct.iclass** %8, align 8
  %53 = getelementptr inbounds %struct.iclass, %struct.iclass* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %9, align 8
  br label %55

55:                                               ; preds = %51, %50
  br label %77

56:                                               ; preds = %23
  %57 = load %struct.iclass*, %struct.iclass** %8, align 8
  %58 = getelementptr inbounds %struct.iclass, %struct.iclass* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @CONST_STRNEQ(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = load i8*, i8** %10, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %67 = load %struct.iclass*, %struct.iclass** %8, align 8
  %68 = getelementptr inbounds %struct.iclass, %struct.iclass* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 (i32, ...) @warn(i32 %66, i8* %69, i8* %70)
  br label %72

72:                                               ; preds = %65, %62
  %73 = load %struct.iclass*, %struct.iclass** %8, align 8
  %74 = getelementptr inbounds %struct.iclass, %struct.iclass* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %10, align 8
  br label %76

76:                                               ; preds = %72, %56
  br label %77

77:                                               ; preds = %76, %55
  br label %78

78:                                               ; preds = %77, %5
  %79 = load %struct.iclass*, %struct.iclass** %8, align 8
  %80 = getelementptr inbounds %struct.iclass, %struct.iclass* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %746

83:                                               ; preds = %78
  %84 = load %struct.iclass*, %struct.iclass** %8, align 8
  %85 = getelementptr inbounds %struct.iclass, %struct.iclass* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %746

88:                                               ; preds = %83
  %89 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %90 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @CONST_STRNEQ(i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 %92, i32* %14, align 4
  %93 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %94 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @strcmp(i8* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %15, align 4
  %99 = load %struct.iclass*, %struct.iclass** %8, align 8
  %100 = getelementptr inbounds %struct.iclass, %struct.iclass* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strlen(i8* %101)
  store i32 %102, i32* %16, align 4
  %103 = load %struct.iclass*, %struct.iclass** %8, align 8
  %104 = getelementptr inbounds %struct.iclass, %struct.iclass* %103, i32 0, i32 3
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %107 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %16, align 4
  %110 = call i64 @strncmp(i8* %105, i8* %108, i32 %109)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %134

112:                                              ; preds = %88
  %113 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %114 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* %16, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %132, label %122

122:                                              ; preds = %112
  %123 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %124 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 46
  br label %132

132:                                              ; preds = %122, %112
  %133 = phi i1 [ true, %112 ], [ %131, %122 ]
  br label %134

134:                                              ; preds = %132, %88
  %135 = phi i1 [ false, %88 ], [ %133, %132 ]
  %136 = zext i1 %135 to i32
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %167

139:                                              ; preds = %134
  %140 = load %struct.iclass*, %struct.iclass** %8, align 8
  %141 = getelementptr inbounds %struct.iclass, %struct.iclass* %140, i32 0, i32 3
  %142 = load i8*, i8** %141, align 8
  %143 = call i64 @strcmp(i8* %142, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %157, label %145

145:                                              ; preds = %139
  %146 = load %struct.iclass*, %struct.iclass** %8, align 8
  %147 = getelementptr inbounds %struct.iclass, %struct.iclass* %146, i32 0, i32 3
  %148 = load i8*, i8** %147, align 8
  %149 = call i64 @strcmp(i8* %148, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %145
  %152 = load %struct.iclass*, %struct.iclass** %8, align 8
  %153 = getelementptr inbounds %struct.iclass, %struct.iclass* %152, i32 0, i32 3
  %154 = load i8*, i8** %153, align 8
  %155 = call i64 @strcmp(i8* %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %151, %145, %139
  %158 = load %struct.iclass*, %struct.iclass** %8, align 8
  %159 = getelementptr inbounds %struct.iclass, %struct.iclass* %158, i32 0, i32 3
  %160 = load i8*, i8** %159, align 8
  %161 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %162 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = call i64 @strcmp(i8* %160, i8* %163)
  %165 = icmp eq i64 %164, 0
  %166 = zext i1 %165 to i32
  store i32 %166, i32* %13, align 4
  br label %167

167:                                              ; preds = %157, %151, %134
  %168 = load i32, i32* %13, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %310

170:                                              ; preds = %167
  %171 = load i8*, i8** %10, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %310

173:                                              ; preds = %170
  %174 = load i8*, i8** %10, align 8
  %175 = call i8* @strstr(i8* %174, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %193

177:                                              ; preds = %173
  %178 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %179 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i8* @strstr(i8* %180, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i8* %181, i8** %17, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %192

183:                                              ; preds = %177
  %184 = load i8*, i8** %17, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 1
  %186 = load i8*, i8** %10, align 8
  %187 = call i8* @strstr(i8* %186, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %188 = getelementptr inbounds i8, i8* %187, i64 2
  %189 = call i64 @strcmp(i8* %185, i8* %188)
  %190 = icmp eq i64 %189, 0
  %191 = zext i1 %190 to i32
  store i32 %191, i32* %13, align 4
  br label %192

192:                                              ; preds = %183, %177
  br label %309

193:                                              ; preds = %173
  %194 = load i8*, i8** %10, align 8
  %195 = call i8* @strstr(i8* %194, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %214

197:                                              ; preds = %193
  %198 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %199 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = call i8* @strstr(i8* %200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %208

203:                                              ; preds = %197
  %204 = load i8*, i8** %10, align 8
  %205 = call i8* @strstr(i8* %204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %206 = icmp ne i8* %205, null
  %207 = zext i1 %206 to i32
  store i32 %207, i32* %13, align 4
  br label %213

208:                                              ; preds = %197
  %209 = load i8*, i8** %10, align 8
  %210 = call i8* @strstr(i8* %209, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %211 = icmp eq i8* %210, null
  %212 = zext i1 %211 to i32
  store i32 %212, i32* %13, align 4
  br label %213

213:                                              ; preds = %208, %203
  br label %308

214:                                              ; preds = %193
  %215 = load i8*, i8** %10, align 8
  %216 = call i8* @strstr(i8* %215, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %307

218:                                              ; preds = %214
  %219 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %220 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = call i8* @strstr(i8* %221, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %223 = icmp ne i8* %222, null
  br i1 %223, label %224, label %229

224:                                              ; preds = %218
  %225 = load i8*, i8** %10, align 8
  %226 = call i8* @strstr(i8* %225, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %227 = icmp ne i8* %226, null
  %228 = zext i1 %227 to i32
  store i32 %228, i32* %13, align 4
  br label %306

229:                                              ; preds = %218
  %230 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %231 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = call i8* @strstr(i8* %232, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %240

235:                                              ; preds = %229
  %236 = load i8*, i8** %10, align 8
  %237 = call i8* @strstr(i8* %236, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %238 = icmp ne i8* %237, null
  %239 = zext i1 %238 to i32
  store i32 %239, i32* %13, align 4
  br label %305

240:                                              ; preds = %229
  %241 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %242 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %241, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = call i8* @strstr(i8* %243, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %245 = icmp ne i8* %244, null
  br i1 %245, label %246, label %251

246:                                              ; preds = %240
  %247 = load i8*, i8** %10, align 8
  %248 = call i8* @strstr(i8* %247, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %249 = icmp ne i8* %248, null
  %250 = zext i1 %249 to i32
  store i32 %250, i32* %13, align 4
  br label %304

251:                                              ; preds = %240
  %252 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %253 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %252, i32 0, i32 0
  %254 = load i8*, i8** %253, align 8
  %255 = call i8* @strstr(i8* %254, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %262

257:                                              ; preds = %251
  %258 = load i8*, i8** %10, align 8
  %259 = call i8* @strstr(i8* %258, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %260 = icmp ne i8* %259, null
  %261 = zext i1 %260 to i32
  store i32 %261, i32* %13, align 4
  br label %303

262:                                              ; preds = %251
  %263 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %264 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = call i8* @strstr(i8* %265, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %267 = icmp ne i8* %266, null
  br i1 %267, label %268, label %273

268:                                              ; preds = %262
  %269 = load i8*, i8** %10, align 8
  %270 = call i8* @strstr(i8* %269, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  %271 = icmp ne i8* %270, null
  %272 = zext i1 %271 to i32
  store i32 %272, i32* %13, align 4
  br label %302

273:                                              ; preds = %262
  %274 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %275 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %274, i32 0, i32 0
  %276 = load i8*, i8** %275, align 8
  %277 = call i8* @strstr(i8* %276, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %278 = icmp ne i8* %277, null
  br i1 %278, label %279, label %284

279:                                              ; preds = %273
  %280 = load i8*, i8** %10, align 8
  %281 = call i8* @strstr(i8* %280, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  %282 = icmp ne i8* %281, null
  %283 = zext i1 %282 to i32
  store i32 %283, i32* %13, align 4
  br label %301

284:                                              ; preds = %273
  %285 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %286 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %285, i32 0, i32 0
  %287 = load i8*, i8** %286, align 8
  %288 = call i8* @strstr(i8* %287, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  %289 = icmp ne i8* %288, null
  br i1 %289, label %290, label %295

290:                                              ; preds = %284
  %291 = load i8*, i8** %10, align 8
  %292 = call i8* @strstr(i8* %291, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  %293 = icmp ne i8* %292, null
  %294 = zext i1 %293 to i32
  store i32 %294, i32* %13, align 4
  br label %300

295:                                              ; preds = %284
  %296 = load i8*, i8** %10, align 8
  %297 = call i64 @strcmp(i8* %296, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  %298 = icmp eq i64 %297, 0
  %299 = zext i1 %298 to i32
  store i32 %299, i32* %13, align 4
  br label %300

300:                                              ; preds = %295, %290
  br label %301

301:                                              ; preds = %300, %279
  br label %302

302:                                              ; preds = %301, %268
  br label %303

303:                                              ; preds = %302, %257
  br label %304

304:                                              ; preds = %303, %246
  br label %305

305:                                              ; preds = %304, %235
  br label %306

306:                                              ; preds = %305, %224
  br label %307

307:                                              ; preds = %306, %214
  br label %308

308:                                              ; preds = %307, %213
  br label %309

309:                                              ; preds = %308, %192
  br label %310

310:                                              ; preds = %309, %170, %167
  %311 = load i32, i32* %13, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %512

313:                                              ; preds = %310
  %314 = load i8*, i8** %9, align 8
  %315 = icmp ne i8* %314, null
  br i1 %315, label %316, label %512

316:                                              ; preds = %313
  %317 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %318 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %317, i32 0, i32 0
  %319 = load i8*, i8** %318, align 8
  %320 = call i32 @CONST_STRNEQ(i8* %319, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0))
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %335

322:                                              ; preds = %316
  %323 = load i8*, i8** %9, align 8
  %324 = call i8* @strstr(i8* %323, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  %325 = icmp ne i8* %324, null
  br i1 %325, label %326, label %335

326:                                              ; preds = %322
  %327 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %328 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %327, i32 0, i32 1
  %329 = load i64*, i64** %328, align 8
  %330 = getelementptr inbounds i64, i64* %329, i64 1
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @IA64_OPND_IMM8, align 8
  %333 = icmp eq i64 %331, %332
  %334 = zext i1 %333 to i32
  store i32 %334, i32* %13, align 4
  br label %511

335:                                              ; preds = %322, %316
  %336 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %337 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %336, i32 0, i32 0
  %338 = load i8*, i8** %337, align 8
  %339 = call i32 @CONST_STRNEQ(i8* %338, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %354

341:                                              ; preds = %335
  %342 = load i8*, i8** %9, align 8
  %343 = call i8* @strstr(i8* %342, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0))
  %344 = icmp ne i8* %343, null
  br i1 %344, label %345, label %354

345:                                              ; preds = %341
  %346 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %347 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %346, i32 0, i32 1
  %348 = load i64*, i64** %347, align 8
  %349 = getelementptr inbounds i64, i64* %348, i64 0
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* @IA64_OPND_F2, align 8
  %352 = icmp eq i64 %350, %351
  %353 = zext i1 %352 to i32
  store i32 %353, i32* %13, align 4
  br label %510

354:                                              ; preds = %341, %335
  %355 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %356 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %355, i32 0, i32 0
  %357 = load i8*, i8** %356, align 8
  %358 = call i32 @CONST_STRNEQ(i8* %357, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0))
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %385

360:                                              ; preds = %354
  %361 = load i8*, i8** %9, align 8
  %362 = call i8* @strstr(i8* %361, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0))
  %363 = icmp ne i8* %362, null
  br i1 %363, label %364, label %382

364:                                              ; preds = %360
  %365 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %366 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %365, i32 0, i32 1
  %367 = load i64*, i64** %366, align 8
  %368 = getelementptr inbounds i64, i64* %367, i64 1
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* @IA64_OPND_R2, align 8
  %371 = icmp eq i64 %369, %370
  br i1 %371, label %380, label %372

372:                                              ; preds = %364
  %373 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %374 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %373, i32 0, i32 1
  %375 = load i64*, i64** %374, align 8
  %376 = getelementptr inbounds i64, i64* %375, i64 1
  %377 = load i64, i64* %376, align 8
  %378 = load i64, i64* @IA64_OPND_IMM9b, align 8
  %379 = icmp eq i64 %377, %378
  br label %380

380:                                              ; preds = %372, %364
  %381 = phi i1 [ true, %364 ], [ %379, %372 ]
  br label %382

382:                                              ; preds = %380, %360
  %383 = phi i1 [ false, %360 ], [ %381, %380 ]
  %384 = zext i1 %383 to i32
  store i32 %384, i32* %13, align 4
  br label %509

385:                                              ; preds = %354
  %386 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %387 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %386, i32 0, i32 0
  %388 = load i8*, i8** %387, align 8
  %389 = call i32 @CONST_STRNEQ(i8* %388, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0))
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %404

391:                                              ; preds = %385
  %392 = load i8*, i8** %9, align 8
  %393 = call i8* @strstr(i8* %392, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  %394 = icmp ne i8* %393, null
  br i1 %394, label %395, label %404

395:                                              ; preds = %391
  %396 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %397 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %396, i32 0, i32 1
  %398 = load i64*, i64** %397, align 8
  %399 = getelementptr inbounds i64, i64* %398, i64 1
  %400 = load i64, i64* %399, align 8
  %401 = load i64, i64* @IA64_OPND_B2, align 8
  %402 = icmp eq i64 %400, %401
  %403 = zext i1 %402 to i32
  store i32 %403, i32* %13, align 4
  br label %508

404:                                              ; preds = %391, %385
  %405 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %406 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %405, i32 0, i32 0
  %407 = load i8*, i8** %406, align 8
  %408 = call i32 @CONST_STRNEQ(i8* %407, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0))
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %423

410:                                              ; preds = %404
  %411 = load i8*, i8** %9, align 8
  %412 = call i8* @strstr(i8* %411, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0))
  %413 = icmp ne i8* %412, null
  br i1 %413, label %414, label %423

414:                                              ; preds = %410
  %415 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %416 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %415, i32 0, i32 1
  %417 = load i64*, i64** %416, align 8
  %418 = getelementptr inbounds i64, i64* %417, i64 1
  %419 = load i64, i64* %418, align 8
  %420 = load i64, i64* @IA64_OPND_TGT25c, align 8
  %421 = icmp eq i64 %419, %420
  %422 = zext i1 %421 to i32
  store i32 %422, i32* %13, align 4
  br label %507

423:                                              ; preds = %410, %404
  %424 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %425 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %424, i32 0, i32 0
  %426 = load i8*, i8** %425, align 8
  %427 = call i32 @CONST_STRNEQ(i8* %426, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0))
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %442

429:                                              ; preds = %423
  %430 = load i8*, i8** %9, align 8
  %431 = call i8* @strstr(i8* %430, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0))
  %432 = icmp ne i8* %431, null
  br i1 %432, label %433, label %442

433:                                              ; preds = %429
  %434 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %435 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %434, i32 0, i32 1
  %436 = load i64*, i64** %435, align 8
  %437 = getelementptr inbounds i64, i64* %436, i64 0
  %438 = load i64, i64* %437, align 8
  %439 = load i64, i64* @IA64_OPND_B2, align 8
  %440 = icmp eq i64 %438, %439
  %441 = zext i1 %440 to i32
  store i32 %441, i32* %13, align 4
  br label %506

442:                                              ; preds = %429, %423
  %443 = load %struct.iclass*, %struct.iclass** %8, align 8
  %444 = getelementptr inbounds %struct.iclass, %struct.iclass* %443, i32 0, i32 3
  %445 = load i8*, i8** %444, align 8
  %446 = call i64 @strcmp(i8* %445, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0))
  %447 = icmp eq i64 %446, 0
  br i1 %447, label %448, label %458

448:                                              ; preds = %442
  %449 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %450 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %449, i32 0, i32 0
  %451 = load i8*, i8** %450, align 8
  %452 = load %struct.iclass*, %struct.iclass** %8, align 8
  %453 = getelementptr inbounds %struct.iclass, %struct.iclass* %452, i32 0, i32 3
  %454 = load i8*, i8** %453, align 8
  %455 = call i64 @strcmp(i8* %451, i8* %454)
  %456 = icmp eq i64 %455, 0
  %457 = zext i1 %456 to i32
  store i32 %457, i32* %13, align 4
  br label %505

458:                                              ; preds = %442
  %459 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %460 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %459, i32 0, i32 0
  %461 = load i8*, i8** %460, align 8
  %462 = call i32 @CONST_STRNEQ(i8* %461, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0))
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %478

464:                                              ; preds = %458
  %465 = load i8*, i8** %9, align 8
  %466 = call i8* @strstr(i8* %465, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0))
  %467 = icmp ne i8* %466, null
  br i1 %467, label %472, label %468

468:                                              ; preds = %464
  %469 = load i8*, i8** %9, align 8
  %470 = call i8* @strstr(i8* %469, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0))
  %471 = icmp ne i8* %470, null
  br i1 %471, label %472, label %478

472:                                              ; preds = %468, %464
  %473 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %474 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %473, i32 0, i32 2
  %475 = load i32, i32* %474, align 8
  %476 = load i32, i32* @IA64_OPCODE_POSTINC, align 4
  %477 = and i32 %475, %476
  store i32 %477, i32* %13, align 4
  br label %504

478:                                              ; preds = %468, %458
  %479 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %480 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %479, i32 0, i32 0
  %481 = load i8*, i8** %480, align 8
  %482 = call i32 @CONST_STRNEQ(i8* %481, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0))
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %502

484:                                              ; preds = %478
  %485 = load i8*, i8** %9, align 8
  %486 = call i8* @strstr(i8* %485, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0))
  %487 = icmp ne i8* %486, null
  br i1 %487, label %496, label %488

488:                                              ; preds = %484
  %489 = load i8*, i8** %9, align 8
  %490 = call i8* @strstr(i8* %489, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0))
  %491 = icmp ne i8* %490, null
  br i1 %491, label %496, label %492

492:                                              ; preds = %488
  %493 = load i8*, i8** %9, align 8
  %494 = call i8* @strstr(i8* %493, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0))
  %495 = icmp ne i8* %494, null
  br i1 %495, label %496, label %502

496:                                              ; preds = %492, %488, %484
  %497 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %498 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %497, i32 0, i32 2
  %499 = load i32, i32* %498, align 8
  %500 = load i32, i32* @IA64_OPCODE_POSTINC, align 4
  %501 = and i32 %499, %500
  store i32 %501, i32* %13, align 4
  br label %503

502:                                              ; preds = %492, %478
  store i32 0, i32* %13, align 4
  br label %503

503:                                              ; preds = %502, %496
  br label %504

504:                                              ; preds = %503, %472
  br label %505

505:                                              ; preds = %504, %448
  br label %506

506:                                              ; preds = %505, %433
  br label %507

507:                                              ; preds = %506, %414
  br label %508

508:                                              ; preds = %507, %395
  br label %509

509:                                              ; preds = %508, %382
  br label %510

510:                                              ; preds = %509, %345
  br label %511

511:                                              ; preds = %510, %326
  br label %512

512:                                              ; preds = %511, %313, %310
  %513 = load i32, i32* %13, align 4
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %534, label %515

515:                                              ; preds = %512
  %516 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %517 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %516, i32 0, i32 0
  %518 = load i8*, i8** %517, align 8
  %519 = call i64 @strcmp(i8* %518, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0))
  %520 = icmp eq i64 %519, 0
  br i1 %520, label %527, label %521

521:                                              ; preds = %515
  %522 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %523 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %522, i32 0, i32 0
  %524 = load i8*, i8** %523, align 8
  %525 = call i32 @CONST_STRNEQ(i8* %524, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0))
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %534

527:                                              ; preds = %521, %515
  %528 = load %struct.iclass*, %struct.iclass** %8, align 8
  %529 = getelementptr inbounds %struct.iclass, %struct.iclass* %528, i32 0, i32 3
  %530 = load i8*, i8** %529, align 8
  %531 = call i64 @strcmp(i8* %530, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0))
  %532 = icmp eq i64 %531, 0
  br i1 %532, label %533, label %534

533:                                              ; preds = %527
  store i32 1, i32* %13, align 4
  br label %534

534:                                              ; preds = %533, %527, %521, %512
  %535 = load i32, i32* %13, align 4
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %589, label %537

537:                                              ; preds = %534
  %538 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %539 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %538, i32 0, i32 0
  %540 = load i8*, i8** %539, align 8
  %541 = call i64 @strcmp(i8* %540, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0))
  %542 = icmp eq i64 %541, 0
  br i1 %542, label %549, label %543

543:                                              ; preds = %537
  %544 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %545 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %544, i32 0, i32 0
  %546 = load i8*, i8** %545, align 8
  %547 = call i32 @CONST_STRNEQ(i8* %546, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0))
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %589

549:                                              ; preds = %543, %537
  %550 = load %struct.iclass*, %struct.iclass** %8, align 8
  %551 = getelementptr inbounds %struct.iclass, %struct.iclass* %550, i32 0, i32 3
  %552 = load i8*, i8** %551, align 8
  %553 = call i64 @strcmp(i8* %552, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0))
  %554 = icmp eq i64 %553, 0
  br i1 %554, label %555, label %589

555:                                              ; preds = %549
  %556 = load i8*, i8** %9, align 8
  %557 = icmp ne i8* %556, null
  br i1 %557, label %558, label %587

558:                                              ; preds = %555
  %559 = load i8*, i8** %9, align 8
  %560 = call i8* @strstr(i8* %559, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0))
  %561 = icmp ne i8* %560, null
  br i1 %561, label %562, label %570

562:                                              ; preds = %558
  %563 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %564 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %563, i32 0, i32 1
  %565 = load i64*, i64** %564, align 8
  %566 = getelementptr inbounds i64, i64* %565, i64 0
  %567 = load i64, i64* %566, align 8
  %568 = load i64, i64* @IA64_OPND_B2, align 8
  %569 = icmp eq i64 %567, %568
  br i1 %569, label %584, label %570

570:                                              ; preds = %562, %558
  %571 = load i8*, i8** %9, align 8
  %572 = call i8* @strstr(i8* %571, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0))
  %573 = icmp ne i8* %572, null
  br i1 %573, label %574, label %582

574:                                              ; preds = %570
  %575 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %576 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %575, i32 0, i32 1
  %577 = load i64*, i64** %576, align 8
  %578 = getelementptr inbounds i64, i64* %577, i64 0
  %579 = load i64, i64* %578, align 8
  %580 = load i64, i64* @IA64_OPND_TGT25c, align 8
  %581 = icmp eq i64 %579, %580
  br label %582

582:                                              ; preds = %574, %570
  %583 = phi i1 [ false, %570 ], [ %581, %574 ]
  br label %584

584:                                              ; preds = %582, %562
  %585 = phi i1 [ true, %562 ], [ %583, %582 ]
  %586 = zext i1 %585 to i32
  store i32 %586, i32* %13, align 4
  br label %588

587:                                              ; preds = %555
  store i32 1, i32* %13, align 4
  br label %588

588:                                              ; preds = %587, %584
  br label %589

589:                                              ; preds = %588, %549, %543, %534
  %590 = load i32, i32* %13, align 4
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %626, label %592

592:                                              ; preds = %589
  %593 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %594 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %593, i32 0, i32 0
  %595 = load i8*, i8** %594, align 8
  %596 = call i32 @CONST_STRNEQ(i8* %595, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i64 0, i64 0))
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %598, label %626

598:                                              ; preds = %592
  %599 = load %struct.iclass*, %struct.iclass** %8, align 8
  %600 = getelementptr inbounds %struct.iclass, %struct.iclass* %599, i32 0, i32 3
  %601 = load i8*, i8** %600, align 8
  %602 = call i64 @strcmp(i8* %601, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i64 0, i64 0))
  %603 = icmp eq i64 %602, 0
  br i1 %603, label %604, label %623

604:                                              ; preds = %598
  %605 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %606 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %605, i32 0, i32 0
  %607 = load i8*, i8** %606, align 8
  %608 = call i8* @strstr(i8* %607, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %609 = icmp ne i8* %608, null
  %610 = zext i1 %609 to i32
  %611 = load i8*, i8** %9, align 8
  %612 = icmp ne i8* %611, null
  br i1 %612, label %613, label %617

613:                                              ; preds = %604
  %614 = load i8*, i8** %9, align 8
  %615 = call i8* @strstr(i8* %614, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0))
  %616 = icmp ne i8* %615, null
  br label %617

617:                                              ; preds = %613, %604
  %618 = phi i1 [ false, %604 ], [ %616, %613 ]
  %619 = zext i1 %618 to i32
  %620 = xor i32 %610, %619
  %621 = icmp ne i32 %620, 0
  %622 = xor i1 %621, true
  br label %623

623:                                              ; preds = %617, %598
  %624 = phi i1 [ false, %598 ], [ %622, %617 ]
  %625 = zext i1 %624 to i32
  store i32 %625, i32* %13, align 4
  br label %626

626:                                              ; preds = %623, %592, %589
  %627 = load i32, i32* %13, align 4
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %739, label %629

629:                                              ; preds = %626
  %630 = load i32, i32* %14, align 4
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %632, label %739

632:                                              ; preds = %629
  %633 = load i32, i32* %15, align 4
  %634 = icmp ne i32 %633, 0
  br i1 %634, label %635, label %723

635:                                              ; preds = %632
  %636 = load %struct.iclass*, %struct.iclass** %8, align 8
  %637 = getelementptr inbounds %struct.iclass, %struct.iclass* %636, i32 0, i32 3
  %638 = load i8*, i8** %637, align 8
  %639 = call i64 @strcmp(i8* %638, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0))
  %640 = icmp eq i64 %639, 0
  br i1 %640, label %641, label %660

641:                                              ; preds = %635
  %642 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %643 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %642, i32 0, i32 1
  %644 = load i64*, i64** %643, align 8
  %645 = getelementptr inbounds i64, i64* %644, i64 0
  %646 = load i64, i64* %645, align 8
  %647 = load i64, i64* @IA64_OPND_F1, align 8
  %648 = icmp eq i64 %646, %647
  br i1 %648, label %649, label %657

649:                                              ; preds = %641
  %650 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %651 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %650, i32 0, i32 1
  %652 = load i64*, i64** %651, align 8
  %653 = getelementptr inbounds i64, i64* %652, i64 1
  %654 = load i64, i64* %653, align 8
  %655 = load i64, i64* @IA64_OPND_F3, align 8
  %656 = icmp eq i64 %654, %655
  br label %657

657:                                              ; preds = %649, %641
  %658 = phi i1 [ false, %641 ], [ %656, %649 ]
  %659 = zext i1 %658 to i32
  store i32 %659, i32* %13, align 4
  br label %722

660:                                              ; preds = %635
  %661 = load %struct.iclass*, %struct.iclass** %8, align 8
  %662 = getelementptr inbounds %struct.iclass, %struct.iclass* %661, i32 0, i32 3
  %663 = load i8*, i8** %662, align 8
  %664 = call i64 @strcmp(i8* %663, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0))
  %665 = icmp eq i64 %664, 0
  br i1 %665, label %666, label %695

666:                                              ; preds = %660
  %667 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %668 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %667, i32 0, i32 1
  %669 = load i64*, i64** %668, align 8
  %670 = getelementptr inbounds i64, i64* %669, i64 0
  %671 = load i64, i64* %670, align 8
  %672 = load i64, i64* @IA64_OPND_R1, align 8
  %673 = icmp eq i64 %671, %672
  br i1 %673, label %674, label %692

674:                                              ; preds = %666
  %675 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %676 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %675, i32 0, i32 1
  %677 = load i64*, i64** %676, align 8
  %678 = getelementptr inbounds i64, i64* %677, i64 1
  %679 = load i64, i64* %678, align 8
  %680 = load i64, i64* @IA64_OPND_R3, align 8
  %681 = icmp eq i64 %679, %680
  br i1 %681, label %690, label %682

682:                                              ; preds = %674
  %683 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %684 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %683, i32 0, i32 1
  %685 = load i64*, i64** %684, align 8
  %686 = getelementptr inbounds i64, i64* %685, i64 1
  %687 = load i64, i64* %686, align 8
  %688 = load i64, i64* @IA64_OPND_IMM14, align 8
  %689 = icmp eq i64 %687, %688
  br label %690

690:                                              ; preds = %682, %674
  %691 = phi i1 [ true, %674 ], [ %689, %682 ]
  br label %692

692:                                              ; preds = %690, %666
  %693 = phi i1 [ false, %666 ], [ %691, %690 ]
  %694 = zext i1 %693 to i32
  store i32 %694, i32* %13, align 4
  br label %721

695:                                              ; preds = %660
  %696 = load %struct.iclass*, %struct.iclass** %8, align 8
  %697 = getelementptr inbounds %struct.iclass, %struct.iclass* %696, i32 0, i32 3
  %698 = load i8*, i8** %697, align 8
  %699 = call i64 @strcmp(i8* %698, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0))
  %700 = icmp eq i64 %699, 0
  br i1 %700, label %701, label %720

701:                                              ; preds = %695
  %702 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %703 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %702, i32 0, i32 1
  %704 = load i64*, i64** %703, align 8
  %705 = getelementptr inbounds i64, i64* %704, i64 0
  %706 = load i64, i64* %705, align 8
  %707 = load i64, i64* @IA64_OPND_R1, align 8
  %708 = icmp eq i64 %706, %707
  br i1 %708, label %709, label %717

709:                                              ; preds = %701
  %710 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %711 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %710, i32 0, i32 1
  %712 = load i64*, i64** %711, align 8
  %713 = getelementptr inbounds i64, i64* %712, i64 1
  %714 = load i64, i64* %713, align 8
  %715 = load i64, i64* @IA64_OPND_IMM22, align 8
  %716 = icmp eq i64 %714, %715
  br label %717

717:                                              ; preds = %709, %701
  %718 = phi i1 [ false, %701 ], [ %716, %709 ]
  %719 = zext i1 %718 to i32
  store i32 %719, i32* %13, align 4
  br label %720

720:                                              ; preds = %717, %695
  br label %721

721:                                              ; preds = %720, %692
  br label %722

722:                                              ; preds = %721, %657
  br label %723

723:                                              ; preds = %722, %632
  %724 = load i32, i32* %13, align 4
  %725 = icmp ne i32 %724, 0
  br i1 %725, label %738, label %726

726:                                              ; preds = %723
  %727 = load %struct.iclass*, %struct.iclass** %8, align 8
  %728 = getelementptr inbounds %struct.iclass, %struct.iclass* %727, i32 0, i32 3
  %729 = load i8*, i8** %728, align 8
  %730 = call i32 @CONST_STRNEQ(i8* %729, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0))
  %731 = icmp ne i32 %730, 0
  br i1 %731, label %732, label %738

732:                                              ; preds = %726
  %733 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %734 = load %struct.iclass*, %struct.iclass** %8, align 8
  %735 = load i8*, i8** %9, align 8
  %736 = load i8*, i8** %10, align 8
  %737 = call i32 @in_iclass_mov_x(%struct.ia64_opcode* %733, %struct.iclass* %734, i8* %735, i8* %736)
  store i32 %737, i32* %13, align 4
  br label %738

738:                                              ; preds = %732, %726, %723
  br label %739

739:                                              ; preds = %738, %629, %626
  %740 = load i32, i32* %13, align 4
  %741 = icmp ne i32 %740, 0
  br i1 %741, label %742, label %745

742:                                              ; preds = %739
  %743 = load %struct.iclass*, %struct.iclass** %8, align 8
  %744 = getelementptr inbounds %struct.iclass, %struct.iclass* %743, i32 0, i32 4
  store i32 1, i32* %744, align 8
  br label %745

745:                                              ; preds = %742, %739
  br label %814

746:                                              ; preds = %83, %78
  store i32 0, i32* %12, align 4
  br label %747

747:                                              ; preds = %810, %746
  %748 = load i32, i32* %12, align 4
  %749 = load %struct.iclass*, %struct.iclass** %8, align 8
  %750 = getelementptr inbounds %struct.iclass, %struct.iclass* %749, i32 0, i32 1
  %751 = load i32, i32* %750, align 8
  %752 = icmp slt i32 %748, %751
  br i1 %752, label %753, label %813

753:                                              ; preds = %747
  %754 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %755 = load %struct.iclass**, %struct.iclass*** @ics, align 8
  %756 = load %struct.iclass*, %struct.iclass** %8, align 8
  %757 = getelementptr inbounds %struct.iclass, %struct.iclass* %756, i32 0, i32 5
  %758 = load i64*, i64** %757, align 8
  %759 = load i32, i32* %12, align 4
  %760 = sext i32 %759 to i64
  %761 = getelementptr inbounds i64, i64* %758, i64 %760
  %762 = load i64, i64* %761, align 8
  %763 = getelementptr inbounds %struct.iclass*, %struct.iclass** %755, i64 %762
  %764 = load %struct.iclass*, %struct.iclass** %763, align 8
  %765 = load i8*, i8** %9, align 8
  %766 = load i8*, i8** %10, align 8
  %767 = load i32*, i32** %11, align 8
  %768 = call i32 @in_iclass(%struct.ia64_opcode* %754, %struct.iclass* %764, i8* %765, i8* %766, i32* %767)
  %769 = icmp ne i32 %768, 0
  br i1 %769, label %770, label %809

770:                                              ; preds = %753
  store i32 0, i32* %18, align 4
  br label %771

771:                                              ; preds = %794, %770
  %772 = load i32, i32* %18, align 4
  %773 = sext i32 %772 to i64
  %774 = load %struct.iclass*, %struct.iclass** %8, align 8
  %775 = getelementptr inbounds %struct.iclass, %struct.iclass* %774, i32 0, i32 2
  %776 = load i64, i64* %775, align 8
  %777 = icmp slt i64 %773, %776
  br i1 %777, label %778, label %797

778:                                              ; preds = %771
  %779 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %780 = load %struct.iclass**, %struct.iclass*** @ics, align 8
  %781 = load %struct.iclass*, %struct.iclass** %8, align 8
  %782 = getelementptr inbounds %struct.iclass, %struct.iclass* %781, i32 0, i32 6
  %783 = load i64*, i64** %782, align 8
  %784 = load i32, i32* %18, align 4
  %785 = sext i32 %784 to i64
  %786 = getelementptr inbounds i64, i64* %783, i64 %785
  %787 = load i64, i64* %786, align 8
  %788 = getelementptr inbounds %struct.iclass*, %struct.iclass** %780, i64 %787
  %789 = load %struct.iclass*, %struct.iclass** %788, align 8
  %790 = call i32 @in_iclass(%struct.ia64_opcode* %779, %struct.iclass* %789, i8* null, i8* null, i32* null)
  %791 = icmp ne i32 %790, 0
  br i1 %791, label %792, label %793

792:                                              ; preds = %778
  store i32 0, i32* %6, align 4
  br label %855

793:                                              ; preds = %778
  br label %794

794:                                              ; preds = %793
  %795 = load i32, i32* %18, align 4
  %796 = add nsw i32 %795, 1
  store i32 %796, i32* %18, align 4
  br label %771

797:                                              ; preds = %771
  %798 = load i32, i32* @debug, align 4
  %799 = icmp sgt i32 %798, 1
  br i1 %799, label %800, label %808

800:                                              ; preds = %797
  %801 = load %struct.ia64_opcode*, %struct.ia64_opcode** %7, align 8
  %802 = getelementptr inbounds %struct.ia64_opcode, %struct.ia64_opcode* %801, i32 0, i32 0
  %803 = load i8*, i8** %802, align 8
  %804 = load %struct.iclass*, %struct.iclass** %8, align 8
  %805 = getelementptr inbounds %struct.iclass, %struct.iclass* %804, i32 0, i32 3
  %806 = load i8*, i8** %805, align 8
  %807 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i64 0, i64 0), i8* %803, i8* %806)
  br label %808

808:                                              ; preds = %800, %797
  store i32 1, i32* %13, align 4
  br label %813

809:                                              ; preds = %753
  br label %810

810:                                              ; preds = %809
  %811 = load i32, i32* %12, align 4
  %812 = add nsw i32 %811, 1
  store i32 %812, i32* %12, align 4
  br label %747

813:                                              ; preds = %808, %747
  br label %814

814:                                              ; preds = %813, %745
  %815 = load i32, i32* %13, align 4
  %816 = icmp ne i32 %815, 0
  br i1 %816, label %817, label %853

817:                                              ; preds = %814
  %818 = load %struct.iclass*, %struct.iclass** %8, align 8
  %819 = getelementptr inbounds %struct.iclass, %struct.iclass* %818, i32 0, i32 7
  %820 = load i32, i32* %819, align 8
  %821 = icmp ne i32 %820, 0
  br i1 %821, label %822, label %852

822:                                              ; preds = %817
  %823 = load i32*, i32** %11, align 8
  %824 = icmp ne i32* %823, null
  br i1 %824, label %825, label %852

825:                                              ; preds = %822
  %826 = load i32*, i32** %11, align 8
  %827 = load i32, i32* %826, align 4
  %828 = icmp ne i32 %827, 0
  br i1 %828, label %829, label %847

829:                                              ; preds = %825
  %830 = load i32*, i32** %11, align 8
  %831 = load i32, i32* %830, align 4
  %832 = load %struct.iclass*, %struct.iclass** %8, align 8
  %833 = getelementptr inbounds %struct.iclass, %struct.iclass* %832, i32 0, i32 7
  %834 = load i32, i32* %833, align 8
  %835 = icmp ne i32 %831, %834
  br i1 %835, label %836, label %847

836:                                              ; preds = %829
  %837 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.58, i64 0, i64 0))
  %838 = load i32*, i32** %11, align 8
  %839 = load i32, i32* %838, align 4
  %840 = load %struct.iclass*, %struct.iclass** %8, align 8
  %841 = getelementptr inbounds %struct.iclass, %struct.iclass* %840, i32 0, i32 7
  %842 = load i32, i32* %841, align 8
  %843 = load %struct.iclass*, %struct.iclass** %8, align 8
  %844 = getelementptr inbounds %struct.iclass, %struct.iclass* %843, i32 0, i32 3
  %845 = load i8*, i8** %844, align 8
  %846 = call i32 (i32, ...) @warn(i32 %837, i32 %839, i32 %842, i8* %845)
  br label %847

847:                                              ; preds = %836, %829, %825
  %848 = load %struct.iclass*, %struct.iclass** %8, align 8
  %849 = getelementptr inbounds %struct.iclass, %struct.iclass* %848, i32 0, i32 7
  %850 = load i32, i32* %849, align 8
  %851 = load i32*, i32** %11, align 8
  store i32 %850, i32* %851, align 4
  br label %852

852:                                              ; preds = %847, %822, %817
  br label %853

853:                                              ; preds = %852, %814
  %854 = load i32, i32* %13, align 4
  store i32 %854, i32* %6, align 4
  br label %855

855:                                              ; preds = %853, %792
  %856 = load i32, i32* %6, align 4
  ret i32 %856
}

declare dso_local i32 @CONST_STRNEQ(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @warn(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @in_iclass_mov_x(%struct.ia64_opcode*, %struct.iclass*, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
