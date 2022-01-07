; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_elf_section_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_elf_section_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@get_elf_section_flags.buff = internal global [1024 x i8] zeroinitializer, align 16
@is_32bit_elf = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ALLOC\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"EXEC\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"MERGE\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"STRINGS\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"INFO LINK\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"LINK ORDER\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"OS NONCONF\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"GROUP\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"TLS\00", align 1
@__const.get_elf_section_flags.flags = private unnamed_addr constant [10 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 5 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 5 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 4 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 5 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 7 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 9 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 10 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 10 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 5 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 3 }], align 16
@do_section_details = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"[%*.*lx]: \00", align 1
@SHF_MASKOS = common dso_local global i32 0, align 4
@SHF_MASKPROC = common dso_local global i32 0, align 4
@elf_header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EM_X86_64 = common dso_local global i32 0, align 4
@SHF_X86_64_LARGE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"OS (%*.*lx)\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"PROC (%*.*lx)\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"UNKNOWN (%*.*lx)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_elf_section_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_elf_section_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [10 x %struct.anon], align 16
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @get_elf_section_flags.buff, i64 0, i64 0), i8** %3, align 8
  %12 = load i64, i64* @is_32bit_elf, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 8, i32 16
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = sub i64 1024, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %22 = bitcast [10 x %struct.anon]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([10 x %struct.anon]* @__const.get_elf_section_flags.flags to i8*), i64 160, i1 false)
  %23 = load i64, i64* @do_section_details, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = call i32 @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @get_elf_section_flags.buff, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %26, i32 %27, i64 %29)
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 4
  %33 = load i8*, i8** %3, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %3, align 8
  br label %36

36:                                               ; preds = %25, %1
  br label %37

37:                                               ; preds = %188, %36
  %38 = load i32, i32* %2, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %189

40:                                               ; preds = %37
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* %2, align 4
  %43 = sub nsw i32 0, %42
  %44 = and i32 %41, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %2, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %2, align 4
  %49 = load i64, i64* @do_section_details, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %126

51:                                               ; preds = %40
  %52 = load i32, i32* %11, align 4
  switch i32 %52, label %63 [
    i32 128, label %53
    i32 137, label %54
    i32 136, label %55
    i32 132, label %56
    i32 130, label %57
    i32 134, label %58
    i32 133, label %59
    i32 131, label %60
    i32 135, label %61
    i32 129, label %62
  ]

53:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %64

54:                                               ; preds = %51
  store i32 1, i32* %5, align 4
  br label %64

55:                                               ; preds = %51
  store i32 2, i32* %5, align 4
  br label %64

56:                                               ; preds = %51
  store i32 3, i32* %5, align 4
  br label %64

57:                                               ; preds = %51
  store i32 4, i32* %5, align 4
  br label %64

58:                                               ; preds = %51
  store i32 5, i32* %5, align 4
  br label %64

59:                                               ; preds = %51
  store i32 6, i32* %5, align 4
  br label %64

60:                                               ; preds = %51
  store i32 7, i32* %5, align 4
  br label %64

61:                                               ; preds = %51
  store i32 8, i32* %5, align 4
  br label %64

62:                                               ; preds = %51
  store i32 9, i32* %5, align 4
  br label %64

63:                                               ; preds = %51
  store i32 -1, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, -1
  br i1 %66, label %67, label %101

67:                                               ; preds = %64
  %68 = load i8*, i8** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @get_elf_section_flags.buff, i64 0, i64 0), i64 %70
  %72 = getelementptr inbounds i8, i8* %71, i64 4
  %73 = icmp ne i8* %68, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %67
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 12
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 (...) @abort() #4
  unreachable

79:                                               ; preds = %74
  %80 = load i32, i32* %6, align 4
  %81 = sub nsw i32 %80, 2
  store i32 %81, i32* %6, align 4
  %82 = load i8*, i8** %3, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %3, align 8
  store i8 44, i8* %82, align 1
  %84 = load i8*, i8** %3, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %3, align 8
  store i8 32, i8* %84, align 1
  br label %86

86:                                               ; preds = %79, %67
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* %10, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.anon, %struct.anon* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %6, align 4
  %94 = load i8*, i8** %3, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* %10, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.anon, %struct.anon* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 16
  %100 = call i8* @stpcpy(i8* %94, i8* %99)
  store i8* %100, i8** %3, align 8
  br label %125

101:                                              ; preds = %64
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @SHF_MASKOS, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %7, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %7, align 4
  br label %124

110:                                              ; preds = %101
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @SHF_MASKPROC, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %8, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %8, align 4
  br label %123

119:                                              ; preds = %110
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %9, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %119, %115
  br label %124

124:                                              ; preds = %123, %106
  br label %125

125:                                              ; preds = %124, %86
  br label %188

