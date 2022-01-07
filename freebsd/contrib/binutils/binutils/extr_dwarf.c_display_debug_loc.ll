; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dwarf.c_display_debug_loc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dwarf.c_display_debug_loc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64*, i32, i64, i32*, i64 }
%struct.dwarf_section = type { i8*, i64, i8*, i64 }

@.str = private unnamed_addr constant [27 x i8] c"\0AThe %s section is empty.\0A\00", align 1
@num_debug_info_entries = common dso_local global i32 0, align 4
@debug_information = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [66 x i8] c"Location lists in .debug_info section aren't in ascending order!\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"No location lists in .debug_info section!\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Location lists in %s section start at 0x%lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Contents of the %s section:\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"    Offset   Begin    End      Expression\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"There is a hole [0x%lx - 0x%lx] in .debug_loc section.\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"There is an overlap [0x%lx - 0x%lx] in .debug_loc section.\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"Offset 0x%lx is bigger than .debug_loc section size.\0A\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"Location list starting at offset 0x%lx is not terminated.\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"    %8.8lx <End of list>\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"    %8.8lx %8.8lx %8.8lx (base address)\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"    %8.8lx %8.8lx %8.8lx (\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c" [without DW_AT_frame_base]\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c" (start == end)\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c" (start > end)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwarf_section*, i8*)* @display_debug_loc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @display_debug_loc(%struct.dwarf_section* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwarf_section*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i16, align 2
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.dwarf_section* %0, %struct.dwarf_section** %4, align 8
  store i8* %1, i8** %5, align 8
  %28 = load %struct.dwarf_section*, %struct.dwarf_section** %4, align 8
  %29 = getelementptr inbounds %struct.dwarf_section, %struct.dwarf_section* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  store i8* %31, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %32 = load %struct.dwarf_section*, %struct.dwarf_section** %4, align 8
  %33 = getelementptr inbounds %struct.dwarf_section, %struct.dwarf_section* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %8, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %2
  %41 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.dwarf_section*, %struct.dwarf_section** %4, align 8
  %43 = getelementptr inbounds %struct.dwarf_section, %struct.dwarf_section* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i8*, ...) @printf(i8* %41, i8* %44)
  store i32 0, i32* %3, align 4
  br label %418

46:                                               ; preds = %2
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @load_debug_info(i8* %47)
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %117, %46
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @num_debug_info_entries, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %120

53:                                               ; preds = %49
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_information, align 8
  %55 = load i32, i32* %13, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %18, align 4
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add i32 %61, %60
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %116

65:                                               ; preds = %53
  %66 = load i32, i32* %18, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %116

68:                                               ; preds = %65
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %68
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_information, align 8
  %73 = load i32, i32* %13, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %11, align 8
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %12, align 4
  store i32 1, i32* %15, align 4
  store i32 1, i32* %14, align 4
  br label %82

81:                                               ; preds = %68
  store i32 0, i32* %14, align 4
  br label %82

82:                                               ; preds = %81, %71
  br label %83

83:                                               ; preds = %112, %82
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %18, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %115

87:                                               ; preds = %83
  %88 = load i64, i64* %11, align 8
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_information, align 8
  %90 = load i32, i32* %13, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %14, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = icmp ugt i64 %88, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %87
  store i32 0, i32* %16, align 4
  br label %115

101:                                              ; preds = %87
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_information, align 8
  %103 = load i32, i32* %13, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %14, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %11, align 8
  br label %112

112:                                              ; preds = %101
  %113 = load i32, i32* %14, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %14, align 4
  br label %83

115:                                              ; preds = %100, %83
  br label %116

116:                                              ; preds = %115, %65, %53
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %13, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %49

