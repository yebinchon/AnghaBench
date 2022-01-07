; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_print_private_bfd_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_print_private_bfd_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"private flags = %lx:\00", align 1
@EF_ARM_INTERWORK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c" [interworking enabled]\00", align 1
@EF_ARM_APCS_26 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c" [APCS-26]\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" [APCS-32]\00", align 1
@EF_ARM_VFP_FLOAT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c" [VFP float format]\00", align 1
@EF_ARM_MAVERICK_FLOAT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c" [Maverick float format]\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c" [FPA float format]\00", align 1
@EF_ARM_APCS_FLOAT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c" [floats passed in float registers]\00", align 1
@EF_ARM_PIC = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [24 x i8] c" [position independent]\00", align 1
@EF_ARM_NEW_ABI = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c" [new ABI]\00", align 1
@EF_ARM_OLD_ABI = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c" [old ABI]\00", align 1
@EF_ARM_SOFT_FLOAT = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c" [software FP]\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c" [Version1 EABI]\00", align 1
@EF_ARM_SYMSARESORTED = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [23 x i8] c" [sorted symbol table]\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c" [unsorted symbol table]\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c" [Version2 EABI]\00", align 1
@EF_ARM_DYNSYMSUSESEGIDX = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [37 x i8] c" [dynamic symbols use segment index]\00", align 1
@EF_ARM_MAPSYMSFIRST = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [34 x i8] c" [mapping symbols precede others]\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c" [Version3 EABI]\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c" [Version4 EABI]\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c" [Version5 EABI]\00", align 1
@EF_ARM_BE8 = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [7 x i8] c" [BE8]\00", align 1
@EF_ARM_LE8 = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [7 x i8] c" [LE8]\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c" <EABI version unrecognised>\00", align 1
@EF_ARM_EABIMASK = common dso_local global i64 0, align 8
@EF_ARM_RELEXEC = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [26 x i8] c" [relocatable executable]\00", align 1
@EF_ARM_HASENTRY = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [19 x i8] c" [has entry point]\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"<Unrecognised flag bits set>\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @elf32_arm_print_private_bfd_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf32_arm_print_private_bfd_data(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i1 [ false, %2 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @BFD_ASSERT(i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @_bfd_elf_print_private_bfd_data(i32* %18, i8* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call %struct.TYPE_2__* @elf_elfheader(i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %27 = load i32*, i32** %3, align 8
  %28 = call %struct.TYPE_2__* @elf_elfheader(i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* %26, i64 %30)
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @EF_ARM_EABI_VERSION(i64 %32)
  switch i32 %33, label %244 [
    i32 133, label %34
    i32 132, label %143
    i32 131, label %164
    i32 130, label %207
    i32 129, label %211
    i32 128, label %215
  ]

34:                                               ; preds = %14
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @EF_ARM_INTERWORK, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32*, i32** %5, align 8
  %41 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* %41)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @EF_ARM_APCS_26, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 (i32*, i8*, ...) @fprintf(i32* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %54

51:                                               ; preds = %43
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @EF_ARM_VFP_FLOAT, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32*, i32** %5, align 8
  %61 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %62 = call i32 (i32*, i8*, ...) @fprintf(i32* %60, i8* %61)
  br label %77

63:                                               ; preds = %54
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @EF_ARM_MAVERICK_FLOAT, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32*, i32** %5, align 8
  %70 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %71 = call i32 (i32*, i8*, ...) @fprintf(i32* %69, i8* %70)
  br label %76

72:                                               ; preds = %63
  %73 = load i32*, i32** %5, align 8
  %74 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %75 = call i32 (i32*, i8*, ...) @fprintf(i32* %73, i8* %74)
  br label %76

76:                                               ; preds = %72, %68
  br label %77

77:                                               ; preds = %76, %59
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @EF_ARM_APCS_FLOAT, align 8
  %80 = and i64 %78, %79
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32*, i32** %5, align 8
  %84 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %85 = call i32 (i32*, i8*, ...) @fprintf(i32* %83, i8* %84)
  br label %86

86:                                               ; preds = %82, %77
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @EF_ARM_PIC, align 8
  %89 = and i64 %87, %88
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i32*, i32** %5, align 8
  %93 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %94 = call i32 (i32*, i8*, ...) @fprintf(i32* %92, i8* %93)
  br label %95

95:                                               ; preds = %91, %86
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* @EF_ARM_NEW_ABI, align 8
  %98 = and i64 %96, %97
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32*, i32** %5, align 8
  %102 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %103 = call i32 (i32*, i8*, ...) @fprintf(i32* %101, i8* %102)
  br label %104

104:                                              ; preds = %100, %95
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* @EF_ARM_OLD_ABI, align 8
  %107 = and i64 %105, %106
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load i32*, i32** %5, align 8
  %111 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %112 = call i32 (i32*, i8*, ...) @fprintf(i32* %110, i8* %111)
  br label %113

113:                                              ; preds = %109, %104
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* @EF_ARM_SOFT_FLOAT, align 8
  %116 = and i64 %114, %115
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i32*, i32** %5, align 8
  %120 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %121 = call i32 (i32*, i8*, ...) @fprintf(i32* %119, i8* %120)
  br label %122

122:                                              ; preds = %118, %113
  %123 = load i64, i64* @EF_ARM_INTERWORK, align 8
  %124 = load i64, i64* @EF_ARM_APCS_26, align 8
  %125 = or i64 %123, %124
  %126 = load i64, i64* @EF_ARM_APCS_FLOAT, align 8
  %127 = or i64 %125, %126
  %128 = load i64, i64* @EF_ARM_PIC, align 8
  %129 = or i64 %127, %128
  %130 = load i64, i64* @EF_ARM_NEW_ABI, align 8
  %131 = or i64 %129, %130
  %132 = load i64, i64* @EF_ARM_OLD_ABI, align 8
  %133 = or i64 %131, %132
  %134 = load i64, i64* @EF_ARM_SOFT_FLOAT, align 8
  %135 = or i64 %133, %134
  %136 = load i64, i64* @EF_ARM_VFP_FLOAT, align 8
  %137 = or i64 %135, %136
  %138 = load i64, i64* @EF_ARM_MAVERICK_FLOAT, align 8
  %139 = or i64 %137, %138
  %140 = xor i64 %139, -1
  %141 = load i64, i64* %6, align 8
  %142 = and i64 %141, %140
  store i64 %142, i64* %6, align 8
  br label %248

143:                                              ; preds = %14
  %144 = load i32*, i32** %5, align 8
  %145 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %146 = call i32 (i32*, i8*, ...) @fprintf(i32* %144, i8* %145)
  %147 = load i64, i64* %6, align 8
  %148 = load i64, i64* @EF_ARM_SYMSARESORTED, align 8
  %149 = and i64 %147, %148
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %143
  %152 = load i32*, i32** %5, align 8
  %153 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  %154 = call i32 (i32*, i8*, ...) @fprintf(i32* %152, i8* %153)
  br label %159

155:                                              ; preds = %143
  %156 = load i32*, i32** %5, align 8
  %157 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %158 = call i32 (i32*, i8*, ...) @fprintf(i32* %156, i8* %157)
  br label %159

159:                                              ; preds = %155, %151
  %160 = load i64, i64* @EF_ARM_SYMSARESORTED, align 8
  %161 = xor i64 %160, -1
  %162 = load i64, i64* %6, align 8
  %163 = and i64 %162, %161
  store i64 %163, i64* %6, align 8
  br label %248

164:                                              ; preds = %14
  %165 = load i32*, i32** %5, align 8
  %166 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  %167 = call i32 (i32*, i8*, ...) @fprintf(i32* %165, i8* %166)
  %168 = load i64, i64* %6, align 8
  %169 = load i64, i64* @EF_ARM_SYMSARESORTED, align 8
  %170 = and i64 %168, %169
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %164
  %173 = load i32*, i32** %5, align 8
  %174 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  %175 = call i32 (i32*, i8*, ...) @fprintf(i32* %173, i8* %174)
  br label %180

176:                                              ; preds = %164
  %177 = load i32*, i32** %5, align 8
  %178 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %179 = call i32 (i32*, i8*, ...) @fprintf(i32* %177, i8* %178)
  br label %180

180:                                              ; preds = %176, %172
  %181 = load i64, i64* %6, align 8
  %182 = load i64, i64* @EF_ARM_DYNSYMSUSESEGIDX, align 8
  %183 = and i64 %181, %182
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load i32*, i32** %5, align 8
  %187 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0))
  %188 = call i32 (i32*, i8*, ...) @fprintf(i32* %186, i8* %187)
  br label %189

189:                                              ; preds = %185, %180
  %190 = load i64, i64* %6, align 8
  %191 = load i64, i64* @EF_ARM_MAPSYMSFIRST, align 8
  %192 = and i64 %190, %191
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %189
  %195 = load i32*, i32** %5, align 8
  %196 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0))
  %197 = call i32 (i32*, i8*, ...) @fprintf(i32* %195, i8* %196)
  br label %198

198:                                              ; preds = %194, %189
  %199 = load i64, i64* @EF_ARM_SYMSARESORTED, align 8
  %200 = load i64, i64* @EF_ARM_DYNSYMSUSESEGIDX, align 8
  %201 = or i64 %199, %200
  %202 = load i64, i64* @EF_ARM_MAPSYMSFIRST, align 8
  %203 = or i64 %201, %202
  %204 = xor i64 %203, -1
  %205 = load i64, i64* %6, align 8
  %206 = and i64 %205, %204
  store i64 %206, i64* %6, align 8
  br label %248

207:                                              ; preds = %14
  %208 = load i32*, i32** %5, align 8
  %209 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %210 = call i32 (i32*, i8*, ...) @fprintf(i32* %208, i8* %209)
  br label %248

211:                                              ; preds = %14
  %212 = load i32*, i32** %5, align 8
  %213 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %214 = call i32 (i32*, i8*, ...) @fprintf(i32* %212, i8* %213)
  br label %219

215:                                              ; preds = %14
  %216 = load i32*, i32** %5, align 8
  %217 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  %218 = call i32 (i32*, i8*, ...) @fprintf(i32* %216, i8* %217)
  br label %219

219:                                              ; preds = %215, %211
  %220 = load i64, i64* %6, align 8
  %221 = load i64, i64* @EF_ARM_BE8, align 8
  %222 = and i64 %220, %221
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %219
  %225 = load i32*, i32** %5, align 8
  %226 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  %227 = call i32 (i32*, i8*, ...) @fprintf(i32* %225, i8* %226)
  br label %228

228:                                              ; preds = %224, %219
  %229 = load i64, i64* %6, align 8
  %230 = load i64, i64* @EF_ARM_LE8, align 8
  %231 = and i64 %229, %230
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %228
  %234 = load i32*, i32** %5, align 8
  %235 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0))
  %236 = call i32 (i32*, i8*, ...) @fprintf(i32* %234, i8* %235)
  br label %237

