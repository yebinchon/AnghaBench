; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_fake_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_fake_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c".liblist\00", align 1
@SHT_MIPS_LIBLIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c".conflict\00", align 1
@SHT_MIPS_CONFLICT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c".gptab.\00", align 1
@SHT_MIPS_GPTAB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c".ucode\00", align 1
@SHT_MIPS_UCODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c".mdebug\00", align 1
@SHT_MIPS_DEBUG = common dso_local global i32 0, align 4
@DYNAMIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c".reginfo\00", align 1
@SHT_MIPS_REGINFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c".hash\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c".dynamic\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c".dynstr\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".got\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c".srdata\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c".sdata\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c".sbss\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c".lit4\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c".lit8\00", align 1
@SHF_MIPS_GPREL = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c".MIPS.interfaces\00", align 1
@SHT_MIPS_IFACE = common dso_local global i32 0, align 4
@SHF_MIPS_NOSTRIP = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [14 x i8] c".MIPS.content\00", align 1
@SHT_MIPS_CONTENT = common dso_local global i32 0, align 4
@SHT_MIPS_OPTIONS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [8 x i8] c".debug_\00", align 1
@SHT_MIPS_DWARF = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [13 x i8] c".MIPS.symlib\00", align 1
@SHT_MIPS_SYMBOL_LIB = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [13 x i8] c".MIPS.events\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c".MIPS.post_rel\00", align 1
@SHT_MIPS_EVENTS = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [6 x i8] c".msym\00", align 1
@SHT_MIPS_MSYM = common dso_local global i32 0, align 4
@SHF_ALLOC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SIZEOF_MIPS_DYNSYM_SECNAMES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_mips_elf_fake_sections(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %10 = call i8* @bfd_get_section_name(%struct.TYPE_10__* %8, %struct.TYPE_11__* %9)
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load i32, i32* @SHT_MIPS_LIBLIST, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = udiv i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %263

26:                                               ; preds = %3
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @SHT_MIPS_CONFLICT, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  br label %262

34:                                               ; preds = %26
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @CONST_STRNEQ(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* @SHT_MIPS_GPTAB, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  store i32 4, i32* %43, align 4
  br label %261

44:                                               ; preds = %34
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @SHT_MIPS_UCODE, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  br label %260

52:                                               ; preds = %44
  %53 = load i8*, i8** %7, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %52
  %57 = load i32, i32* @SHT_MIPS_DEBUG, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = call i64 @SGI_COMPAT(%struct.TYPE_10__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %56
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DYNAMIC, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  br label %76

73:                                               ; preds = %63, %56
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %70
  br label %259

77:                                               ; preds = %52
  %78 = load i8*, i8** %7, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %106

81:                                               ; preds = %77
  %82 = load i32, i32* @SHT_MIPS_REGINFO, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = call i64 @SGI_COMPAT(%struct.TYPE_10__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %81
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @DYNAMIC, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  store i32 4, i32* %97, align 4
  br label %101

98:                                               ; preds = %88
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  store i32 1, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %95
  br label %105

102:                                              ; preds = %81
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  store i32 4, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %101
  br label %258

106:                                              ; preds = %77
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %108 = call i64 @SGI_COMPAT(%struct.TYPE_10__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %106
  %111 = load i8*, i8** %7, align 8
  %112 = call i64 @strcmp(i8* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %110
  %115 = load i8*, i8** %7, align 8
  %116 = call i64 @strcmp(i8* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load i8*, i8** %7, align 8
  %120 = call i64 @strcmp(i8* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %118, %114, %110
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %124 = call i64 @SGI_COMPAT(%struct.TYPE_10__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  store i32 0, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %122
  br label %257

130:                                              ; preds = %118, %106
  %131 = load i8*, i8** %7, align 8
  %132 = call i64 @strcmp(i8* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %154, label %134

134:                                              ; preds = %130
  %135 = load i8*, i8** %7, align 8
  %136 = call i64 @strcmp(i8* %135, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %154, label %138

138:                                              ; preds = %134
  %139 = load i8*, i8** %7, align 8
  %140 = call i64 @strcmp(i8* %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %154, label %142

142:                                              ; preds = %138
  %143 = load i8*, i8** %7, align 8
  %144 = call i64 @strcmp(i8* %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %142
  %147 = load i8*, i8** %7, align 8
  %148 = call i64 @strcmp(i8* %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = load i8*, i8** %7, align 8
  %152 = call i64 @strcmp(i8* %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %150, %146, %142, %138, %134, %130
  %155 = load i32, i32* @SHF_MIPS_GPREL, align 4
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 4
  br label %256

160:                                              ; preds = %150
  %161 = load i8*, i8** %7, align 8
  %162 = call i64 @strcmp(i8* %161, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %160
  %165 = load i32, i32* @SHT_MIPS_IFACE, align 4
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* @SHF_MIPS_NOSTRIP, align 4
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 4
  br label %255

173:                                              ; preds = %160
  %174 = load i8*, i8** %7, align 8
  %175 = call i64 @CONST_STRNEQ(i8* %174, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %173
  %178 = load i32, i32* @SHT_MIPS_CONTENT, align 4
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* @SHF_MIPS_NOSTRIP, align 4
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  br label %254

186:                                              ; preds = %173
  %187 = load i8*, i8** %7, align 8
  %188 = call i64 @MIPS_ELF_OPTIONS_SECTION_NAME_P(i8* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %186
  %191 = load i32, i32* @SHT_MIPS_OPTIONS, align 4
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 3
  store i32 %191, i32* %193, align 4
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 1
  store i32 1, i32* %195, align 4
  %196 = load i32, i32* @SHF_MIPS_NOSTRIP, align 4
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 4
  br label %253

201:                                              ; preds = %186
  %202 = load i8*, i8** %7, align 8
  %203 = call i64 @CONST_STRNEQ(i8* %202, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %201
  %206 = load i32, i32* @SHT_MIPS_DWARF, align 4
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 4
  br label %252

209:                                              ; preds = %201
  %210 = load i8*, i8** %7, align 8
  %211 = call i64 @strcmp(i8* %210, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %209
  %214 = load i32, i32* @SHT_MIPS_SYMBOL_LIB, align 4
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 3
  store i32 %214, i32* %216, align 4
  br label %251

217:                                              ; preds = %209
  %218 = load i8*, i8** %7, align 8
  %219 = call i64 @CONST_STRNEQ(i8* %218, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %217
  %222 = load i8*, i8** %7, align 8
  %223 = call i64 @CONST_STRNEQ(i8* %222, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %221, %217
  %226 = load i32, i32* @SHT_MIPS_EVENTS, align 4
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 3
  store i32 %226, i32* %228, align 4
  %229 = load i32, i32* @SHF_MIPS_NOSTRIP, align 4
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 4
  br label %250

234:                                              ; preds = %221
  %235 = load i8*, i8** %7, align 8
  %236 = call i64 @strcmp(i8* %235, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %249

238:                                              ; preds = %234
  %239 = load i32, i32* @SHT_MIPS_MSYM, align 4
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 3
  store i32 %239, i32* %241, align 4
  %242 = load i32, i32* @SHF_ALLOC, align 4
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = or i32 %245, %242
  store i32 %246, i32* %244, align 4
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 1
  store i32 8, i32* %248, align 4
  br label %249

249:                                              ; preds = %238, %234
  br label %250

250:                                              ; preds = %249, %225
  br label %251

251:                                              ; preds = %250, %213
  br label %252

252:                                              ; preds = %251, %205
  br label %253

253:                                              ; preds = %252, %190
  br label %254

254:                                              ; preds = %253, %177
  br label %255

255:                                              ; preds = %254, %164
  br label %256

256:                                              ; preds = %255, %154
  br label %257

257:                                              ; preds = %256, %129
  br label %258

258:                                              ; preds = %257, %105
  br label %259

259:                                              ; preds = %258, %76
  br label %260

260:                                              ; preds = %259, %48
  br label %261

261:                                              ; preds = %260, %38
  br label %262

262:                                              ; preds = %261, %30
  br label %263

263:                                              ; preds = %262, %14
  %264 = load i32, i32* @TRUE, align 4
  ret i32 %264
}

declare dso_local i8* @bfd_get_section_name(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @CONST_STRNEQ(i8*, i8*) #1

declare dso_local i64 @SGI_COMPAT(%struct.TYPE_10__*) #1

declare dso_local i64 @MIPS_ELF_OPTIONS_SECTION_NAME_P(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
