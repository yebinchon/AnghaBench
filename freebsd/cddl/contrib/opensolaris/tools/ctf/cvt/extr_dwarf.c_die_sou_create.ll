; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_dwarf.c_die_sou_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_dwarf.c_die_sou_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_23__*, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, i8*, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_25__*, i32*, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_24__*, i32, i32 }

@FORWARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"die %llu: creating %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"forward decl\00", align 1
@die_fwd_map = common dso_local global i32 0, align 4
@DW_AT_byte_size = common dso_local global i32 0, align 4
@DW_ATTR_REQ = common dso_local global i32 0, align 4
@DW_TAG_member = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"die %llu: mem %llu: creating member\0A\00", align 1
@DW_AT_type = common dso_local global i32 0, align 4
@DW_AT_data_member_location = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"die %llu: got mloff %llx\0A\00", align 1
@DW_AT_bit_size = common dso_local global i32 0, align 4
@DW_AT_bit_offset = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"die %llu: mem %llu: created \22%s\22 (off %u sz %u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"orphan %s\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"die %llu: worked around %s %s\0A\00", align 1
@II_SOU = common dso_local global i32 0, align 4
@NBBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*, i32*, i32, %struct.TYPE_24__*, i32, i8*)* @die_sou_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @die_sou_create(%struct.TYPE_27__* %0, i32* %1, i32 %2, %struct.TYPE_24__* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_25__*, align 8
  %19 = alloca %struct.TYPE_25__**, align 8
  %20 = alloca %struct.TYPE_26__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i64 @die_isdecl(%struct.TYPE_27__* %27, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %6
  %32 = load i32, i32* @FORWARD, align 4
  br label %35

33:                                               ; preds = %6
  %34 = load i32, i32* %11, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @FORWARD, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %48

46:                                               ; preds = %35
  %47 = load i8*, i8** %12, align 8
  br label %48

48:                                               ; preds = %46, %45
  %49 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %45 ], [ %47, %46 ]
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %51 = call i8* @tdesc_name(%struct.TYPE_24__* %50)
  %52 = call i32 (i32, i8*, i32, i8*, ...) @debug(i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %39, i8* %49, i8* %51)
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @FORWARD, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %63 = call i32 @hash_add(i32 %61, %struct.TYPE_24__* %62)
  br label %258

64:                                               ; preds = %48
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %69 = load i32, i32* @die_fwd_map, align 4
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %71 = call i32 @hash_find_iter(i32 %67, %struct.TYPE_24__* %68, i32 %69, %struct.TYPE_24__* %70)
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* @DW_AT_byte_size, align 4
  %75 = load i32, i32* @DW_ATTR_REQ, align 4
  %76 = call i64 @die_unsigned(%struct.TYPE_27__* %72, i32* %73, i32 %74, i32* %13, i32 %75)
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = call i32* @die_child(%struct.TYPE_27__* %80, i32* %81)
  store i32* %82, i32** %17, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %64
  br label %231

85:                                               ; preds = %64
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 3
  store %struct.TYPE_25__** %87, %struct.TYPE_25__*** %19, align 8
  br label %88

88:                                               ; preds = %189, %85
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %90 = load i32*, i32** %17, align 8
  %91 = call i32 @die_off(%struct.TYPE_27__* %89, i32* %90)
  store i32 %91, i32* %21, align 4
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %93 = load i32*, i32** %17, align 8
  %94 = call i64 @die_tag(%struct.TYPE_27__* %92, i32* %93)
  store i64 %94, i64* %22, align 8
  %95 = load i64, i64* %22, align 8
  %96 = load i64, i64* @DW_TAG_member, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %88
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %100 = load i32*, i32** %17, align 8
  %101 = call i32 @die_create_one(%struct.TYPE_27__* %99, i32* %100)
  br label %189

102:                                              ; preds = %88
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %21, align 4
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to i8*
  %107 = call i32 (i32, i8*, i32, i8*, ...) @debug(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %103, i8* %106)
  %108 = call i8* @xcalloc(i32 32)
  %109 = bitcast i8* %108 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %109, %struct.TYPE_25__** %18, align 8
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %111 = load i32*, i32** %17, align 8
  %112 = call i32* @die_name(%struct.TYPE_27__* %110, i32* %111)
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 3
  store i32* %112, i32** %114, align 8
  %115 = icmp eq i32* %112, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %102
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 3
  store i32* null, i32** %118, align 8
  br label %119

119:                                              ; preds = %116, %102
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %121 = load i32*, i32** %17, align 8
  %122 = load i32, i32* @DW_AT_type, align 4
  %123 = call i32 @die_lookup_pass1(%struct.TYPE_27__* %120, i32* %121, i32 %122)
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %127 = load i32*, i32** %17, align 8
  %128 = load i32, i32* @DW_AT_data_member_location, align 4
  %129 = call i64 @die_mem_offset(%struct.TYPE_27__* %126, i32* %127, i32 %128, i32* %23, i32 0)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %119
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %23, align 4
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to i8*
  %136 = call i32 (i32, i8*, i32, i8*, ...) @debug(i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %132, i8* %135)
  %137 = load i32, i32* %23, align 4
  %138 = mul nsw i32 %137, 8
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  br label %141

141:                                              ; preds = %131, %119
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %143 = load i32*, i32** %17, align 8
  %144 = load i32, i32* @DW_AT_bit_size, align 4
  %145 = call i64 @die_unsigned(%struct.TYPE_27__* %142, i32* %143, i32 %144, i32* %14, i32 0)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load i32, i32* %14, align 4
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  br label %158

151:                                              ; preds = %141
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @tdesc_bitsize(i32 %154)
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  br label %158

158:                                              ; preds = %151, %147
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %160 = load i32*, i32** %17, align 8
  %161 = load i32, i32* @DW_AT_bit_offset, align 4
  %162 = call i64 @die_unsigned(%struct.TYPE_27__* %159, i32* %160, i32 %161, i32* %15, i32 0)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %158
  %165 = load i32, i32* %15, align 4
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %168, %165
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %164, %158
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %21, align 4
  %173 = sext i32 %172 to i64
  %174 = inttoptr i64 %173 to i8*
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 3
  %177 = load i32*, i32** %176, align 8
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (i32, i8*, i32, i8*, ...) @debug(i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %171, i8* %174, i32* %177, i32 %180, i32 %183)
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %186 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %19, align 8
  store %struct.TYPE_25__* %185, %struct.TYPE_25__** %186, align 8
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 2
  store %struct.TYPE_25__** %188, %struct.TYPE_25__*** %19, align 8
  br label %189

189:                                              ; preds = %170, %98
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %191 = load i32*, i32** %17, align 8
  %192 = call i32* @die_sibling(%struct.TYPE_27__* %190, i32* %191)
  store i32* %192, i32** %17, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %88, label %194

194:                                              ; preds = %189
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 3
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %196, align 8
  %198 = icmp eq %struct.TYPE_25__* %197, null
  br i1 %198, label %199, label %230

199:                                              ; preds = %194
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %201 = call i8* @tdesc_name(%struct.TYPE_24__* %200)
  store i8* %201, i8** %24, align 8
  %202 = load i8*, i8** %24, align 8
  %203 = call i32 @strlen(i8* %202)
  %204 = add nsw i32 7, %203
  %205 = add nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  store i64 %206, i64* %25, align 8
  %207 = load i64, i64* %25, align 8
  %208 = call i8* @xmalloc(i64 %207)
  store i8* %208, i8** %26, align 8
  %209 = load i8*, i8** %26, align 8
  %210 = load i64, i64* %25, align 8
  %211 = load i8*, i8** %24, align 8
  %212 = call i32 @snprintf(i8* %209, i64 %210, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %211)
  %213 = load i32, i32* %9, align 4
  %214 = load i8*, i8** %12, align 8
  %215 = load i8*, i8** %24, align 8
  %216 = call i32 (i32, i8*, i32, i8*, ...) @debug(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %213, i8* %214, i8* %215)
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 2
  %219 = load i8*, i8** %218, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %226

221:                                              ; preds = %199
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 2
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @free(i8* %224)
  br label %226

226:                                              ; preds = %221, %199
  %227 = load i8*, i8** %26, align 8
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %228, i32 0, i32 2
  store i8* %227, i8** %229, align 8
  br label %258

230:                                              ; preds = %194
  br label %231

231:                                              ; preds = %230, %84
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %232, i32 0, i32 2
  %234 = load i8*, i8** %233, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %236, label %258

236:                                              ; preds = %231
  %237 = call i8* @xcalloc(i32 16)
  %238 = bitcast i8* %237 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %238, %struct.TYPE_26__** %20, align 8
  %239 = load i32, i32* @II_SOU, align 4
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 4
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %242, i32 0, i32 2
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @xstrdup(i8* %244)
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %247 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 8
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %249, i32 0, i32 0
  store %struct.TYPE_24__* %248, %struct.TYPE_24__** %250, align 8
  %251 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %257 = call i32 @iidesc_add(i32 %255, %struct.TYPE_26__* %256)
  br label %258

258:                                              ; preds = %58, %226, %236, %231
  ret void
}

declare dso_local i64 @die_isdecl(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @debug(i32, i8*, i32, i8*, ...) #1

declare dso_local i8* @tdesc_name(%struct.TYPE_24__*) #1

declare dso_local i32 @hash_add(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @hash_find_iter(i32, %struct.TYPE_24__*, i32, %struct.TYPE_24__*) #1

declare dso_local i64 @die_unsigned(%struct.TYPE_27__*, i32*, i32, i32*, i32) #1

declare dso_local i32* @die_child(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @die_off(%struct.TYPE_27__*, i32*) #1

declare dso_local i64 @die_tag(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @die_create_one(%struct.TYPE_27__*, i32*) #1

declare dso_local i8* @xcalloc(i32) #1

declare dso_local i32* @die_name(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @die_lookup_pass1(%struct.TYPE_27__*, i32*, i32) #1

declare dso_local i64 @die_mem_offset(%struct.TYPE_27__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @tdesc_bitsize(i32) #1

declare dso_local i32* @die_sibling(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @iidesc_add(i32, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
