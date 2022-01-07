; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_print_private_bfd_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_print_private_bfd_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"private flags = %lx:\00", align 1
@EF_MIPS_ABI = common dso_local global i32 0, align 4
@E_MIPS_ABI_O32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" [abi=O32]\00", align 1
@E_MIPS_ABI_O64 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c" [abi=O64]\00", align 1
@E_MIPS_ABI_EABI32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c" [abi=EABI32]\00", align 1
@E_MIPS_ABI_EABI64 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c" [abi=EABI64]\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" [abi unknown]\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c" [abi=N32]\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" [abi=64]\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c" [no abi set]\00", align 1
@EF_MIPS_ARCH = common dso_local global i32 0, align 4
@E_MIPS_ARCH_1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c" [mips1]\00", align 1
@E_MIPS_ARCH_2 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c" [mips2]\00", align 1
@E_MIPS_ARCH_3 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c" [mips3]\00", align 1
@E_MIPS_ARCH_4 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c" [mips4]\00", align 1
@E_MIPS_ARCH_5 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c" [mips5]\00", align 1
@E_MIPS_ARCH_32 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c" [mips32]\00", align 1
@E_MIPS_ARCH_64 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c" [mips64]\00", align 1
@E_MIPS_ARCH_32R2 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [12 x i8] c" [mips32r2]\00", align 1
@E_MIPS_ARCH_64R2 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [12 x i8] c" [mips64r2]\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c" [unknown ISA]\00", align 1
@EF_MIPS_ARCH_ASE_MDMX = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [8 x i8] c" [mdmx]\00", align 1
@EF_MIPS_ARCH_ASE_M16 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [10 x i8] c" [mips16]\00", align 1
@EF_MIPS_32BITMODE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [13 x i8] c" [32bitmode]\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c" [not 32bitmode]\00", align 1
@EF_MIPS_NOREORDER = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [13 x i8] c" [noreorder]\00", align 1
@EF_MIPS_PIC = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [7 x i8] c" [PIC]\00", align 1
@EF_MIPS_CPIC = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [8 x i8] c" [CPIC]\00", align 1
@EF_MIPS_XGOT = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [8 x i8] c" [XGOT]\00", align 1
@EF_MIPS_UCODE = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [9 x i8] c" [UCODE]\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_mips_elf_print_private_bfd_data(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i1 [ false, %2 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @BFD_ASSERT(i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @_bfd_elf_print_private_bfd_data(i32* %17, i8* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %3, align 8
  %23 = call %struct.TYPE_2__* @elf_elfheader(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* %21, i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call %struct.TYPE_2__* @elf_elfheader(i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @EF_MIPS_ABI, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @E_MIPS_ABI_O32, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %13
  %36 = load i32*, i32** %5, align 8
  %37 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* %37)
  br label %116

39:                                               ; preds = %13
  %40 = load i32*, i32** %3, align 8
  %41 = call %struct.TYPE_2__* @elf_elfheader(i32* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @EF_MIPS_ABI, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @E_MIPS_ABI_O64, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load i32*, i32** %5, align 8
  %50 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %49, i8* %50)
  br label %115

52:                                               ; preds = %39
  %53 = load i32*, i32** %3, align 8
  %54 = call %struct.TYPE_2__* @elf_elfheader(i32* %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @EF_MIPS_ABI, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @E_MIPS_ABI_EABI32, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load i32*, i32** %5, align 8
  %63 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %64 = call i32 (i32*, i8*, ...) @fprintf(i32* %62, i8* %63)
  br label %114

65:                                               ; preds = %52
  %66 = load i32*, i32** %3, align 8
  %67 = call %struct.TYPE_2__* @elf_elfheader(i32* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @EF_MIPS_ABI, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @E_MIPS_ABI_EABI64, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load i32*, i32** %5, align 8
  %76 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %77 = call i32 (i32*, i8*, ...) @fprintf(i32* %75, i8* %76)
  br label %113

78:                                               ; preds = %65
  %79 = load i32*, i32** %3, align 8
  %80 = call %struct.TYPE_2__* @elf_elfheader(i32* %79)
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @EF_MIPS_ABI, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load i32*, i32** %5, align 8
  %88 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %89 = call i32 (i32*, i8*, ...) @fprintf(i32* %87, i8* %88)
  br label %112

90:                                               ; preds = %78
  %91 = load i32*, i32** %3, align 8
  %92 = call i64 @ABI_N32_P(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32*, i32** %5, align 8
  %96 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %97 = call i32 (i32*, i8*, ...) @fprintf(i32* %95, i8* %96)
  br label %111

98:                                               ; preds = %90
  %99 = load i32*, i32** %3, align 8
  %100 = call i64 @ABI_64_P(i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i32*, i32** %5, align 8
  %104 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %105 = call i32 (i32*, i8*, ...) @fprintf(i32* %103, i8* %104)
  br label %110

106:                                              ; preds = %98
  %107 = load i32*, i32** %5, align 8
  %108 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %109 = call i32 (i32*, i8*, ...) @fprintf(i32* %107, i8* %108)
  br label %110

110:                                              ; preds = %106, %102
  br label %111

111:                                              ; preds = %110, %94
  br label %112

112:                                              ; preds = %111, %86
  br label %113

113:                                              ; preds = %112, %74
  br label %114

114:                                              ; preds = %113, %61
  br label %115

115:                                              ; preds = %114, %48
  br label %116

116:                                              ; preds = %115, %35
  %117 = load i32*, i32** %3, align 8
  %118 = call %struct.TYPE_2__* @elf_elfheader(i32* %117)
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @EF_MIPS_ARCH, align 4
  %122 = and i32 %120, %121
  %123 = load i32, i32* @E_MIPS_ARCH_1, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %116
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 (i32*, i8*, ...) @fprintf(i32* %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %236

128:                                              ; preds = %116
  %129 = load i32*, i32** %3, align 8
  %130 = call %struct.TYPE_2__* @elf_elfheader(i32* %129)
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @EF_MIPS_ARCH, align 4
  %134 = and i32 %132, %133
  %135 = load i32, i32* @E_MIPS_ARCH_2, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %128
  %138 = load i32*, i32** %5, align 8
  %139 = call i32 (i32*, i8*, ...) @fprintf(i32* %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  br label %235

140:                                              ; preds = %128
  %141 = load i32*, i32** %3, align 8
  %142 = call %struct.TYPE_2__* @elf_elfheader(i32* %141)
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @EF_MIPS_ARCH, align 4
  %146 = and i32 %144, %145
  %147 = load i32, i32* @E_MIPS_ARCH_3, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %140
  %150 = load i32*, i32** %5, align 8
  %151 = call i32 (i32*, i8*, ...) @fprintf(i32* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %234

152:                                              ; preds = %140
  %153 = load i32*, i32** %3, align 8
  %154 = call %struct.TYPE_2__* @elf_elfheader(i32* %153)
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @EF_MIPS_ARCH, align 4
  %158 = and i32 %156, %157
  %159 = load i32, i32* @E_MIPS_ARCH_4, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %152
  %162 = load i32*, i32** %5, align 8
  %163 = call i32 (i32*, i8*, ...) @fprintf(i32* %162, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %233

164:                                              ; preds = %152
  %165 = load i32*, i32** %3, align 8
  %166 = call %struct.TYPE_2__* @elf_elfheader(i32* %165)
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @EF_MIPS_ARCH, align 4
  %170 = and i32 %168, %169
  %171 = load i32, i32* @E_MIPS_ARCH_5, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %164
  %174 = load i32*, i32** %5, align 8
  %175 = call i32 (i32*, i8*, ...) @fprintf(i32* %174, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  br label %232

176:                                              ; preds = %164
  %177 = load i32*, i32** %3, align 8
  %178 = call %struct.TYPE_2__* @elf_elfheader(i32* %177)
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @EF_MIPS_ARCH, align 4
  %182 = and i32 %180, %181
  %183 = load i32, i32* @E_MIPS_ARCH_32, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %176
  %186 = load i32*, i32** %5, align 8
  %187 = call i32 (i32*, i8*, ...) @fprintf(i32* %186, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  br label %231

188:                                              ; preds = %176
  %189 = load i32*, i32** %3, align 8
  %190 = call %struct.TYPE_2__* @elf_elfheader(i32* %189)
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @EF_MIPS_ARCH, align 4
  %194 = and i32 %192, %193
  %195 = load i32, i32* @E_MIPS_ARCH_64, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %188
  %198 = load i32*, i32** %5, align 8
  %199 = call i32 (i32*, i8*, ...) @fprintf(i32* %198, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  br label %230

200:                                              ; preds = %188
  %201 = load i32*, i32** %3, align 8
  %202 = call %struct.TYPE_2__* @elf_elfheader(i32* %201)
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @EF_MIPS_ARCH, align 4
  %206 = and i32 %204, %205
  %207 = load i32, i32* @E_MIPS_ARCH_32R2, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %200
  %210 = load i32*, i32** %5, align 8
  %211 = call i32 (i32*, i8*, ...) @fprintf(i32* %210, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  br label %229

212:                                              ; preds = %200
  %213 = load i32*, i32** %3, align 8
  %214 = call %struct.TYPE_2__* @elf_elfheader(i32* %213)
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @EF_MIPS_ARCH, align 4
  %218 = and i32 %216, %217
  %219 = load i32, i32* @E_MIPS_ARCH_64R2, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %212
  %222 = load i32*, i32** %5, align 8
  %223 = call i32 (i32*, i8*, ...) @fprintf(i32* %222, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  br label %228

224:                                              ; preds = %212
  %225 = load i32*, i32** %5, align 8
  %226 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %227 = call i32 (i32*, i8*, ...) @fprintf(i32* %225, i8* %226)
  br label %228

228:                                              ; preds = %224, %221
  br label %229

229:                                              ; preds = %228, %209
  br label %230

230:                                              ; preds = %229, %197
  br label %231

231:                                              ; preds = %230, %185
  br label %232

232:                                              ; preds = %231, %173
  br label %233

233:                                              ; preds = %232, %161
  br label %234

234:                                              ; preds = %233, %149
  br label %235

235:                                              ; preds = %234, %137
  br label %236

236:                                              ; preds = %235, %125
  %237 = load i32*, i32** %3, align 8
  %238 = call %struct.TYPE_2__* @elf_elfheader(i32* %237)
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @EF_MIPS_ARCH_ASE_MDMX, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %236
  %245 = load i32*, i32** %5, align 8
  %246 = call i32 (i32*, i8*, ...) @fprintf(i32* %245, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  br label %247

247:                                              ; preds = %244, %236
  %248 = load i32*, i32** %3, align 8
  %249 = call %struct.TYPE_2__* @elf_elfheader(i32* %248)
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @EF_MIPS_ARCH_ASE_M16, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %247
  %256 = load i32*, i32** %5, align 8
  %257 = call i32 (i32*, i8*, ...) @fprintf(i32* %256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  br label %258

258:                                              ; preds = %255, %247
  %259 = load i32*, i32** %3, align 8
  %260 = call %struct.TYPE_2__* @elf_elfheader(i32* %259)
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @EF_MIPS_32BITMODE, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %258
  %267 = load i32*, i32** %5, align 8
  %268 = call i32 (i32*, i8*, ...) @fprintf(i32* %267, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  br label %273

269:                                              ; preds = %258
  %270 = load i32*, i32** %5, align 8
  %271 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  %272 = call i32 (i32*, i8*, ...) @fprintf(i32* %270, i8* %271)
  br label %273

273:                                              ; preds = %269, %266
  %274 = load i32*, i32** %3, align 8
  %275 = call %struct.TYPE_2__* @elf_elfheader(i32* %274)
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @EF_MIPS_NOREORDER, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %273
  %282 = load i32*, i32** %5, align 8
  %283 = call i32 (i32*, i8*, ...) @fprintf(i32* %282, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0))
  br label %284

284:                                              ; preds = %281, %273
  %285 = load i32*, i32** %3, align 8
  %286 = call %struct.TYPE_2__* @elf_elfheader(i32* %285)
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @EF_MIPS_PIC, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %284
  %293 = load i32*, i32** %5, align 8
  %294 = call i32 (i32*, i8*, ...) @fprintf(i32* %293, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  br label %295

295:                                              ; preds = %292, %284
  %296 = load i32*, i32** %3, align 8
  %297 = call %struct.TYPE_2__* @elf_elfheader(i32* %296)
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @EF_MIPS_CPIC, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %295
  %304 = load i32*, i32** %5, align 8
  %305 = call i32 (i32*, i8*, ...) @fprintf(i32* %304, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0))
  br label %306

306:                                              ; preds = %303, %295
  %307 = load i32*, i32** %3, align 8
  %308 = call %struct.TYPE_2__* @elf_elfheader(i32* %307)
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @EF_MIPS_XGOT, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %306
  %315 = load i32*, i32** %5, align 8
  %316 = call i32 (i32*, i8*, ...) @fprintf(i32* %315, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  br label %317

317:                                              ; preds = %314, %306
  %318 = load i32*, i32** %3, align 8
  %319 = call %struct.TYPE_2__* @elf_elfheader(i32* %318)
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @EF_MIPS_UCODE, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %317
  %326 = load i32*, i32** %5, align 8
  %327 = call i32 (i32*, i8*, ...) @fprintf(i32* %326, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0))
  br label %328

328:                                              ; preds = %325, %317
  %329 = load i32*, i32** %5, align 8
  %330 = call i32 @fputc(i8 signext 10, i32* %329)
  %331 = load i32, i32* @TRUE, align 4
  ret i32 %331
}

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @_bfd_elf_print_private_bfd_data(i32*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local %struct.TYPE_2__* @elf_elfheader(i32*) #1

declare dso_local i64 @ABI_N32_P(i32*) #1

declare dso_local i64 @ABI_64_P(i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