126:                                              ; preds = %40
  %127 = load i32, i32* %11, align 4
  switch i32 %127, label %148 [
    i32 128, label %128
    i32 137, label %130
    i32 136, label %132
    i32 132, label %134
    i32 130, label %136
    i32 134, label %138
    i32 133, label %140
    i32 131, label %142
    i32 135, label %144
    i32 129, label %146
  ]

128:                                              ; preds = %126
  %129 = load i8*, i8** %3, align 8
  store i8 87, i8* %129, align 1
  br label %185

130:                                              ; preds = %126
  %131 = load i8*, i8** %3, align 8
  store i8 65, i8* %131, align 1
  br label %185

132:                                              ; preds = %126
  %133 = load i8*, i8** %3, align 8
  store i8 88, i8* %133, align 1
  br label %185

134:                                              ; preds = %126
  %135 = load i8*, i8** %3, align 8
  store i8 77, i8* %135, align 1
  br label %185

136:                                              ; preds = %126
  %137 = load i8*, i8** %3, align 8
  store i8 83, i8* %137, align 1
  br label %185

138:                                              ; preds = %126
  %139 = load i8*, i8** %3, align 8
  store i8 73, i8* %139, align 1
  br label %185

140:                                              ; preds = %126
  %141 = load i8*, i8** %3, align 8
  store i8 76, i8* %141, align 1
  br label %185

142:                                              ; preds = %126
  %143 = load i8*, i8** %3, align 8
  store i8 79, i8* %143, align 1
  br label %185

144:                                              ; preds = %126
  %145 = load i8*, i8** %3, align 8
  store i8 71, i8* %145, align 1
  br label %185

146:                                              ; preds = %126
  %147 = load i8*, i8** %3, align 8
  store i8 84, i8* %147, align 1
  br label %185

148:                                              ; preds = %126
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @elf_header, i32 0, i32 0), align 4
  %150 = load i32, i32* @EM_X86_64, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* @SHF_X86_64_LARGE, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i8*, i8** %3, align 8
  store i8 108, i8* %157, align 1
  br label %184

158:                                              ; preds = %152, %148
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* @SHF_MASKOS, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = load i8*, i8** %3, align 8
  store i8 111, i8* %164, align 1
  %165 = load i32, i32* @SHF_MASKOS, align 4
  %166 = xor i32 %165, -1
  %167 = load i32, i32* %2, align 4
  %168 = and i32 %167, %166
  store i32 %168, i32* %2, align 4
  br label %183

169:                                              ; preds = %158
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* @SHF_MASKPROC, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load i8*, i8** %3, align 8
  store i8 112, i8* %175, align 1
  %176 = load i32, i32* @SHF_MASKPROC, align 4
  %177 = xor i32 %176, -1
  %178 = load i32, i32* %2, align 4
  %179 = and i32 %178, %177
  store i32 %179, i32* %2, align 4
  br label %182

180:                                              ; preds = %169
  %181 = load i8*, i8** %3, align 8
  store i8 120, i8* %181, align 1
  br label %182

182:                                              ; preds = %180, %174
  br label %183

183:                                              ; preds = %182, %163
  br label %184

184:                                              ; preds = %183, %156
  br label %185

185:                                              ; preds = %184, %146, %144, %142, %140, %138, %136, %134, %132, %130, %128
  %186 = load i8*, i8** %3, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %3, align 8
  br label %188

188:                                              ; preds = %185, %125
  br label %37

189:                                              ; preds = %37
  %190 = load i64, i64* @do_section_details, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %307

192:                                              ; preds = %189
  %193 = load i32, i32* %7, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %230

195:                                              ; preds = %192
  %196 = load i32, i32* %4, align 4
  %197 = add nsw i32 5, %196
  %198 = load i32, i32* %6, align 4
  %199 = sub nsw i32 %198, %197
  store i32 %199, i32* %6, align 4
  %200 = load i8*, i8** %3, align 8
  %201 = load i32, i32* %4, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @get_elf_section_flags.buff, i64 0, i64 0), i64 %202
  %204 = getelementptr inbounds i8, i8* %203, i64 4
  %205 = icmp ne i8* %200, %204
  br i1 %205, label %206, label %218

206:                                              ; preds = %195
  %207 = load i32, i32* %6, align 4
  %208 = icmp slt i32 %207, 3
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = call i32 (...) @abort() #4
  unreachable

211:                                              ; preds = %206
  %212 = load i32, i32* %6, align 4
  %213 = sub nsw i32 %212, 2
  store i32 %213, i32* %6, align 4
  %214 = load i8*, i8** %3, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %3, align 8
  store i8 44, i8* %214, align 1
  %216 = load i8*, i8** %3, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %3, align 8
  store i8 32, i8* %216, align 1
  br label %218

218:                                              ; preds = %211, %195
  %219 = load i8*, i8** %3, align 8
  %220 = load i32, i32* %4, align 4
  %221 = load i32, i32* %4, align 4
  %222 = load i32, i32* %7, align 4
  %223 = sext i32 %222 to i64
  %224 = call i32 @sprintf(i8* %219, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %220, i32 %221, i64 %223)
  %225 = load i32, i32* %4, align 4
  %226 = add nsw i32 5, %225
  %227 = load i8*, i8** %3, align 8
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i8, i8* %227, i64 %228
  store i8* %229, i8** %3, align 8
  br label %230