120:                                              ; preds = %49
  %121 = load i32, i32* %16, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = call i8* @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %125 = call i32 @error(i8* %124)
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32, i32* %15, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %131 = call i32 @error(i8* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_information, align 8
  %134 = load i32, i32* %12, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ugt i32 %138, 0
  br i1 %139, label %140, label %167

140:                                              ; preds = %132
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_information, align 8
  %142 = load i32, i32* %12, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.dwarf_section*, %struct.dwarf_section** %4, align 8
  %150 = getelementptr inbounds %struct.dwarf_section, %struct.dwarf_section* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %148, %151
  br i1 %152, label %153, label %167

153:                                              ; preds = %140
  %154 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %155 = load %struct.dwarf_section*, %struct.dwarf_section** %4, align 8
  %156 = getelementptr inbounds %struct.dwarf_section, %struct.dwarf_section* %155, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_information, align 8
  %159 = load i32, i32* %12, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i64*, i64** %162, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 0
  %165 = load i64, i64* %164, align 8
  %166 = call i32 (i8*, ...) @warn(i8* %154, i8* %157, i64 %165)
  br label %167

167:                                              ; preds = %153, %140, %132
  %168 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %169 = load %struct.dwarf_section*, %struct.dwarf_section** %4, align 8
  %170 = getelementptr inbounds %struct.dwarf_section, %struct.dwarf_section* %169, i32 0, i32 2
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 (i8*, ...) @printf(i8* %168, i8* %171)
  %173 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %174 = call i32 (i8*, ...) @printf(i8* %173)
  store i32 0, i32* %15, align 4
  %175 = load i32, i32* %12, align 4
  store i32 %175, i32* %13, align 4
  br label %176

176:                                              ; preds = %414, %167
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* @num_debug_info_entries, align 4
  %179 = icmp ult i32 %177, %178
  br i1 %179, label %180, label %417

180:                                              ; preds = %176
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_information, align 8
  %182 = load i32, i32* %13, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  store i32 %186, i32* %23, align 4
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_information, align 8
  %188 = load i32, i32* %13, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %24, align 8
  store i32 0, i32* %14, align 4
  br label %193

193:                                              ; preds = %410, %180
  %194 = load i32, i32* %14, align 4
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_information, align 8
  %196 = load i32, i32* %13, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp ult i32 %194, %200
  br i1 %201, label %202, label %413

202:                                              ; preds = %193
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_information, align 8
  %204 = load i32, i32* %13, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 4
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %14, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %27, align 4
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_information, align 8
  %214 = load i32, i32* %13, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 1
  %218 = load i64*, i64** %217, align 8
  %219 = load i32, i32* %14, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %218, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.dwarf_section*, %struct.dwarf_section** %4, align 8
  %224 = getelementptr inbounds %struct.dwarf_section, %struct.dwarf_section* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = sub i64 %222, %225
  store i64 %226, i64* %22, align 8
  %227 = load i8*, i8** %9, align 8
  %228 = load i64, i64* %22, align 8
  %229 = getelementptr inbounds i8, i8* %227, i64 %228
  store i8* %229, i8** %17, align 8
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_information, align 8
  %231 = load i32, i32* %13, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 5
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %25, align 8
  %236 = load i32, i32* %15, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %202
  store i32 1, i32* %15, align 4
  br label %275

239:                                              ; preds = %202
  %240 = load i8*, i8** %6, align 8
  %241 = load i8*, i8** %17, align 8
  %242 = icmp ult i8* %240, %241
  br i1 %242, label %243, label %256

243:                                              ; preds = %239
  %244 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  %245 = load i8*, i8** %6, align 8
  %246 = load i8*, i8** %9, align 8
  %247 = ptrtoint i8* %245 to i64
  %248 = ptrtoint i8* %246 to i64
  %249 = sub i64 %247, %248
  %250 = load i8*, i8** %17, align 8
  %251 = load i8*, i8** %9, align 8
  %252 = ptrtoint i8* %250 to i64
  %253 = ptrtoint i8* %251 to i64
  %254 = sub i64 %252, %253
  %255 = call i32 (i8*, ...) @warn(i8* %244, i64 %249, i64 %254)
  br label %274

256:                                              ; preds = %239
  %257 = load i8*, i8** %6, align 8
  %258 = load i8*, i8** %17, align 8
  %259 = icmp ugt i8* %257, %258
  br i1 %259, label %260, label %273

260:                                              ; preds = %256
  %261 = call i8* @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  %262 = load i8*, i8** %6, align 8
  %263 = load i8*, i8** %9, align 8
  %264 = ptrtoint i8* %262 to i64
  %265 = ptrtoint i8* %263 to i64
  %266 = sub i64 %264, %265
  %267 = load i8*, i8** %17, align 8
  %268 = load i8*, i8** %9, align 8
  %269 = ptrtoint i8* %267 to i64
  %270 = ptrtoint i8* %268 to i64
  %271 = sub i64 %269, %270
  %272 = call i32 (i8*, ...) @warn(i8* %261, i64 %266, i64 %271)
  br label %273

273:                                              ; preds = %260, %256
  br label %274

274:                                              ; preds = %273, %243
  br label %275

275:                                              ; preds = %274, %238
  %276 = load i8*, i8** %17, align 8
  store i8* %276, i8** %6, align 8
  %277 = load i64, i64* %22, align 8
  %278 = load i64, i64* %8, align 8
  %279 = icmp uge i64 %277, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %275
  %281 = call i8* @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0))
  %282 = load i64, i64* %22, align 8
  %283 = call i32 (i8*, ...) @warn(i8* %281, i64 %282)
  br label %410

