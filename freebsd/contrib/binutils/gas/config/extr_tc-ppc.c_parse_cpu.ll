; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ppc.c_parse_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ppc.c_parse_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"pwrx\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pwr2\00", align 1
@PPC_OPCODE_POWER = common dso_local global i32 0, align 4
@PPC_OPCODE_POWER2 = common dso_local global i32 0, align 4
@PPC_OPCODE_32 = common dso_local global i32 0, align 4
@ppc_cpu = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"pwr\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"601\00", align 1
@PPC_OPCODE_PPC = common dso_local global i32 0, align 4
@PPC_OPCODE_CLASSIC = common dso_local global i32 0, align 4
@PPC_OPCODE_601 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"ppc\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ppc32\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"603\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"604\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"403\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"405\00", align 1
@PPC_OPCODE_403 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"440\00", align 1
@PPC_OPCODE_BOOKE = common dso_local global i32 0, align 4
@PPC_OPCODE_440 = common dso_local global i32 0, align 4
@PPC_OPCODE_ISEL = common dso_local global i32 0, align 4
@PPC_OPCODE_RFMCI = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"7400\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"7410\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"7450\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"7455\00", align 1
@PPC_OPCODE_ALTIVEC = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"e300\00", align 1
@PPC_OPCODE_E300 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"altivec\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"e500\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"e500x2\00", align 1
@PPC_OPCODE_SPE = common dso_local global i32 0, align 4
@PPC_OPCODE_EFS = common dso_local global i32 0, align 4
@PPC_OPCODE_BRLOCK = common dso_local global i32 0, align 4
@PPC_OPCODE_PMR = common dso_local global i32 0, align 4
@PPC_OPCODE_CACHELCK = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [4 x i8] c"spe\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"ppc64\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"620\00", align 1
@PPC_OPCODE_64 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [12 x i8] c"ppc64bridge\00", align 1
@PPC_OPCODE_64_BRIDGE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"booke\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"booke32\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"booke64\00", align 1
@PPC_OPCODE_BOOKE64 = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [7 x i8] c"power4\00", align 1
@PPC_OPCODE_POWER4 = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [7 x i8] c"power5\00", align 1
@PPC_OPCODE_POWER5 = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [7 x i8] c"power6\00", align 1
@PPC_OPCODE_POWER6 = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [5 x i8] c"cell\00", align 1
@PPC_OPCODE_CELL = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [4 x i8] c"com\00", align 1
@PPC_OPCODE_COMMON = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@PPC_OPCODE_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cpu(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strcmp(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @PPC_OPCODE_POWER, align 4
  %13 = load i32, i32* @PPC_OPCODE_POWER2, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @PPC_OPCODE_32, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* @ppc_cpu, align 4
  br label %334

17:                                               ; preds = %7
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @PPC_OPCODE_POWER, align 4
  %23 = load i32, i32* @PPC_OPCODE_32, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* @ppc_cpu, align 4
  br label %333

25:                                               ; preds = %17
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32, i32* @PPC_OPCODE_PPC, align 4
  %31 = load i32, i32* @PPC_OPCODE_CLASSIC, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @PPC_OPCODE_601, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @PPC_OPCODE_32, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* @ppc_cpu, align 4
  br label %332

37:                                               ; preds = %25
  %38 = load i8*, i8** %3, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %3, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %3, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %3, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49, %45, %41, %37
  %54 = load i32, i32* @PPC_OPCODE_PPC, align 4
  %55 = load i32, i32* @PPC_OPCODE_CLASSIC, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @PPC_OPCODE_32, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* @ppc_cpu, align 4
  br label %331

59:                                               ; preds = %49
  %60 = load i8*, i8** %3, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i8*, i8** %3, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %63, %59
  %68 = load i32, i32* @PPC_OPCODE_PPC, align 4
  %69 = load i32, i32* @PPC_OPCODE_CLASSIC, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @PPC_OPCODE_403, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @PPC_OPCODE_32, align 4
  %74 = or i32 %72, %73
  store i32 %74, i32* @ppc_cpu, align 4
  br label %330

75:                                               ; preds = %63
  %76 = load i8*, i8** %3, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %75
  %80 = load i32, i32* @PPC_OPCODE_PPC, align 4
  %81 = load i32, i32* @PPC_OPCODE_BOOKE, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @PPC_OPCODE_32, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @PPC_OPCODE_440, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @PPC_OPCODE_ISEL, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @PPC_OPCODE_RFMCI, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* @ppc_cpu, align 4
  br label %329

91:                                               ; preds = %75
  %92 = load i8*, i8** %3, align 8
  %93 = call i64 @strcmp(i8* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %91
  %96 = load i8*, i8** %3, align 8
  %97 = call i64 @strcmp(i8* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %95
  %100 = load i8*, i8** %3, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i8*, i8** %3, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %103, %99, %95, %91
  %108 = load i32, i32* @PPC_OPCODE_PPC, align 4
  %109 = load i32, i32* @PPC_OPCODE_CLASSIC, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @PPC_OPCODE_ALTIVEC, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @PPC_OPCODE_32, align 4
  %114 = or i32 %112, %113
  store i32 %114, i32* @ppc_cpu, align 4
  br label %328

115:                                              ; preds = %103
  %116 = load i8*, i8** %3, align 8
  %117 = call i64 @strcmp(i8* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = load i32, i32* @PPC_OPCODE_PPC, align 4
  %121 = load i32, i32* @PPC_OPCODE_CLASSIC, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @PPC_OPCODE_32, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @PPC_OPCODE_E300, align 4
  %126 = or i32 %124, %125
  store i32 %126, i32* @ppc_cpu, align 4
  br label %327

127:                                              ; preds = %115
  %128 = load i8*, i8** %3, align 8
  %129 = call i64 @strcmp(i8* %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %127
  %132 = load i32, i32* @ppc_cpu, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = load i32, i32* @PPC_OPCODE_PPC, align 4
  %136 = load i32, i32* @PPC_OPCODE_CLASSIC, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @PPC_OPCODE_ALTIVEC, align 4
  %139 = or i32 %137, %138
  store i32 %139, i32* @ppc_cpu, align 4
  br label %144

140:                                              ; preds = %131
  %141 = load i32, i32* @PPC_OPCODE_ALTIVEC, align 4
  %142 = load i32, i32* @ppc_cpu, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* @ppc_cpu, align 4
  br label %144

144:                                              ; preds = %140, %134
  br label %326

145:                                              ; preds = %127
  %146 = load i8*, i8** %3, align 8
  %147 = call i64 @strcmp(i8* %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %145
  %150 = load i8*, i8** %3, align 8
  %151 = call i64 @strcmp(i8* %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %171

153:                                              ; preds = %149, %145
  %154 = load i32, i32* @PPC_OPCODE_PPC, align 4
  %155 = load i32, i32* @PPC_OPCODE_BOOKE, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @PPC_OPCODE_SPE, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @PPC_OPCODE_ISEL, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @PPC_OPCODE_EFS, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @PPC_OPCODE_BRLOCK, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @PPC_OPCODE_PMR, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @PPC_OPCODE_CACHELCK, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @PPC_OPCODE_RFMCI, align 4
  %170 = or i32 %168, %169
  store i32 %170, i32* @ppc_cpu, align 4
  br label %325

171:                                              ; preds = %149
  %172 = load i8*, i8** %3, align 8
  %173 = call i64 @strcmp(i8* %172, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %189

175:                                              ; preds = %171
  %176 = load i32, i32* @ppc_cpu, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %175
  %179 = load i32, i32* @PPC_OPCODE_PPC, align 4
  %180 = load i32, i32* @PPC_OPCODE_SPE, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @PPC_OPCODE_EFS, align 4
  %183 = or i32 %181, %182
  store i32 %183, i32* @ppc_cpu, align 4
  br label %188

184:                                              ; preds = %175
  %185 = load i32, i32* @PPC_OPCODE_SPE, align 4
  %186 = load i32, i32* @ppc_cpu, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* @ppc_cpu, align 4
  br label %188

188:                                              ; preds = %184, %178
  br label %324

189:                                              ; preds = %171
  %190 = load i8*, i8** %3, align 8
  %191 = call i64 @strcmp(i8* %190, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %189
  %194 = load i8*, i8** %3, align 8
  %195 = call i64 @strcmp(i8* %194, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %193, %189
  %198 = load i32, i32* @PPC_OPCODE_PPC, align 4
  %199 = load i32, i32* @PPC_OPCODE_CLASSIC, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @PPC_OPCODE_64, align 4
  %202 = or i32 %200, %201
  store i32 %202, i32* @ppc_cpu, align 4
  br label %323

203:                                              ; preds = %193
  %204 = load i8*, i8** %3, align 8
  %205 = call i64 @strcmp(i8* %204, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %203
  %208 = load i32, i32* @PPC_OPCODE_PPC, align 4
  %209 = load i32, i32* @PPC_OPCODE_CLASSIC, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @PPC_OPCODE_64_BRIDGE, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @PPC_OPCODE_64, align 4
  %214 = or i32 %212, %213
  store i32 %214, i32* @ppc_cpu, align 4
  br label %322

215:                                              ; preds = %203
  %216 = load i8*, i8** %3, align 8
  %217 = call i64 @strcmp(i8* %216, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %215
  %220 = load i8*, i8** %3, align 8
  %221 = call i64 @strcmp(i8* %220, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %219, %215
  %224 = load i32, i32* @PPC_OPCODE_PPC, align 4
  %225 = load i32, i32* @PPC_OPCODE_BOOKE, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* @PPC_OPCODE_32, align 4
  %228 = or i32 %226, %227
  store i32 %228, i32* @ppc_cpu, align 4
  br label %321

229:                                              ; preds = %219
  %230 = load i8*, i8** %3, align 8
  %231 = call i64 @strcmp(i8* %230, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0))
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %241

233:                                              ; preds = %229
  %234 = load i32, i32* @PPC_OPCODE_PPC, align 4
  %235 = load i32, i32* @PPC_OPCODE_BOOKE, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* @PPC_OPCODE_BOOKE64, align 4
  %238 = or i32 %236, %237
  %239 = load i32, i32* @PPC_OPCODE_64, align 4
  %240 = or i32 %238, %239
  store i32 %240, i32* @ppc_cpu, align 4
  br label %320

241:                                              ; preds = %229
  %242 = load i8*, i8** %3, align 8
  %243 = call i64 @strcmp(i8* %242, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %241
  %246 = load i32, i32* @PPC_OPCODE_PPC, align 4
  %247 = load i32, i32* @PPC_OPCODE_CLASSIC, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* @PPC_OPCODE_64, align 4
  %250 = or i32 %248, %249
  %251 = load i32, i32* @PPC_OPCODE_POWER4, align 4
  %252 = or i32 %250, %251
  store i32 %252, i32* @ppc_cpu, align 4
  br label %319

253:                                              ; preds = %241
  %254 = load i8*, i8** %3, align 8
  %255 = call i64 @strcmp(i8* %254, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %267

257:                                              ; preds = %253
  %258 = load i32, i32* @PPC_OPCODE_PPC, align 4
  %259 = load i32, i32* @PPC_OPCODE_CLASSIC, align 4
  %260 = or i32 %258, %259
  %261 = load i32, i32* @PPC_OPCODE_64, align 4
  %262 = or i32 %260, %261
  %263 = load i32, i32* @PPC_OPCODE_POWER4, align 4
  %264 = or i32 %262, %263
  %265 = load i32, i32* @PPC_OPCODE_POWER5, align 4
  %266 = or i32 %264, %265
  store i32 %266, i32* @ppc_cpu, align 4
  br label %318

267:                                              ; preds = %253
  %268 = load i8*, i8** %3, align 8
  %269 = call i64 @strcmp(i8* %268, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0))
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %271, label %283

271:                                              ; preds = %267
  %272 = load i32, i32* @PPC_OPCODE_PPC, align 4
  %273 = load i32, i32* @PPC_OPCODE_CLASSIC, align 4
  %274 = or i32 %272, %273
  %275 = load i32, i32* @PPC_OPCODE_64, align 4
  %276 = or i32 %274, %275
  %277 = load i32, i32* @PPC_OPCODE_POWER4, align 4
  %278 = or i32 %276, %277
  %279 = load i32, i32* @PPC_OPCODE_POWER5, align 4
  %280 = or i32 %278, %279
  %281 = load i32, i32* @PPC_OPCODE_POWER6, align 4
  %282 = or i32 %280, %281
  store i32 %282, i32* @ppc_cpu, align 4
  br label %317

283:                                              ; preds = %267
  %284 = load i8*, i8** %3, align 8
  %285 = call i64 @strcmp(i8* %284, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %287, label %297

287:                                              ; preds = %283
  %288 = load i32, i32* @PPC_OPCODE_PPC, align 4
  %289 = load i32, i32* @PPC_OPCODE_CLASSIC, align 4
  %290 = or i32 %288, %289
  %291 = load i32, i32* @PPC_OPCODE_64, align 4
  %292 = or i32 %290, %291
  %293 = load i32, i32* @PPC_OPCODE_POWER4, align 4
  %294 = or i32 %292, %293
  %295 = load i32, i32* @PPC_OPCODE_CELL, align 4
  %296 = or i32 %294, %295
  store i32 %296, i32* @ppc_cpu, align 4
  br label %316

297:                                              ; preds = %283
  %298 = load i8*, i8** %3, align 8
  %299 = call i64 @strcmp(i8* %298, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0))
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %297
  %302 = load i32, i32* @PPC_OPCODE_COMMON, align 4
  %303 = load i32, i32* @PPC_OPCODE_32, align 4
  %304 = or i32 %302, %303
  store i32 %304, i32* @ppc_cpu, align 4
  br label %315

305:                                              ; preds = %297
  %306 = load i8*, i8** %3, align 8
  %307 = call i64 @strcmp(i8* %306, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0))
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %305
  %310 = load i32, i32* @PPC_OPCODE_ANY, align 4
  %311 = load i32, i32* @ppc_cpu, align 4
  %312 = or i32 %311, %310
  store i32 %312, i32* @ppc_cpu, align 4
  br label %314

313:                                              ; preds = %305
  store i32 0, i32* %2, align 4
  br label %335

314:                                              ; preds = %309
  br label %315

315:                                              ; preds = %314, %301
  br label %316

316:                                              ; preds = %315, %287
  br label %317

317:                                              ; preds = %316, %271
  br label %318

318:                                              ; preds = %317, %257
  br label %319

319:                                              ; preds = %318, %245
  br label %320

320:                                              ; preds = %319, %233
  br label %321

321:                                              ; preds = %320, %223
  br label %322

322:                                              ; preds = %321, %207
  br label %323

323:                                              ; preds = %322, %197
  br label %324

324:                                              ; preds = %323, %188
  br label %325

325:                                              ; preds = %324, %153
  br label %326

326:                                              ; preds = %325, %144
  br label %327

327:                                              ; preds = %326, %119
  br label %328

328:                                              ; preds = %327, %107
  br label %329

329:                                              ; preds = %328, %79
  br label %330

330:                                              ; preds = %329, %67
  br label %331

331:                                              ; preds = %330, %53
  br label %332

332:                                              ; preds = %331, %29
  br label %333

333:                                              ; preds = %332, %21
  br label %334

334:                                              ; preds = %333, %11
  store i32 1, i32* %2, align 4
  br label %335

335:                                              ; preds = %334, %313
  %336 = load i32, i32* %2, align 4
  ret i32 %336
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
