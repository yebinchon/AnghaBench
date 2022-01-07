; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_bfd_xcoff_size_dynamic_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_bfd_xcoff_size_dynamic_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { i32, i64, i32*, %struct.TYPE_39__* }
%struct.TYPE_50__ = type { i64, %struct.TYPE_50__*, %struct.TYPE_39__* }
%struct.bfd_link_info = type { i64, i64, i32, %struct.TYPE_46__*, %struct.TYPE_50__*, i64, i64, i64 }
%struct.TYPE_46__ = type { i64 }
%struct.xcoff_link_hash_entry = type { i32, i32, %struct.TYPE_45__, %struct.internal_ldsym* }
%struct.TYPE_45__ = type { i64, %struct.TYPE_44__, %struct.TYPE_42__ }
%struct.TYPE_44__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { %struct.TYPE_39__*, i64 }
%struct.TYPE_42__ = type { i32 }
%struct.internal_ldsym = type { i32, i32, i64, i64, i32, i64 }
%struct.xcoff_loader_info = type { i32, i64, i32*, i8*, %struct.TYPE_50__*, i64, i8*, %struct.bfd_link_info* }
%struct.xcoff_import_file = type { i8*, i8*, i8*, %struct.xcoff_import_file* }
%struct.internal_ldhdr = type { i32, i32, i64, i64, i64, i64, i8*, i8*, i64, i32 }
%struct.bfd_strtab_hash = type { i32 }
%struct.internal_syment = type { i32, %struct.TYPE_48__ }
%struct.TYPE_48__ = type { %struct.TYPE_47__ }
%struct.TYPE_47__ = type { i64, i32 }
%struct.TYPE_41__ = type { i64, i64, i32, i64*, %struct.TYPE_39__** }
%struct.TYPE_40__ = type { i64, i32, %struct.TYPE_49__*, %struct.bfd_strtab_hash*, %struct.TYPE_39__*, %struct.TYPE_39__*, %struct.TYPE_39__*, %struct.xcoff_import_file*, %struct.TYPE_39__*, %struct.internal_ldhdr, %struct.TYPE_39__**, i8*, i8* }
%struct.TYPE_49__ = type { i32 }

@bfd_target_xcoff_flavour = common dso_local global i64 0, align 8
@XCOFF_NUMBER_OF_SPECIAL_SECTIONS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@XCOFF_ENTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"__rtinit\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"error: undefined symbol __rtinit\00", align 1
@XCOFF_DEF_REGULAR = common dso_local global i32 0, align 4
@XCOFF_RTINIT = common dso_local global i32 0, align 4
@XTY_SD = common dso_local global i32 0, align 4
@XCOFF_MARK = common dso_local global i32 0, align 4
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@SEC_MARK = common dso_local global i32 0, align 4
@xcoff_build_ldsyms = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c".debug\00", align 1
@strip_all = common dso_local global i64 0, align 8
@strip_debugger = common dso_local global i64 0, align 8
@discard_all = common dso_local global i64 0, align 8
@bfd_abs_section_ptr = common dso_local global %struct.TYPE_39__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bfd_xcoff_size_dynamic_sections(%struct.TYPE_50__* %0, %struct.bfd_link_info* %1, i8* %2, i8* %3, i64 %4, i64 %5, i64 %6, i8* %7, i32 %8, i8* %9, i8* %10, %struct.TYPE_39__** %11, i8* %12) #0 {
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_50__*, align 8
  %16 = alloca %struct.bfd_link_info*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.TYPE_39__**, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.xcoff_link_hash_entry*, align 8
  %29 = alloca %struct.TYPE_39__*, align 8
  %30 = alloca %struct.xcoff_loader_info, align 8
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca %struct.xcoff_import_file*, align 8
  %35 = alloca %struct.internal_ldhdr*, align 8
  %36 = alloca i64, align 8
  %37 = alloca i8*, align 8
  %38 = alloca %struct.TYPE_39__*, align 8
  %39 = alloca %struct.TYPE_50__*, align 8
  %40 = alloca %struct.bfd_strtab_hash*, align 8
  %41 = alloca i32*, align 8
  %42 = alloca i64, align 8
  %43 = alloca %struct.xcoff_link_hash_entry*, align 8
  %44 = alloca %struct.internal_ldsym*, align 8
  %45 = alloca %struct.TYPE_39__*, align 8
  %46 = alloca i8*, align 8
  %47 = alloca %struct.TYPE_39__*, align 8
  %48 = alloca i64, align 8
  %49 = alloca i64*, align 8
  %50 = alloca %struct.TYPE_39__**, align 8
  %51 = alloca i32*, align 8
  %52 = alloca i32*, align 8
  %53 = alloca i64, align 8
  %54 = alloca %struct.internal_syment, align 8
  %55 = alloca i8*, align 8
  %56 = alloca i64, align 8
  store %struct.TYPE_50__* %0, %struct.TYPE_50__** %15, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %16, align 8
  store i8* %2, i8** %17, align 8
  store i8* %3, i8** %18, align 8
  store i64 %4, i64* %19, align 8
  store i64 %5, i64* %20, align 8
  store i64 %6, i64* %21, align 8
  store i8* %7, i8** %22, align 8
  store i32 %8, i32* %23, align 4
  store i8* %9, i8** %24, align 8
  store i8* %10, i8** %25, align 8
  store %struct.TYPE_39__** %11, %struct.TYPE_39__*** %26, align 8
  store i8* %12, i8** %27, align 8
  store i32* null, i32** %41, align 8
  %57 = load %struct.TYPE_50__*, %struct.TYPE_50__** %15, align 8
  %58 = call i64 @bfd_get_flavour(%struct.TYPE_50__* %57)
  %59 = load i64, i64* @bfd_target_xcoff_flavour, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %13
  store i32 0, i32* %31, align 4
  br label %62

62:                                               ; preds = %71, %61
  %63 = load i32, i32* %31, align 4
  %64 = load i32, i32* @XCOFF_NUMBER_OF_SPECIAL_SECTIONS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %26, align 8
  %68 = load i32, i32* %31, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_39__*, %struct.TYPE_39__** %67, i64 %69
  store %struct.TYPE_39__* null, %struct.TYPE_39__** %70, align 8
  br label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %31, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %31, align 4
  br label %62

74:                                               ; preds = %62
  %75 = load i8*, i8** @TRUE, align 8
  store i8* %75, i8** %14, align 8
  br label %912

76:                                               ; preds = %13
  %77 = load i8*, i8** @FALSE, align 8
  %78 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %30, i32 0, i32 3
  store i8* %77, i8** %78, align 8
  %79 = load %struct.TYPE_50__*, %struct.TYPE_50__** %15, align 8
  %80 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %30, i32 0, i32 4
  store %struct.TYPE_50__* %79, %struct.TYPE_50__** %80, align 8
  %81 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %82 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %30, i32 0, i32 7
  store %struct.bfd_link_info* %81, %struct.bfd_link_info** %82, align 8
  %83 = load i8*, i8** %25, align 8
  %84 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %30, i32 0, i32 6
  store i8* %83, i8** %84, align 8
  %85 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %30, i32 0, i32 0
  store i32 0, i32* %85, align 8
  %86 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %30, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %30, i32 0, i32 2
  store i32* null, i32** %87, align 8
  %88 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %30, i32 0, i32 5
  store i64 0, i64* %88, align 8
  %89 = load i64, i64* %20, align 8
  %90 = load %struct.TYPE_50__*, %struct.TYPE_50__** %15, align 8
  %91 = call %struct.TYPE_41__* @xcoff_data(%struct.TYPE_50__* %90)
  %92 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %91, i32 0, i32 0
  store i64 %89, i64* %92, align 8
  %93 = load i64, i64* %21, align 8
  %94 = load %struct.TYPE_50__*, %struct.TYPE_50__** %15, align 8
  %95 = call %struct.TYPE_41__* @xcoff_data(%struct.TYPE_50__* %94)
  %96 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %95, i32 0, i32 1
  store i64 %93, i64* %96, align 8
  %97 = load i32, i32* %23, align 4
  %98 = load %struct.TYPE_50__*, %struct.TYPE_50__** %15, align 8
  %99 = call %struct.TYPE_41__* @xcoff_data(%struct.TYPE_50__* %98)
  %100 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %99, i32 0, i32 2
  store i32 %97, i32* %100, align 8
  %101 = load i64, i64* %19, align 8
  %102 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %103 = call %struct.TYPE_40__* @xcoff_hash_table(%struct.bfd_link_info* %102)
  %104 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %103, i32 0, i32 0
  store i64 %101, i64* %104, align 8
  %105 = load i8*, i8** %24, align 8
  %106 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %107 = call %struct.TYPE_40__* @xcoff_hash_table(%struct.bfd_link_info* %106)
  %108 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %107, i32 0, i32 12
  store i8* %105, i8** %108, align 8
  store %struct.xcoff_link_hash_entry* null, %struct.xcoff_link_hash_entry** %28, align 8
  %109 = load i8*, i8** %18, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %128