230:                                              ; preds = %218, %192
  %231 = load i32, i32* %8, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %268

233:                                              ; preds = %230
  %234 = load i32, i32* %4, align 4
  %235 = add nsw i32 7, %234
  %236 = load i32, i32* %6, align 4
  %237 = sub nsw i32 %236, %235
  store i32 %237, i32* %6, align 4
  %238 = load i8*, i8** %3, align 8
  %239 = load i32, i32* %4, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @get_elf_section_flags.buff, i64 0, i64 0), i64 %240
  %242 = getelementptr inbounds i8, i8* %241, i64 4
  %243 = icmp ne i8* %238, %242
  br i1 %243, label %244, label %256

244:                                              ; preds = %233
  %245 = load i32, i32* %6, align 4
  %246 = icmp slt i32 %245, 3
  br i1 %246, label %247, label %249

247:                                              ; preds = %244
  %248 = call i32 (...) @abort() #4
  unreachable

249:                                              ; preds = %244
  %250 = load i32, i32* %6, align 4
  %251 = sub nsw i32 %250, 2
  store i32 %251, i32* %6, align 4
  %252 = load i8*, i8** %3, align 8
  %253 = getelementptr inbounds i8, i8* %252, i32 1
  store i8* %253, i8** %3, align 8
  store i8 44, i8* %252, align 1
  %254 = load i8*, i8** %3, align 8
  %255 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %255, i8** %3, align 8
  store i8 32, i8* %254, align 1
  br label %256

256:                                              ; preds = %249, %233
  %257 = load i8*, i8** %3, align 8
  %258 = load i32, i32* %4, align 4
  %259 = load i32, i32* %4, align 4
  %260 = load i32, i32* %8, align 4
  %261 = sext i32 %260 to i64
  %262 = call i32 @sprintf(i8* %257, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %258, i32 %259, i64 %261)
  %263 = load i32, i32* %4, align 4
  %264 = add nsw i32 7, %263
  %265 = load i8*, i8** %3, align 8
  %266 = sext i32 %264 to i64
  %267 = getelementptr inbounds i8, i8* %265, i64 %266
  store i8* %267, i8** %3, align 8
  br label %268

268:                                              ; preds = %256, %230
  %269 = load i32, i32* %9, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %306

271:                                              ; preds = %268
  %272 = load i32, i32* %4, align 4
  %273 = add nsw i32 10, %272
  %274 = load i32, i32* %6, align 4
  %275 = sub nsw i32 %274, %273
  store i32 %275, i32* %6, align 4
  %276 = load i8*, i8** %3, align 8
  %277 = load i32, i32* %4, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @get_elf_section_flags.buff, i64 0, i64 0), i64 %278
  %280 = getelementptr inbounds i8, i8* %279, i64 4
  %281 = icmp ne i8* %276, %280
  br i1 %281, label %282, label %294

282:                                              ; preds = %271
  %283 = load i32, i32* %6, align 4
  %284 = icmp slt i32 %283, 3
  br i1 %284, label %285, label %287

285:                                              ; preds = %282
  %286 = call i32 (...) @abort() #4
  unreachable

287:                                              ; preds = %282
  %288 = load i32, i32* %6, align 4
  %289 = sub nsw i32 %288, 2
  store i32 %289, i32* %6, align 4
  %290 = load i8*, i8** %3, align 8
  %291 = getelementptr inbounds i8, i8* %290, i32 1
  store i8* %291, i8** %3, align 8
  store i8 44, i8* %290, align 1
  %292 = load i8*, i8** %3, align 8
  %293 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %293, i8** %3, align 8
  store i8 32, i8* %292, align 1
  br label %294

294:                                              ; preds = %287, %271
  %295 = load i8*, i8** %3, align 8
  %296 = load i32, i32* %4, align 4
  %297 = load i32, i32* %4, align 4
  %298 = load i32, i32* %9, align 4
  %299 = sext i32 %298 to i64
  %300 = call i32 @sprintf(i8* %295, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 %296, i32 %297, i64 %299)
  %301 = load i32, i32* %4, align 4
  %302 = add nsw i32 10, %301
  %303 = load i8*, i8** %3, align 8
  %304 = sext i32 %302 to i64
  %305 = getelementptr inbounds i8, i8* %303, i64 %304
  store i8* %305, i8** %3, align 8
  br label %306

306:                                              ; preds = %294, %268
  br label %307

307:                                              ; preds = %306, %189
  %308 = load i8*, i8** %3, align 8
  store i8 0, i8* %308, align 1
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @get_elf_section_flags.buff, i64 0, i64 0)
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i64) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i8* @stpcpy(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