237:                                              ; preds = %233, %228
  %238 = load i64, i64* @EF_ARM_LE8, align 8
  %239 = load i64, i64* @EF_ARM_BE8, align 8
  %240 = or i64 %238, %239
  %241 = xor i64 %240, -1
  %242 = load i64, i64* %6, align 8
  %243 = and i64 %242, %241
  store i64 %243, i64* %6, align 8
  br label %248

244:                                              ; preds = %14
  %245 = load i32*, i32** %5, align 8
  %246 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0))
  %247 = call i32 (i32*, i8*, ...) @fprintf(i32* %245, i8* %246)
  br label %248

248:                                              ; preds = %244, %237, %207, %198, %159, %122
  %249 = load i64, i64* @EF_ARM_EABIMASK, align 8
  %250 = xor i64 %249, -1
  %251 = load i64, i64* %6, align 8
  %252 = and i64 %251, %250
  store i64 %252, i64* %6, align 8
  %253 = load i64, i64* %6, align 8
  %254 = load i64, i64* @EF_ARM_RELEXEC, align 8
  %255 = and i64 %253, %254
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %248
  %258 = load i32*, i32** %5, align 8
  %259 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0))
  %260 = call i32 (i32*, i8*, ...) @fprintf(i32* %258, i8* %259)
  br label %261