111:                                              ; preds = %76
  %112 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %113 = call %struct.TYPE_40__* @xcoff_hash_table(%struct.bfd_link_info* %112)
  %114 = load i8*, i8** %18, align 8
  %115 = load i8*, i8** @FALSE, align 8
  %116 = load i8*, i8** @FALSE, align 8
  %117 = load i8*, i8** @TRUE, align 8
  %118 = call %struct.xcoff_link_hash_entry* @xcoff_link_hash_lookup(%struct.TYPE_40__* %113, i8* %114, i8* %115, i8* %116, i8* %117)
  store %struct.xcoff_link_hash_entry* %118, %struct.xcoff_link_hash_entry** %28, align 8
  %119 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %28, align 8
  %120 = icmp ne %struct.xcoff_link_hash_entry* %119, null
  br i1 %120, label %121, label %127

121:                                              ; preds = %111
  %122 = load i32, i32* @XCOFF_ENTRY, align 4
  %123 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %28, align 8
  %124 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %121, %111
  br label %128

128:                                              ; preds = %127, %76
  %129 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %130 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %129, i32 0, i32 7
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %128
  %134 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %135 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %133
  %139 = load i8*, i8** %27, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %222

141:                                              ; preds = %138, %133, %128
  %142 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %143 = call %struct.TYPE_40__* @xcoff_hash_table(%struct.bfd_link_info* %142)
  %144 = load i8*, i8** @FALSE, align 8
  %145 = load i8*, i8** @FALSE, align 8
  %146 = load i8*, i8** @TRUE, align 8
  %147 = call %struct.xcoff_link_hash_entry* @xcoff_link_hash_lookup(%struct.TYPE_40__* %143, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %144, i8* %145, i8* %146)
  store %struct.xcoff_link_hash_entry* %147, %struct.xcoff_link_hash_entry** %43, align 8
  %148 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %43, align 8
  %149 = icmp eq %struct.xcoff_link_hash_entry* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %141
  %151 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %152 = call i32 @_bfd_error_handler(i32 %151)
  %153 = load i8*, i8** @FALSE, align 8
  store i8* %153, i8** %14, align 8
  br label %912

