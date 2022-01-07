; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_xcoff_reloc_link_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_xcoff_reloc_link_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xcoff_final_link_info = type { i32, %struct.TYPE_27__*, %struct.TYPE_30__* }
%struct.TYPE_27__ = type { %struct.xcoff_link_hash_entry**, %struct.internal_reloc* }
%struct.xcoff_link_hash_entry = type { i32, i32, %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i64, %struct.TYPE_31__, %struct.TYPE_35__ }
%struct.TYPE_31__ = type { i8* }
%struct.TYPE_35__ = type { %struct.TYPE_34__, %struct.TYPE_33__ }
%struct.TYPE_34__ = type { i64, %struct.TYPE_29__* }
%struct.TYPE_33__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { %struct.TYPE_29__* }
%struct.internal_reloc = type { i32, i32, i32, i64 }
%struct.TYPE_30__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32 (%struct.TYPE_30__*, i32*, i32, i32, i64, i32*, i32*, i64)*, i32 (%struct.TYPE_30__*, i32, i32*, i32*, i64)* }
%struct.TYPE_29__ = type { i64, i64, i32, %struct.TYPE_37__*, i64 }
%struct.TYPE_37__ = type { i64, i8* }
%struct.bfd_link_order = type { i64, i64, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, %struct.TYPE_39__, i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i64, i32 }
%struct.internal_ldrel = type { i32, i32, i64, i64 }

@bfd_section_reloc_link_order = common dso_local global i64 0, align 8
@bfd_error_bad_value = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_common = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@complain_overflow_signed = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c".text\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".data\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".bss\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"%s: loader reloc in unrecognized section `%s'\00", align 1
@bfd_error_nonrepresentable_section = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"%s: `%s' in loader reloc but not loader sym\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.xcoff_final_link_info*, %struct.TYPE_29__*, %struct.bfd_link_order*)* @xcoff_reloc_link_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcoff_reloc_link_order(i32* %0, %struct.xcoff_final_link_info* %1, %struct.TYPE_29__* %2, %struct.bfd_link_order* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.xcoff_final_link_info*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.bfd_link_order*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.xcoff_link_hash_entry*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.internal_reloc*, align 8
  %16 = alloca %struct.xcoff_link_hash_entry**, align 8
  %17 = alloca %struct.internal_ldrel, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.xcoff_final_link_info* %1, %struct.xcoff_final_link_info** %7, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %8, align 8
  store %struct.bfd_link_order* %3, %struct.bfd_link_order** %9, align 8
  %23 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %24 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @bfd_section_reloc_link_order, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = call i32 (...) @abort() #3
  unreachable

30:                                               ; preds = %4
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %33 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_28__* @bfd_reloc_type_lookup(i32* %31, i32 %38)
  store %struct.TYPE_28__* %39, %struct.TYPE_28__** %10, align 8
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %41 = icmp eq %struct.TYPE_28__* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load i32, i32* @bfd_error_bad_value, align 4
  %44 = call i32 @bfd_set_error(i32 %43)
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %5, align 4
  br label %408

