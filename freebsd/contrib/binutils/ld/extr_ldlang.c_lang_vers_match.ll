; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_vers_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_vers_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_elf_version_expr_head = type { i32, %struct.bfd_elf_version_expr*, i64 }
%struct.bfd_elf_version_expr = type { i8*, i32, i8*, %struct.bfd_elf_version_expr* }

@DMGL_PARAMS = common dso_local global i32 0, align 4
@DMGL_ANSI = common dso_local global i32 0, align 4
@BFD_ELF_VERSION_JAVA_TYPE = common dso_local global i32 0, align 4
@DMGL_JAVA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfd_elf_version_expr* (%struct.bfd_elf_version_expr_head*, %struct.bfd_elf_version_expr*, i8*)* @lang_vers_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfd_elf_version_expr* @lang_vers_match(%struct.bfd_elf_version_expr_head* %0, %struct.bfd_elf_version_expr* %1, i8* %2) #0 {
  %4 = alloca %struct.bfd_elf_version_expr_head*, align 8
  %5 = alloca %struct.bfd_elf_version_expr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bfd_elf_version_expr*, align 8
  %10 = alloca %struct.bfd_elf_version_expr, align 8
  %11 = alloca i8*, align 8
  store %struct.bfd_elf_version_expr_head* %0, %struct.bfd_elf_version_expr_head** %4, align 8
  store %struct.bfd_elf_version_expr* %1, %struct.bfd_elf_version_expr** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %8, align 8
  store %struct.bfd_elf_version_expr* null, %struct.bfd_elf_version_expr** %9, align 8
  %14 = load %struct.bfd_elf_version_expr_head*, %struct.bfd_elf_version_expr_head** %4, align 8
  %15 = getelementptr inbounds %struct.bfd_elf_version_expr_head, %struct.bfd_elf_version_expr_head* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 129
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @DMGL_PARAMS, align 4
  %22 = load i32, i32* @DMGL_ANSI, align 4
  %23 = or i32 %21, %22
  %24 = call i8* @cplus_demangle(i8* %20, i32 %23)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %7, align 8
  br label %29

29:                                               ; preds = %27, %19
  br label %30

30:                                               ; preds = %29, %3
  %31 = load %struct.bfd_elf_version_expr_head*, %struct.bfd_elf_version_expr_head** %4, align 8
  %32 = getelementptr inbounds %struct.bfd_elf_version_expr_head, %struct.bfd_elf_version_expr_head* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BFD_ELF_VERSION_JAVA_TYPE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* @DMGL_JAVA, align 4
  %40 = call i8* @cplus_demangle(i8* %38, i32 %39)
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %6, align 8
  store i8* %44, i8** %8, align 8
  br label %45

45:                                               ; preds = %43, %37
  br label %46

46:                                               ; preds = %45, %30
  %47 = load %struct.bfd_elf_version_expr_head*, %struct.bfd_elf_version_expr_head** %4, align 8
  %48 = getelementptr inbounds %struct.bfd_elf_version_expr_head, %struct.bfd_elf_version_expr_head* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %187

51:                                               ; preds = %46
  %52 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %5, align 8
  %53 = icmp eq %struct.bfd_elf_version_expr* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %5, align 8
  %56 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %187

59:                                               ; preds = %54, %51
  %60 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %5, align 8
  %61 = icmp ne %struct.bfd_elf_version_expr* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %5, align 8
  %64 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  br label %67

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi i32 [ %65, %62 ], [ 0, %66 ]
  switch i32 %68, label %185 [
    i32 0, label %69
    i32 128, label %107
    i32 129, label %145
  ]

69:                                               ; preds = %67
  %70 = load %struct.bfd_elf_version_expr_head*, %struct.bfd_elf_version_expr_head** %4, align 8
  %71 = getelementptr inbounds %struct.bfd_elf_version_expr_head, %struct.bfd_elf_version_expr_head* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, 128
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %106

75:                                               ; preds = %69
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %10, i32 0, i32 0
  store i8* %76, i8** %77, align 8
  %78 = load %struct.bfd_elf_version_expr_head*, %struct.bfd_elf_version_expr_head** %4, align 8
  %79 = getelementptr inbounds %struct.bfd_elf_version_expr_head, %struct.bfd_elf_version_expr_head* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call %struct.bfd_elf_version_expr* @htab_find(i64 %80, %struct.bfd_elf_version_expr* %10)
  store %struct.bfd_elf_version_expr* %81, %struct.bfd_elf_version_expr** %9, align 8
  br label %82