284:                                              ; preds = %275
  br label %285

285:                                              ; preds = %284, %329, %402
  %286 = load i8*, i8** %6, align 8
  %287 = load i32, i32* %23, align 4
  %288 = mul i32 2, %287
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %286, i64 %289
  %291 = load i8*, i8** %7, align 8
  %292 = icmp ugt i8* %290, %291
  br i1 %292, label %293, label %297

293:                                              ; preds = %285
  %294 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0))
  %295 = load i64, i64* %22, align 8
  %296 = call i32 (i8*, ...) @warn(i8* %294, i64 %295)
  br label %409

297:                                              ; preds = %285
  %298 = load i8*, i8** %6, align 8
  %299 = load i32, i32* %23, align 4
  %300 = call i8* @byte_get(i8* %298, i32 %299)
  %301 = ptrtoint i8* %300 to i64
  store i64 %301, i64* %19, align 8
  %302 = load i32, i32* %23, align 4
  %303 = load i8*, i8** %6, align 8
  %304 = zext i32 %302 to i64
  %305 = getelementptr inbounds i8, i8* %303, i64 %304
  store i8* %305, i8** %6, align 8
  %306 = load i8*, i8** %6, align 8
  %307 = load i32, i32* %23, align 4
  %308 = call i8* @byte_get(i8* %306, i32 %307)
  %309 = ptrtoint i8* %308 to i64
  store i64 %309, i64* %20, align 8
  %310 = load i32, i32* %23, align 4
  %311 = load i8*, i8** %6, align 8
  %312 = zext i32 %310 to i64
  %313 = getelementptr inbounds i8, i8* %311, i64 %312
  store i8* %313, i8** %6, align 8
  %314 = load i64, i64* %19, align 8
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %316, label %323

316:                                              ; preds = %297
  %317 = load i64, i64* %20, align 8
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %316
  %320 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %321 = load i64, i64* %22, align 8
  %322 = call i32 (i8*, ...) @printf(i8* %320, i64 %321)
  br label %409

323:                                              ; preds = %316, %297
  %324 = load i64, i64* %19, align 8
  %325 = icmp eq i64 %324, -1
  br i1 %325, label %326, label %336

326:                                              ; preds = %323
  %327 = load i64, i64* %20, align 8
  %328 = icmp ne i64 %327, -1
  br i1 %328, label %329, label %336

329:                                              ; preds = %326
  %330 = load i64, i64* %20, align 8
  store i64 %330, i64* %25, align 8
  %331 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %332 = load i64, i64* %22, align 8
  %333 = load i64, i64* %19, align 8
  %334 = load i64, i64* %20, align 8
  %335 = call i32 (i8*, ...) @printf(i8* %331, i64 %332, i64 %333, i64 %334)
  br label %285

336:                                              ; preds = %326, %323
  %337 = load i8*, i8** %6, align 8
  %338 = getelementptr inbounds i8, i8* %337, i64 2
  %339 = load i8*, i8** %7, align 8
  %340 = icmp ugt i8* %338, %339
  br i1 %340, label %341, label %345

341:                                              ; preds = %336
  %342 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0))
  %343 = load i64, i64* %22, align 8
  %344 = call i32 (i8*, ...) @warn(i8* %342, i64 %343)
  br label %409