46:                                               ; preds = %30
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.xcoff_final_link_info*, %struct.xcoff_final_link_info** %7, align 8
  %49 = getelementptr inbounds %struct.xcoff_final_link_info, %struct.xcoff_final_link_info* %48, i32 0, i32 2
  %50 = load %struct.TYPE_30__*, %struct.TYPE_30__** %49, align 8
  %51 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %52 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @FALSE, align 4
  %60 = load i32, i32* @FALSE, align 4
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i64 @bfd_wrapped_link_hash_lookup(i32* %47, %struct.TYPE_30__* %50, i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = inttoptr i64 %62 to %struct.xcoff_link_hash_entry*
  store %struct.xcoff_link_hash_entry* %63, %struct.xcoff_link_hash_entry** %11, align 8
  %64 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %11, align 8
  %65 = icmp eq %struct.xcoff_link_hash_entry* %64, null
  br i1 %65, label %66, label %91

66:                                               ; preds = %46
  %67 = load %struct.xcoff_final_link_info*, %struct.xcoff_final_link_info** %7, align 8
  %68 = getelementptr inbounds %struct.xcoff_final_link_info, %struct.xcoff_final_link_info* %67, i32 0, i32 2
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_38__*, %struct.TYPE_38__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %71, i32 0, i32 1
  %73 = load i32 (%struct.TYPE_30__*, i32, i32*, i32*, i64)*, i32 (%struct.TYPE_30__*, i32, i32*, i32*, i64)** %72, align 8
  %74 = load %struct.xcoff_final_link_info*, %struct.xcoff_final_link_info** %7, align 8
  %75 = getelementptr inbounds %struct.xcoff_final_link_info, %struct.xcoff_final_link_info* %74, i32 0, i32 2
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %75, align 8
  %77 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %78 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 %73(%struct.TYPE_30__* %76, i32 %84, i32* null, i32* null, i64 0)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %66
  %88 = load i32, i32* @FALSE, align 4
  store i32 %88, i32* %5, align 4
  br label %408

89:                                               ; preds = %66
  %90 = load i32, i32* @TRUE, align 4
  store i32 %90, i32* %5, align 4
  br label %408

91:                                               ; preds = %46
  %92 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %11, align 8
  %93 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @bfd_link_hash_common, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %91
  %99 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %11, align 8
  %100 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_32__*, %struct.TYPE_32__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %105, align 8
  store %struct.TYPE_29__* %106, %struct.TYPE_29__** %12, align 8
  store i64 0, i64* %13, align 8
  br label %136

107:                                              ; preds = %91
  %108 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %11, align 8
  %109 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @bfd_link_hash_defined, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %121, label %114

114:                                              ; preds = %107
  %115 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %11, align 8
  %116 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @bfd_link_hash_defweak, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %134

121:                                              ; preds = %114, %107
  %122 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %11, align 8
  %123 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %126, align 8
  store %struct.TYPE_29__* %127, %struct.TYPE_29__** %12, align 8
  %128 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %11, align 8
  %129 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %13, align 8
  br label %135

134:                                              ; preds = %114
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %12, align 8
  store i64 0, i64* %13, align 8
  br label %135

135:                                              ; preds = %134, %121
  br label %136

136:                                              ; preds = %135, %98
  %137 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %138 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %14, align 8
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %145 = icmp ne %struct.TYPE_29__* %144, null
  br i1 %145, label %146, label %160

146:                                              ; preds = %136
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_37__*, %struct.TYPE_37__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %151, %154
  %156 = load i64, i64* %13, align 8
  %157 = add nsw i64 %155, %156
  %158 = load i64, i64* %14, align 8
  %159 = add nsw i64 %158, %157
  store i64 %159, i64* %14, align 8
  br label %160

160:                                              ; preds = %146, %136
  %161 = load i64, i64* %14, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %231

163:                                              ; preds = %160
  %164 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %165 = call i32 @bfd_get_reloc_size(%struct.TYPE_28__* %164)
  store i32 %165, i32* %18, align 4
  %166 = load i32, i32* %18, align 4
  %167 = call i32* @bfd_zmalloc(i32 %166)
  store i32* %167, i32** %19, align 8
  %168 = load i32*, i32** %19, align 8
  %169 = icmp eq i32* %168, null
  br i1 %169, label %170, label %172

170:                                              ; preds = %163
  %171 = load i32, i32* @FALSE, align 4
  store i32 %171, i32* %5, align 4
  br label %408

172:                                              ; preds = %163
  %173 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %174 = load i32*, i32** %6, align 8
  %175 = load i64, i64* %14, align 8
  %176 = load i32*, i32** %19, align 8
  %177 = call i32 @_bfd_relocate_contents(%struct.TYPE_28__* %173, i32* %174, i64 %175, i32* %176)
  store i32 %177, i32* %20, align 4
  %178 = load i32, i32* %20, align 4
  switch i32 %178, label %180 [
    i32 130, label %179
    i32 129, label %181
    i32 128, label %183
  ]

179:                                              ; preds = %172
  br label %213

180:                                              ; preds = %172
  br label %181

181:                                              ; preds = %172, %180
  %182 = call i32 (...) @abort() #3
  unreachable

183:                                              ; preds = %172
  %184 = load %struct.xcoff_final_link_info*, %struct.xcoff_final_link_info** %7, align 8
  %185 = getelementptr inbounds %struct.xcoff_final_link_info, %struct.xcoff_final_link_info* %184, i32 0, i32 2
  %186 = load %struct.TYPE_30__*, %struct.TYPE_30__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_38__*, %struct.TYPE_38__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %188, i32 0, i32 0
  %190 = load i32 (%struct.TYPE_30__*, i32*, i32, i32, i64, i32*, i32*, i64)*, i32 (%struct.TYPE_30__*, i32*, i32, i32, i64, i32*, i32*, i64)** %189, align 8
  %191 = load %struct.xcoff_final_link_info*, %struct.xcoff_final_link_info** %7, align 8
  %192 = getelementptr inbounds %struct.xcoff_final_link_info, %struct.xcoff_final_link_info* %191, i32 0, i32 2
  %193 = load %struct.TYPE_30__*, %struct.TYPE_30__** %192, align 8
  %194 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %195 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = load i64, i64* %14, align 8
  %206 = call i32 %190(%struct.TYPE_30__* %193, i32* null, i32 %201, i32 %204, i64 %205, i32* null, i32* null, i64 0)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %183
  %209 = load i32*, i32** %19, align 8
  %210 = call i32 @free(i32* %209)
  %211 = load i32, i32* @FALSE, align 4
  store i32 %211, i32* %5, align 4
  br label %408

212:                                              ; preds = %183
  br label %213

213:                                              ; preds = %212, %179
  %214 = load i32*, i32** %6, align 8
  %215 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %216 = load i32*, i32** %19, align 8
  %217 = bitcast i32* %216 to i8*
  %218 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %219 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = trunc i64 %220 to i32
  %222 = load i32, i32* %18, align 4
  %223 = call i32 @bfd_set_section_contents(i32* %214, %struct.TYPE_29__* %215, i8* %217, i32 %221, i32 %222)
  store i32 %223, i32* %21, align 4
  %224 = load i32*, i32** %19, align 8
  %225 = call i32 @free(i32* %224)
  %226 = load i32, i32* %21, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %213
  %229 = load i32, i32* @FALSE, align 4
  store i32 %229, i32* %5, align 4
  br label %408

230:                                              ; preds = %213
  br label %231

231:                                              ; preds = %230, %160
  %232 = load %struct.xcoff_final_link_info*, %struct.xcoff_final_link_info** %7, align 8
  %233 = getelementptr inbounds %struct.xcoff_final_link_info, %struct.xcoff_final_link_info* %232, i32 0, i32 1
  %234 = load %struct.TYPE_27__*, %struct.TYPE_27__** %233, align 8
  %235 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %234, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %238, i32 0, i32 1
  %240 = load %struct.internal_reloc*, %struct.internal_reloc** %239, align 8
  %241 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %240, i64 %244
  store %struct.internal_reloc* %245, %struct.internal_reloc** %15, align 8
  %246 = load %struct.xcoff_final_link_info*, %struct.xcoff_final_link_info** %7, align 8
  %247 = getelementptr inbounds %struct.xcoff_final_link_info, %struct.xcoff_final_link_info* %246, i32 0, i32 1
  %248 = load %struct.TYPE_27__*, %struct.TYPE_27__** %247, align 8
  %249 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %248, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %252, i32 0, i32 0
  %254 = load %struct.xcoff_link_hash_entry**, %struct.xcoff_link_hash_entry*** %253, align 8
  %255 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %254, i64 %258
  store %struct.xcoff_link_hash_entry** %259, %struct.xcoff_link_hash_entry*** %16, align 8
  %260 = load %struct.internal_reloc*, %struct.internal_reloc** %15, align 8
  %261 = call i32 @memset(%struct.internal_reloc* %260, i32 0, i32 24)
  %262 = load %struct.xcoff_link_hash_entry**, %struct.xcoff_link_hash_entry*** %16, align 8
  store %struct.xcoff_link_hash_entry* null, %struct.xcoff_link_hash_entry** %262, align 8
  %263 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %263, i32 0, i32 4
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %267 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = add nsw i64 %265, %268
  %270 = load %struct.internal_reloc*, %struct.internal_reloc** %15, align 8
  %271 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %270, i32 0, i32 3
  store i64 %269, i64* %271, align 8
  %272 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %11, align 8
  %273 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp sge i32 %274, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %231
  %277 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %11, align 8
  %278 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.internal_reloc*, %struct.internal_reloc** %15, align 8
  %281 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %280, i32 0, i32 0
  store i32 %279, i32* %281, align 8
  br label %289

282:                                              ; preds = %231
  %283 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %11, align 8
  %284 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %283, i32 0, i32 0
  store i32 -2, i32* %284, align 8
  %285 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %11, align 8
  %286 = load %struct.xcoff_link_hash_entry**, %struct.xcoff_link_hash_entry*** %16, align 8
  store %struct.xcoff_link_hash_entry* %285, %struct.xcoff_link_hash_entry** %286, align 8
  %287 = load %struct.internal_reloc*, %struct.internal_reloc** %15, align 8
  %288 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %287, i32 0, i32 0
  store i32 0, i32* %288, align 8
  br label %289

289:                                              ; preds = %282, %276
  %290 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.internal_reloc*, %struct.internal_reloc** %15, align 8
  %294 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %293, i32 0, i32 1
  store i32 %292, i32* %294, align 4
  %295 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = sub nsw i32 %297, 1
  %299 = load %struct.internal_reloc*, %struct.internal_reloc** %15, align 8
  %300 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %299, i32 0, i32 2
  store i32 %298, i32* %300, align 8
  %301 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %302 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %301, i32 0, i32 2
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @complain_overflow_signed, align 8
  %305 = icmp eq i64 %303, %304
  br i1 %305, label %306, label %311

306:                                              ; preds = %289
  %307 = load %struct.internal_reloc*, %struct.internal_reloc** %15, align 8
  %308 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = or i32 %309, 128
  store i32 %310, i32* %308, align 8
  br label %311

311:                                              ; preds = %306, %289
  %312 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %313, align 8
  %316 = load %struct.internal_reloc*, %struct.internal_reloc** %15, align 8
  %317 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %316, i32 0, i32 3
  %318 = load i64, i64* %317, align 8
  %319 = getelementptr inbounds %struct.internal_ldrel, %struct.internal_ldrel* %17, i32 0, i32 3
  store i64 %318, i64* %319, align 8
  %320 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %321 = icmp ne %struct.TYPE_29__* %320, null
  br i1 %321, label %322, label %357

322:                                              ; preds = %311
  %323 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %324 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %323, i32 0, i32 3
  %325 = load %struct.TYPE_37__*, %struct.TYPE_37__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %325, i32 0, i32 1
  %327 = load i8*, i8** %326, align 8
  store i8* %327, i8** %22, align 8
  %328 = load i8*, i8** %22, align 8
  %329 = call i64 @strcmp(i8* %328, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %322
  %332 = getelementptr inbounds %struct.internal_ldrel, %struct.internal_ldrel* %17, i32 0, i32 0
  store i32 0, i32* %332, align 8
  br label %356

333:                                              ; preds = %322
  %334 = load i8*, i8** %22, align 8
  %335 = call i64 @strcmp(i8* %334, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %333
  %338 = getelementptr inbounds %struct.internal_ldrel, %struct.internal_ldrel* %17, i32 0, i32 0
  store i32 1, i32* %338, align 8
  br label %355

339:                                              ; preds = %333
  %340 = load i8*, i8** %22, align 8
  %341 = call i64 @strcmp(i8* %340, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %342 = icmp eq i64 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %339
  %344 = getelementptr inbounds %struct.internal_ldrel, %struct.internal_ldrel* %17, i32 0, i32 0
  store i32 2, i32* %344, align 8
  br label %354

345:                                              ; preds = %339
  %346 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %347 = load i32*, i32** %6, align 8
  %348 = call i32 @bfd_get_filename(i32* %347)
  %349 = load i8*, i8** %22, align 8
  %350 = call i32 @_bfd_error_handler(i32 %346, i32 %348, i8* %349)
  %351 = load i32, i32* @bfd_error_nonrepresentable_section, align 4
  %352 = call i32 @bfd_set_error(i32 %351)
  %353 = load i32, i32* @FALSE, align 4
  store i32 %353, i32* %5, align 4
  br label %408

354:                                              ; preds = %343
  br label %355

355:                                              ; preds = %354, %337
  br label %356

356:                                              ; preds = %355, %331
  br label %380

357:                                              ; preds = %311
  %358 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %11, align 8
  %359 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = icmp slt i32 %360, 0
  br i1 %361, label %362, label %375

362:                                              ; preds = %357
  %363 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %364 = load i32*, i32** %6, align 8
  %365 = call i32 @bfd_get_filename(i32* %364)
  %366 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %11, align 8
  %367 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %366, i32 0, i32 2
  %368 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %368, i32 0, i32 0
  %370 = load i8*, i8** %369, align 8
  %371 = call i32 @_bfd_error_handler(i32 %363, i32 %365, i8* %370)
  %372 = load i32, i32* @bfd_error_bad_value, align 4
  %373 = call i32 @bfd_set_error(i32 %372)
  %374 = load i32, i32* @FALSE, align 4
  store i32 %374, i32* %5, align 4
  br label %408

375:                                              ; preds = %357
  %376 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %11, align 8
  %377 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = getelementptr inbounds %struct.internal_ldrel, %struct.internal_ldrel* %17, i32 0, i32 0
  store i32 %378, i32* %379, align 8
  br label %380

380:                                              ; preds = %375, %356
  %381 = load %struct.internal_reloc*, %struct.internal_reloc** %15, align 8
  %382 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 8
  %384 = shl i32 %383, 8
  %385 = load %struct.internal_reloc*, %struct.internal_reloc** %15, align 8
  %386 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = or i32 %384, %387
  %389 = getelementptr inbounds %struct.internal_ldrel, %struct.internal_ldrel* %17, i32 0, i32 1
  store i32 %388, i32* %389, align 4
  %390 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %391 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %390, i32 0, i32 1
  %392 = load i64, i64* %391, align 8
  %393 = getelementptr inbounds %struct.internal_ldrel, %struct.internal_ldrel* %17, i32 0, i32 2
  store i64 %392, i64* %393, align 8
  %394 = load i32*, i32** %6, align 8
  %395 = load %struct.xcoff_final_link_info*, %struct.xcoff_final_link_info** %7, align 8
  %396 = getelementptr inbounds %struct.xcoff_final_link_info, %struct.xcoff_final_link_info* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = call i32 @bfd_xcoff_swap_ldrel_out(i32* %394, %struct.internal_ldrel* %17, i32 %397)
  %399 = load i32*, i32** %6, align 8
  %400 = call i64 @bfd_xcoff_ldrelsz(i32* %399)
  %401 = load %struct.xcoff_final_link_info*, %struct.xcoff_final_link_info** %7, align 8
  %402 = getelementptr inbounds %struct.xcoff_final_link_info, %struct.xcoff_final_link_info* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = sext i32 %403 to i64
  %405 = add nsw i64 %404, %400
  %406 = trunc i64 %405 to i32
  store i32 %406, i32* %402, align 8
  %407 = load i32, i32* @TRUE, align 4
  store i32 %407, i32* %5, align 4
  br label %408

408:                                              ; preds = %380, %362, %345, %228, %208, %170, %89, %87, %42
  %409 = load i32, i32* %5, align 4
  ret i32 %409
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local %struct.TYPE_28__* @bfd_reloc_type_lookup(i32*, i32) #2

declare dso_local i32 @bfd_set_error(i32) #2

declare dso_local i64 @bfd_wrapped_link_hash_lookup(i32*, %struct.TYPE_30__*, i32, i32, i32, i32) #2

declare dso_local i32 @bfd_get_reloc_size(%struct.TYPE_28__*) #2

declare dso_local i32* @bfd_zmalloc(i32) #2

declare dso_local i32 @_bfd_relocate_contents(%struct.TYPE_28__*, i32*, i64, i32*) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @bfd_set_section_contents(i32*, %struct.TYPE_29__*, i8*, i32, i32) #2

declare dso_local i32 @memset(%struct.internal_reloc*, i32, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @_bfd_error_handler(i32, i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @bfd_get_filename(i32*) #2

declare dso_local i32 @bfd_xcoff_swap_ldrel_out(i32*, %struct.internal_ldrel*, i32) #2

declare dso_local i64 @bfd_xcoff_ldrelsz(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