82:                                               ; preds = %104, %75
  %83 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %84 = icmp ne %struct.bfd_elf_version_expr* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %87 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @strcmp(i8* %88, i8* %89)
  %91 = icmp eq i32 %90, 0
  br label %92

92:                                               ; preds = %85, %82
  %93 = phi i1 [ false, %82 ], [ %91, %85 ]
  br i1 %93, label %94, label %105

94:                                               ; preds = %92
  %95 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %96 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 128
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %262

100:                                              ; preds = %94
  %101 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %102 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %101, i32 0, i32 3
  %103 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %102, align 8
  store %struct.bfd_elf_version_expr* %103, %struct.bfd_elf_version_expr** %9, align 8
  br label %104

104:                                              ; preds = %100
  br label %82

105:                                              ; preds = %92
  br label %106

106:                                              ; preds = %105, %69
  br label %107

107:                                              ; preds = %67, %106
  %108 = load %struct.bfd_elf_version_expr_head*, %struct.bfd_elf_version_expr_head** %4, align 8
  %109 = getelementptr inbounds %struct.bfd_elf_version_expr_head, %struct.bfd_elf_version_expr_head* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, 129
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %144

113:                                              ; preds = %107
  %114 = load i8*, i8** %7, align 8
  %115 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %10, i32 0, i32 0
  store i8* %114, i8** %115, align 8
  %116 = load %struct.bfd_elf_version_expr_head*, %struct.bfd_elf_version_expr_head** %4, align 8
  %117 = getelementptr inbounds %struct.bfd_elf_version_expr_head, %struct.bfd_elf_version_expr_head* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = call %struct.bfd_elf_version_expr* @htab_find(i64 %118, %struct.bfd_elf_version_expr* %10)
  store %struct.bfd_elf_version_expr* %119, %struct.bfd_elf_version_expr** %9, align 8
  br label %120

120:                                              ; preds = %142, %113
  %121 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %122 = icmp ne %struct.bfd_elf_version_expr* %121, null
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %125 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = call i32 @strcmp(i8* %126, i8* %127)
  %129 = icmp eq i32 %128, 0
  br label %130

130:                                              ; preds = %123, %120
  %131 = phi i1 [ false, %120 ], [ %129, %123 ]
  br i1 %131, label %132, label %143

132:                                              ; preds = %130
  %133 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %134 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 129
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %262

138:                                              ; preds = %132
  %139 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %140 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %139, i32 0, i32 3
  %141 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %140, align 8
  store %struct.bfd_elf_version_expr* %141, %struct.bfd_elf_version_expr** %9, align 8
  br label %142

142:                                              ; preds = %138
  br label %120

143:                                              ; preds = %130
  br label %144

144:                                              ; preds = %143, %107
  br label %145

145:                                              ; preds = %67, %144
  %146 = load %struct.bfd_elf_version_expr_head*, %struct.bfd_elf_version_expr_head** %4, align 8
  %147 = getelementptr inbounds %struct.bfd_elf_version_expr_head, %struct.bfd_elf_version_expr_head* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @BFD_ELF_VERSION_JAVA_TYPE, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %184

152:                                              ; preds = %145
  %153 = load i8*, i8** %8, align 8
  %154 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %10, i32 0, i32 0
  store i8* %153, i8** %154, align 8
  %155 = load %struct.bfd_elf_version_expr_head*, %struct.bfd_elf_version_expr_head** %4, align 8
  %156 = getelementptr inbounds %struct.bfd_elf_version_expr_head, %struct.bfd_elf_version_expr_head* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = call %struct.bfd_elf_version_expr* @htab_find(i64 %157, %struct.bfd_elf_version_expr* %10)
  store %struct.bfd_elf_version_expr* %158, %struct.bfd_elf_version_expr** %9, align 8
  br label %159

159:                                              ; preds = %182, %152
  %160 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %161 = icmp ne %struct.bfd_elf_version_expr* %160, null
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %164 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = load i8*, i8** %8, align 8
  %167 = call i32 @strcmp(i8* %165, i8* %166)
  %168 = icmp eq i32 %167, 0
  br label %169

169:                                              ; preds = %162, %159
  %170 = phi i1 [ false, %159 ], [ %168, %162 ]
  br i1 %170, label %171, label %183

171:                                              ; preds = %169
  %172 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %173 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @BFD_ELF_VERSION_JAVA_TYPE, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  br label %262

178:                                              ; preds = %171
  %179 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %180 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %179, i32 0, i32 3
  %181 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %180, align 8
  store %struct.bfd_elf_version_expr* %181, %struct.bfd_elf_version_expr** %9, align 8
  br label %182