261:                                              ; preds = %257, %248
  %262 = load i64, i64* %6, align 8
  %263 = load i64, i64* @EF_ARM_HASENTRY, align 8
  %264 = and i64 %262, %263
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %261
  %267 = load i32*, i32** %5, align 8
  %268 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  %269 = call i32 (i32*, i8*, ...) @fprintf(i32* %267, i8* %268)
  br label %270

270:                                              ; preds = %266, %261
  %271 = load i64, i64* @EF_ARM_RELEXEC, align 8
  %272 = load i64, i64* @EF_ARM_HASENTRY, align 8
  %273 = or i64 %271, %272
  %274 = xor i64 %273, -1
  %275 = load i64, i64* %6, align 8
  %276 = and i64 %275, %274
  store i64 %276, i64* %6, align 8
  %277 = load i64, i64* %6, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %270
  %280 = load i32*, i32** %5, align 8
  %281 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0))
  %282 = call i32 (i32*, i8*, ...) @fprintf(i32* %280, i8* %281)
  br label %283

283:                                              ; preds = %279, %270
  %284 = load i32*, i32** %5, align 8
  %285 = call i32 @fputc(i8 signext 10, i32* %284)
  %286 = load i32, i32* @TRUE, align 4
  ret i32 %286
}

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @_bfd_elf_print_private_bfd_data(i32*, i8*) #1

declare dso_local %struct.TYPE_2__* @elf_elfheader(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @EF_ARM_EABI_VERSION(i64) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
