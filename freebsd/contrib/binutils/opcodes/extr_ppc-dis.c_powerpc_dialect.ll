; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ppc-dis.c_powerpc_dialect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ppc-dis.c_powerpc_dialect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disassemble_info = type { i64, i8*, i64 }

@PPC_OPCODE_PPC = common dso_local global i32 0, align 4
@BFD_DEFAULT_TARGET_SIZE = common dso_local global i32 0, align 4
@PPC_OPCODE_64 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"booke\00", align 1
@PPC_OPCODE_BOOKE = common dso_local global i32 0, align 4
@PPC_OPCODE_BOOKE64 = common dso_local global i32 0, align 4
@bfd_mach_ppc_e500 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"e500\00", align 1
@PPC_OPCODE_SPE = common dso_local global i32 0, align 4
@PPC_OPCODE_ISEL = common dso_local global i32 0, align 4
@PPC_OPCODE_EFS = common dso_local global i32 0, align 4
@PPC_OPCODE_BRLOCK = common dso_local global i32 0, align 4
@PPC_OPCODE_PMR = common dso_local global i32 0, align 4
@PPC_OPCODE_CACHELCK = common dso_local global i32 0, align 4
@PPC_OPCODE_RFMCI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"efs\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"e300\00", align 1
@PPC_OPCODE_E300 = common dso_local global i32 0, align 4
@PPC_OPCODE_CLASSIC = common dso_local global i32 0, align 4
@PPC_OPCODE_COMMON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"440\00", align 1
@PPC_OPCODE_32 = common dso_local global i32 0, align 4
@PPC_OPCODE_440 = common dso_local global i32 0, align 4
@PPC_OPCODE_403 = common dso_local global i32 0, align 4
@PPC_OPCODE_601 = common dso_local global i32 0, align 4
@PPC_OPCODE_ALTIVEC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"power4\00", align 1
@PPC_OPCODE_POWER4 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"power5\00", align 1
@PPC_OPCODE_POWER5 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"cell\00", align 1
@PPC_OPCODE_CELL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"power6\00", align 1
@PPC_OPCODE_POWER6 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@PPC_OPCODE_ANY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"64\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disassemble_info*)* @powerpc_dialect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powerpc_dialect(%struct.disassemble_info* %0) #0 {
  %2 = alloca %struct.disassemble_info*, align 8
  %3 = alloca i32, align 4
  store %struct.disassemble_info* %0, %struct.disassemble_info** %2, align 8
  %4 = load i32, i32* @PPC_OPCODE_PPC, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @BFD_DEFAULT_TARGET_SIZE, align 4
  %6 = icmp eq i32 %5, 64
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @PPC_OPCODE_64, align 4
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %13 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %18 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i32* @strstr(i64 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i32, i32* @PPC_OPCODE_BOOKE, align 4
  %24 = load i32, i32* @PPC_OPCODE_BOOKE64, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %136

28:                                               ; preds = %16, %11
  %29 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %30 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @bfd_mach_ppc_e500, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %45, label %34

34:                                               ; preds = %28
  %35 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %36 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %34
  %40 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %41 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32* @strstr(i64 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %63

45:                                               ; preds = %39, %28
  %46 = load i32, i32* @PPC_OPCODE_BOOKE, align 4
  %47 = load i32, i32* @PPC_OPCODE_SPE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @PPC_OPCODE_ISEL, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @PPC_OPCODE_EFS, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @PPC_OPCODE_BRLOCK, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @PPC_OPCODE_PMR, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @PPC_OPCODE_CACHELCK, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @PPC_OPCODE_RFMCI, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  br label %135

63:                                               ; preds = %39, %34
  %64 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %65 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %70 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i32* @strstr(i64 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* @PPC_OPCODE_EFS, align 4
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %3, align 4
  br label %134

78:                                               ; preds = %68, %63
  %79 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %80 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %78
  %84 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %85 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i32* @strstr(i64 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load i32, i32* @PPC_OPCODE_E300, align 4
  %91 = load i32, i32* @PPC_OPCODE_CLASSIC, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @PPC_OPCODE_COMMON, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %3, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %3, align 4
  br label %133

97:                                               ; preds = %83, %78
  %98 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %99 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %97
  %103 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %104 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = call i32* @strstr(i64 %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %120

108:                                              ; preds = %102
  %109 = load i32, i32* @PPC_OPCODE_BOOKE, align 4
  %110 = load i32, i32* @PPC_OPCODE_32, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @PPC_OPCODE_440, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @PPC_OPCODE_ISEL, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @PPC_OPCODE_RFMCI, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* %3, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %3, align 4
  br label %132

120:                                              ; preds = %102, %97
  %121 = load i32, i32* @PPC_OPCODE_403, align 4
  %122 = load i32, i32* @PPC_OPCODE_601, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @PPC_OPCODE_CLASSIC, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @PPC_OPCODE_COMMON, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @PPC_OPCODE_ALTIVEC, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* %3, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %120, %108
  br label %133

133:                                              ; preds = %132, %89
  br label %134

134:                                              ; preds = %133, %74
  br label %135

135:                                              ; preds = %134, %45
  br label %136

136:                                              ; preds = %135, %22
  %137 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %138 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %136
  %142 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %143 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = call i32* @strstr(i64 %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load i32, i32* @PPC_OPCODE_POWER4, align 4
  %149 = load i32, i32* %3, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %147, %141, %136
  %152 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %153 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %151
  %157 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %158 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = call i32* @strstr(i64 %159, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %168

162:                                              ; preds = %156
  %163 = load i32, i32* @PPC_OPCODE_POWER4, align 4
  %164 = load i32, i32* @PPC_OPCODE_POWER5, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* %3, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %162, %156, %151
  %169 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %170 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %187

173:                                              ; preds = %168
  %174 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %175 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = call i32* @strstr(i64 %176, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %187

179:                                              ; preds = %173
  %180 = load i32, i32* @PPC_OPCODE_POWER4, align 4
  %181 = load i32, i32* @PPC_OPCODE_CELL, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @PPC_OPCODE_ALTIVEC, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* %3, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %3, align 4
  br label %187

187:                                              ; preds = %179, %173, %168
  %188 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %189 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %208

192:                                              ; preds = %187
  %193 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %194 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = call i32* @strstr(i64 %195, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %208

198:                                              ; preds = %192
  %199 = load i32, i32* @PPC_OPCODE_POWER4, align 4
  %200 = load i32, i32* @PPC_OPCODE_POWER5, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @PPC_OPCODE_POWER6, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @PPC_OPCODE_ALTIVEC, align 4
  %205 = or i32 %203, %204
  %206 = load i32, i32* %3, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %198, %192, %187
  %209 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %210 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %223

213:                                              ; preds = %208
  %214 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %215 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = call i32* @strstr(i64 %216, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %218 = icmp ne i32* %217, null
  br i1 %218, label %219, label %223

219:                                              ; preds = %213
  %220 = load i32, i32* @PPC_OPCODE_ANY, align 4
  %221 = load i32, i32* %3, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %3, align 4
  br label %223

223:                                              ; preds = %219, %213, %208
  %224 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %225 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %251

228:                                              ; preds = %223
  %229 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %230 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = call i32* @strstr(i64 %231, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %233 = icmp ne i32* %232, null
  br i1 %233, label %234, label %239

234:                                              ; preds = %228
  %235 = load i32, i32* @PPC_OPCODE_64, align 4
  %236 = xor i32 %235, -1
  %237 = load i32, i32* %3, align 4
  %238 = and i32 %237, %236
  store i32 %238, i32* %3, align 4
  br label %250

239:                                              ; preds = %228
  %240 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %241 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = call i32* @strstr(i64 %242, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %244 = icmp ne i32* %243, null
  br i1 %244, label %245, label %249

245:                                              ; preds = %239
  %246 = load i32, i32* @PPC_OPCODE_64, align 4
  %247 = load i32, i32* %3, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %3, align 4
  br label %249

249:                                              ; preds = %245, %239
  br label %250

250:                                              ; preds = %249, %234
  br label %251

251:                                              ; preds = %250, %223
  %252 = load i32, i32* %3, align 4
  %253 = sext i32 %252 to i64
  %254 = inttoptr i64 %253 to i8*
  %255 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %256 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %255, i32 0, i32 1
  store i8* %254, i8** %256, align 8
  %257 = load i32, i32* %3, align 4
  ret i32 %257
}

declare dso_local i32* @strstr(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
