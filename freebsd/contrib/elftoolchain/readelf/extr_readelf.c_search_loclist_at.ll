; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_search_loclist_at.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_search_loclist_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i32, i32, i32, i32 }
%struct.loc_at = type { i32, i32, i32, i8*, i8*, i32 }

@DW_DLV_OK = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"dwarf_attrlist failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"dwarf_whatattr failed: %s\00", align 1
@DW_AT_location = common dso_local global i64 0, align 8
@DW_AT_string_length = common dso_local global i64 0, align 8
@DW_AT_return_addr = common dso_local global i64 0, align 8
@DW_AT_data_member_location = common dso_local global i64 0, align 8
@DW_AT_frame_base = common dso_local global i64 0, align 8
@DW_AT_segment = common dso_local global i64 0, align 8
@DW_AT_static_link = common dso_local global i64 0, align 8
@DW_AT_use_location = common dso_local global i64 0, align 8
@DW_AT_vtable_elem_location = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"dwarf_whatform failed: %s\00", align 1
@DW_FORM_data4 = common dso_local global i64 0, align 8
@DW_FORM_data8 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"dwarf_formudata failed: %s\00", align 1
@DW_FORM_sec_offset = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"dwarf_global_formref failed: %s\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"realloc failed\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"dwarf_child: %s\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"dwarf_siblingof: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*, i32, i8*, %struct.loc_at**, i64*, i64*)* @search_loclist_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @search_loclist_at(%struct.readelf* %0, i32 %1, i8* %2, %struct.loc_at** %3, i64* %4, i64* %5) #0 {
  %7 = alloca %struct.readelf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.loc_at**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.loc_at*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.loc_at** %3, %struct.loc_at*** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @dwarf_get_die_infotypes_flag(i32 %25)
  store i32 %26, i32* %21, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @dwarf_attrlist(i32 %27, i32** %14, i32* %18, i32* %22)
  store i32 %28, i32* %24, align 4
  %29 = load i32, i32* @DW_DLV_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %6
  %32 = load i32, i32* %24, align 4
  %33 = load i32, i32* @DW_DLV_ERROR, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* %22, align 4
  %37 = call i32 @dwarf_errmsg(i32 %36)
  %38 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %31
  br label %216

40:                                               ; preds = %6
  store i32 0, i32* %23, align 4
  br label %41

41:                                               ; preds = %212, %40
  %42 = load i32, i32* %23, align 4
  %43 = load i32, i32* %18, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %215

45:                                               ; preds = %41
  %46 = load i32*, i32** %14, align 8
  %47 = load i32, i32* %23, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dwarf_whatattr(i32 %50, i64* %19, i32* %22)
  %52 = load i32, i32* @DW_DLV_OK, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load i32, i32* %22, align 4
  %56 = call i32 @dwarf_errmsg(i32 %55)
  %57 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %212

58:                                               ; preds = %45
  %59 = load i64, i64* %19, align 8
  %60 = load i64, i64* @DW_AT_location, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %95

62:                                               ; preds = %58
  %63 = load i64, i64* %19, align 8
  %64 = load i64, i64* @DW_AT_string_length, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %95

66:                                               ; preds = %62
  %67 = load i64, i64* %19, align 8
  %68 = load i64, i64* @DW_AT_return_addr, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %66
  %71 = load i64, i64* %19, align 8
  %72 = load i64, i64* @DW_AT_data_member_location, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load i64, i64* %19, align 8
  %76 = load i64, i64* @DW_AT_frame_base, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %74
  %79 = load i64, i64* %19, align 8
  %80 = load i64, i64* @DW_AT_segment, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %78
  %83 = load i64, i64* %19, align 8
  %84 = load i64, i64* @DW_AT_static_link, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = load i64, i64* %19, align 8
  %88 = load i64, i64* @DW_AT_use_location, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i64, i64* %19, align 8
  %92 = load i64, i64* @DW_AT_vtable_elem_location, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %212

95:                                               ; preds = %90, %86, %82, %78, %74, %70, %66, %62, %58
  %96 = load i32*, i32** %14, align 8
  %97 = load i32, i32* %23, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dwarf_whatform(i32 %100, i64* %20, i32* %22)
  %102 = load i32, i32* @DW_DLV_OK, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %95
  %105 = load i32, i32* %22, align 4
  %106 = call i32 @dwarf_errmsg(i32 %105)
  %107 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  br label %212

