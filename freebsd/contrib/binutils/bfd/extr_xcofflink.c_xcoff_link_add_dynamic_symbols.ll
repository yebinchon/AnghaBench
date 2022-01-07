; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_xcoff_link_add_dynamic_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_xcoff_link_add_dynamic_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i64, i32, %struct.TYPE_34__* }
%struct.bfd_link_info = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64 }
%struct.internal_ldhdr = type { i32, i32 }
%struct.xcoff_import_file = type { i8*, i8*, i8*, %struct.xcoff_import_file* }
%struct.internal_ldsym = type { i32, i64, i32, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i64, i32 }
%struct.xcoff_link_hash_entry = type { i32, i64, %struct.TYPE_33__, %struct.xcoff_link_hash_entry* }
%struct.TYPE_33__ = type { i64, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_27__, %struct.TYPE_31__ }
%struct.TYPE_27__ = type { i32, i8* }
%struct.TYPE_31__ = type { %struct.TYPE_34__* }
%struct.TYPE_26__ = type { i8*, i32 }
%struct.TYPE_35__ = type { %struct.xcoff_import_file* }
%struct.TYPE_25__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"%s: XCOFF shared object when not producing XCOFF output\00", align 1
@bfd_error_invalid_operation = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c".loader\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"%s: dynamic object with no .loader section\00", align 1
@bfd_error_no_symbols = common dso_local global i32 0, align 4
@SYMNMLEN = common dso_local global i32 0, align 4
@L_EXPORT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@XCOFF_DEF_DYNAMIC = common dso_local global i32 0, align 4
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@bfd_link_hash_undefweak = common dso_local global i64 0, align 8
@DYNAMIC = common dso_local global i32 0, align 4
@bfd_link_hash_new = common dso_local global i64 0, align 8
@XMC_UA = common dso_local global i64 0, align 8
@XMC_XO = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i8* null, align 8
@bfd_abs_section_ptr = common dso_local global i8* null, align 8
@XMC_DS = common dso_local global i64 0, align 8
@XCOFF_DESCRIPTOR = common dso_local global i32 0, align 4
@XMC_PR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_34__*, %struct.bfd_link_info*)* @xcoff_link_add_dynamic_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcoff_link_add_dynamic_symbols(%struct.TYPE_34__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.internal_ldhdr, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.xcoff_import_file*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.xcoff_import_file**, align 8
  %18 = alloca %struct.internal_ldsym, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.xcoff_link_hash_entry*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.xcoff_link_hash_entry*, align 8
  %25 = alloca i8*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %26 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %27 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %2
  %36 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %38 = call i8* @bfd_get_filename(%struct.TYPE_34__* %37)
  %39 = call i32 @_bfd_error_handler(i32 %36, i8* %38)
  %40 = load i32, i32* @bfd_error_invalid_operation, align 4
  %41 = call i32 @bfd_set_error(i32 %40)
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %3, align 4
  br label %518

43:                                               ; preds = %2
  %44 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %45 = call i32* @bfd_get_section_by_name(%struct.TYPE_34__* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32* %45, i32** %6, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %51 = call i8* @bfd_get_filename(%struct.TYPE_34__* %50)
  %52 = call i32 @_bfd_error_handler(i32 %49, i8* %51)
  %53 = load i32, i32* @bfd_error_no_symbols, align 4
  %54 = call i32 @bfd_set_error(i32 %53)
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %3, align 4
  br label %518

56:                                               ; preds = %43
  %57 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @xcoff_get_section_contents(%struct.TYPE_34__* %57, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %3, align 4
  br label %518

63:                                               ; preds = %56
  %64 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call %struct.TYPE_26__* @coff_section_data(%struct.TYPE_34__* %64, i32* %65)
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %7, align 8
  %69 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %70 = call i32 @bfd_section_list_clear(%struct.TYPE_34__* %69)
  %71 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @bfd_xcoff_swap_ldhdr_in(%struct.TYPE_34__* %71, i8* %72, %struct.internal_ldhdr* %8)
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %8, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  store i8* %78, i8** %9, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %81 = call i32 @bfd_xcoff_loader_symbol_offset(%struct.TYPE_34__* %80, %struct.internal_ldhdr* %8)
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  store i8* %83, i8** %10, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %8, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %88 = call i32 @bfd_xcoff_ldsymsz(%struct.TYPE_34__* %87)
  %89 = mul nsw i32 %86, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %84, i64 %90
  store i8* %91, i8** %11, align 8
  br label %92

92:                                               ; preds = %428, %63
  %93 = load i8*, i8** %10, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = icmp ult i8* %93, %94
  br i1 %95, label %96, label %434

96:                                               ; preds = %92
  %97 = load i32, i32* @SYMNMLEN, align 4
  %98 = add nsw i32 %97, 1
  %99 = zext i32 %98 to i64
  %100 = call i8* @llvm.stacksave()
  store i8* %100, i8** %19, align 8
  %101 = alloca i8, i64 %99, align 16
  store i64 %99, i64* %20, align 8
  %102 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = call i32 @bfd_xcoff_swap_ldsym_in(%struct.TYPE_34__* %102, i8* %103, %struct.internal_ldsym* %18)
  %105 = getelementptr inbounds %struct.internal_ldsym, %struct.internal_ldsym* %18, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @L_EXPORT, align 4
  %108 = and i32 %106, %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %96
  store i32 4, i32* %23, align 4
  br label %424

111:                                              ; preds = %96
  %112 = getelementptr inbounds %struct.internal_ldsym, %struct.internal_ldsym* %18, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %111
  %118 = load i8*, i8** %9, align 8
  %119 = getelementptr inbounds %struct.internal_ldsym, %struct.internal_ldsym* %18, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %118, i64 %123
  store i8* %124, i8** %21, align 8
  br label %134

125:                                              ; preds = %111
  %126 = getelementptr inbounds %struct.internal_ldsym, %struct.internal_ldsym* %18, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @SYMNMLEN, align 4
  %130 = call i32 @memcpy(i8* %101, i32 %128, i32 %129)
  %131 = load i32, i32* @SYMNMLEN, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %101, i64 %132
  store i8 0, i8* %133, align 1
  store i8* %101, i8** %21, align 8
  br label %134

134:                                              ; preds = %125, %117
  %135 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %136 = call %struct.TYPE_35__* @xcoff_hash_table(%struct.bfd_link_info* %135)
  %137 = load i8*, i8** %21, align 8
  %138 = load i32, i32* @TRUE, align 4
  %139 = load i32, i32* @TRUE, align 4
  %140 = load i32, i32* @TRUE, align 4
  %141 = call %struct.xcoff_link_hash_entry* @xcoff_link_hash_lookup(%struct.TYPE_35__* %136, i8* %137, i32 %138, i32 %139, i32 %140)
  store %struct.xcoff_link_hash_entry* %141, %struct.xcoff_link_hash_entry** %22, align 8
  %142 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %143 = icmp eq %struct.xcoff_link_hash_entry* %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %134
  %145 = load i32, i32* @FALSE, align 4
  store i32 %145, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %424

146:                                              ; preds = %134
  %147 = load i32, i32* @XCOFF_DEF_DYNAMIC, align 4
  %148 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %149 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  %152 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %153 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @bfd_link_hash_undefined, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %165, label %158

158:                                              ; preds = %146
  %159 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %160 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %192

165:                                              ; preds = %158, %146
  %166 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %167 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_34__*, %struct.TYPE_34__** %170, align 8
  %172 = icmp eq %struct.TYPE_34__* %171, null
  br i1 %172, label %185, label %173

173:                                              ; preds = %165
  %174 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %175 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_34__*, %struct.TYPE_34__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @DYNAMIC, align 4
  %183 = and i32 %181, %182
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %173, %165
  %186 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %187 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %188 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %190, i32 0, i32 0
  store %struct.TYPE_34__* %186, %struct.TYPE_34__** %191, align 8
  br label %192

192:                                              ; preds = %185, %173, %158
  %193 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %194 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @bfd_link_hash_new, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %210

199:                                              ; preds = %192
  %200 = load i64, i64* @bfd_link_hash_undefined, align 8
  %201 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %202 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %202, i32 0, i32 0
  store i64 %200, i64* %203, align 8
  %204 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %205 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %206 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %208, i32 0, i32 0
  store %struct.TYPE_34__* %204, %struct.TYPE_34__** %209, align 8
  br label %210

210:                                              ; preds = %199, %192
  %211 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %212 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @XMC_UA, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %230, label %216

216:                                              ; preds = %210
  %217 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %218 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @bfd_link_hash_undefined, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %230, label %223

223:                                              ; preds = %216
  %224 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %225 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %235

230:                                              ; preds = %223, %216, %210
  %231 = getelementptr inbounds %struct.internal_ldsym, %struct.internal_ldsym* %18, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %234 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %233, i32 0, i32 1
  store i64 %232, i64* %234, align 8
  br label %235

235:                                              ; preds = %230, %223
  %236 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %237 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @XMC_XO, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %274

241:                                              ; preds = %235
  %242 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %243 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @bfd_link_hash_undefined, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %255, label %248

248:                                              ; preds = %241
  %249 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %250 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %274

255:                                              ; preds = %248, %241
  %256 = load i8*, i8** @bfd_link_hash_defined, align 8
  %257 = ptrtoint i8* %256 to i64
  %258 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %259 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %259, i32 0, i32 0
  store i64 %257, i64* %260, align 8
  %261 = load i8*, i8** @bfd_abs_section_ptr, align 8
  %262 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %263 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %265, i32 0, i32 1
  store i8* %261, i8** %266, align 8
  %267 = getelementptr inbounds %struct.internal_ldsym, %struct.internal_ldsym* %18, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %270 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %272, i32 0, i32 0
  store i32 %268, i32* %273, align 8
  br label %274

274:                                              ; preds = %255, %248, %235
  %275 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %276 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @XMC_DS, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %292, label %280

280:                                              ; preds = %274
  %281 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %282 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @XMC_XO, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %298

286:                                              ; preds = %280
  %287 = load i8*, i8** %21, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 0
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = icmp ne i32 %290, 46
  br i1 %291, label %292, label %298

292:                                              ; preds = %286, %274
  %293 = load i32, i32* @XCOFF_DESCRIPTOR, align 4
  %294 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %295 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = or i32 %296, %293
  store i32 %297, i32* %295, align 8
  br label %298

298:                                              ; preds = %292, %286, %280
  %299 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %300 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @XCOFF_DESCRIPTOR, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %423

305:                                              ; preds = %298
  %306 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %307 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %306, i32 0, i32 3
  %308 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %307, align 8
  store %struct.xcoff_link_hash_entry* %308, %struct.xcoff_link_hash_entry** %24, align 8
  %309 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %24, align 8
  %310 = icmp eq %struct.xcoff_link_hash_entry* %309, null
  br i1 %310, label %311, label %365

311:                                              ; preds = %305
  %312 = load i8*, i8** %21, align 8
  %313 = call i64 @strlen(i8* %312)
  %314 = add nsw i64 %313, 2
  %315 = call i8* @bfd_malloc(i64 %314)
  store i8* %315, i8** %25, align 8
  %316 = load i8*, i8** %25, align 8
  %317 = icmp eq i8* %316, null
  br i1 %317, label %318, label %320

318:                                              ; preds = %311
  %319 = load i32, i32* @FALSE, align 4
  store i32 %319, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %424

320:                                              ; preds = %311
  %321 = load i8*, i8** %25, align 8
  %322 = getelementptr inbounds i8, i8* %321, i64 0
  store i8 46, i8* %322, align 1
  %323 = load i8*, i8** %25, align 8
  %324 = getelementptr inbounds i8, i8* %323, i64 1
  %325 = load i8*, i8** %21, align 8
  %326 = call i32 @strcpy(i8* %324, i8* %325)
  %327 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %328 = call %struct.TYPE_35__* @xcoff_hash_table(%struct.bfd_link_info* %327)
  %329 = load i8*, i8** %25, align 8
  %330 = load i32, i32* @TRUE, align 4
  %331 = load i32, i32* @TRUE, align 4
  %332 = load i32, i32* @TRUE, align 4
  %333 = call %struct.xcoff_link_hash_entry* @xcoff_link_hash_lookup(%struct.TYPE_35__* %328, i8* %329, i32 %330, i32 %331, i32 %332)
  store %struct.xcoff_link_hash_entry* %333, %struct.xcoff_link_hash_entry** %24, align 8
  %334 = load i8*, i8** %25, align 8
  %335 = call i32 @free(i8* %334)
  %336 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %24, align 8
  %337 = icmp eq %struct.xcoff_link_hash_entry* %336, null
  br i1 %337, label %338, label %340

338:                                              ; preds = %320
  %339 = load i32, i32* @FALSE, align 4
  store i32 %339, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %424

340:                                              ; preds = %320
  %341 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %24, align 8
  %342 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* @bfd_link_hash_new, align 8
  %346 = icmp eq i64 %344, %345
  br i1 %346, label %347, label %358

347:                                              ; preds = %340
  %348 = load i64, i64* @bfd_link_hash_undefined, align 8
  %349 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %24, align 8
  %350 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %349, i32 0, i32 2
  %351 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %350, i32 0, i32 0
  store i64 %348, i64* %351, align 8
  %352 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %353 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %24, align 8
  %354 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %353, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %356, i32 0, i32 0
  store %struct.TYPE_34__* %352, %struct.TYPE_34__** %357, align 8
  br label %358

358:                                              ; preds = %347, %340
  %359 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %360 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %24, align 8
  %361 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %360, i32 0, i32 3
  store %struct.xcoff_link_hash_entry* %359, %struct.xcoff_link_hash_entry** %361, align 8
  %362 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %24, align 8
  %363 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %364 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %363, i32 0, i32 3
  store %struct.xcoff_link_hash_entry* %362, %struct.xcoff_link_hash_entry** %364, align 8
  br label %365

365:                                              ; preds = %358, %305
  %366 = load i32, i32* @XCOFF_DEF_DYNAMIC, align 4
  %367 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %24, align 8
  %368 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = or i32 %369, %366
  store i32 %370, i32* %368, align 8
  %371 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %24, align 8
  %372 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @XMC_UA, align 8
  %375 = icmp eq i64 %373, %374
  br i1 %375, label %376, label %380

376:                                              ; preds = %365
  %377 = load i64, i64* @XMC_PR, align 8
  %378 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %24, align 8
  %379 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %378, i32 0, i32 1
  store i64 %377, i64* %379, align 8
  br label %380

380:                                              ; preds = %376, %365
  %381 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %22, align 8
  %382 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %381, i32 0, i32 1
  %383 = load i64, i64* %382, align 8
  %384 = load i64, i64* @XMC_XO, align 8
  %385 = icmp eq i64 %383, %384
  br i1 %385, label %386, label %422

386:                                              ; preds = %380
  %387 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %24, align 8
  %388 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %388, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* @bfd_link_hash_undefined, align 8
  %392 = icmp eq i64 %390, %391
  br i1 %392, label %400, label %393

393:                                              ; preds = %386
  %394 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %24, align 8
  %395 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %394, i32 0, i32 2
  %396 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %399 = icmp eq i64 %397, %398
  br i1 %399, label %400, label %422

400:                                              ; preds = %393, %386
  %401 = load i64, i64* @XMC_XO, align 8
  %402 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %24, align 8
  %403 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %402, i32 0, i32 1
  store i64 %401, i64* %403, align 8
  %404 = load i8*, i8** @bfd_link_hash_defined, align 8
  %405 = ptrtoint i8* %404 to i64
  %406 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %24, align 8
  %407 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %406, i32 0, i32 2
  %408 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %407, i32 0, i32 0
  store i64 %405, i64* %408, align 8
  %409 = load i8*, i8** @bfd_abs_section_ptr, align 8
  %410 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %24, align 8
  %411 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %410, i32 0, i32 2
  %412 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %411, i32 0, i32 1
  %413 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %413, i32 0, i32 1
  store i8* %409, i8** %414, align 8
  %415 = getelementptr inbounds %struct.internal_ldsym, %struct.internal_ldsym* %18, i32 0, i32 2
  %416 = load i32, i32* %415, align 8
  %417 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %24, align 8
  %418 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %417, i32 0, i32 2
  %419 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %420, i32 0, i32 0
  store i32 %416, i32* %421, align 8
  br label %422

422:                                              ; preds = %400, %393, %380
  br label %423

423:                                              ; preds = %422, %298
  store i32 0, i32* %23, align 4
  br label %424

424:                                              ; preds = %423, %338, %318, %144, %110
  %425 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %425)
  %426 = load i32, i32* %23, align 4
  switch i32 %426, label %520 [
    i32 0, label %427
    i32 4, label %428
    i32 1, label %518
  ]

427:                                              ; preds = %424
  br label %428

428:                                              ; preds = %427, %424
  %429 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %430 = call i32 @bfd_xcoff_ldsymsz(%struct.TYPE_34__* %429)
  %431 = load i8*, i8** %10, align 8
  %432 = sext i32 %430 to i64
  %433 = getelementptr inbounds i8, i8* %431, i64 %432
  store i8* %433, i8** %10, align 8
  br label %92

434:                                              ; preds = %92
  %435 = load i8*, i8** %7, align 8
  %436 = icmp ne i8* %435, null
  br i1 %436, label %437, label %455

437:                                              ; preds = %434
  %438 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %439 = load i32*, i32** %6, align 8
  %440 = call %struct.TYPE_26__* @coff_section_data(%struct.TYPE_34__* %438, i32* %439)
  %441 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 8
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %455, label %444

444:                                              ; preds = %437
  %445 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %446 = load i32*, i32** %6, align 8
  %447 = call %struct.TYPE_26__* @coff_section_data(%struct.TYPE_34__* %445, i32* %446)
  %448 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %447, i32 0, i32 0
  %449 = load i8*, i8** %448, align 8
  %450 = call i32 @free(i8* %449)
  %451 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %452 = load i32*, i32** %6, align 8
  %453 = call %struct.TYPE_26__* @coff_section_data(%struct.TYPE_34__* %451, i32* %452)
  %454 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %453, i32 0, i32 0
  store i8* null, i8** %454, align 8
  br label %455

455:                                              ; preds = %444, %437, %434
  %456 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %457 = call %struct.xcoff_import_file* @bfd_alloc(%struct.TYPE_34__* %456, i64 32)
  store %struct.xcoff_import_file* %457, %struct.xcoff_import_file** %12, align 8
  %458 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %12, align 8
  %459 = icmp eq %struct.xcoff_import_file* %458, null
  br i1 %459, label %460, label %462

460:                                              ; preds = %455
  %461 = load i32, i32* @FALSE, align 4
  store i32 %461, i32* %3, align 4
  br label %518

462:                                              ; preds = %455
  %463 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %12, align 8
  %464 = getelementptr inbounds %struct.xcoff_import_file, %struct.xcoff_import_file* %463, i32 0, i32 3
  store %struct.xcoff_import_file* null, %struct.xcoff_import_file** %464, align 8
  %465 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %12, align 8
  %466 = getelementptr inbounds %struct.xcoff_import_file, %struct.xcoff_import_file* %465, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %466, align 8
  %467 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %468 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %467, i32 0, i32 2
  %469 = load %struct.TYPE_34__*, %struct.TYPE_34__** %468, align 8
  %470 = icmp eq %struct.TYPE_34__* %469, null
  br i1 %470, label %471, label %474

471:                                              ; preds = %462
  %472 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %473 = call i8* @bfd_get_filename(%struct.TYPE_34__* %472)
  store i8* %473, i8** %13, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  br label %481

474:                                              ; preds = %462
  %475 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %476 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %475, i32 0, i32 2
  %477 = load %struct.TYPE_34__*, %struct.TYPE_34__** %476, align 8
  %478 = call i8* @bfd_get_filename(%struct.TYPE_34__* %477)
  store i8* %478, i8** %13, align 8
  %479 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %480 = call i8* @bfd_get_filename(%struct.TYPE_34__* %479)
  store i8* %480, i8** %14, align 8
  br label %481

481:                                              ; preds = %474, %471
  %482 = load i8*, i8** %13, align 8
  %483 = call i8* @strrchr(i8* %482, i8 signext 47)
  store i8* %483, i8** %15, align 8
  %484 = load i8*, i8** %15, align 8
  %485 = icmp ne i8* %484, null
  br i1 %485, label %486, label %489

486:                                              ; preds = %481
  %487 = load i8*, i8** %15, align 8
  %488 = getelementptr inbounds i8, i8* %487, i64 1
  store i8* %488, i8** %13, align 8
  br label %489

489:                                              ; preds = %486, %481
  %490 = load i8*, i8** %13, align 8
  %491 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %12, align 8
  %492 = getelementptr inbounds %struct.xcoff_import_file, %struct.xcoff_import_file* %491, i32 0, i32 1
  store i8* %490, i8** %492, align 8
  %493 = load i8*, i8** %14, align 8
  %494 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %12, align 8
  %495 = getelementptr inbounds %struct.xcoff_import_file, %struct.xcoff_import_file* %494, i32 0, i32 2
  store i8* %493, i8** %495, align 8
  %496 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %497 = call %struct.TYPE_35__* @xcoff_hash_table(%struct.bfd_link_info* %496)
  %498 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %497, i32 0, i32 0
  store %struct.xcoff_import_file** %498, %struct.xcoff_import_file*** %17, align 8
  store i32 1, i32* %16, align 4
  br label %499

499:                                              ; preds = %504, %489
  %500 = load %struct.xcoff_import_file**, %struct.xcoff_import_file*** %17, align 8
  %501 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %500, align 8
  %502 = icmp ne %struct.xcoff_import_file* %501, null
  br i1 %502, label %503, label %510

503:                                              ; preds = %499
  br label %504

504:                                              ; preds = %503
  %505 = load %struct.xcoff_import_file**, %struct.xcoff_import_file*** %17, align 8
  %506 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %505, align 8
  %507 = getelementptr inbounds %struct.xcoff_import_file, %struct.xcoff_import_file* %506, i32 0, i32 3
  store %struct.xcoff_import_file** %507, %struct.xcoff_import_file*** %17, align 8
  %508 = load i32, i32* %16, align 4
  %509 = add i32 %508, 1
  store i32 %509, i32* %16, align 4
  br label %499

510:                                              ; preds = %499
  %511 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %12, align 8
  %512 = load %struct.xcoff_import_file**, %struct.xcoff_import_file*** %17, align 8
  store %struct.xcoff_import_file* %511, %struct.xcoff_import_file** %512, align 8
  %513 = load i32, i32* %16, align 4
  %514 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %515 = call %struct.TYPE_25__* @xcoff_data(%struct.TYPE_34__* %514)
  %516 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %515, i32 0, i32 0
  store i32 %513, i32* %516, align 4
  %517 = load i32, i32* @TRUE, align 4
  store i32 %517, i32* %3, align 4
  br label %518

518:                                              ; preds = %510, %460, %424, %61, %48, %35
  %519 = load i32, i32* %3, align 4
  ret i32 %519

520:                                              ; preds = %424
  unreachable
}

declare dso_local i32 @_bfd_error_handler(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @bfd_get_filename(%struct.TYPE_34__*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32* @bfd_get_section_by_name(%struct.TYPE_34__*, i8*) #1

declare dso_local i32 @xcoff_get_section_contents(%struct.TYPE_34__*, i32*) #1

declare dso_local %struct.TYPE_26__* @coff_section_data(%struct.TYPE_34__*, i32*) #1

declare dso_local i32 @bfd_section_list_clear(%struct.TYPE_34__*) #1

declare dso_local i32 @bfd_xcoff_swap_ldhdr_in(%struct.TYPE_34__*, i8*, %struct.internal_ldhdr*) #1

declare dso_local i32 @bfd_xcoff_loader_symbol_offset(%struct.TYPE_34__*, %struct.internal_ldhdr*) #1

declare dso_local i32 @bfd_xcoff_ldsymsz(%struct.TYPE_34__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @bfd_xcoff_swap_ldsym_in(%struct.TYPE_34__*, i8*, %struct.internal_ldsym*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local %struct.xcoff_link_hash_entry* @xcoff_link_hash_lookup(%struct.TYPE_35__*, i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_35__* @xcoff_hash_table(%struct.bfd_link_info*) #1

declare dso_local i8* @bfd_malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local %struct.xcoff_import_file* @bfd_alloc(%struct.TYPE_34__*, i64) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_25__* @xcoff_data(%struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