154:                                              ; preds = %141
  %155 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %156 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %43, align 8
  %157 = call i32 @xcoff_mark_symbol(%struct.bfd_link_info* %155, %struct.xcoff_link_hash_entry* %156)
  %158 = load i32, i32* @XCOFF_DEF_REGULAR, align 4
  %159 = load i32, i32* @XCOFF_RTINIT, align 4
  %160 = or i32 %158, %159
  %161 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %43, align 8
  %162 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  store i64 40, i64* %42, align 8
  %165 = load i64, i64* %42, align 8
  %166 = call %struct.internal_ldsym* @bfd_malloc(i64 %165)
  store %struct.internal_ldsym* %166, %struct.internal_ldsym** %44, align 8
  %167 = load %struct.internal_ldsym*, %struct.internal_ldsym** %44, align 8
  %168 = getelementptr inbounds %struct.internal_ldsym, %struct.internal_ldsym* %167, i32 0, i32 5
  store i64 0, i64* %168, align 8
  %169 = load %struct.internal_ldsym*, %struct.internal_ldsym** %44, align 8
  %170 = getelementptr inbounds %struct.internal_ldsym, %struct.internal_ldsym* %169, i32 0, i32 0
  store i32 2, i32* %170, align 8
  %171 = load i32, i32* @XTY_SD, align 4
  %172 = load %struct.internal_ldsym*, %struct.internal_ldsym** %44, align 8
  %173 = getelementptr inbounds %struct.internal_ldsym, %struct.internal_ldsym* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 8
  %174 = load %struct.internal_ldsym*, %struct.internal_ldsym** %44, align 8
  %175 = getelementptr inbounds %struct.internal_ldsym, %struct.internal_ldsym* %174, i32 0, i32 1
  store i32 5, i32* %175, align 4
  %176 = load %struct.internal_ldsym*, %struct.internal_ldsym** %44, align 8
  %177 = getelementptr inbounds %struct.internal_ldsym, %struct.internal_ldsym* %176, i32 0, i32 3
  store i64 0, i64* %177, align 8
  %178 = load %struct.internal_ldsym*, %struct.internal_ldsym** %44, align 8
  %179 = getelementptr inbounds %struct.internal_ldsym, %struct.internal_ldsym* %178, i32 0, i32 2
  store i64 0, i64* %179, align 8
  %180 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %30, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 0, %181
  %183 = zext i1 %182 to i32
  %184 = call i32 @BFD_ASSERT(i32 %183)
  %185 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %43, align 8
  %186 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %185, i32 0, i32 1
  store i32 3, i32* %186, align 4
  %187 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %30, i32 0, i32 0
  store i32 1, i32* %187, align 8
  %188 = load %struct.internal_ldsym*, %struct.internal_ldsym** %44, align 8
  %189 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %43, align 8
  %190 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %189, i32 0, i32 3
  store %struct.internal_ldsym* %188, %struct.internal_ldsym** %190, align 8
  %191 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %30, i32 0, i32 4
  %192 = load %struct.TYPE_50__*, %struct.TYPE_50__** %191, align 8
  %193 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %43, align 8
  %194 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %193, i32 0, i32 3
  %195 = load %struct.internal_ldsym*, %struct.internal_ldsym** %194, align 8
  %196 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %43, align 8
  %197 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @bfd_xcoff_put_ldsymbol_name(%struct.TYPE_50__* %192, %struct.xcoff_loader_info* %30, %struct.internal_ldsym* %195, i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %154
  %204 = load i8*, i8** @FALSE, align 8
  store i8* %204, i8** %14, align 8
  br label %912

205:                                              ; preds = %154
  %206 = load i32, i32* @XCOFF_DEF_REGULAR, align 4
  %207 = load i32, i32* @XCOFF_MARK, align 4
  %208 = or i32 %206, %207
  %209 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %43, align 8
  %210 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 8
  %213 = load i64, i64* @bfd_link_hash_defined, align 8
  %214 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %43, align 8
  %215 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %215, i32 0, i32 0
  store i64 %213, i64* %216, align 8
  %217 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %43, align 8
  %218 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %220, i32 0, i32 1
  store i64 0, i64* %221, align 8
  br label %222

222:                                              ; preds = %205, %138
  %223 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %224 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %223, i32 0, i32 5
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %247, label %227

227:                                              ; preds = %222
  %228 = load i8*, i8** %22, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %230, label %247

230:                                              ; preds = %227
  %231 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %28, align 8
  %232 = icmp eq %struct.xcoff_link_hash_entry* %231, null
  br i1 %232, label %247, label %233

233:                                              ; preds = %230
  %234 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %28, align 8
  %235 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @bfd_link_hash_defined, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %291

240:                                              ; preds = %233
  %241 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %28, align 8
  %242 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @bfd_link_hash_defweak, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %291

247:                                              ; preds = %240, %230, %227, %222
  %248 = load i8*, i8** @FALSE, align 8
  store i8* %248, i8** %22, align 8
  %249 = load i8*, i8** @FALSE, align 8
  %250 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %251 = call %struct.TYPE_40__* @xcoff_hash_table(%struct.bfd_link_info* %250)
  %252 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %251, i32 0, i32 11
  store i8* %249, i8** %252, align 8
  %253 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %254 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %253, i32 0, i32 4
  %255 = load %struct.TYPE_50__*, %struct.TYPE_50__** %254, align 8
  store %struct.TYPE_50__* %255, %struct.TYPE_50__** %39, align 8
  br label %256

256:                                              ; preds = %286, %247
  %257 = load %struct.TYPE_50__*, %struct.TYPE_50__** %39, align 8
  %258 = icmp ne %struct.TYPE_50__* %257, null
  br i1 %258, label %259, label %290

259:                                              ; preds = %256
  %260 = load %struct.TYPE_50__*, %struct.TYPE_50__** %39, align 8
  %261 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %260, i32 0, i32 2
  %262 = load %struct.TYPE_39__*, %struct.TYPE_39__** %261, align 8
  store %struct.TYPE_39__* %262, %struct.TYPE_39__** %45, align 8
  br label %263

263:                                              ; preds = %281, %259
  %264 = load %struct.TYPE_39__*, %struct.TYPE_39__** %45, align 8
  %265 = icmp ne %struct.TYPE_39__* %264, null
  br i1 %265, label %266, label %285

266:                                              ; preds = %263
  %267 = load %struct.TYPE_39__*, %struct.TYPE_39__** %45, align 8
  %268 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @SEC_MARK, align 4
  %271 = and i32 %269, %270
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %266
  %274 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %275 = load %struct.TYPE_39__*, %struct.TYPE_39__** %45, align 8
  %276 = call i32 @xcoff_mark(%struct.bfd_link_info* %274, %struct.TYPE_39__* %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %279, label %278

278:                                              ; preds = %273
  br label %896

279:                                              ; preds = %273
  br label %280

280:                                              ; preds = %279, %266
  br label %281

281:                                              ; preds = %280
  %282 = load %struct.TYPE_39__*, %struct.TYPE_39__** %45, align 8
  %283 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %282, i32 0, i32 3
  %284 = load %struct.TYPE_39__*, %struct.TYPE_39__** %283, align 8
  store %struct.TYPE_39__* %284, %struct.TYPE_39__** %45, align 8
  br label %263

285:                                              ; preds = %263
  br label %286

286:                                              ; preds = %285
  %287 = load %struct.TYPE_50__*, %struct.TYPE_50__** %39, align 8
  %288 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_50__*, %struct.TYPE_50__** %288, align 8
  store %struct.TYPE_50__* %289, %struct.TYPE_50__** %39, align 8
  br label %256

290:                                              ; preds = %256
  br label %309

291:                                              ; preds = %240, %233
  %292 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %293 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %28, align 8
  %294 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %296, i32 0, i32 0
  %298 = load %struct.TYPE_39__*, %struct.TYPE_39__** %297, align 8
  %299 = call i32 @xcoff_mark(%struct.bfd_link_info* %292, %struct.TYPE_39__* %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %302, label %301

301:                                              ; preds = %291
  br label %896

302:                                              ; preds = %291
  %303 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %304 = call i32 @xcoff_sweep(%struct.bfd_link_info* %303)
  %305 = load i8*, i8** @TRUE, align 8
  %306 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %307 = call %struct.TYPE_40__* @xcoff_hash_table(%struct.bfd_link_info* %306)
  %308 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %307, i32 0, i32 11
  store i8* %305, i8** %308, align 8
  br label %309

309:                                              ; preds = %302, %290
  store i32 0, i32* %31, align 4
  br label %310

310:                                              ; preds = %342, %309
  %311 = load i32, i32* %31, align 4
  %312 = load i32, i32* @XCOFF_NUMBER_OF_SPECIAL_SECTIONS, align 4
  %313 = icmp slt i32 %311, %312
  br i1 %313, label %314, label %345

314:                                              ; preds = %310
  %315 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %316 = call %struct.TYPE_40__* @xcoff_hash_table(%struct.bfd_link_info* %315)
  %317 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %316, i32 0, i32 10
  %318 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %317, align 8
  %319 = load i32, i32* %31, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_39__*, %struct.TYPE_39__** %318, i64 %320
  %322 = load %struct.TYPE_39__*, %struct.TYPE_39__** %321, align 8
  store %struct.TYPE_39__* %322, %struct.TYPE_39__** %38, align 8
  %323 = load %struct.TYPE_39__*, %struct.TYPE_39__** %38, align 8
  %324 = icmp ne %struct.TYPE_39__* %323, null
  br i1 %324, label %325, label %336

325:                                              ; preds = %314
  %326 = load i8*, i8** %22, align 8
  %327 = icmp ne i8* %326, null
  br i1 %327, label %328, label %336

328:                                              ; preds = %325
  %329 = load %struct.TYPE_39__*, %struct.TYPE_39__** %38, align 8
  %330 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @SEC_MARK, align 4
  %333 = and i32 %331, %332
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %328
  store %struct.TYPE_39__* null, %struct.TYPE_39__** %38, align 8
  br label %336

336:                                              ; preds = %335, %328, %325, %314
  %337 = load %struct.TYPE_39__*, %struct.TYPE_39__** %38, align 8
  %338 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %26, align 8
  %339 = load i32, i32* %31, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_39__*, %struct.TYPE_39__** %338, i64 %340
  store %struct.TYPE_39__* %337, %struct.TYPE_39__** %341, align 8
  br label %342

342:                                              ; preds = %336
  %343 = load i32, i32* %31, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %31, align 4
  br label %310

345:                                              ; preds = %310
  %346 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %347 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %346, i32 0, i32 4
  %348 = load %struct.TYPE_50__*, %struct.TYPE_50__** %347, align 8
  %349 = icmp eq %struct.TYPE_50__* %348, null
  br i1 %349, label %350, label %352

350:                                              ; preds = %345
  %351 = load i8*, i8** @TRUE, align 8
  store i8* %351, i8** %14, align 8
  br label %912

352:                                              ; preds = %345
  %353 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %354 = call %struct.TYPE_40__* @xcoff_hash_table(%struct.bfd_link_info* %353)
  %355 = load i32, i32* @xcoff_build_ldsyms, align 4
  %356 = bitcast %struct.xcoff_loader_info* %30 to i8*
  %357 = call i32 @xcoff_link_hash_traverse(%struct.TYPE_40__* %354, i32 %355, i8* %356)
  %358 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %30, i32 0, i32 3
  %359 = load i8*, i8** %358, align 8
  %360 = icmp ne i8* %359, null
  br i1 %360, label %361, label %362

361:                                              ; preds = %352
  br label %896

362:                                              ; preds = %352
  %363 = load i8*, i8** %17, align 8
  %364 = call i64 @strlen(i8* %363)
  %365 = add i64 %364, 3
  store i64 %365, i64* %32, align 8
  store i64 1, i64* %33, align 8
  %366 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %367 = call %struct.TYPE_40__* @xcoff_hash_table(%struct.bfd_link_info* %366)
  %368 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %367, i32 0, i32 7
  %369 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %368, align 8
  store %struct.xcoff_import_file* %369, %struct.xcoff_import_file** %34, align 8
  br label %370

370:                                              ; preds = %393, %362
  %371 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %34, align 8
  %372 = icmp ne %struct.xcoff_import_file* %371, null
  br i1 %372, label %373, label %397

373:                                              ; preds = %370
  %374 = load i64, i64* %33, align 8
  %375 = add i64 %374, 1
  store i64 %375, i64* %33, align 8
  %376 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %34, align 8
  %377 = getelementptr inbounds %struct.xcoff_import_file, %struct.xcoff_import_file* %376, i32 0, i32 0
  %378 = load i8*, i8** %377, align 8
  %379 = call i64 @strlen(i8* %378)
  %380 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %34, align 8
  %381 = getelementptr inbounds %struct.xcoff_import_file, %struct.xcoff_import_file* %380, i32 0, i32 1
  %382 = load i8*, i8** %381, align 8
  %383 = call i64 @strlen(i8* %382)
  %384 = add i64 %379, %383
  %385 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %34, align 8
  %386 = getelementptr inbounds %struct.xcoff_import_file, %struct.xcoff_import_file* %385, i32 0, i32 2
  %387 = load i8*, i8** %386, align 8
  %388 = call i64 @strlen(i8* %387)
  %389 = add i64 %384, %388
  %390 = add i64 %389, 3
  %391 = load i64, i64* %32, align 8
  %392 = add i64 %391, %390
  store i64 %392, i64* %32, align 8
  br label %393

393:                                              ; preds = %373
  %394 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %34, align 8
  %395 = getelementptr inbounds %struct.xcoff_import_file, %struct.xcoff_import_file* %394, i32 0, i32 3
  %396 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %395, align 8
  store %struct.xcoff_import_file* %396, %struct.xcoff_import_file** %34, align 8
  br label %370

397:                                              ; preds = %370
  %398 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %399 = call %struct.TYPE_40__* @xcoff_hash_table(%struct.bfd_link_info* %398)
  %400 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %399, i32 0, i32 9
  store %struct.internal_ldhdr* %400, %struct.internal_ldhdr** %35, align 8
  %401 = load %struct.TYPE_50__*, %struct.TYPE_50__** %15, align 8
  %402 = call i32 @bfd_xcoff_ldhdr_version(%struct.TYPE_50__* %401)
  %403 = load %struct.internal_ldhdr*, %struct.internal_ldhdr** %35, align 8
  %404 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %403, i32 0, i32 9
  store i32 %402, i32* %404, align 8
  %405 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %30, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = load %struct.internal_ldhdr*, %struct.internal_ldhdr** %35, align 8
  %408 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %407, i32 0, i32 0
  store i32 %406, i32* %408, align 8
  %409 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %410 = call %struct.TYPE_40__* @xcoff_hash_table(%struct.bfd_link_info* %409)
  %411 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 8
  %413 = load %struct.internal_ldhdr*, %struct.internal_ldhdr** %35, align 8
  %414 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %413, i32 0, i32 1
  store i32 %412, i32* %414, align 4
  %415 = load i64, i64* %32, align 8
  %416 = load %struct.internal_ldhdr*, %struct.internal_ldhdr** %35, align 8
  %417 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %416, i32 0, i32 2
  store i64 %415, i64* %417, align 8
  %418 = load i64, i64* %33, align 8
  %419 = load %struct.internal_ldhdr*, %struct.internal_ldhdr** %35, align 8
  %420 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %419, i32 0, i32 3
  store i64 %418, i64* %420, align 8
  %421 = load %struct.TYPE_50__*, %struct.TYPE_50__** %15, align 8
  %422 = call i8* @bfd_xcoff_ldhdrsz(%struct.TYPE_50__* %421)
  %423 = load %struct.internal_ldhdr*, %struct.internal_ldhdr** %35, align 8
  %424 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = load %struct.TYPE_50__*, %struct.TYPE_50__** %15, align 8
  %427 = call i32 @bfd_xcoff_ldsymsz(%struct.TYPE_50__* %426)
  %428 = mul nsw i32 %425, %427
  %429 = sext i32 %428 to i64
  %430 = getelementptr i8, i8* %422, i64 %429
  %431 = load %struct.internal_ldhdr*, %struct.internal_ldhdr** %35, align 8
  %432 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = load %struct.TYPE_50__*, %struct.TYPE_50__** %15, align 8
  %435 = call i32 @bfd_xcoff_ldrelsz(%struct.TYPE_50__* %434)
  %436 = mul nsw i32 %433, %435
  %437 = sext i32 %436 to i64
  %438 = getelementptr i8, i8* %430, i64 %437
  %439 = ptrtoint i8* %438 to i64
  %440 = load %struct.internal_ldhdr*, %struct.internal_ldhdr** %35, align 8
  %441 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %440, i32 0, i32 4
  store i64 %439, i64* %441, align 8
  %442 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %30, i32 0, i32 1
  %443 = load i64, i64* %442, align 8
  %444 = load %struct.internal_ldhdr*, %struct.internal_ldhdr** %35, align 8
  %445 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %444, i32 0, i32 5
  store i64 %443, i64* %445, align 8
  %446 = load %struct.internal_ldhdr*, %struct.internal_ldhdr** %35, align 8
  %447 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %446, i32 0, i32 4
  %448 = load i64, i64* %447, align 8
  %449 = load i64, i64* %32, align 8
  %450 = add i64 %448, %449
  store i64 %450, i64* %36, align 8
  %451 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %30, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = icmp eq i64 %452, 0
  br i1 %453, label %454, label %457

454:                                              ; preds = %397
  %455 = load %struct.internal_ldhdr*, %struct.internal_ldhdr** %35, align 8
  %456 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %455, i32 0, i32 8
  store i64 0, i64* %456, align 8
  br label %461

457:                                              ; preds = %397
  %458 = load i64, i64* %36, align 8
  %459 = load %struct.internal_ldhdr*, %struct.internal_ldhdr** %35, align 8
  %460 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %459, i32 0, i32 8
  store i64 %458, i64* %460, align 8
  br label %461

461:                                              ; preds = %457, %454
  %462 = load %struct.TYPE_50__*, %struct.TYPE_50__** %15, align 8
  %463 = call i8* @bfd_xcoff_ldhdrsz(%struct.TYPE_50__* %462)
  %464 = load %struct.internal_ldhdr*, %struct.internal_ldhdr** %35, align 8
  %465 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %464, i32 0, i32 7
  store i8* %463, i8** %465, align 8
  %466 = load %struct.TYPE_50__*, %struct.TYPE_50__** %15, align 8
  %467 = call i8* @bfd_xcoff_ldhdrsz(%struct.TYPE_50__* %466)
  %468 = load %struct.internal_ldhdr*, %struct.internal_ldhdr** %35, align 8
  %469 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = load %struct.TYPE_50__*, %struct.TYPE_50__** %15, align 8
  %472 = call i32 @bfd_xcoff_ldsymsz(%struct.TYPE_50__* %471)
  %473 = mul nsw i32 %470, %472
  %474 = sext i32 %473 to i64
  %475 = getelementptr i8, i8* %467, i64 %474
  %476 = load %struct.internal_ldhdr*, %struct.internal_ldhdr** %35, align 8
  %477 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %476, i32 0, i32 6
  store i8* %475, i8** %477, align 8
  %478 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %479 = call %struct.TYPE_40__* @xcoff_hash_table(%struct.bfd_link_info* %478)
  %480 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %479, i32 0, i32 8
  %481 = load %struct.TYPE_39__*, %struct.TYPE_39__** %480, align 8
  store %struct.TYPE_39__* %481, %struct.TYPE_39__** %29, align 8
  %482 = load i64, i64* %36, align 8
  %483 = load %struct.internal_ldhdr*, %struct.internal_ldhdr** %35, align 8
  %484 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %483, i32 0, i32 5
  %485 = load i64, i64* %484, align 8
  %486 = add nsw i64 %482, %485
  %487 = load %struct.TYPE_39__*, %struct.TYPE_39__** %29, align 8
  %488 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %487, i32 0, i32 1
  store i64 %486, i64* %488, align 8
  %489 = load %struct.TYPE_50__*, %struct.TYPE_50__** %15, align 8
  %490 = load %struct.TYPE_39__*, %struct.TYPE_39__** %29, align 8
  %491 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %490, i32 0, i32 1
  %492 = load i64, i64* %491, align 8
  %493 = call i8* @bfd_zalloc(%struct.TYPE_50__* %489, i64 %492)
  %494 = bitcast i8* %493 to i32*
  %495 = load %struct.TYPE_39__*, %struct.TYPE_39__** %29, align 8
  %496 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %495, i32 0, i32 2
  store i32* %494, i32** %496, align 8
  %497 = load %struct.TYPE_39__*, %struct.TYPE_39__** %29, align 8
  %498 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %497, i32 0, i32 2
  %499 = load i32*, i32** %498, align 8
  %500 = icmp eq i32* %499, null
  br i1 %500, label %501, label %502

501:                                              ; preds = %461
  br label %896

502:                                              ; preds = %461
  %503 = load %struct.TYPE_50__*, %struct.TYPE_50__** %15, align 8
  %504 = load %struct.internal_ldhdr*, %struct.internal_ldhdr** %35, align 8
  %505 = load %struct.TYPE_39__*, %struct.TYPE_39__** %29, align 8
  %506 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %505, i32 0, i32 2
  %507 = load i32*, i32** %506, align 8
  %508 = call i32 @bfd_xcoff_swap_ldhdr_out(%struct.TYPE_50__* %503, %struct.internal_ldhdr* %504, i32* %507)
  %509 = load %struct.TYPE_39__*, %struct.TYPE_39__** %29, align 8
  %510 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %509, i32 0, i32 2
  %511 = load i32*, i32** %510, align 8
  %512 = bitcast i32* %511 to i8*
  %513 = load %struct.internal_ldhdr*, %struct.internal_ldhdr** %35, align 8
  %514 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %513, i32 0, i32 4
  %515 = load i64, i64* %514, align 8
  %516 = getelementptr inbounds i8, i8* %512, i64 %515
  store i8* %516, i8** %37, align 8
  %517 = load i8*, i8** %37, align 8
  %518 = load i8*, i8** %17, align 8
  %519 = call i32 @strcpy(i8* %517, i8* %518)
  %520 = load i8*, i8** %17, align 8
  %521 = call i64 @strlen(i8* %520)
  %522 = add i64 %521, 1
  %523 = load i8*, i8** %37, align 8
  %524 = getelementptr inbounds i8, i8* %523, i64 %522
  store i8* %524, i8** %37, align 8
  %525 = load i8*, i8** %37, align 8
  %526 = getelementptr inbounds i8, i8* %525, i32 1
  store i8* %526, i8** %37, align 8
  store i8 0, i8* %525, align 1
  %527 = load i8*, i8** %37, align 8
  %528 = getelementptr inbounds i8, i8* %527, i32 1
  store i8* %528, i8** %37, align 8
  store i8 0, i8* %527, align 1
  %529 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %530 = call %struct.TYPE_40__* @xcoff_hash_table(%struct.bfd_link_info* %529)
  %531 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %530, i32 0, i32 7
  %532 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %531, align 8
  store %struct.xcoff_import_file* %532, %struct.xcoff_import_file** %34, align 8
  br label %533

533:                                              ; preds = %576, %502
  %534 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %34, align 8
  %535 = icmp ne %struct.xcoff_import_file* %534, null
  br i1 %535, label %536, label %580

536:                                              ; preds = %533
  %537 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %34, align 8
  %538 = getelementptr inbounds %struct.xcoff_import_file, %struct.xcoff_import_file* %537, i32 0, i32 0
  %539 = load i8*, i8** %538, align 8
  store i8* %539, i8** %46, align 8
  br label %540

540:                                              ; preds = %548, %536
  %541 = load i8*, i8** %46, align 8
  %542 = getelementptr inbounds i8, i8* %541, i32 1
  store i8* %542, i8** %46, align 8
  %543 = load i8, i8* %541, align 1
  %544 = load i8*, i8** %37, align 8
  %545 = getelementptr inbounds i8, i8* %544, i32 1
  store i8* %545, i8** %37, align 8
  store i8 %543, i8* %544, align 1
  %546 = sext i8 %543 to i32
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %549

548:                                              ; preds = %540
  br label %540

549:                                              ; preds = %540
  %550 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %34, align 8
  %551 = getelementptr inbounds %struct.xcoff_import_file, %struct.xcoff_import_file* %550, i32 0, i32 1
  %552 = load i8*, i8** %551, align 8
  store i8* %552, i8** %46, align 8
  br label %553

553:                                              ; preds = %561, %549
  %554 = load i8*, i8** %46, align 8
  %555 = getelementptr inbounds i8, i8* %554, i32 1
  store i8* %555, i8** %46, align 8
  %556 = load i8, i8* %554, align 1
  %557 = load i8*, i8** %37, align 8
  %558 = getelementptr inbounds i8, i8* %557, i32 1
  store i8* %558, i8** %37, align 8
  store i8 %556, i8* %557, align 1
  %559 = sext i8 %556 to i32
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %561, label %562

561:                                              ; preds = %553
  br label %553

562:                                              ; preds = %553
  %563 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %34, align 8
  %564 = getelementptr inbounds %struct.xcoff_import_file, %struct.xcoff_import_file* %563, i32 0, i32 2
  %565 = load i8*, i8** %564, align 8
  store i8* %565, i8** %46, align 8
  br label %566

566:                                              ; preds = %574, %562
  %567 = load i8*, i8** %46, align 8
  %568 = getelementptr inbounds i8, i8* %567, i32 1
  store i8* %568, i8** %46, align 8
  %569 = load i8, i8* %567, align 1
  %570 = load i8*, i8** %37, align 8
  %571 = getelementptr inbounds i8, i8* %570, i32 1
  store i8* %571, i8** %37, align 8
  store i8 %569, i8* %570, align 1
  %572 = sext i8 %569 to i32
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %575

574:                                              ; preds = %566
  br label %566

575:                                              ; preds = %566
  br label %576

576:                                              ; preds = %575
  %577 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %34, align 8
  %578 = getelementptr inbounds %struct.xcoff_import_file, %struct.xcoff_import_file* %577, i32 0, i32 3
  %579 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %578, align 8
  store %struct.xcoff_import_file* %579, %struct.xcoff_import_file** %34, align 8
  br label %533

580:                                              ; preds = %533
  %581 = load i8*, i8** %37, align 8
  %582 = bitcast i8* %581 to i32*
  %583 = load %struct.TYPE_39__*, %struct.TYPE_39__** %29, align 8
  %584 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %583, i32 0, i32 2
  %585 = load i32*, i32** %584, align 8
  %586 = ptrtoint i32* %582 to i64
  %587 = ptrtoint i32* %585 to i64
  %588 = sub i64 %586, %587
  %589 = sdiv exact i64 %588, 4
  %590 = load i64, i64* %36, align 8
  %591 = icmp eq i64 %589, %590
  %592 = zext i1 %591 to i32
  %593 = call i32 @BFD_ASSERT(i32 %592)
  %594 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %30, i32 0, i32 1
  %595 = load i64, i64* %594, align 8
  %596 = icmp sgt i64 %595, 0
  br i1 %596, label %597, label %608

597:                                              ; preds = %580
  %598 = load i8*, i8** %37, align 8
  %599 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %30, i32 0, i32 2
  %600 = load i32*, i32** %599, align 8
  %601 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %30, i32 0, i32 1
  %602 = load i64, i64* %601, align 8
  %603 = call i32 @memcpy(i8* %598, i32* %600, i64 %602)
  %604 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %30, i32 0, i32 2
  %605 = load i32*, i32** %604, align 8
  %606 = call i32 @free(i32* %605)
  %607 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %30, i32 0, i32 2
  store i32* null, i32** %607, align 8
  br label %608

608:                                              ; preds = %597, %580
  %609 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %610 = call %struct.TYPE_40__* @xcoff_hash_table(%struct.bfd_link_info* %609)
  %611 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %610, i32 0, i32 6
  %612 = load %struct.TYPE_39__*, %struct.TYPE_39__** %611, align 8
  store %struct.TYPE_39__* %612, %struct.TYPE_39__** %38, align 8
  %613 = load %struct.TYPE_39__*, %struct.TYPE_39__** %38, align 8
  %614 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %613, i32 0, i32 1
  %615 = load i64, i64* %614, align 8
  %616 = icmp sgt i64 %615, 0
  br i1 %616, label %617, label %632

617:                                              ; preds = %608
  %618 = load %struct.TYPE_50__*, %struct.TYPE_50__** %15, align 8
  %619 = load %struct.TYPE_39__*, %struct.TYPE_39__** %38, align 8
  %620 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %619, i32 0, i32 1
  %621 = load i64, i64* %620, align 8
  %622 = call i8* @bfd_zalloc(%struct.TYPE_50__* %618, i64 %621)
  %623 = bitcast i8* %622 to i32*
  %624 = load %struct.TYPE_39__*, %struct.TYPE_39__** %38, align 8
  %625 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %624, i32 0, i32 2
  store i32* %623, i32** %625, align 8
  %626 = load %struct.TYPE_39__*, %struct.TYPE_39__** %38, align 8
  %627 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %626, i32 0, i32 2
  %628 = load i32*, i32** %627, align 8
  %629 = icmp eq i32* %628, null
  br i1 %629, label %630, label %631

630:                                              ; preds = %617
  br label %896

631:                                              ; preds = %617
  br label %632

632:                                              ; preds = %631, %608
  %633 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %634 = call %struct.TYPE_40__* @xcoff_hash_table(%struct.bfd_link_info* %633)
  %635 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %634, i32 0, i32 5
  %636 = load %struct.TYPE_39__*, %struct.TYPE_39__** %635, align 8
  store %struct.TYPE_39__* %636, %struct.TYPE_39__** %38, align 8
  %637 = load %struct.TYPE_39__*, %struct.TYPE_39__** %38, align 8
  %638 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %637, i32 0, i32 1
  %639 = load i64, i64* %638, align 8
  %640 = icmp sgt i64 %639, 0
  br i1 %640, label %641, label %656

641:                                              ; preds = %632
  %642 = load %struct.TYPE_50__*, %struct.TYPE_50__** %15, align 8
  %643 = load %struct.TYPE_39__*, %struct.TYPE_39__** %38, align 8
  %644 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %643, i32 0, i32 1
  %645 = load i64, i64* %644, align 8
  %646 = call i8* @bfd_zalloc(%struct.TYPE_50__* %642, i64 %645)
  %647 = bitcast i8* %646 to i32*
  %648 = load %struct.TYPE_39__*, %struct.TYPE_39__** %38, align 8
  %649 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %648, i32 0, i32 2
  store i32* %647, i32** %649, align 8
  %650 = load %struct.TYPE_39__*, %struct.TYPE_39__** %38, align 8
  %651 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %650, i32 0, i32 2
  %652 = load i32*, i32** %651, align 8
  %653 = icmp eq i32* %652, null
  br i1 %653, label %654, label %655

654:                                              ; preds = %641
  br label %896

655:                                              ; preds = %641
  br label %656

656:                                              ; preds = %655, %632
  %657 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %658 = call %struct.TYPE_40__* @xcoff_hash_table(%struct.bfd_link_info* %657)
  %659 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %658, i32 0, i32 4
  %660 = load %struct.TYPE_39__*, %struct.TYPE_39__** %659, align 8
  store %struct.TYPE_39__* %660, %struct.TYPE_39__** %38, align 8
  %661 = load %struct.TYPE_39__*, %struct.TYPE_39__** %38, align 8
  %662 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %661, i32 0, i32 1
  %663 = load i64, i64* %662, align 8
  %664 = icmp sgt i64 %663, 0
  br i1 %664, label %665, label %680

665:                                              ; preds = %656
  %666 = load %struct.TYPE_50__*, %struct.TYPE_50__** %15, align 8
  %667 = load %struct.TYPE_39__*, %struct.TYPE_39__** %38, align 8
  %668 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %667, i32 0, i32 1
  %669 = load i64, i64* %668, align 8
  %670 = call i8* @bfd_zalloc(%struct.TYPE_50__* %666, i64 %669)
  %671 = bitcast i8* %670 to i32*
  %672 = load %struct.TYPE_39__*, %struct.TYPE_39__** %38, align 8
  %673 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %672, i32 0, i32 2
  store i32* %671, i32** %673, align 8
  %674 = load %struct.TYPE_39__*, %struct.TYPE_39__** %38, align 8
  %675 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %674, i32 0, i32 2
  %676 = load i32*, i32** %675, align 8
  %677 = icmp eq i32* %676, null
  br i1 %677, label %678, label %679

678:                                              ; preds = %665
  br label %896

679:                                              ; preds = %665
  br label %680

680:                                              ; preds = %679, %656
  %681 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %682 = call %struct.TYPE_40__* @xcoff_hash_table(%struct.bfd_link_info* %681)
  %683 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %682, i32 0, i32 3
  %684 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %683, align 8
  store %struct.bfd_strtab_hash* %684, %struct.bfd_strtab_hash** %40, align 8
  %685 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %686 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %685, i32 0, i32 4
  %687 = load %struct.TYPE_50__*, %struct.TYPE_50__** %686, align 8
  store %struct.TYPE_50__* %687, %struct.TYPE_50__** %39, align 8
  br label %688

688:                                              ; preds = %876, %680
  %689 = load %struct.TYPE_50__*, %struct.TYPE_50__** %39, align 8
  %690 = icmp ne %struct.TYPE_50__* %689, null
  br i1 %690, label %691, label %880

691:                                              ; preds = %688
  %692 = load %struct.TYPE_50__*, %struct.TYPE_50__** %39, align 8
  %693 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %692, i32 0, i32 0
  %694 = load i64, i64* %693, align 8
  %695 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %696 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %695, i32 0, i32 3
  %697 = load %struct.TYPE_46__*, %struct.TYPE_46__** %696, align 8
  %698 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %697, i32 0, i32 0
  %699 = load i64, i64* %698, align 8
  %700 = icmp ne i64 %694, %699
  br i1 %700, label %701, label %702

701:                                              ; preds = %691
  br label %876

702:                                              ; preds = %691
  %703 = load %struct.TYPE_50__*, %struct.TYPE_50__** %39, align 8
  %704 = call %struct.TYPE_39__* @bfd_get_section_by_name(%struct.TYPE_50__* %703, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_39__* %704, %struct.TYPE_39__** %47, align 8
  %705 = load %struct.TYPE_39__*, %struct.TYPE_39__** %47, align 8
  %706 = icmp eq %struct.TYPE_39__* %705, null
  br i1 %706, label %712, label %707

707:                                              ; preds = %702
  %708 = load %struct.TYPE_39__*, %struct.TYPE_39__** %47, align 8
  %709 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %708, i32 0, i32 1
  %710 = load i64, i64* %709, align 8
  %711 = icmp eq i64 %710, 0
  br i1 %711, label %712, label %713

712:                                              ; preds = %707, %702
  br label %876

713:                                              ; preds = %707
  %714 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %715 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %714, i32 0, i32 0
  %716 = load i64, i64* %715, align 8
  %717 = load i64, i64* @strip_all, align 8
  %718 = icmp eq i64 %716, %717
  br i1 %718, label %731, label %719

719:                                              ; preds = %713
  %720 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %721 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %720, i32 0, i32 0
  %722 = load i64, i64* %721, align 8
  %723 = load i64, i64* @strip_debugger, align 8
  %724 = icmp eq i64 %722, %723
  br i1 %724, label %731, label %725

725:                                              ; preds = %719
  %726 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %727 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %726, i32 0, i32 1
  %728 = load i64, i64* %727, align 8
  %729 = load i64, i64* @discard_all, align 8
  %730 = icmp eq i64 %728, %729
  br i1 %730, label %731, label %734

731:                                              ; preds = %725, %719, %713
  %732 = load %struct.TYPE_39__*, %struct.TYPE_39__** %47, align 8
  %733 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %732, i32 0, i32 1
  store i64 0, i64* %733, align 8
  br label %876

734:                                              ; preds = %725
  %735 = load %struct.TYPE_50__*, %struct.TYPE_50__** %39, align 8
  %736 = call i32 @_bfd_coff_get_external_symbols(%struct.TYPE_50__* %735)
  %737 = icmp ne i32 %736, 0
  br i1 %737, label %739, label %738

738:                                              ; preds = %734
  br label %896

739:                                              ; preds = %734
  %740 = load %struct.TYPE_50__*, %struct.TYPE_50__** %39, align 8
  %741 = call i64 @obj_raw_syment_count(%struct.TYPE_50__* %740)
  store i64 %741, i64* %48, align 8
  %742 = load %struct.TYPE_50__*, %struct.TYPE_50__** %39, align 8
  %743 = load i64, i64* %48, align 8
  %744 = mul i64 %743, 8
  %745 = call i8* @bfd_zalloc(%struct.TYPE_50__* %742, i64 %744)
  %746 = bitcast i8* %745 to i64*
  store i64* %746, i64** %49, align 8
  %747 = load i64*, i64** %49, align 8
  %748 = icmp eq i64* %747, null
  br i1 %748, label %749, label %750

749:                                              ; preds = %739
  br label %896

750:                                              ; preds = %739
  %751 = load i64*, i64** %49, align 8
  %752 = load %struct.TYPE_50__*, %struct.TYPE_50__** %39, align 8
  %753 = call %struct.TYPE_41__* @xcoff_data(%struct.TYPE_50__* %752)
  %754 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %753, i32 0, i32 3
  store i64* %751, i64** %754, align 8
  %755 = load %struct.TYPE_50__*, %struct.TYPE_50__** %39, align 8
  %756 = load %struct.TYPE_39__*, %struct.TYPE_39__** %47, align 8
  %757 = call i32 @bfd_malloc_and_get_section(%struct.TYPE_50__* %755, %struct.TYPE_39__* %756, i32** %41)
  %758 = icmp ne i32 %757, 0
  br i1 %758, label %760, label %759

759:                                              ; preds = %750
  br label %896

760:                                              ; preds = %750
  %761 = load %struct.TYPE_50__*, %struct.TYPE_50__** %39, align 8
  %762 = call %struct.TYPE_41__* @xcoff_data(%struct.TYPE_50__* %761)
  %763 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %762, i32 0, i32 4
  %764 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %763, align 8
  store %struct.TYPE_39__** %764, %struct.TYPE_39__*** %50, align 8
  %765 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %50, align 8
  %766 = icmp ne %struct.TYPE_39__** null, %765
  br i1 %766, label %767, label %860

767:                                              ; preds = %760
  %768 = load %struct.TYPE_50__*, %struct.TYPE_50__** %39, align 8
  %769 = call i64 @bfd_coff_symesz(%struct.TYPE_50__* %768)
  store i64 %769, i64* %53, align 8
  %770 = load %struct.TYPE_50__*, %struct.TYPE_50__** %39, align 8
  %771 = call i64 @obj_coff_external_syms(%struct.TYPE_50__* %770)
  %772 = inttoptr i64 %771 to i32*
  store i32* %772, i32** %51, align 8
  %773 = load i32*, i32** %51, align 8
  %774 = load i64, i64* %48, align 8
  %775 = load i64, i64* %53, align 8
  %776 = mul nsw i64 %774, %775
  %777 = getelementptr inbounds i32, i32* %773, i64 %776
  store i32* %777, i32** %52, align 8
  br label %778

778:                                              ; preds = %838, %767
  %779 = load i32*, i32** %51, align 8
  %780 = load i32*, i32** %52, align 8
  %781 = icmp ult i32* %779, %780
  br i1 %781, label %782, label %859

782:                                              ; preds = %778
  %783 = load %struct.TYPE_50__*, %struct.TYPE_50__** %39, align 8
  %784 = load i32*, i32** %51, align 8
  %785 = bitcast i32* %784 to i8*
  %786 = bitcast %struct.internal_syment* %54 to i8*
  %787 = call i32 @bfd_coff_swap_sym_in(%struct.TYPE_50__* %783, i8* %785, i8* %786)
  %788 = load i64*, i64** %49, align 8
  store i64 -1, i64* %788, align 8
  %789 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %54, i32 0, i32 1
  %790 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %789, i32 0, i32 0
  %791 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %790, i32 0, i32 0
  %792 = load i64, i64* %791, align 8
  %793 = icmp eq i64 %792, 0
  br i1 %793, label %794, label %838

794:                                              ; preds = %782
  %795 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %50, align 8
  %796 = load %struct.TYPE_39__*, %struct.TYPE_39__** %795, align 8
  %797 = icmp ne %struct.TYPE_39__* %796, null
  br i1 %797, label %798, label %838

798:                                              ; preds = %794
  %799 = load i8*, i8** %22, align 8
  %800 = icmp ne i8* %799, null
  br i1 %800, label %801, label %814

801:                                              ; preds = %798
  %802 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %50, align 8
  %803 = load %struct.TYPE_39__*, %struct.TYPE_39__** %802, align 8
  %804 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %803, i32 0, i32 0
  %805 = load i32, i32* %804, align 8
  %806 = load i32, i32* @SEC_MARK, align 4
  %807 = and i32 %805, %806
  %808 = icmp ne i32 %807, 0
  br i1 %808, label %814, label %809

809:                                              ; preds = %801
  %810 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %50, align 8
  %811 = load %struct.TYPE_39__*, %struct.TYPE_39__** %810, align 8
  %812 = load %struct.TYPE_39__*, %struct.TYPE_39__** @bfd_abs_section_ptr, align 8
  %813 = icmp eq %struct.TYPE_39__* %811, %812
  br i1 %813, label %814, label %838

814:                                              ; preds = %809, %801, %798
  %815 = load %struct.TYPE_50__*, %struct.TYPE_50__** %39, align 8
  %816 = call i64 @bfd_coff_symname_in_debug(%struct.TYPE_50__* %815, %struct.internal_syment* %54)
  %817 = icmp ne i64 %816, 0
  br i1 %817, label %818, label %838

818:                                              ; preds = %814
  %819 = load i32*, i32** %41, align 8
  %820 = bitcast i32* %819 to i8*
  %821 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %54, i32 0, i32 1
  %822 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %821, i32 0, i32 0
  %823 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %822, i32 0, i32 1
  %824 = load i32, i32* %823, align 8
  %825 = sext i32 %824 to i64
  %826 = getelementptr inbounds i8, i8* %820, i64 %825
  store i8* %826, i8** %55, align 8
  %827 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %40, align 8
  %828 = load i8*, i8** %55, align 8
  %829 = load i8*, i8** @TRUE, align 8
  %830 = load i8*, i8** @TRUE, align 8
  %831 = call i64 @_bfd_stringtab_add(%struct.bfd_strtab_hash* %827, i8* %828, i8* %829, i8* %830)
  store i64 %831, i64* %56, align 8
  %832 = load i64, i64* %56, align 8
  %833 = icmp eq i64 %832, -1
  br i1 %833, label %834, label %835

834:                                              ; preds = %818
  br label %896

835:                                              ; preds = %818
  %836 = load i64, i64* %56, align 8
  %837 = load i64*, i64** %49, align 8
  store i64 %836, i64* %837, align 8
  br label %838

838:                                              ; preds = %835, %814, %809, %794, %782
  %839 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %54, i32 0, i32 0
  %840 = load i32, i32* %839, align 8
  %841 = add nsw i32 %840, 1
  %842 = sext i32 %841 to i64
  %843 = load i64, i64* %53, align 8
  %844 = mul nsw i64 %842, %843
  %845 = load i32*, i32** %51, align 8
  %846 = getelementptr inbounds i32, i32* %845, i64 %844
  store i32* %846, i32** %51, align 8
  %847 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %54, i32 0, i32 0
  %848 = load i32, i32* %847, align 8
  %849 = add nsw i32 %848, 1
  %850 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %50, align 8
  %851 = sext i32 %849 to i64
  %852 = getelementptr inbounds %struct.TYPE_39__*, %struct.TYPE_39__** %850, i64 %851
  store %struct.TYPE_39__** %852, %struct.TYPE_39__*** %50, align 8
  %853 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %54, i32 0, i32 0
  %854 = load i32, i32* %853, align 8
  %855 = add nsw i32 %854, 1
  %856 = load i64*, i64** %49, align 8
  %857 = sext i32 %855 to i64
  %858 = getelementptr inbounds i64, i64* %856, i64 %857
  store i64* %858, i64** %49, align 8
  br label %778

859:                                              ; preds = %778
  br label %860

860:                                              ; preds = %859, %760
  %861 = load i32*, i32** %41, align 8
  %862 = call i32 @free(i32* %861)
  store i32* null, i32** %41, align 8
  %863 = load %struct.TYPE_39__*, %struct.TYPE_39__** %47, align 8
  %864 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %863, i32 0, i32 1
  store i64 0, i64* %864, align 8
  %865 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %866 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %865, i32 0, i32 2
  %867 = load i32, i32* %866, align 8
  %868 = icmp ne i32 %867, 0
  br i1 %868, label %875, label %869

869:                                              ; preds = %860
  %870 = load %struct.TYPE_50__*, %struct.TYPE_50__** %39, align 8
  %871 = call i32 @_bfd_coff_free_symbols(%struct.TYPE_50__* %870)
  %872 = icmp ne i32 %871, 0
  br i1 %872, label %874, label %873

873:                                              ; preds = %869
  br label %896

874:                                              ; preds = %869
  br label %875

875:                                              ; preds = %874, %860
  br label %876

876:                                              ; preds = %875, %731, %712, %701
  %877 = load %struct.TYPE_50__*, %struct.TYPE_50__** %39, align 8
  %878 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %877, i32 0, i32 1
  %879 = load %struct.TYPE_50__*, %struct.TYPE_50__** %878, align 8
  store %struct.TYPE_50__* %879, %struct.TYPE_50__** %39, align 8
  br label %688

880:                                              ; preds = %688
  %881 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %882 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %881, i32 0, i32 0
  %883 = load i64, i64* %882, align 8
  %884 = load i64, i64* @strip_all, align 8
  %885 = icmp ne i64 %883, %884
  br i1 %885, label %886, label %894

886:                                              ; preds = %880
  %887 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %40, align 8
  %888 = call i32 @_bfd_stringtab_size(%struct.bfd_strtab_hash* %887)
  %889 = load %struct.bfd_link_info*, %struct.bfd_link_info** %16, align 8
  %890 = call %struct.TYPE_40__* @xcoff_hash_table(%struct.bfd_link_info* %889)
  %891 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %890, i32 0, i32 2
  %892 = load %struct.TYPE_49__*, %struct.TYPE_49__** %891, align 8
  %893 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %892, i32 0, i32 0
  store i32 %888, i32* %893, align 4
  br label %894

894:                                              ; preds = %886, %880
  %895 = load i8*, i8** @TRUE, align 8
  store i8* %895, i8** %14, align 8
  br label %912

896:                                              ; preds = %873, %834, %759, %749, %738, %678, %654, %630, %501, %361, %301, %278
  %897 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %30, i32 0, i32 2
  %898 = load i32*, i32** %897, align 8
  %899 = icmp ne i32* %898, null
  br i1 %899, label %900, label %904

900:                                              ; preds = %896
  %901 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %30, i32 0, i32 2
  %902 = load i32*, i32** %901, align 8
  %903 = call i32 @free(i32* %902)
  br label %904

904:                                              ; preds = %900, %896
  %905 = load i32*, i32** %41, align 8
  %906 = icmp ne i32* %905, null
  br i1 %906, label %907, label %910

907:                                              ; preds = %904
  %908 = load i32*, i32** %41, align 8
  %909 = call i32 @free(i32* %908)
  br label %910

910:                                              ; preds = %907, %904
  %911 = load i8*, i8** @FALSE, align 8
  store i8* %911, i8** %14, align 8
  br label %912

912:                                              ; preds = %910, %894, %350, %203, %150, %74
  %913 = load i8*, i8** %14, align 8
  ret i8* %913
}

declare dso_local i64 @bfd_get_flavour(%struct.TYPE_50__*) #1

declare dso_local %struct.TYPE_41__* @xcoff_data(%struct.TYPE_50__*) #1

declare dso_local %struct.TYPE_40__* @xcoff_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.xcoff_link_hash_entry* @xcoff_link_hash_lookup(%struct.TYPE_40__*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @_bfd_error_handler(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @xcoff_mark_symbol(%struct.bfd_link_info*, %struct.xcoff_link_hash_entry*) #1

declare dso_local %struct.internal_ldsym* @bfd_malloc(i64) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @bfd_xcoff_put_ldsymbol_name(%struct.TYPE_50__*, %struct.xcoff_loader_info*, %struct.internal_ldsym*, i32) #1

declare dso_local i32 @xcoff_mark(%struct.bfd_link_info*, %struct.TYPE_39__*) #1

declare dso_local i32 @xcoff_sweep(%struct.bfd_link_info*) #1

declare dso_local i32 @xcoff_link_hash_traverse(%struct.TYPE_40__*, i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @bfd_xcoff_ldhdr_version(%struct.TYPE_50__*) #1

declare dso_local i8* @bfd_xcoff_ldhdrsz(%struct.TYPE_50__*) #1

declare dso_local i32 @bfd_xcoff_ldsymsz(%struct.TYPE_50__*) #1

declare dso_local i32 @bfd_xcoff_ldrelsz(%struct.TYPE_50__*) #1

declare dso_local i8* @bfd_zalloc(%struct.TYPE_50__*, i64) #1

declare dso_local i32 @bfd_xcoff_swap_ldhdr_out(%struct.TYPE_50__*, %struct.internal_ldhdr*, i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local %struct.TYPE_39__* @bfd_get_section_by_name(%struct.TYPE_50__*, i8*) #1

declare dso_local i32 @_bfd_coff_get_external_symbols(%struct.TYPE_50__*) #1

declare dso_local i64 @obj_raw_syment_count(%struct.TYPE_50__*) #1

declare dso_local i32 @bfd_malloc_and_get_section(%struct.TYPE_50__*, %struct.TYPE_39__*, i32**) #1

declare dso_local i64 @bfd_coff_symesz(%struct.TYPE_50__*) #1

declare dso_local i64 @obj_coff_external_syms(%struct.TYPE_50__*) #1

declare dso_local i32 @bfd_coff_swap_sym_in(%struct.TYPE_50__*, i8*, i8*) #1

declare dso_local i64 @bfd_coff_symname_in_debug(%struct.TYPE_50__*, %struct.internal_syment*) #1

declare dso_local i64 @_bfd_stringtab_add(%struct.bfd_strtab_hash*, i8*, i8*, i8*) #1

declare dso_local i32 @_bfd_coff_free_symbols(%struct.TYPE_50__*) #1

declare dso_local i32 @_bfd_stringtab_size(%struct.bfd_strtab_hash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
