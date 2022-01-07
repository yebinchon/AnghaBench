; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_bfd_xcoff_import_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_bfd_xcoff_import_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.bfd_link_info = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.bfd_link_info*, i8*, i32, %struct.TYPE_20__*, i64, i32*, %struct.TYPE_20__*, i64)* }
%struct.bfd_link_hash_entry = type { i32 }
%struct.xcoff_link_hash_entry = type { i32, i32, i32*, %struct.TYPE_18__, %struct.xcoff_link_hash_entry* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i8* }
%struct.xcoff_import_file = type { i8*, i8*, i8*, %struct.xcoff_import_file* }
%struct.TYPE_19__ = type { %struct.xcoff_import_file* }

@bfd_target_xcoff_flavour = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@bfd_link_hash_new = common dso_local global i64 0, align 8
@XCOFF_DESCRIPTOR = common dso_local global i32 0, align 4
@XCOFF_CALLED = common dso_local global i32 0, align 4
@XCOFF_IMPORT = common dso_local global i32 0, align 4
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_abs_section_ptr = common dso_local global %struct.TYPE_20__* null, align 8
@XCOFF_BUILT_LDSYM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_xcoff_import_symbol(i32* %0, %struct.bfd_link_info* %1, %struct.bfd_link_hash_entry* %2, i64 %3, i8* %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.bfd_link_info*, align 8
  %12 = alloca %struct.bfd_link_hash_entry*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.xcoff_link_hash_entry*, align 8
  %19 = alloca %struct.xcoff_link_hash_entry*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.xcoff_import_file**, align 8
  %22 = alloca %struct.xcoff_import_file*, align 8
  %23 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %11, align 8
  store %struct.bfd_link_hash_entry* %2, %struct.bfd_link_hash_entry** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %24 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %12, align 8
  %25 = bitcast %struct.bfd_link_hash_entry* %24 to %struct.xcoff_link_hash_entry*
  store %struct.xcoff_link_hash_entry* %25, %struct.xcoff_link_hash_entry** %18, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = call i64 @bfd_get_flavour(i32* %26)
  %28 = load i64, i64* @bfd_target_xcoff_flavour, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %8
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %9, align 4
  br label %321

32:                                               ; preds = %8
  %33 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %18, align 8
  %34 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 46
  br i1 %41, label %42, label %137

42:                                               ; preds = %32
  %43 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %18, align 8
  %44 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @bfd_link_hash_undefined, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %137

49:                                               ; preds = %42
  %50 = load i64, i64* %13, align 8
  %51 = icmp eq i64 %50, -1
  br i1 %51, label %52, label %137

52:                                               ; preds = %49
  %53 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %18, align 8
  %54 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %53, i32 0, i32 4
  %55 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %54, align 8
  store %struct.xcoff_link_hash_entry* %55, %struct.xcoff_link_hash_entry** %19, align 8
  %56 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %19, align 8
  %57 = icmp eq %struct.xcoff_link_hash_entry* %56, null
  br i1 %57, label %58, label %127

58:                                               ; preds = %52
  %59 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %60 = call %struct.TYPE_19__* @xcoff_hash_table(%struct.bfd_link_info* %59)
  %61 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %18, align 8
  %62 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i32, i32* @TRUE, align 4
  %68 = load i32, i32* @FALSE, align 4
  %69 = load i32, i32* @TRUE, align 4
  %70 = call %struct.xcoff_link_hash_entry* @xcoff_link_hash_lookup(%struct.TYPE_19__* %60, i8* %66, i32 %67, i32 %68, i32 %69)
  store %struct.xcoff_link_hash_entry* %70, %struct.xcoff_link_hash_entry** %19, align 8
  %71 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %19, align 8
  %72 = icmp eq %struct.xcoff_link_hash_entry* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %58
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %9, align 4
  br label %321

75:                                               ; preds = %58
  %76 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %19, align 8
  %77 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @bfd_link_hash_new, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %75
  %83 = load i64, i64* @bfd_link_hash_undefined, align 8
  %84 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %19, align 8
  %85 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  store i64 %83, i64* %86, align 8
  %87 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %18, align 8
  %88 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %19, align 8
  %94 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  store i32 %92, i32* %97, align 8
  br label %98

98:                                               ; preds = %82, %75
  %99 = load i32, i32* @XCOFF_DESCRIPTOR, align 4
  %100 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %19, align 8
  %101 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %19, align 8
  %105 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @XCOFF_CALLED, align 4
  %108 = and i32 %106, %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %98
  %111 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %18, align 8
  %112 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @XCOFF_DESCRIPTOR, align 4
  %115 = and i32 %113, %114
  %116 = icmp eq i32 %115, 0
  br label %117

117:                                              ; preds = %110, %98
  %118 = phi i1 [ false, %98 ], [ %116, %110 ]
  %119 = zext i1 %118 to i32
  %120 = call i32 @BFD_ASSERT(i32 %119)
  %121 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %18, align 8
  %122 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %19, align 8
  %123 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %122, i32 0, i32 4
  store %struct.xcoff_link_hash_entry* %121, %struct.xcoff_link_hash_entry** %123, align 8
  %124 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %19, align 8
  %125 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %18, align 8
  %126 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %125, i32 0, i32 4
  store %struct.xcoff_link_hash_entry* %124, %struct.xcoff_link_hash_entry** %126, align 8
  br label %127

127:                                              ; preds = %117, %52
  %128 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %19, align 8
  %129 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @bfd_link_hash_undefined, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %19, align 8
  store %struct.xcoff_link_hash_entry* %135, %struct.xcoff_link_hash_entry** %18, align 8
  br label %136

136:                                              ; preds = %134, %127
  br label %137

137:                                              ; preds = %136, %49, %42, %32
  %138 = load i32, i32* @XCOFF_IMPORT, align 4
  %139 = load i32, i32* %17, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %18, align 8
  %142 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  %145 = load i64, i64* %13, align 8
  %146 = icmp ne i64 %145, -1
  br i1 %146, label %147, label %229

147:                                              ; preds = %137
  %148 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %18, align 8
  %149 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @bfd_link_hash_defined, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %212

154:                                              ; preds = %147
  %155 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %18, align 8
  %156 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %159, align 8
  %161 = call i32 @bfd_is_abs_section(%struct.TYPE_20__* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %154
  %164 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %18, align 8
  %165 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %13, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %212

172:                                              ; preds = %163, %154
  %173 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %174 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %173, i32 0, i32 0
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = load i32 (%struct.bfd_link_info*, i8*, i32, %struct.TYPE_20__*, i64, i32*, %struct.TYPE_20__*, i64)*, i32 (%struct.bfd_link_info*, i8*, i32, %struct.TYPE_20__*, i64, i32*, %struct.TYPE_20__*, i64)** %176, align 8
  %178 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %179 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %18, align 8
  %180 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %18, align 8
  %185 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %18, align 8
  %193 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %196, align 8
  %198 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %18, align 8
  %199 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i32*, i32** %10, align 8
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** @bfd_abs_section_ptr, align 8
  %206 = load i64, i64* %13, align 8
  %207 = call i32 %177(%struct.bfd_link_info* %178, i8* %183, i32 %191, %struct.TYPE_20__* %197, i64 %203, i32* %204, %struct.TYPE_20__* %205, i64 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %172
  %210 = load i32, i32* @FALSE, align 4
  store i32 %210, i32* %9, align 4
  br label %321

211:                                              ; preds = %172
  br label %212

212:                                              ; preds = %211, %163, %147
  %213 = load i64, i64* @bfd_link_hash_defined, align 8
  %214 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %18, align 8
  %215 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 0
  store i64 %213, i64* %216, align 8
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** @bfd_abs_section_ptr, align 8
  %218 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %18, align 8
  %219 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 1
  store %struct.TYPE_20__* %217, %struct.TYPE_20__** %222, align 8
  %223 = load i64, i64* %13, align 8
  %224 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %18, align 8
  %225 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  store i64 %223, i64* %228, align 8
  br label %229

229:                                              ; preds = %212, %137
  %230 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %18, align 8
  %231 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %230, i32 0, i32 2
  %232 = load i32*, i32** %231, align 8
  %233 = icmp eq i32* %232, null
  %234 = zext i1 %233 to i32
  %235 = call i32 @BFD_ASSERT(i32 %234)
  %236 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %18, align 8
  %237 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @XCOFF_BUILT_LDSYM, align 4
  %240 = and i32 %238, %239
  %241 = icmp eq i32 %240, 0
  %242 = zext i1 %241 to i32
  %243 = call i32 @BFD_ASSERT(i32 %242)
  %244 = load i8*, i8** %14, align 8
  %245 = icmp eq i8* %244, null
  br i1 %245, label %246, label %249

246:                                              ; preds = %229
  %247 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %18, align 8
  %248 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %247, i32 0, i32 1
  store i32 -1, i32* %248, align 4
  br label %319

249:                                              ; preds = %229
  %250 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %251 = call %struct.TYPE_19__* @xcoff_hash_table(%struct.bfd_link_info* %250)
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  store %struct.xcoff_import_file** %252, %struct.xcoff_import_file*** %21, align 8
  store i32 1, i32* %20, align 4
  br label %253

253:                                              ; preds = %283, %249
  %254 = load %struct.xcoff_import_file**, %struct.xcoff_import_file*** %21, align 8
  %255 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %254, align 8
  %256 = icmp ne %struct.xcoff_import_file* %255, null
  br i1 %256, label %257, label %289

257:                                              ; preds = %253
  %258 = load %struct.xcoff_import_file**, %struct.xcoff_import_file*** %21, align 8
  %259 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %258, align 8
  %260 = getelementptr inbounds %struct.xcoff_import_file, %struct.xcoff_import_file* %259, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8
  %262 = load i8*, i8** %14, align 8
  %263 = call i64 @strcmp(i8* %261, i8* %262)
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %282

265:                                              ; preds = %257
  %266 = load %struct.xcoff_import_file**, %struct.xcoff_import_file*** %21, align 8
  %267 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %266, align 8
  %268 = getelementptr inbounds %struct.xcoff_import_file, %struct.xcoff_import_file* %267, i32 0, i32 1
  %269 = load i8*, i8** %268, align 8
  %270 = load i8*, i8** %15, align 8
  %271 = call i64 @strcmp(i8* %269, i8* %270)
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %273, label %282

273:                                              ; preds = %265
  %274 = load %struct.xcoff_import_file**, %struct.xcoff_import_file*** %21, align 8
  %275 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %274, align 8
  %276 = getelementptr inbounds %struct.xcoff_import_file, %struct.xcoff_import_file* %275, i32 0, i32 2
  %277 = load i8*, i8** %276, align 8
  %278 = load i8*, i8** %16, align 8
  %279 = call i64 @strcmp(i8* %277, i8* %278)
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %273
  br label %289

282:                                              ; preds = %273, %265, %257
  br label %283

283:                                              ; preds = %282
  %284 = load %struct.xcoff_import_file**, %struct.xcoff_import_file*** %21, align 8
  %285 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %284, align 8
  %286 = getelementptr inbounds %struct.xcoff_import_file, %struct.xcoff_import_file* %285, i32 0, i32 3
  store %struct.xcoff_import_file** %286, %struct.xcoff_import_file*** %21, align 8
  %287 = load i32, i32* %20, align 4
  %288 = add i32 %287, 1
  store i32 %288, i32* %20, align 4
  br label %253

289:                                              ; preds = %281, %253
  %290 = load %struct.xcoff_import_file**, %struct.xcoff_import_file*** %21, align 8
  %291 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %290, align 8
  %292 = icmp eq %struct.xcoff_import_file* %291, null
  br i1 %292, label %293, label %315

293:                                              ; preds = %289
  store i32 32, i32* %23, align 4
  %294 = load i32*, i32** %10, align 8
  %295 = load i32, i32* %23, align 4
  %296 = call %struct.xcoff_import_file* @bfd_alloc(i32* %294, i32 %295)
  store %struct.xcoff_import_file* %296, %struct.xcoff_import_file** %22, align 8
  %297 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %22, align 8
  %298 = icmp eq %struct.xcoff_import_file* %297, null
  br i1 %298, label %299, label %301

299:                                              ; preds = %293
  %300 = load i32, i32* @FALSE, align 4
  store i32 %300, i32* %9, align 4
  br label %321

301:                                              ; preds = %293
  %302 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %22, align 8
  %303 = getelementptr inbounds %struct.xcoff_import_file, %struct.xcoff_import_file* %302, i32 0, i32 3
  store %struct.xcoff_import_file* null, %struct.xcoff_import_file** %303, align 8
  %304 = load i8*, i8** %14, align 8
  %305 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %22, align 8
  %306 = getelementptr inbounds %struct.xcoff_import_file, %struct.xcoff_import_file* %305, i32 0, i32 0
  store i8* %304, i8** %306, align 8
  %307 = load i8*, i8** %15, align 8
  %308 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %22, align 8
  %309 = getelementptr inbounds %struct.xcoff_import_file, %struct.xcoff_import_file* %308, i32 0, i32 1
  store i8* %307, i8** %309, align 8
  %310 = load i8*, i8** %16, align 8
  %311 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %22, align 8
  %312 = getelementptr inbounds %struct.xcoff_import_file, %struct.xcoff_import_file* %311, i32 0, i32 2
  store i8* %310, i8** %312, align 8
  %313 = load %struct.xcoff_import_file*, %struct.xcoff_import_file** %22, align 8
  %314 = load %struct.xcoff_import_file**, %struct.xcoff_import_file*** %21, align 8
  store %struct.xcoff_import_file* %313, %struct.xcoff_import_file** %314, align 8
  br label %315

315:                                              ; preds = %301, %289
  %316 = load i32, i32* %20, align 4
  %317 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %18, align 8
  %318 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %317, i32 0, i32 1
  store i32 %316, i32* %318, align 4
  br label %319

319:                                              ; preds = %315, %246
  %320 = load i32, i32* @TRUE, align 4
  store i32 %320, i32* %9, align 4
  br label %321

321:                                              ; preds = %319, %299, %209, %73, %30
  %322 = load i32, i32* %9, align 4
  ret i32 %322
}

declare dso_local i64 @bfd_get_flavour(i32*) #1

declare dso_local %struct.xcoff_link_hash_entry* @xcoff_link_hash_lookup(%struct.TYPE_19__*, i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_19__* @xcoff_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @bfd_is_abs_section(%struct.TYPE_20__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.xcoff_import_file* @bfd_alloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