345:                                              ; preds = %336
  %346 = load i8*, i8** %6, align 8
  %347 = call i8* @byte_get(i8* %346, i32 2)
  %348 = ptrtoint i8* %347 to i16
  store i16 %348, i16* %21, align 2
  %349 = load i8*, i8** %6, align 8
  %350 = getelementptr inbounds i8, i8* %349, i64 2
  store i8* %350, i8** %6, align 8
  %351 = load i8*, i8** %6, align 8
  %352 = load i16, i16* %21, align 2
  %353 = zext i16 %352 to i32
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8, i8* %351, i64 %354
  %356 = load i8*, i8** %7, align 8
  %357 = icmp ugt i8* %355, %356
  br i1 %357, label %358, label %362

358:                                              ; preds = %345
  %359 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0))
  %360 = load i64, i64* %22, align 8
  %361 = call i32 (i8*, ...) @warn(i8* %359, i64 %360)
  br label %409

362:                                              ; preds = %345
  %363 = load i64, i64* %22, align 8
  %364 = load i64, i64* %19, align 8
  %365 = load i64, i64* %25, align 8
  %366 = add i64 %364, %365
  %367 = load i64, i64* %20, align 8
  %368 = load i64, i64* %25, align 8
  %369 = add i64 %367, %368
  %370 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i64 %363, i64 %366, i64 %369)
  %371 = load i8*, i8** %6, align 8
  %372 = load i32, i32* %23, align 4
  %373 = load i16, i16* %21, align 2
  %374 = load i64, i64* %24, align 8
  %375 = call i32 @decode_location_expression(i8* %371, i32 %372, i16 zeroext %373, i64 %374)
  store i32 %375, i32* %26, align 4
  %376 = call i32 @putchar(i8 signext 41)
  %377 = load i32, i32* %26, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %385

379:                                              ; preds = %362
  %380 = load i32, i32* %27, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %385, label %382

382:                                              ; preds = %379
  %383 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  %384 = call i32 (i8*, ...) @printf(i8* %383)
  br label %385

385:                                              ; preds = %382, %379, %362
  %386 = load i64, i64* %19, align 8
  %387 = load i64, i64* %20, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %389, label %393

389:                                              ; preds = %385
  %390 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %391 = load i32, i32* @stdout, align 4
  %392 = call i32 @fputs(i8* %390, i32 %391)
  br label %402

393:                                              ; preds = %385
  %394 = load i64, i64* %19, align 8
  %395 = load i64, i64* %20, align 8
  %396 = icmp ugt i64 %394, %395
  br i1 %396, label %397, label %401

397:                                              ; preds = %393
  %398 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %399 = load i32, i32* @stdout, align 4
  %400 = call i32 @fputs(i8* %398, i32 %399)
  br label %401

401:                                              ; preds = %397, %393
  br label %402

402:                                              ; preds = %401, %389
  %403 = call i32 @putchar(i8 signext 10)
  %404 = load i16, i16* %21, align 2
  %405 = zext i16 %404 to i32
  %406 = load i8*, i8** %6, align 8
  %407 = sext i32 %405 to i64
  %408 = getelementptr inbounds i8, i8* %406, i64 %407
  store i8* %408, i8** %6, align 8
  br label %285

409:                                              ; preds = %358, %341, %319, %293
  br label %410

410:                                              ; preds = %409, %280
  %411 = load i32, i32* %14, align 4
  %412 = add i32 %411, 1
  store i32 %412, i32* %14, align 4
  br label %193

413:                                              ; preds = %193
  br label %414

414:                                              ; preds = %413
  %415 = load i32, i32* %13, align 4
  %416 = add i32 %415, 1
  store i32 %416, i32* %13, align 4
  br label %176

417:                                              ; preds = %176
  store i32 1, i32* %3, align 4
  br label %418

418:                                              ; preds = %417, %40
  %419 = load i32, i32* %3, align 4
  ret i32 %419
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @load_debug_info(i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i8* @byte_get(i8*, i32) #1

declare dso_local i32 @decode_location_expression(i8*, i32, i16 zeroext, i64) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