108:                                              ; preds = %95
  %109 = load i64, i64* %20, align 8
  %110 = load i64, i64* @DW_FORM_data4, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i64, i64* %20, align 8
  %114 = load i64, i64* @DW_FORM_data8, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %130

116:                                              ; preds = %112, %108
  %117 = load i32*, i32** %14, align 8
  %118 = load i32, i32* %23, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @dwarf_formudata(i32 %121, i8** %16, i32* %22)
  %123 = load i32, i32* @DW_DLV_OK, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %116
  %126 = load i32, i32* %22, align 4
  %127 = call i32 @dwarf_errmsg(i32 %126)
  %128 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  br label %212

129:                                              ; preds = %116
  br label %151

130:                                              ; preds = %112
  %131 = load i64, i64* %20, align 8
  %132 = load i64, i64* @DW_FORM_sec_offset, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %149

134:                                              ; preds = %130
  %135 = load i32*, i32** %14, align 8
  %136 = load i32, i32* %23, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @dwarf_global_formref(i32 %139, i8** %17, i32* %22)
  %141 = load i32, i32* @DW_DLV_OK, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %134
  %144 = load i32, i32* %22, align 4
  %145 = call i32 @dwarf_errmsg(i32 %144)
  %146 = call i32 @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %145)
  br label %212

147:                                              ; preds = %134
  %148 = load i8*, i8** %17, align 8
  store i8* %148, i8** %16, align 8
  br label %150

149:                                              ; preds = %130
  br label %212

150:                                              ; preds = %147
  br label %151

151:                                              ; preds = %150, %129
  %152 = load i64*, i64** %12, align 8
  %153 = load i64, i64* %152, align 8
  %154 = load i64*, i64** %11, align 8
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %153, %155
  br i1 %156, label %157, label %175

157:                                              ; preds = %151
  %158 = load %struct.loc_at**, %struct.loc_at*** %10, align 8
  %159 = load %struct.loc_at*, %struct.loc_at** %158, align 8
  %160 = load i64*, i64** %12, align 8
  %161 = load i64, i64* %160, align 8
  %162 = mul i64 %161, 2
  %163 = mul i64 %162, 40
  %164 = call %struct.loc_at* @realloc(%struct.loc_at* %159, i64 %163)
  %165 = load %struct.loc_at**, %struct.loc_at*** %10, align 8
  store %struct.loc_at* %164, %struct.loc_at** %165, align 8
  %166 = load %struct.loc_at**, %struct.loc_at*** %10, align 8
  %167 = icmp eq %struct.loc_at** %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %157
  %169 = load i32, i32* @EXIT_FAILURE, align 4
  %170 = call i32 @errx(i32 %169, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %171

171:                                              ; preds = %168, %157
  %172 = load i64*, i64** %12, align 8
  %173 = load i64, i64* %172, align 8
  %174 = mul i64 %173, 2
  store i64 %174, i64* %172, align 8
  br label %175

175:                                              ; preds = %171, %151
  %176 = load %struct.loc_at**, %struct.loc_at*** %10, align 8
  %177 = load %struct.loc_at*, %struct.loc_at** %176, align 8
  %178 = load i64*, i64** %11, align 8
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.loc_at, %struct.loc_at* %177, i64 %179
  store %struct.loc_at* %180, %struct.loc_at** %13, align 8
  %181 = load i32*, i32** %14, align 8
  %182 = load i32, i32* %23, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.loc_at*, %struct.loc_at** %13, align 8
  %187 = getelementptr inbounds %struct.loc_at, %struct.loc_at* %186, i32 0, i32 5
  store i32 %185, i32* %187, align 8
  %188 = load i8*, i8** %16, align 8
  %189 = load %struct.loc_at*, %struct.loc_at** %13, align 8
  %190 = getelementptr inbounds %struct.loc_at, %struct.loc_at* %189, i32 0, i32 4
  store i8* %188, i8** %190, align 8
  %191 = load i8*, i8** %9, align 8
  %192 = load %struct.loc_at*, %struct.loc_at** %13, align 8
  %193 = getelementptr inbounds %struct.loc_at, %struct.loc_at* %192, i32 0, i32 3
  store i8* %191, i8** %193, align 8
  %194 = load %struct.readelf*, %struct.readelf** %7, align 8
  %195 = getelementptr inbounds %struct.readelf, %struct.readelf* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.loc_at*, %struct.loc_at** %13, align 8
  %198 = getelementptr inbounds %struct.loc_at, %struct.loc_at* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 8
  %199 = load %struct.readelf*, %struct.readelf** %7, align 8
  %200 = getelementptr inbounds %struct.readelf, %struct.readelf* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.loc_at*, %struct.loc_at** %13, align 8
  %203 = getelementptr inbounds %struct.loc_at, %struct.loc_at* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  %204 = load %struct.readelf*, %struct.readelf** %7, align 8
  %205 = getelementptr inbounds %struct.readelf, %struct.readelf* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.loc_at*, %struct.loc_at** %13, align 8
  %208 = getelementptr inbounds %struct.loc_at, %struct.loc_at* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  %209 = load i64*, i64** %11, align 8
  %210 = load i64, i64* %209, align 8
  %211 = add i64 %210, 1
  store i64 %211, i64* %209, align 8
  br label %212

212:                                              ; preds = %175, %149, %143, %125, %104, %94, %54
  %213 = load i32, i32* %23, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %23, align 4
  br label %41

215:                                              ; preds = %41
  br label %216

216:                                              ; preds = %215, %39
  %217 = load i32, i32* %8, align 4
  %218 = call i32 @dwarf_child(i32 %217, i32* %15, i32* %22)
  store i32 %218, i32* %24, align 4
  %219 = load i32, i32* %24, align 4
  %220 = load i32, i32* @DW_DLV_ERROR, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %216
  %223 = load i32, i32* %22, align 4
  %224 = call i32 @dwarf_errmsg(i32 %223)
  %225 = call i32 @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %224)
  br label %238

