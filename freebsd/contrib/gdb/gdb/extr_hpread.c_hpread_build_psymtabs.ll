; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_build_psymtabs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_build_psymtabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i8*, %struct.TYPE_21__, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.cleanup = type { i32 }
%union.dnttentry = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64, i64, i32 }
%struct.partial_symtab = type { i8*, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_23__ = type { i64, i64, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@really_free_pendings = common dso_local global i32 0, align 4
@last_source_file = common dso_local global i64 0, align 8
@QUIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c".h\00", align 1
@VAR_DOMAIN = common dso_local global i32 0, align 4
@LOC_BLOCK = common dso_local global i32 0, align 4
@language_unknown = common dso_local global i32 0, align 4
@STRUCT_DOMAIN = common dso_local global i32 0, align 4
@LOC_STATIC = common dso_local global i32 0, align 4
@LOC_REGISTER = common dso_local global i32 0, align 4
@LOC_LOCAL = common dso_local global i32 0, align 4
@LOC_UNDEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"globals\00", align 1
@DNTT_TYPE_CLASS = common dso_local global i32 0, align 4
@DNTT_TYPE_ENUM = common dso_local global i32 0, align 4
@DNTT_TYPE_TEMPLATE = common dso_local global i32 0, align 4
@LOC_CONST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpread_build_psymtabs(%struct.objfile* %0, i32 %1) #0 {
  %3 = alloca %struct.objfile*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cleanup*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.dnttentry*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.partial_symtab*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.partial_symtab**, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8**, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.objfile* %0, %struct.objfile** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %31 = call i32 (...) @free_pending_blocks()
  %32 = load i32, i32* @really_free_pendings, align 4
  %33 = call i32 @make_cleanup(i32 %32, i32 0)
  store %struct.partial_symtab* null, %struct.partial_symtab** %17, align 8
  store i32 30, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %34 = load i32, i32* %19, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 8
  %37 = trunc i64 %36 to i32
  %38 = call i64 @alloca(i32 %37)
  %39 = inttoptr i64 %38 to i8**
  store i8** %39, i8*** %18, align 8
  store i32 30, i32* %23, align 4
  store i32 0, i32* %22, align 4
  %40 = load i32, i32* %23, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 8
  %43 = trunc i64 %42 to i32
  %44 = call i64 @alloca(i32 %43)
  %45 = inttoptr i64 %44 to %struct.partial_symtab**
  store %struct.partial_symtab** %45, %struct.partial_symtab*** %21, align 8
  %46 = load %struct.objfile*, %struct.objfile** %3, align 8
  %47 = call %struct.cleanup* @make_cleanup_free_objfile(%struct.objfile* %46)
  store %struct.cleanup* %47, %struct.cleanup** %7, align 8
  store i64 0, i64* @last_source_file, align 8
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %700, %2
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %51, label %703

51:                                               ; preds = %48
  store i32 0, i32* %24, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.objfile*, %struct.objfile** %3, align 8
  %56 = call i32 @GNTT_SYMCOUNT(%struct.objfile* %55)
  store i32 %56, i32* %9, align 4
  br label %60

57:                                               ; preds = %51
  %58 = load %struct.objfile*, %struct.objfile** %3, align 8
  %59 = call i32 @LNTT_SYMCOUNT(%struct.objfile* %58)
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %696, %60
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %699

66:                                               ; preds = %62
  %67 = load i32, i32* @QUIT, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.objfile*, %struct.objfile** %3, align 8
  %73 = call %union.dnttentry* @hpread_get_gntt(i32 %71, %struct.objfile* %72)
  store %union.dnttentry* %73, %union.dnttentry** %12, align 8
  br label %78

74:                                               ; preds = %66
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.objfile*, %struct.objfile** %3, align 8
  %77 = call %union.dnttentry* @hpread_get_lntt(i32 %75, %struct.objfile* %76)
  store %union.dnttentry* %77, %union.dnttentry** %12, align 8
  br label %78

78:                                               ; preds = %74, %70
  %79 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %80 = bitcast %union.dnttentry* %79 to %struct.TYPE_17__*
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %696

85:                                               ; preds = %78
  %86 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %87 = bitcast %union.dnttentry* %86 to %struct.TYPE_17__*
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  switch i32 %89, label %695 [
    i32 131, label %90
    i32 132, label %235
    i32 134, label %290
    i32 135, label %290
    i32 138, label %354
    i32 140, label %418
    i32 136, label %418
    i32 130, label %432
    i32 137, label %432
    i32 128, label %432
    i32 129, label %432
    i32 133, label %645
    i32 139, label %645
  ]

90:                                               ; preds = %85
  %91 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %92 = load %struct.objfile*, %struct.objfile** %3, align 8
  %93 = call i32 @set_namestring(%union.dnttentry* %91, i8** %5, %struct.objfile* %92)
  %94 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %95 = icmp ne %struct.partial_symtab* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %90
  %97 = load i8*, i8** %5, align 8
  %98 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %99 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @strcmp(i8* %97, i8* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %96
  br label %696

104:                                              ; preds = %96, %90
  %105 = load i8*, i8** %5, align 8
  %106 = call i8* @strrchr(i8* %105, i8 signext 46)
  store i8* %106, i8** %14, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %160, label %110

110:                                              ; preds = %104
  store i32 0, i32* %26, align 4
  store i32 0, i32* %25, align 4
  br label %111

111:                                              ; preds = %126, %110
  %112 = load i32, i32* %25, align 4
  %113 = load i32, i32* %20, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %111
  %116 = load i8*, i8** %5, align 8
  %117 = load i8**, i8*** %18, align 8
  %118 = load i32, i32* %25, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @strcmp(i8* %116, i8* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %115
  store i32 1, i32* %26, align 4
  br label %129

125:                                              ; preds = %115
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %25, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %25, align 4
  br label %111

129:                                              ; preds = %124, %111
  %130 = load i32, i32* %26, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %696

133:                                              ; preds = %129
  %134 = load i8*, i8** %5, align 8
  %135 = load i8**, i8*** %18, align 8
  %136 = load i32, i32* %20, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %20, align 4
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8*, i8** %135, i64 %138
  store i8* %134, i8** %139, align 8
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* %19, align 4
  %142 = icmp sge i32 %140, %141
  br i1 %142, label %143, label %159

143:                                              ; preds = %133
  %144 = load i8**, i8*** %18, align 8
  store i8** %144, i8*** %27, align 8
  %145 = load i32, i32* %19, align 4
  %146 = mul nsw i32 %145, 2
  store i32 %146, i32* %19, align 4
  %147 = sext i32 %146 to i64
  %148 = mul i64 %147, 8
  %149 = trunc i64 %148 to i32
  %150 = call i64 @alloca(i32 %149)
  %151 = inttoptr i64 %150 to i8**
  store i8** %151, i8*** %18, align 8
  %152 = load i8**, i8*** %18, align 8
  %153 = load i8**, i8*** %27, align 8
  %154 = load i32, i32* %20, align 4
  %155 = sext i32 %154 to i64
  %156 = mul i64 %155, 8
  %157 = trunc i64 %156 to i32
  %158 = call i32 @memcpy(i8** %152, i8** %153, i32 %157)
  br label %159

159:                                              ; preds = %143, %133
  br label %696

160:                                              ; preds = %104
  %161 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %162 = icmp ne %struct.partial_symtab* %161, null
  br i1 %162, label %163, label %184

163:                                              ; preds = %160
  %164 = load i32, i32* %16, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %183, label %166

166:                                              ; preds = %163
  %167 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %168 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %167, i32 0, i32 1
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 0
  %171 = load i8*, i8** %5, align 8
  %172 = call i32 @strlen(i8* %171)
  %173 = add nsw i32 %172, 1
  %174 = call i64 @obstack_alloc(i32* %170, i32 %173)
  %175 = inttoptr i64 %174 to i8*
  %176 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %177 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %176, i32 0, i32 0
  store i8* %175, i8** %177, align 8
  %178 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %179 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = load i8*, i8** %5, align 8
  %182 = call i32 @strcpy(i8* %180, i8* %181)
  store i32 1, i32* %16, align 4
  br label %696

183:                                              ; preds = %163
  br label %696

184:                                              ; preds = %160
  %185 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %186 = icmp ne %struct.partial_symtab* %185, null
  br i1 %186, label %187, label %202

187:                                              ; preds = %184
  %188 = load i32, i32* %6, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %202

190:                                              ; preds = %187
  %191 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %192 = load i8**, i8*** %18, align 8
  %193 = load i32, i32* %20, align 4
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = mul i64 %195, 4
  %197 = trunc i64 %196 to i32
  %198 = load i32, i32* %15, align 4
  %199 = load %struct.partial_symtab**, %struct.partial_symtab*** %21, align 8
  %200 = load i32, i32* %22, align 4
  %201 = call i32 @hpread_end_psymtab(%struct.partial_symtab* %191, i8** %192, i32 %193, i32 %197, i32 %198, %struct.partial_symtab** %199, i32 %200)
  store %struct.partial_symtab* null, %struct.partial_symtab** %17, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  br label %203

202:                                              ; preds = %187, %184
  store i32 1, i32* %6, align 4
  br label %203

203:                                              ; preds = %202, %190
  %204 = load i32, i32* %10, align 4
  %205 = load i32, i32* %8, align 4
  %206 = load %struct.objfile*, %struct.objfile** %3, align 8
  %207 = load i32, i32* %9, align 4
  %208 = call i64 @hpread_get_textlow(i32 %204, i32 %205, %struct.objfile* %206, i32 %207)
  store i64 %208, i64* %13, align 8
  %209 = load %struct.objfile*, %struct.objfile** %3, align 8
  %210 = getelementptr inbounds %struct.objfile, %struct.objfile* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.objfile*, %struct.objfile** %3, align 8
  %213 = call i32 @SECT_OFF_TEXT(%struct.objfile* %212)
  %214 = call i64 @ANOFFSET(i32 %211, i32 %213)
  %215 = load i64, i64* %13, align 8
  %216 = add i64 %215, %214
  store i64 %216, i64* %13, align 8
  %217 = load %struct.objfile*, %struct.objfile** %3, align 8
  %218 = load i8*, i8** %5, align 8
  %219 = load i64, i64* %13, align 8
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = mul i64 %221, 4
  %223 = trunc i64 %222 to i32
  %224 = load %struct.objfile*, %struct.objfile** %3, align 8
  %225 = getelementptr inbounds %struct.objfile, %struct.objfile* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.objfile*, %struct.objfile** %3, align 8
  %229 = getelementptr inbounds %struct.objfile, %struct.objfile* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call %struct.partial_symtab* @hpread_start_psymtab(%struct.objfile* %217, i8* %218, i64 %219, i32 %223, i32 %227, i32 %231)
  store %struct.partial_symtab* %232, %struct.partial_symtab** %17, align 8
  %233 = load i64, i64* %13, align 8
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %696

235:                                              ; preds = %85
  %236 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %237 = icmp ne %struct.partial_symtab* %236, null
  br i1 %237, label %238, label %251

238:                                              ; preds = %235
  %239 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %240 = load i8**, i8*** %18, align 8
  %241 = load i32, i32* %20, align 4
  %242 = load i32, i32* %8, align 4
  %243 = sub nsw i32 %242, 1
  %244 = sext i32 %243 to i64
  %245 = mul i64 %244, 4
  %246 = trunc i64 %245 to i32
  %247 = load i32, i32* %15, align 4
  %248 = load %struct.partial_symtab**, %struct.partial_symtab*** %21, align 8
  %249 = load i32, i32* %22, align 4
  %250 = call i32 @hpread_end_psymtab(%struct.partial_symtab* %239, i8** %240, i32 %241, i32 %246, i32 %247, %struct.partial_symtab** %248, i32 %249)
  store %struct.partial_symtab* null, %struct.partial_symtab** %17, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %16, align 4
  br label %251

251:                                              ; preds = %238, %235
  %252 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %253 = load %struct.objfile*, %struct.objfile** %3, align 8
  %254 = call i32 @set_namestring(%union.dnttentry* %252, i8** %5, %struct.objfile* %253)
  %255 = load i32, i32* %10, align 4
  %256 = load i32, i32* %8, align 4
  %257 = load %struct.objfile*, %struct.objfile** %3, align 8
  %258 = load i32, i32* %9, align 4
  %259 = call i64 @hpread_get_textlow(i32 %255, i32 %256, %struct.objfile* %257, i32 %258)
  store i64 %259, i64* %13, align 8
  %260 = load %struct.objfile*, %struct.objfile** %3, align 8
  %261 = getelementptr inbounds %struct.objfile, %struct.objfile* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.objfile*, %struct.objfile** %3, align 8
  %264 = call i32 @SECT_OFF_TEXT(%struct.objfile* %263)
  %265 = call i64 @ANOFFSET(i32 %262, i32 %264)
  %266 = load i64, i64* %13, align 8
  %267 = add i64 %266, %265
  store i64 %267, i64* %13, align 8
  %268 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %269 = icmp ne %struct.partial_symtab* %268, null
  br i1 %269, label %289, label %270

270:                                              ; preds = %251
  %271 = load %struct.objfile*, %struct.objfile** %3, align 8
  %272 = load i8*, i8** %5, align 8
  %273 = load i64, i64* %13, align 8
  %274 = load i32, i32* %8, align 4
  %275 = sext i32 %274 to i64
  %276 = mul i64 %275, 4
  %277 = trunc i64 %276 to i32
  %278 = load %struct.objfile*, %struct.objfile** %3, align 8
  %279 = getelementptr inbounds %struct.objfile, %struct.objfile* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.objfile*, %struct.objfile** %3, align 8
  %283 = getelementptr inbounds %struct.objfile, %struct.objfile* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = call %struct.partial_symtab* @hpread_start_psymtab(%struct.objfile* %271, i8* %272, i64 %273, i32 %277, i32 %281, i32 %285)
  store %struct.partial_symtab* %286, %struct.partial_symtab** %17, align 8
  %287 = load i64, i64* %13, align 8
  %288 = trunc i64 %287 to i32
  store i32 %288, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %289

289:                                              ; preds = %270, %251
  br label %696

290:                                              ; preds = %85, %85
  %291 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %292 = bitcast %union.dnttentry* %291 to %struct.TYPE_23__*
  %293 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.objfile*, %struct.objfile** %3, align 8
  %296 = getelementptr inbounds %struct.objfile, %struct.objfile* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.objfile*, %struct.objfile** %3, align 8
  %299 = call i32 @SECT_OFF_TEXT(%struct.objfile* %298)
  %300 = call i64 @ANOFFSET(i32 %297, i32 %299)
  %301 = add i64 %294, %300
  store i64 %301, i64* %13, align 8
  %302 = load i64, i64* %13, align 8
  %303 = load i32, i32* %15, align 4
  %304 = sext i32 %303 to i64
  %305 = icmp ugt i64 %302, %304
  br i1 %305, label %306, label %309

306:                                              ; preds = %290
  %307 = load i64, i64* %13, align 8
  %308 = trunc i64 %307 to i32
  store i32 %308, i32* %15, align 4
  br label %309

309:                                              ; preds = %306, %290
  %310 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %311 = bitcast %union.dnttentry* %310 to %struct.TYPE_23__*
  %312 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = load %struct.objfile*, %struct.objfile** %3, align 8
  %315 = getelementptr inbounds %struct.objfile, %struct.objfile* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.objfile*, %struct.objfile** %3, align 8
  %318 = call i32 @SECT_OFF_TEXT(%struct.objfile* %317)
  %319 = call i64 @ANOFFSET(i32 %316, i32 %318)
  %320 = add i64 %313, %319
  store i64 %320, i64* %13, align 8
  %321 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %322 = load %struct.objfile*, %struct.objfile** %3, align 8
  %323 = call i32 @set_namestring(%union.dnttentry* %321, i8** %5, %struct.objfile* %322)
  %324 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %325 = bitcast %union.dnttentry* %324 to %struct.TYPE_23__*
  %326 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %341

329:                                              ; preds = %309
  %330 = load i8*, i8** %5, align 8
  %331 = load i8*, i8** %5, align 8
  %332 = call i32 @strlen(i8* %331)
  %333 = load i32, i32* @VAR_DOMAIN, align 4
  %334 = load i32, i32* @LOC_BLOCK, align 4
  %335 = load %struct.objfile*, %struct.objfile** %3, align 8
  %336 = getelementptr inbounds %struct.objfile, %struct.objfile* %335, i32 0, i32 2
  %337 = load i64, i64* %13, align 8
  %338 = load i32, i32* @language_unknown, align 4
  %339 = load %struct.objfile*, %struct.objfile** %3, align 8
  %340 = call i32 @add_psymbol_to_list(i8* %330, i32 %332, i32 %333, i32 %334, %struct.TYPE_21__* %336, i64 %337, i32 0, i32 %338, %struct.objfile* %339)
  br label %353

341:                                              ; preds = %309
  %342 = load i8*, i8** %5, align 8
  %343 = load i8*, i8** %5, align 8
  %344 = call i32 @strlen(i8* %343)
  %345 = load i32, i32* @VAR_DOMAIN, align 4
  %346 = load i32, i32* @LOC_BLOCK, align 4
  %347 = load %struct.objfile*, %struct.objfile** %3, align 8
  %348 = getelementptr inbounds %struct.objfile, %struct.objfile* %347, i32 0, i32 1
  %349 = load i64, i64* %13, align 8
  %350 = load i32, i32* @language_unknown, align 4
  %351 = load %struct.objfile*, %struct.objfile** %3, align 8
  %352 = call i32 @add_psymbol_to_list(i8* %342, i32 %344, i32 %345, i32 %346, %struct.TYPE_21__* %348, i64 %349, i32 0, i32 %350, %struct.objfile* %351)
  br label %353

353:                                              ; preds = %341, %329
  store i32 1, i32* %24, align 4
  br label %696

354:                                              ; preds = %85
  %355 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %356 = bitcast %union.dnttentry* %355 to %struct.TYPE_24__*
  %357 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = load %struct.objfile*, %struct.objfile** %3, align 8
  %360 = getelementptr inbounds %struct.objfile, %struct.objfile* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 8
  %362 = load %struct.objfile*, %struct.objfile** %3, align 8
  %363 = call i32 @SECT_OFF_TEXT(%struct.objfile* %362)
  %364 = call i64 @ANOFFSET(i32 %361, i32 %363)
  %365 = add i64 %358, %364
  store i64 %365, i64* %13, align 8
  %366 = load i64, i64* %13, align 8
  %367 = load i32, i32* %15, align 4
  %368 = sext i32 %367 to i64
  %369 = icmp ugt i64 %366, %368
  br i1 %369, label %370, label %373

370:                                              ; preds = %354
  %371 = load i64, i64* %13, align 8
  %372 = trunc i64 %371 to i32
  store i32 %372, i32* %15, align 4
  br label %373

373:                                              ; preds = %370, %354
  %374 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %375 = bitcast %union.dnttentry* %374 to %struct.TYPE_24__*
  %376 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %375, i32 0, i32 1
  %377 = load i64, i64* %376, align 8
  %378 = load %struct.objfile*, %struct.objfile** %3, align 8
  %379 = getelementptr inbounds %struct.objfile, %struct.objfile* %378, i32 0, i32 3
  %380 = load i32, i32* %379, align 8
  %381 = load %struct.objfile*, %struct.objfile** %3, align 8
  %382 = call i32 @SECT_OFF_TEXT(%struct.objfile* %381)
  %383 = call i64 @ANOFFSET(i32 %380, i32 %382)
  %384 = add i64 %377, %383
  store i64 %384, i64* %13, align 8
  %385 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %386 = load %struct.objfile*, %struct.objfile** %3, align 8
  %387 = call i32 @set_namestring(%union.dnttentry* %385, i8** %5, %struct.objfile* %386)
  %388 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %389 = bitcast %union.dnttentry* %388 to %struct.TYPE_24__*
  %390 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 8
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %405

393:                                              ; preds = %373
  %394 = load i8*, i8** %5, align 8
  %395 = load i8*, i8** %5, align 8
  %396 = call i32 @strlen(i8* %395)
  %397 = load i32, i32* @VAR_DOMAIN, align 4
  %398 = load i32, i32* @LOC_BLOCK, align 4
  %399 = load %struct.objfile*, %struct.objfile** %3, align 8
  %400 = getelementptr inbounds %struct.objfile, %struct.objfile* %399, i32 0, i32 2
  %401 = load i64, i64* %13, align 8
  %402 = load i32, i32* @language_unknown, align 4
  %403 = load %struct.objfile*, %struct.objfile** %3, align 8
  %404 = call i32 @add_psymbol_to_list(i8* %394, i32 %396, i32 %397, i32 %398, %struct.TYPE_21__* %400, i64 %401, i32 0, i32 %402, %struct.objfile* %403)
  br label %417

405:                                              ; preds = %373
  %406 = load i8*, i8** %5, align 8
  %407 = load i8*, i8** %5, align 8
  %408 = call i32 @strlen(i8* %407)
  %409 = load i32, i32* @VAR_DOMAIN, align 4
  %410 = load i32, i32* @LOC_BLOCK, align 4
  %411 = load %struct.objfile*, %struct.objfile** %3, align 8
  %412 = getelementptr inbounds %struct.objfile, %struct.objfile* %411, i32 0, i32 1
  %413 = load i64, i64* %13, align 8
  %414 = load i32, i32* @language_unknown, align 4
  %415 = load %struct.objfile*, %struct.objfile** %3, align 8
  %416 = call i32 @add_psymbol_to_list(i8* %406, i32 %408, i32 %409, i32 %410, %struct.TYPE_21__* %412, i64 %413, i32 0, i32 %414, %struct.objfile* %415)
  br label %417

417:                                              ; preds = %405, %393
  store i32 1, i32* %24, align 4
  br label %696

418:                                              ; preds = %85, %85
  %419 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %420 = bitcast %union.dnttentry* %419 to %struct.TYPE_25__*
  %421 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = icmp eq i32 %422, 134
  br i1 %423, label %430, label %424

424:                                              ; preds = %418
  %425 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %426 = bitcast %union.dnttentry* %425 to %struct.TYPE_25__*
  %427 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = icmp eq i32 %428, 138
  br i1 %429, label %430, label %431

430:                                              ; preds = %424, %418
  store i32 0, i32* %24, align 4
  br label %431

431:                                              ; preds = %430, %424
  br label %696

432:                                              ; preds = %85, %85, %85, %85
  %433 = load i32, i32* %24, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %448

435:                                              ; preds = %432
  %436 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %437 = bitcast %union.dnttentry* %436 to %struct.TYPE_17__*
  %438 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = icmp eq i32 %439, 130
  br i1 %440, label %447, label %441

441:                                              ; preds = %435
  %442 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %443 = bitcast %union.dnttentry* %442 to %struct.TYPE_17__*
  %444 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = icmp eq i32 %445, 137
  br i1 %446, label %447, label %448

447:                                              ; preds = %441, %435
  br label %696

448:                                              ; preds = %441, %432
  %449 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %450 = bitcast %union.dnttentry* %449 to %struct.TYPE_17__*
  %451 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  %453 = icmp eq i32 %452, 129
  br i1 %453, label %454, label %456

454:                                              ; preds = %448
  %455 = load i32, i32* @STRUCT_DOMAIN, align 4
  store i32 %455, i32* %29, align 4
  br label %458

456:                                              ; preds = %448
  %457 = load i32, i32* @VAR_DOMAIN, align 4
  store i32 %457, i32* %29, align 4
  br label %458

458:                                              ; preds = %456, %454
  %459 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %460 = bitcast %union.dnttentry* %459 to %struct.TYPE_17__*
  %461 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = icmp eq i32 %462, 130
  br i1 %463, label %464, label %466

464:                                              ; preds = %458
  %465 = load i32, i32* @LOC_STATIC, align 4
  store i32 %465, i32* %28, align 4
  br label %492

466:                                              ; preds = %458
  %467 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %468 = bitcast %union.dnttentry* %467 to %struct.TYPE_17__*
  %469 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = icmp eq i32 %470, 137
  br i1 %471, label %472, label %480

472:                                              ; preds = %466
  %473 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %474 = bitcast %union.dnttentry* %473 to %struct.TYPE_26__*
  %475 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %480

478:                                              ; preds = %472
  %479 = load i32, i32* @LOC_REGISTER, align 4
  store i32 %479, i32* %28, align 4
  br label %491

480:                                              ; preds = %472, %466
  %481 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %482 = bitcast %union.dnttentry* %481 to %struct.TYPE_17__*
  %483 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 8
  %485 = icmp eq i32 %484, 137
  br i1 %485, label %486, label %488

486:                                              ; preds = %480
  %487 = load i32, i32* @LOC_LOCAL, align 4
  store i32 %487, i32* %28, align 4
  br label %490

488:                                              ; preds = %480
  %489 = load i32, i32* @LOC_UNDEF, align 4
  store i32 %489, i32* %28, align 4
  br label %490

490:                                              ; preds = %488, %486
  br label %491

491:                                              ; preds = %490, %478
  br label %492

492:                                              ; preds = %491, %464
  %493 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %494 = load %struct.objfile*, %struct.objfile** %3, align 8
  %495 = call i32 @set_namestring(%union.dnttentry* %493, i8** %5, %struct.objfile* %494)
  %496 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %497 = icmp ne %struct.partial_symtab* %496, null
  br i1 %497, label %513, label %498

498:                                              ; preds = %492
  %499 = load %struct.objfile*, %struct.objfile** %3, align 8
  %500 = load i32, i32* %8, align 4
  %501 = sext i32 %500 to i64
  %502 = mul i64 %501, 4
  %503 = trunc i64 %502 to i32
  %504 = load %struct.objfile*, %struct.objfile** %3, align 8
  %505 = getelementptr inbounds %struct.objfile, %struct.objfile* %504, i32 0, i32 2
  %506 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 4
  %508 = load %struct.objfile*, %struct.objfile** %3, align 8
  %509 = getelementptr inbounds %struct.objfile, %struct.objfile* %508, i32 0, i32 1
  %510 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 8
  %512 = call %struct.partial_symtab* @hpread_start_psymtab(%struct.objfile* %499, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 0, i32 %503, i32 %507, i32 %511)
  store %struct.partial_symtab* %512, %struct.partial_symtab** %17, align 8
  br label %513

513:                                              ; preds = %498, %492
  %514 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %515 = bitcast %union.dnttentry* %514 to %struct.TYPE_18__*
  %516 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %515, i32 0, i32 0
  %517 = load i64, i64* %516, align 8
  store i64 %517, i64* %13, align 8
  %518 = load i32, i32* %28, align 4
  %519 = load i32, i32* @LOC_STATIC, align 4
  %520 = icmp eq i32 %518, %519
  br i1 %520, label %521, label %530

521:                                              ; preds = %513
  %522 = load %struct.objfile*, %struct.objfile** %3, align 8
  %523 = getelementptr inbounds %struct.objfile, %struct.objfile* %522, i32 0, i32 3
  %524 = load i32, i32* %523, align 8
  %525 = load %struct.objfile*, %struct.objfile** %3, align 8
  %526 = call i32 @SECT_OFF_DATA(%struct.objfile* %525)
  %527 = call i64 @ANOFFSET(i32 %524, i32 %526)
  %528 = load i64, i64* %13, align 8
  %529 = add i64 %528, %527
  store i64 %529, i64* %13, align 8
  br label %530

530:                                              ; preds = %521, %513
  %531 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %532 = bitcast %union.dnttentry* %531 to %struct.TYPE_18__*
  %533 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %532, i32 0, i32 1
  %534 = load i32, i32* %533, align 8
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %548

536:                                              ; preds = %530
  %537 = load i8*, i8** %5, align 8
  %538 = load i8*, i8** %5, align 8
  %539 = call i32 @strlen(i8* %538)
  %540 = load i32, i32* %29, align 4
  %541 = load i32, i32* %28, align 4
  %542 = load %struct.objfile*, %struct.objfile** %3, align 8
  %543 = getelementptr inbounds %struct.objfile, %struct.objfile* %542, i32 0, i32 2
  %544 = load i64, i64* %13, align 8
  %545 = load i32, i32* @language_unknown, align 4
  %546 = load %struct.objfile*, %struct.objfile** %3, align 8
  %547 = call i32 @add_psymbol_to_list(i8* %537, i32 %539, i32 %540, i32 %541, %struct.TYPE_21__* %543, i64 %544, i32 0, i32 %545, %struct.objfile* %546)
  br label %560

548:                                              ; preds = %530
  %549 = load i8*, i8** %5, align 8
  %550 = load i8*, i8** %5, align 8
  %551 = call i32 @strlen(i8* %550)
  %552 = load i32, i32* %29, align 4
  %553 = load i32, i32* %28, align 4
  %554 = load %struct.objfile*, %struct.objfile** %3, align 8
  %555 = getelementptr inbounds %struct.objfile, %struct.objfile* %554, i32 0, i32 1
  %556 = load i64, i64* %13, align 8
  %557 = load i32, i32* @language_unknown, align 4
  %558 = load %struct.objfile*, %struct.objfile** %3, align 8
  %559 = call i32 @add_psymbol_to_list(i8* %549, i32 %551, i32 %552, i32 %553, %struct.TYPE_21__* %555, i64 %556, i32 0, i32 %557, %struct.objfile* %558)
  br label %560

560:                                              ; preds = %548, %536
  %561 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %562 = bitcast %union.dnttentry* %561 to %struct.TYPE_17__*
  %563 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %562, i32 0, i32 0
  %564 = load i32, i32* %563, align 8
  %565 = icmp eq i32 %564, 129
  br i1 %565, label %566, label %644

566:                                              ; preds = %560
  %567 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %568 = bitcast %union.dnttentry* %567 to %struct.TYPE_30__*
  %569 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %568, i32 0, i32 0
  %570 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %569, i32 0, i32 0
  %571 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 8
  %573 = load %struct.objfile*, %struct.objfile** %3, align 8
  %574 = call i32 @LNTT_SYMCOUNT(%struct.objfile* %573)
  %575 = icmp slt i32 %572, %574
  br i1 %575, label %576, label %644

576:                                              ; preds = %566
  %577 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %578 = bitcast %union.dnttentry* %577 to %struct.TYPE_27__*
  %579 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %578, i32 0, i32 0
  %580 = load i32, i32* %579, align 8
  store i32 %580, i32* %30, align 4
  %581 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %582 = bitcast %union.dnttentry* %581 to %struct.TYPE_30__*
  %583 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %582, i32 0, i32 0
  %584 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %583, i32 0, i32 0
  %585 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %584, i32 0, i32 0
  %586 = load i32, i32* %585, align 8
  %587 = load %struct.objfile*, %struct.objfile** %3, align 8
  %588 = call %union.dnttentry* @hpread_get_lntt(i32 %586, %struct.objfile* %587)
  store %union.dnttentry* %588, %union.dnttentry** %12, align 8
  %589 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %590 = bitcast %union.dnttentry* %589 to %struct.TYPE_17__*
  %591 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %590, i32 0, i32 0
  %592 = load i32, i32* %591, align 8
  %593 = load i32, i32* @DNTT_TYPE_CLASS, align 4
  %594 = icmp eq i32 %592, %593
  br i1 %594, label %609, label %595

595:                                              ; preds = %576
  %596 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %597 = bitcast %union.dnttentry* %596 to %struct.TYPE_17__*
  %598 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %597, i32 0, i32 0
  %599 = load i32, i32* %598, align 8
  %600 = load i32, i32* @DNTT_TYPE_ENUM, align 4
  %601 = icmp eq i32 %599, %600
  br i1 %601, label %609, label %602

602:                                              ; preds = %595
  %603 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %604 = bitcast %union.dnttentry* %603 to %struct.TYPE_17__*
  %605 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %604, i32 0, i32 0
  %606 = load i32, i32* %605, align 8
  %607 = load i32, i32* @DNTT_TYPE_TEMPLATE, align 4
  %608 = icmp eq i32 %606, %607
  br i1 %608, label %609, label %643

609:                                              ; preds = %602, %595, %576
  %610 = load i32, i32* %30, align 4
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %627

612:                                              ; preds = %609
  %613 = load i8*, i8** %5, align 8
  %614 = load i8*, i8** %5, align 8
  %615 = call i32 @strlen(i8* %614)
  %616 = load i32, i32* @VAR_DOMAIN, align 4
  %617 = load i32, i32* %28, align 4
  %618 = load %struct.objfile*, %struct.objfile** %3, align 8
  %619 = getelementptr inbounds %struct.objfile, %struct.objfile* %618, i32 0, i32 2
  %620 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %621 = bitcast %union.dnttentry* %620 to %struct.TYPE_18__*
  %622 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %621, i32 0, i32 0
  %623 = load i64, i64* %622, align 8
  %624 = load i32, i32* @language_unknown, align 4
  %625 = load %struct.objfile*, %struct.objfile** %3, align 8
  %626 = call i32 @add_psymbol_to_list(i8* %613, i32 %615, i32 %616, i32 %617, %struct.TYPE_21__* %619, i64 %623, i32 0, i32 %624, %struct.objfile* %625)
  br label %642

627:                                              ; preds = %609
  %628 = load i8*, i8** %5, align 8
  %629 = load i8*, i8** %5, align 8
  %630 = call i32 @strlen(i8* %629)
  %631 = load i32, i32* @VAR_DOMAIN, align 4
  %632 = load i32, i32* %28, align 4
  %633 = load %struct.objfile*, %struct.objfile** %3, align 8
  %634 = getelementptr inbounds %struct.objfile, %struct.objfile* %633, i32 0, i32 1
  %635 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %636 = bitcast %union.dnttentry* %635 to %struct.TYPE_18__*
  %637 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %636, i32 0, i32 0
  %638 = load i64, i64* %637, align 8
  %639 = load i32, i32* @language_unknown, align 4
  %640 = load %struct.objfile*, %struct.objfile** %3, align 8
  %641 = call i32 @add_psymbol_to_list(i8* %628, i32 %630, i32 %631, i32 %632, %struct.TYPE_21__* %634, i64 %638, i32 0, i32 %639, %struct.objfile* %640)
  br label %642

642:                                              ; preds = %627, %612
  br label %643

643:                                              ; preds = %642, %602
  br label %644

644:                                              ; preds = %643, %566, %560
  br label %696

645:                                              ; preds = %85, %85
  %646 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %647 = load %struct.objfile*, %struct.objfile** %3, align 8
  %648 = call i32 @set_namestring(%union.dnttentry* %646, i8** %5, %struct.objfile* %647)
  %649 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %650 = icmp ne %struct.partial_symtab* %649, null
  br i1 %650, label %666, label %651

651:                                              ; preds = %645
  %652 = load %struct.objfile*, %struct.objfile** %3, align 8
  %653 = load i32, i32* %8, align 4
  %654 = sext i32 %653 to i64
  %655 = mul i64 %654, 4
  %656 = trunc i64 %655 to i32
  %657 = load %struct.objfile*, %struct.objfile** %3, align 8
  %658 = getelementptr inbounds %struct.objfile, %struct.objfile* %657, i32 0, i32 2
  %659 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %658, i32 0, i32 0
  %660 = load i32, i32* %659, align 4
  %661 = load %struct.objfile*, %struct.objfile** %3, align 8
  %662 = getelementptr inbounds %struct.objfile, %struct.objfile* %661, i32 0, i32 1
  %663 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %662, i32 0, i32 0
  %664 = load i32, i32* %663, align 8
  %665 = call %struct.partial_symtab* @hpread_start_psymtab(%struct.objfile* %652, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 0, i32 %656, i32 %660, i32 %664)
  store %struct.partial_symtab* %665, %struct.partial_symtab** %17, align 8
  br label %666

666:                                              ; preds = %651, %645
  %667 = load %union.dnttentry*, %union.dnttentry** %12, align 8
  %668 = bitcast %union.dnttentry* %667 to %struct.TYPE_19__*
  %669 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %668, i32 0, i32 0
  %670 = load i32, i32* %669, align 8
  %671 = icmp ne i32 %670, 0
  br i1 %671, label %672, label %683

672:                                              ; preds = %666
  %673 = load i8*, i8** %5, align 8
  %674 = load i8*, i8** %5, align 8
  %675 = call i32 @strlen(i8* %674)
  %676 = load i32, i32* @VAR_DOMAIN, align 4
  %677 = load i32, i32* @LOC_CONST, align 4
  %678 = load %struct.objfile*, %struct.objfile** %3, align 8
  %679 = getelementptr inbounds %struct.objfile, %struct.objfile* %678, i32 0, i32 2
  %680 = load i32, i32* @language_unknown, align 4
  %681 = load %struct.objfile*, %struct.objfile** %3, align 8
  %682 = call i32 @add_psymbol_to_list(i8* %673, i32 %675, i32 %676, i32 %677, %struct.TYPE_21__* %679, i64 0, i32 0, i32 %680, %struct.objfile* %681)
  br label %694

683:                                              ; preds = %666
  %684 = load i8*, i8** %5, align 8
  %685 = load i8*, i8** %5, align 8
  %686 = call i32 @strlen(i8* %685)
  %687 = load i32, i32* @VAR_DOMAIN, align 4
  %688 = load i32, i32* @LOC_CONST, align 4
  %689 = load %struct.objfile*, %struct.objfile** %3, align 8
  %690 = getelementptr inbounds %struct.objfile, %struct.objfile* %689, i32 0, i32 1
  %691 = load i32, i32* @language_unknown, align 4
  %692 = load %struct.objfile*, %struct.objfile** %3, align 8
  %693 = call i32 @add_psymbol_to_list(i8* %684, i32 %686, i32 %687, i32 %688, %struct.TYPE_21__* %690, i64 0, i32 0, i32 %691, %struct.objfile* %692)
  br label %694

694:                                              ; preds = %683, %672
  br label %696

695:                                              ; preds = %85
  br label %696

696:                                              ; preds = %695, %694, %644, %447, %431, %417, %353, %289, %203, %183, %166, %159, %132, %103, %84
  %697 = load i32, i32* %8, align 4
  %698 = add nsw i32 %697, 1
  store i32 %698, i32* %8, align 4
  br label %62

699:                                              ; preds = %62
  br label %700

700:                                              ; preds = %699
  %701 = load i32, i32* %10, align 4
  %702 = add nsw i32 %701, 1
  store i32 %702, i32* %10, align 4
  br label %48

703:                                              ; preds = %48
  %704 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %705 = icmp ne %struct.partial_symtab* %704, null
  br i1 %705, label %706, label %717

706:                                              ; preds = %703
  %707 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %708 = load i8**, i8*** %18, align 8
  %709 = load i32, i32* %20, align 4
  %710 = load i32, i32* %8, align 4
  %711 = sext i32 %710 to i64
  %712 = mul i64 %711, 4
  %713 = trunc i64 %712 to i32
  %714 = load %struct.partial_symtab**, %struct.partial_symtab*** %21, align 8
  %715 = load i32, i32* %22, align 4
  %716 = call i32 @hpread_end_psymtab(%struct.partial_symtab* %707, i8** %708, i32 %709, i32 %713, i32 0, %struct.partial_symtab** %714, i32 %715)
  br label %717

717:                                              ; preds = %706, %703
  %718 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %719 = call i32 @discard_cleanups(%struct.cleanup* %718)
  ret void
}

declare dso_local i32 @free_pending_blocks(...) #1

declare dso_local i32 @make_cleanup(i32, i32) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local %struct.cleanup* @make_cleanup_free_objfile(%struct.objfile*) #1

declare dso_local i32 @GNTT_SYMCOUNT(%struct.objfile*) #1

declare dso_local i32 @LNTT_SYMCOUNT(%struct.objfile*) #1

declare dso_local %union.dnttentry* @hpread_get_gntt(i32, %struct.objfile*) #1

declare dso_local %union.dnttentry* @hpread_get_lntt(i32, %struct.objfile*) #1

declare dso_local i32 @set_namestring(%union.dnttentry*, i8**, %struct.objfile*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @hpread_end_psymtab(%struct.partial_symtab*, i8**, i32, i32, i32, %struct.partial_symtab**, i32) #1

declare dso_local i64 @hpread_get_textlow(i32, i32, %struct.objfile*, i32) #1

declare dso_local i64 @ANOFFSET(i32, i32) #1

declare dso_local i32 @SECT_OFF_TEXT(%struct.objfile*) #1

declare dso_local %struct.partial_symtab* @hpread_start_psymtab(%struct.objfile*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @add_psymbol_to_list(i8*, i32, i32, i32, %struct.TYPE_21__*, i64, i32, i32, %struct.objfile*) #1

declare dso_local i32 @SECT_OFF_DATA(%struct.objfile*) #1

declare dso_local i32 @discard_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