182:                                              ; preds = %178
  br label %159

183:                                              ; preds = %169
  br label %184

184:                                              ; preds = %183, %145
  br label %185

185:                                              ; preds = %67, %184
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186, %54, %46
  %188 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %5, align 8
  %189 = icmp eq %struct.bfd_elf_version_expr* %188, null
  br i1 %189, label %195, label %190

190:                                              ; preds = %187
  %191 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %5, align 8
  %192 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %199

195:                                              ; preds = %190, %187
  %196 = load %struct.bfd_elf_version_expr_head*, %struct.bfd_elf_version_expr_head** %4, align 8
  %197 = getelementptr inbounds %struct.bfd_elf_version_expr_head, %struct.bfd_elf_version_expr_head* %196, i32 0, i32 1
  %198 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %197, align 8
  store %struct.bfd_elf_version_expr* %198, %struct.bfd_elf_version_expr** %9, align 8
  br label %203

199:                                              ; preds = %190
  %200 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %5, align 8
  %201 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %200, i32 0, i32 3
  %202 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %201, align 8
  store %struct.bfd_elf_version_expr* %202, %struct.bfd_elf_version_expr** %9, align 8
  br label %203

203:                                              ; preds = %199, %195
  br label %204

204:                                              ; preds = %257, %203
  %205 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %206 = icmp ne %struct.bfd_elf_version_expr* %205, null
  br i1 %206, label %207, label %261

207:                                              ; preds = %204
  %208 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %209 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %208, i32 0, i32 2
  %210 = load i8*, i8** %209, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %213, label %212

212:                                              ; preds = %207
  br label %257

213:                                              ; preds = %207
  %214 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %215 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %214, i32 0, i32 2
  %216 = load i8*, i8** %215, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 0
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 42
  br i1 %220, label %221, label %230

221:                                              ; preds = %213
  %222 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %223 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %222, i32 0, i32 2
  %224 = load i8*, i8** %223, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 1
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %221
  br label %261

230:                                              ; preds = %221, %213
  %231 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %232 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @BFD_ELF_VERSION_JAVA_TYPE, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %230
  %237 = load i8*, i8** %8, align 8
  store i8* %237, i8** %11, align 8
  br label %248

238:                                              ; preds = %230
  %239 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %240 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = icmp eq i32 %241, 129
  br i1 %242, label %243, label %245

243:                                              ; preds = %238
  %244 = load i8*, i8** %7, align 8
  store i8* %244, i8** %11, align 8
  br label %247

245:                                              ; preds = %238
  %246 = load i8*, i8** %6, align 8
  store i8* %246, i8** %11, align 8
  br label %247

247:                                              ; preds = %245, %243
  br label %248

248:                                              ; preds = %247, %236
  %249 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %250 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %249, i32 0, i32 2
  %251 = load i8*, i8** %250, align 8
  %252 = load i8*, i8** %11, align 8
  %253 = call i64 @fnmatch(i8* %251, i8* %252, i32 0)
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %248
  br label %261

256:                                              ; preds = %248
  br label %257

257:                                              ; preds = %256, %212
  %258 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %259 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %258, i32 0, i32 3
  %260 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %259, align 8
  store %struct.bfd_elf_version_expr* %260, %struct.bfd_elf_version_expr** %9, align 8
  br label %204

261:                                              ; preds = %255, %229, %204
  br label %262

262:                                              ; preds = %261, %177, %137, %99
  %263 = load i8*, i8** %7, align 8
  %264 = load i8*, i8** %6, align 8
  %265 = icmp ne i8* %263, %264
  br i1 %265, label %266, label %269

266:                                              ; preds = %262
  %267 = load i8*, i8** %7, align 8
  %268 = call i32 @free(i8* %267)
  br label %269

269:                                              ; preds = %266, %262
  %270 = load i8*, i8** %8, align 8
  %271 = load i8*, i8** %6, align 8
  %272 = icmp ne i8* %270, %271
  br i1 %272, label %273, label %276

273:                                              ; preds = %269
  %274 = load i8*, i8** %8, align 8
  %275 = call i32 @free(i8* %274)
  br label %276

276:                                              ; preds = %273, %269
  %277 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  ret %struct.bfd_elf_version_expr* %277
}

declare dso_local i8* @cplus_demangle(i8*, i32) #1

declare dso_local %struct.bfd_elf_version_expr* @htab_find(i64, %struct.bfd_elf_version_expr*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @fnmatch(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