226:                                              ; preds = %216
  %227 = load i32, i32* %24, align 4
  %228 = load i32, i32* @DW_DLV_OK, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %237

230:                                              ; preds = %226
  %231 = load %struct.readelf*, %struct.readelf** %7, align 8
  %232 = load i32, i32* %15, align 4
  %233 = load i8*, i8** %9, align 8
  %234 = load %struct.loc_at**, %struct.loc_at*** %10, align 8
  %235 = load i64*, i64** %11, align 8
  %236 = load i64*, i64** %12, align 8
  call void @search_loclist_at(%struct.readelf* %231, i32 %232, i8* %233, %struct.loc_at** %234, i64* %235, i64* %236)
  br label %237

237:                                              ; preds = %230, %226
  br label %238

238:                                              ; preds = %237, %222
  %239 = load %struct.readelf*, %struct.readelf** %7, align 8
  %240 = getelementptr inbounds %struct.readelf, %struct.readelf* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %8, align 4
  %243 = load i32, i32* %21, align 4
  %244 = call i32 @dwarf_siblingof_b(i32 %241, i32 %242, i32* %15, i32 %243, i32* %22)
  store i32 %244, i32* %24, align 4
  %245 = load i32, i32* %24, align 4
  %246 = load i32, i32* @DW_DLV_ERROR, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %252

248:                                              ; preds = %238
  %249 = load i32, i32* %22, align 4
  %250 = call i32 @dwarf_errmsg(i32 %249)
  %251 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %250)
  br label %264

252:                                              ; preds = %238
  %253 = load i32, i32* %24, align 4
  %254 = load i32, i32* @DW_DLV_OK, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %263

256:                                              ; preds = %252
  %257 = load %struct.readelf*, %struct.readelf** %7, align 8
  %258 = load i32, i32* %15, align 4
  %259 = load i8*, i8** %9, align 8
  %260 = load %struct.loc_at**, %struct.loc_at*** %10, align 8
  %261 = load i64*, i64** %11, align 8
  %262 = load i64*, i64** %12, align 8
  call void @search_loclist_at(%struct.readelf* %257, i32 %258, i8* %259, %struct.loc_at** %260, i64* %261, i64* %262)
  br label %263

263:                                              ; preds = %256, %252
  br label %264

264:                                              ; preds = %263, %248
  ret void
}

declare dso_local i32 @dwarf_get_die_infotypes_flag(i32) #1

declare dso_local i32 @dwarf_attrlist(i32, i32**, i32*, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @dwarf_errmsg(i32) #1

declare dso_local i32 @dwarf_whatattr(i32, i64*, i32*) #1

declare dso_local i32 @dwarf_whatform(i32, i64*, i32*) #1

declare dso_local i32 @dwarf_formudata(i32, i8**, i32*) #1

declare dso_local i32 @dwarf_global_formref(i32, i8**, i32*) #1

declare dso_local %struct.loc_at* @realloc(%struct.loc_at*, i64) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @dwarf_child(i32, i32*, i32*) #1

declare dso_local i32 @dwarf_siblingof_b(i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
