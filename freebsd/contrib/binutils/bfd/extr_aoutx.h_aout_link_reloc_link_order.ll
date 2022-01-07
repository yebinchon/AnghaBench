; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_aoutx.h_aout_link_reloc_link_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_aoutx.h_aout_link_reloc_link_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aout_final_link_info = type { i64, i64, i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 (%struct.TYPE_28__*, i32*, i32, i32, i64, i32*, i32*, i64)*, i32 (%struct.TYPE_28__*, i32, i32*, i32*, i64)* }
%struct.TYPE_27__ = type { i64 }
%struct.bfd_link_order = type { i64, i64, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.bfd_link_order_reloc* }
%struct.bfd_link_order_reloc = type { i64, %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i64 }
%struct.reloc_std_external = type { i32*, i32*, i32 }
%struct.reloc_ext_external = type { i32*, i32*, i32, i32 }
%struct.aout_link_hash_entry = type { i32, i32 }

@bfd_section_reloc_link_order = common dso_local global i64 0, align 8
@N_ABS = common dso_local global i32 0, align 4
@N_EXT = common dso_local global i32 0, align 4
@bfd_symbol_reloc_link_order = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@bfd_error_bad_value = common dso_local global i32 0, align 4
@RELOC_STD_SIZE = common dso_local global i64 0, align 8
@RELOC_STD_BITS_EXTERN_BIG = common dso_local global i32 0, align 4
@RELOC_STD_BITS_PCREL_BIG = common dso_local global i32 0, align 4
@RELOC_STD_BITS_BASEREL_BIG = common dso_local global i32 0, align 4
@RELOC_STD_BITS_JMPTABLE_BIG = common dso_local global i32 0, align 4
@RELOC_STD_BITS_RELATIVE_BIG = common dso_local global i32 0, align 4
@RELOC_STD_BITS_LENGTH_SH_BIG = common dso_local global i32 0, align 4
@RELOC_STD_BITS_EXTERN_LITTLE = common dso_local global i32 0, align 4
@RELOC_STD_BITS_PCREL_LITTLE = common dso_local global i32 0, align 4
@RELOC_STD_BITS_BASEREL_LITTLE = common dso_local global i32 0, align 4
@RELOC_STD_BITS_JMPTABLE_LITTLE = common dso_local global i32 0, align 4
@RELOC_STD_BITS_RELATIVE_LITTLE = common dso_local global i32 0, align 4
@RELOC_STD_BITS_LENGTH_SH_LITTLE = common dso_local global i32 0, align 4
@RELOC_EXT_BITS_EXTERN_BIG = common dso_local global i32 0, align 4
@RELOC_EXT_BITS_TYPE_SH_BIG = common dso_local global i32 0, align 4
@RELOC_EXT_BITS_EXTERN_LITTLE = common dso_local global i32 0, align 4
@RELOC_EXT_BITS_TYPE_SH_LITTLE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aout_final_link_info*, %struct.TYPE_27__*, %struct.bfd_link_order*)* @aout_link_reloc_link_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aout_link_reloc_link_order(%struct.aout_final_link_info* %0, %struct.TYPE_27__* %1, %struct.bfd_link_order* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aout_final_link_info*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.bfd_link_order*, align 8
  %8 = alloca %struct.bfd_link_order_reloc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.reloc_std_external, align 8
  %14 = alloca %struct.reloc_ext_external, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.aout_link_hash_entry*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  store %struct.aout_final_link_info* %0, %struct.aout_final_link_info** %5, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %6, align 8
  store %struct.bfd_link_order* %2, %struct.bfd_link_order** %7, align 8
  store i64* null, i64** %12, align 8
  %27 = load %struct.bfd_link_order*, %struct.bfd_link_order** %7, align 8
  %28 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %31 = load %struct.bfd_link_order_reloc*, %struct.bfd_link_order_reloc** %30, align 8
  store %struct.bfd_link_order_reloc* %31, %struct.bfd_link_order_reloc** %8, align 8
  %32 = load %struct.bfd_link_order*, %struct.bfd_link_order** %7, align 8
  %33 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @bfd_section_reloc_link_order, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %38 = load %struct.bfd_link_order_reloc*, %struct.bfd_link_order_reloc** %8, align 8
  %39 = getelementptr inbounds %struct.bfd_link_order_reloc, %struct.bfd_link_order_reloc* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %40, align 8
  %42 = call i64 @bfd_is_abs_section(%struct.TYPE_21__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* @N_ABS, align 4
  %46 = load i32, i32* @N_EXT, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %9, align 4
  br label %67

48:                                               ; preds = %37
  %49 = load %struct.bfd_link_order_reloc*, %struct.bfd_link_order_reloc** %8, align 8
  %50 = getelementptr inbounds %struct.bfd_link_order_reloc, %struct.bfd_link_order_reloc* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %56 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %54, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @BFD_ASSERT(i32 %59)
  %61 = load %struct.bfd_link_order_reloc*, %struct.bfd_link_order_reloc** %8, align 8
  %62 = getelementptr inbounds %struct.bfd_link_order_reloc, %struct.bfd_link_order_reloc* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %48, %44
  br label %144

68:                                               ; preds = %3
  %69 = load %struct.bfd_link_order*, %struct.bfd_link_order** %7, align 8
  %70 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @bfd_symbol_reloc_link_order, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @BFD_ASSERT(i32 %74)
  store i32 1, i32* %10, align 4
  %76 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %77 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %80 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %79, i32 0, i32 3
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %80, align 8
  %82 = load %struct.bfd_link_order_reloc*, %struct.bfd_link_order_reloc** %8, align 8
  %83 = getelementptr inbounds %struct.bfd_link_order_reloc, %struct.bfd_link_order_reloc* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @FALSE, align 4
  %87 = load i32, i32* @FALSE, align 4
  %88 = load i32, i32* @TRUE, align 4
  %89 = call i64 @bfd_wrapped_link_hash_lookup(i32 %78, %struct.TYPE_28__* %81, i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = inttoptr i64 %89 to %struct.aout_link_hash_entry*
  store %struct.aout_link_hash_entry* %90, %struct.aout_link_hash_entry** %17, align 8
  %91 = load %struct.aout_link_hash_entry*, %struct.aout_link_hash_entry** %17, align 8
  %92 = icmp ne %struct.aout_link_hash_entry* %91, null
  br i1 %92, label %93, label %102

93:                                               ; preds = %68
  %94 = load %struct.aout_link_hash_entry*, %struct.aout_link_hash_entry** %17, align 8
  %95 = getelementptr inbounds %struct.aout_link_hash_entry, %struct.aout_link_hash_entry* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.aout_link_hash_entry*, %struct.aout_link_hash_entry** %17, align 8
  %100 = getelementptr inbounds %struct.aout_link_hash_entry, %struct.aout_link_hash_entry* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %9, align 4
  br label %143

102:                                              ; preds = %93, %68
  %103 = load %struct.aout_link_hash_entry*, %struct.aout_link_hash_entry** %17, align 8
  %104 = icmp ne %struct.aout_link_hash_entry* %103, null
  br i1 %104, label %105, label %122

105:                                              ; preds = %102
  %106 = load %struct.aout_link_hash_entry*, %struct.aout_link_hash_entry** %17, align 8
  %107 = getelementptr inbounds %struct.aout_link_hash_entry, %struct.aout_link_hash_entry* %106, i32 0, i32 0
  store i32 -2, i32* %107, align 4
  %108 = load i32, i32* @FALSE, align 4
  %109 = load %struct.aout_link_hash_entry*, %struct.aout_link_hash_entry** %17, align 8
  %110 = getelementptr inbounds %struct.aout_link_hash_entry, %struct.aout_link_hash_entry* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.aout_link_hash_entry*, %struct.aout_link_hash_entry** %17, align 8
  %112 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %113 = bitcast %struct.aout_final_link_info* %112 to i8*
  %114 = call i32 @aout_link_write_other_symbol(%struct.aout_link_hash_entry* %111, i8* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %105
  %117 = load i32, i32* @FALSE, align 4
  store i32 %117, i32* %4, align 4
  br label %594

118:                                              ; preds = %105
  %119 = load %struct.aout_link_hash_entry*, %struct.aout_link_hash_entry** %17, align 8
  %120 = getelementptr inbounds %struct.aout_link_hash_entry, %struct.aout_link_hash_entry* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %9, align 4
  br label %142

122:                                              ; preds = %102
  %123 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %124 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %123, i32 0, i32 3
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 1
  %129 = load i32 (%struct.TYPE_28__*, i32, i32*, i32*, i64)*, i32 (%struct.TYPE_28__*, i32, i32*, i32*, i64)** %128, align 8
  %130 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %131 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %130, i32 0, i32 3
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %131, align 8
  %133 = load %struct.bfd_link_order_reloc*, %struct.bfd_link_order_reloc** %8, align 8
  %134 = getelementptr inbounds %struct.bfd_link_order_reloc, %struct.bfd_link_order_reloc* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 %129(%struct.TYPE_28__* %132, i32 %136, i32* null, i32* null, i64 0)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %122
  %140 = load i32, i32* @FALSE, align 4
  store i32 %140, i32* %4, align 4
  br label %594

141:                                              ; preds = %122
  store i32 0, i32* %9, align 4
  br label %142

142:                                              ; preds = %141, %118
  br label %143

143:                                              ; preds = %142, %98
  br label %144

144:                                              ; preds = %143, %67
  %145 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %146 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.bfd_link_order_reloc*, %struct.bfd_link_order_reloc** %8, align 8
  %149 = getelementptr inbounds %struct.bfd_link_order_reloc, %struct.bfd_link_order_reloc* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call %struct.TYPE_26__* @bfd_reloc_type_lookup(i32 %147, i32 %150)
  store %struct.TYPE_26__* %151, %struct.TYPE_26__** %11, align 8
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %153 = icmp eq %struct.TYPE_26__* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %144
  %155 = load i32, i32* @bfd_error_bad_value, align 4
  %156 = call i32 @bfd_set_error(i32 %155)
  %157 = load i32, i32* @FALSE, align 4
  store i32 %157, i32* %4, align 4
  br label %594

158:                                              ; preds = %144
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %160 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %161 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call %struct.TYPE_27__* @obj_textsec(i32 %162)
  %164 = icmp eq %struct.TYPE_27__* %159, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %158
  %166 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %167 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %166, i32 0, i32 0
  store i64* %167, i64** %12, align 8
  br label %181

168:                                              ; preds = %158
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %170 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %171 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call %struct.TYPE_27__* @obj_datasec(i32 %172)
  %174 = icmp eq %struct.TYPE_27__* %169, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %168
  %176 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %177 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %176, i32 0, i32 1
  store i64* %177, i64** %12, align 8
  br label %180

178:                                              ; preds = %168
  %179 = call i32 (...) @abort() #3
  unreachable

180:                                              ; preds = %175
  br label %181

181:                                              ; preds = %180, %165
  %182 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %183 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i64 @obj_reloc_entry_size(i32 %184)
  %186 = load i64, i64* @RELOC_STD_SIZE, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %445

188:                                              ; preds = %181
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %18, align 4
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = and i32 %195, 8
  %197 = icmp ne i32 %196, 0
  %198 = zext i1 %197 to i32
  store i32 %198, i32* %19, align 4
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = and i32 %201, 16
  %203 = icmp ne i32 %202, 0
  %204 = zext i1 %203 to i32
  store i32 %204, i32* %20, align 4
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = and i32 %207, 32
  %209 = icmp ne i32 %208, 0
  %210 = zext i1 %209 to i32
  store i32 %210, i32* %21, align 4
  %211 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %22, align 4
  %214 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %215 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.bfd_link_order*, %struct.bfd_link_order** %7, align 8
  %218 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds %struct.reloc_std_external, %struct.reloc_std_external* %13, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @PUT_WORD(i32 %216, i64 %219, i32 %221)
  %223 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %224 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = call i64 @bfd_header_big_endian(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %289

228:                                              ; preds = %188
  %229 = load i32, i32* %9, align 4
  %230 = ashr i32 %229, 16
  %231 = getelementptr inbounds %struct.reloc_std_external, %struct.reloc_std_external* %13, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  store i32 %230, i32* %233, align 4
  %234 = load i32, i32* %9, align 4
  %235 = ashr i32 %234, 8
  %236 = getelementptr inbounds %struct.reloc_std_external, %struct.reloc_std_external* %13, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 1
  store i32 %235, i32* %238, align 4
  %239 = load i32, i32* %9, align 4
  %240 = getelementptr inbounds %struct.reloc_std_external, %struct.reloc_std_external* %13, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 2
  store i32 %239, i32* %242, align 4
  %243 = load i32, i32* %10, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %228
  %246 = load i32, i32* @RELOC_STD_BITS_EXTERN_BIG, align 4
  br label %248

247:                                              ; preds = %228
  br label %248

248:                                              ; preds = %247, %245
  %249 = phi i32 [ %246, %245 ], [ 0, %247 ]
  %250 = load i32, i32* %18, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %248
  %253 = load i32, i32* @RELOC_STD_BITS_PCREL_BIG, align 4
  br label %255

254:                                              ; preds = %248
  br label %255

255:                                              ; preds = %254, %252
  %256 = phi i32 [ %253, %252 ], [ 0, %254 ]
  %257 = or i32 %249, %256
  %258 = load i32, i32* %19, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %255
  %261 = load i32, i32* @RELOC_STD_BITS_BASEREL_BIG, align 4
  br label %263

262:                                              ; preds = %255
  br label %263

263:                                              ; preds = %262, %260
  %264 = phi i32 [ %261, %260 ], [ 0, %262 ]
  %265 = or i32 %257, %264
  %266 = load i32, i32* %20, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %263
  %269 = load i32, i32* @RELOC_STD_BITS_JMPTABLE_BIG, align 4
  br label %271

270:                                              ; preds = %263
  br label %271

271:                                              ; preds = %270, %268
  %272 = phi i32 [ %269, %268 ], [ 0, %270 ]
  %273 = or i32 %265, %272
  %274 = load i32, i32* %21, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %271
  %277 = load i32, i32* @RELOC_STD_BITS_RELATIVE_BIG, align 4
  br label %279

278:                                              ; preds = %271
  br label %279

279:                                              ; preds = %278, %276
  %280 = phi i32 [ %277, %276 ], [ 0, %278 ]
  %281 = or i32 %273, %280
  %282 = load i32, i32* %22, align 4
  %283 = load i32, i32* @RELOC_STD_BITS_LENGTH_SH_BIG, align 4
  %284 = shl i32 %282, %283
  %285 = or i32 %281, %284
  %286 = getelementptr inbounds %struct.reloc_std_external, %struct.reloc_std_external* %13, i32 0, i32 1
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 0
  store i32 %285, i32* %288, align 4
  br label %350

289:                                              ; preds = %188
  %290 = load i32, i32* %9, align 4
  %291 = ashr i32 %290, 16
  %292 = getelementptr inbounds %struct.reloc_std_external, %struct.reloc_std_external* %13, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 2
  store i32 %291, i32* %294, align 4
  %295 = load i32, i32* %9, align 4
  %296 = ashr i32 %295, 8
  %297 = getelementptr inbounds %struct.reloc_std_external, %struct.reloc_std_external* %13, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 1
  store i32 %296, i32* %299, align 4
  %300 = load i32, i32* %9, align 4
  %301 = getelementptr inbounds %struct.reloc_std_external, %struct.reloc_std_external* %13, i32 0, i32 0
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 0
  store i32 %300, i32* %303, align 4
  %304 = load i32, i32* %10, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %289
  %307 = load i32, i32* @RELOC_STD_BITS_EXTERN_LITTLE, align 4
  br label %309

308:                                              ; preds = %289
  br label %309

309:                                              ; preds = %308, %306
  %310 = phi i32 [ %307, %306 ], [ 0, %308 ]
  %311 = load i32, i32* %18, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %309
  %314 = load i32, i32* @RELOC_STD_BITS_PCREL_LITTLE, align 4
  br label %316

315:                                              ; preds = %309
  br label %316

316:                                              ; preds = %315, %313
  %317 = phi i32 [ %314, %313 ], [ 0, %315 ]
  %318 = or i32 %310, %317
  %319 = load i32, i32* %19, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %316
  %322 = load i32, i32* @RELOC_STD_BITS_BASEREL_LITTLE, align 4
  br label %324

323:                                              ; preds = %316
  br label %324

324:                                              ; preds = %323, %321
  %325 = phi i32 [ %322, %321 ], [ 0, %323 ]
  %326 = or i32 %318, %325
  %327 = load i32, i32* %20, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %324
  %330 = load i32, i32* @RELOC_STD_BITS_JMPTABLE_LITTLE, align 4
  br label %332

331:                                              ; preds = %324
  br label %332

332:                                              ; preds = %331, %329
  %333 = phi i32 [ %330, %329 ], [ 0, %331 ]
  %334 = or i32 %326, %333
  %335 = load i32, i32* %21, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %332
  %338 = load i32, i32* @RELOC_STD_BITS_RELATIVE_LITTLE, align 4
  br label %340

339:                                              ; preds = %332
  br label %340

340:                                              ; preds = %339, %337
  %341 = phi i32 [ %338, %337 ], [ 0, %339 ]
  %342 = or i32 %334, %341
  %343 = load i32, i32* %22, align 4
  %344 = load i32, i32* @RELOC_STD_BITS_LENGTH_SH_LITTLE, align 4
  %345 = shl i32 %343, %344
  %346 = or i32 %342, %345
  %347 = getelementptr inbounds %struct.reloc_std_external, %struct.reloc_std_external* %13, i32 0, i32 1
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 0
  store i32 %346, i32* %349, align 4
  br label %350

350:                                              ; preds = %340, %279
  %351 = bitcast %struct.reloc_std_external* %13 to i8*
  store i8* %351, i8** %15, align 8
  %352 = load %struct.bfd_link_order_reloc*, %struct.bfd_link_order_reloc** %8, align 8
  %353 = getelementptr inbounds %struct.bfd_link_order_reloc, %struct.bfd_link_order_reloc* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %444

356:                                              ; preds = %350
  %357 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %358 = call i64 @bfd_get_reloc_size(%struct.TYPE_26__* %357)
  store i64 %358, i64* %23, align 8
  %359 = load i64, i64* %23, align 8
  %360 = call i32* @bfd_zmalloc(i64 %359)
  store i32* %360, i32** %25, align 8
  %361 = load i32*, i32** %25, align 8
  %362 = icmp eq i32* %361, null
  br i1 %362, label %363, label %365

363:                                              ; preds = %356
  %364 = load i32, i32* @FALSE, align 4
  store i32 %364, i32* %4, align 4
  br label %594

365:                                              ; preds = %356
  %366 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %367 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %368 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.bfd_link_order_reloc*, %struct.bfd_link_order_reloc** %8, align 8
  %371 = getelementptr inbounds %struct.bfd_link_order_reloc, %struct.bfd_link_order_reloc* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = load i32*, i32** %25, align 8
  %374 = call i32 @MY_relocate_contents(%struct.TYPE_26__* %366, i32 %369, i64 %372, i32* %373)
  store i32 %374, i32* %24, align 4
  %375 = load i32, i32* %24, align 4
  switch i32 %375, label %377 [
    i32 130, label %376
    i32 129, label %378
    i32 128, label %380
  ]

376:                                              ; preds = %365
  br label %425

377:                                              ; preds = %365
  br label %378

378:                                              ; preds = %365, %377
  %379 = call i32 (...) @abort() #3
  unreachable

380:                                              ; preds = %365
  %381 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %382 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %381, i32 0, i32 3
  %383 = load %struct.TYPE_28__*, %struct.TYPE_28__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %383, i32 0, i32 0
  %385 = load %struct.TYPE_24__*, %struct.TYPE_24__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %385, i32 0, i32 0
  %387 = load i32 (%struct.TYPE_28__*, i32*, i32, i32, i64, i32*, i32*, i64)*, i32 (%struct.TYPE_28__*, i32*, i32, i32, i64, i32*, i32*, i64)** %386, align 8
  %388 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %389 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %388, i32 0, i32 3
  %390 = load %struct.TYPE_28__*, %struct.TYPE_28__** %389, align 8
  %391 = load %struct.bfd_link_order*, %struct.bfd_link_order** %7, align 8
  %392 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = load i64, i64* @bfd_section_reloc_link_order, align 8
  %395 = icmp eq i64 %393, %394
  br i1 %395, label %396, label %405

396:                                              ; preds = %380
  %397 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %398 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 8
  %400 = load %struct.bfd_link_order_reloc*, %struct.bfd_link_order_reloc** %8, align 8
  %401 = getelementptr inbounds %struct.bfd_link_order_reloc, %struct.bfd_link_order_reloc* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %401, i32 0, i32 1
  %403 = load %struct.TYPE_21__*, %struct.TYPE_21__** %402, align 8
  %404 = call i32 @bfd_section_name(i32 %399, %struct.TYPE_21__* %403)
  br label %410

405:                                              ; preds = %380
  %406 = load %struct.bfd_link_order_reloc*, %struct.bfd_link_order_reloc** %8, align 8
  %407 = getelementptr inbounds %struct.bfd_link_order_reloc, %struct.bfd_link_order_reloc* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  br label %410

410:                                              ; preds = %405, %396
  %411 = phi i32 [ %404, %396 ], [ %409, %405 ]
  %412 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %413 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 8
  %415 = load %struct.bfd_link_order_reloc*, %struct.bfd_link_order_reloc** %8, align 8
  %416 = getelementptr inbounds %struct.bfd_link_order_reloc, %struct.bfd_link_order_reloc* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = call i32 %387(%struct.TYPE_28__* %390, i32* null, i32 %411, i32 %414, i64 %417, i32* null, i32* null, i64 0)
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %424, label %420

420:                                              ; preds = %410
  %421 = load i32*, i32** %25, align 8
  %422 = call i32 @free(i32* %421)
  %423 = load i32, i32* @FALSE, align 4
  store i32 %423, i32* %4, align 4
  br label %594

424:                                              ; preds = %410
  br label %425

425:                                              ; preds = %424, %376
  %426 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %427 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %426, i32 0, i32 2
  %428 = load i32, i32* %427, align 8
  %429 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %430 = load i32*, i32** %25, align 8
  %431 = bitcast i32* %430 to i8*
  %432 = load %struct.bfd_link_order*, %struct.bfd_link_order** %7, align 8
  %433 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %432, i32 0, i32 1
  %434 = load i64, i64* %433, align 8
  %435 = load i64, i64* %23, align 8
  %436 = call i32 @bfd_set_section_contents(i32 %428, %struct.TYPE_27__* %429, i8* %431, i64 %434, i64 %435)
  store i32 %436, i32* %26, align 4
  %437 = load i32*, i32** %25, align 8
  %438 = call i32 @free(i32* %437)
  %439 = load i32, i32* %26, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %443, label %441

441:                                              ; preds = %425
  %442 = load i32, i32* @FALSE, align 4
  store i32 %442, i32* %4, align 4
  br label %594

443:                                              ; preds = %425
  br label %444

444:                                              ; preds = %443, %350
  br label %533

445:                                              ; preds = %181
  %446 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %447 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %446, i32 0, i32 2
  %448 = load i32, i32* %447, align 8
  %449 = load %struct.bfd_link_order*, %struct.bfd_link_order** %7, align 8
  %450 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %449, i32 0, i32 1
  %451 = load i64, i64* %450, align 8
  %452 = getelementptr inbounds %struct.reloc_ext_external, %struct.reloc_ext_external* %14, i32 0, i32 3
  %453 = load i32, i32* %452, align 4
  %454 = call i32 @PUT_WORD(i32 %448, i64 %451, i32 %453)
  %455 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %456 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %455, i32 0, i32 2
  %457 = load i32, i32* %456, align 8
  %458 = call i64 @bfd_header_big_endian(i32 %457)
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %491

460:                                              ; preds = %445
  %461 = load i32, i32* %9, align 4
  %462 = ashr i32 %461, 16
  %463 = getelementptr inbounds %struct.reloc_ext_external, %struct.reloc_ext_external* %14, i32 0, i32 0
  %464 = load i32*, i32** %463, align 8
  %465 = getelementptr inbounds i32, i32* %464, i64 0
  store i32 %462, i32* %465, align 4
  %466 = load i32, i32* %9, align 4
  %467 = ashr i32 %466, 8
  %468 = getelementptr inbounds %struct.reloc_ext_external, %struct.reloc_ext_external* %14, i32 0, i32 0
  %469 = load i32*, i32** %468, align 8
  %470 = getelementptr inbounds i32, i32* %469, i64 1
  store i32 %467, i32* %470, align 4
  %471 = load i32, i32* %9, align 4
  %472 = getelementptr inbounds %struct.reloc_ext_external, %struct.reloc_ext_external* %14, i32 0, i32 0
  %473 = load i32*, i32** %472, align 8
  %474 = getelementptr inbounds i32, i32* %473, i64 2
  store i32 %471, i32* %474, align 4
  %475 = load i32, i32* %10, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %479

477:                                              ; preds = %460
  %478 = load i32, i32* @RELOC_EXT_BITS_EXTERN_BIG, align 4
  br label %480

479:                                              ; preds = %460
  br label %480

480:                                              ; preds = %479, %477
  %481 = phi i32 [ %478, %477 ], [ 0, %479 ]
  %482 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %483 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 8
  %485 = load i32, i32* @RELOC_EXT_BITS_TYPE_SH_BIG, align 4
  %486 = shl i32 %484, %485
  %487 = or i32 %481, %486
  %488 = getelementptr inbounds %struct.reloc_ext_external, %struct.reloc_ext_external* %14, i32 0, i32 1
  %489 = load i32*, i32** %488, align 8
  %490 = getelementptr inbounds i32, i32* %489, i64 0
  store i32 %487, i32* %490, align 4
  br label %522

491:                                              ; preds = %445
  %492 = load i32, i32* %9, align 4
  %493 = ashr i32 %492, 16
  %494 = getelementptr inbounds %struct.reloc_ext_external, %struct.reloc_ext_external* %14, i32 0, i32 0
  %495 = load i32*, i32** %494, align 8
  %496 = getelementptr inbounds i32, i32* %495, i64 2
  store i32 %493, i32* %496, align 4
  %497 = load i32, i32* %9, align 4
  %498 = ashr i32 %497, 8
  %499 = getelementptr inbounds %struct.reloc_ext_external, %struct.reloc_ext_external* %14, i32 0, i32 0
  %500 = load i32*, i32** %499, align 8
  %501 = getelementptr inbounds i32, i32* %500, i64 1
  store i32 %498, i32* %501, align 4
  %502 = load i32, i32* %9, align 4
  %503 = getelementptr inbounds %struct.reloc_ext_external, %struct.reloc_ext_external* %14, i32 0, i32 0
  %504 = load i32*, i32** %503, align 8
  %505 = getelementptr inbounds i32, i32* %504, i64 0
  store i32 %502, i32* %505, align 4
  %506 = load i32, i32* %10, align 4
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %510

508:                                              ; preds = %491
  %509 = load i32, i32* @RELOC_EXT_BITS_EXTERN_LITTLE, align 4
  br label %511

510:                                              ; preds = %491
  br label %511

511:                                              ; preds = %510, %508
  %512 = phi i32 [ %509, %508 ], [ 0, %510 ]
  %513 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %514 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 8
  %516 = load i32, i32* @RELOC_EXT_BITS_TYPE_SH_LITTLE, align 4
  %517 = shl i32 %515, %516
  %518 = or i32 %512, %517
  %519 = getelementptr inbounds %struct.reloc_ext_external, %struct.reloc_ext_external* %14, i32 0, i32 1
  %520 = load i32*, i32** %519, align 8
  %521 = getelementptr inbounds i32, i32* %520, i64 0
  store i32 %518, i32* %521, align 4
  br label %522

522:                                              ; preds = %511, %480
  %523 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %524 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %523, i32 0, i32 2
  %525 = load i32, i32* %524, align 8
  %526 = load %struct.bfd_link_order_reloc*, %struct.bfd_link_order_reloc** %8, align 8
  %527 = getelementptr inbounds %struct.bfd_link_order_reloc, %struct.bfd_link_order_reloc* %526, i32 0, i32 0
  %528 = load i64, i64* %527, align 8
  %529 = getelementptr inbounds %struct.reloc_ext_external, %struct.reloc_ext_external* %14, i32 0, i32 2
  %530 = load i32, i32* %529, align 8
  %531 = call i32 @PUT_WORD(i32 %525, i64 %528, i32 %530)
  %532 = bitcast %struct.reloc_ext_external* %14 to i8*
  store i8* %532, i8** %15, align 8
  br label %533

533:                                              ; preds = %522, %444
  %534 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %535 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %534, i32 0, i32 2
  %536 = load i32, i32* %535, align 8
  %537 = call i64 @obj_reloc_entry_size(i32 %536)
  store i64 %537, i64* %16, align 8
  %538 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %539 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %538, i32 0, i32 2
  %540 = load i32, i32* %539, align 8
  %541 = load i64*, i64** %12, align 8
  %542 = load i64, i64* %541, align 8
  %543 = load i32, i32* @SEEK_SET, align 4
  %544 = call i64 @bfd_seek(i32 %540, i64 %542, i32 %543)
  %545 = icmp ne i64 %544, 0
  br i1 %545, label %555, label %546

546:                                              ; preds = %533
  %547 = load i8*, i8** %15, align 8
  %548 = load i64, i64* %16, align 8
  %549 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %550 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %549, i32 0, i32 2
  %551 = load i32, i32* %550, align 8
  %552 = call i64 @bfd_bwrite(i8* %547, i64 %548, i32 %551)
  %553 = load i64, i64* %16, align 8
  %554 = icmp ne i64 %552, %553
  br i1 %554, label %555, label %557

555:                                              ; preds = %546, %533
  %556 = load i32, i32* @FALSE, align 4
  store i32 %556, i32* %4, align 4
  br label %594

557:                                              ; preds = %546
  %558 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %559 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %558, i32 0, i32 2
  %560 = load i32, i32* %559, align 8
  %561 = call i64 @obj_reloc_entry_size(i32 %560)
  %562 = load i64*, i64** %12, align 8
  %563 = load i64, i64* %562, align 8
  %564 = add nsw i64 %563, %561
  store i64 %564, i64* %562, align 8
  %565 = load i64*, i64** %12, align 8
  %566 = load i64, i64* %565, align 8
  %567 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %568 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %567, i32 0, i32 2
  %569 = load i32, i32* %568, align 8
  %570 = call i64 @obj_sym_filepos(i32 %569)
  %571 = icmp sle i64 %566, %570
  br i1 %571, label %572, label %589

572:                                              ; preds = %557
  %573 = load i64*, i64** %12, align 8
  %574 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %575 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %574, i32 0, i32 0
  %576 = icmp ne i64* %573, %575
  br i1 %576, label %587, label %577

577:                                              ; preds = %572
  %578 = load i64*, i64** %12, align 8
  %579 = load i64, i64* %578, align 8
  %580 = load %struct.aout_final_link_info*, %struct.aout_final_link_info** %5, align 8
  %581 = getelementptr inbounds %struct.aout_final_link_info, %struct.aout_final_link_info* %580, i32 0, i32 2
  %582 = load i32, i32* %581, align 8
  %583 = call %struct.TYPE_27__* @obj_datasec(i32 %582)
  %584 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %583, i32 0, i32 0
  %585 = load i64, i64* %584, align 8
  %586 = icmp sle i64 %579, %585
  br label %587

587:                                              ; preds = %577, %572
  %588 = phi i1 [ true, %572 ], [ %586, %577 ]
  br label %589

589:                                              ; preds = %587, %557
  %590 = phi i1 [ false, %557 ], [ %588, %587 ]
  %591 = zext i1 %590 to i32
  %592 = call i32 @BFD_ASSERT(i32 %591)
  %593 = load i32, i32* @TRUE, align 4
  store i32 %593, i32* %4, align 4
  br label %594

594:                                              ; preds = %589, %555, %441, %420, %363, %154, %139, %116
  %595 = load i32, i32* %4, align 4
  ret i32 %595
}

declare dso_local i64 @bfd_is_abs_section(%struct.TYPE_21__*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i64 @bfd_wrapped_link_hash_lookup(i32, %struct.TYPE_28__*, i32, i32, i32, i32) #1

declare dso_local i32 @aout_link_write_other_symbol(%struct.aout_link_hash_entry*, i8*) #1

declare dso_local %struct.TYPE_26__* @bfd_reloc_type_lookup(i32, i32) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local %struct.TYPE_27__* @obj_textsec(i32) #1

declare dso_local %struct.TYPE_27__* @obj_datasec(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @obj_reloc_entry_size(i32) #1

declare dso_local i32 @PUT_WORD(i32, i64, i32) #1

declare dso_local i64 @bfd_header_big_endian(i32) #1

declare dso_local i64 @bfd_get_reloc_size(%struct.TYPE_26__*) #1

declare dso_local i32* @bfd_zmalloc(i64) #1

declare dso_local i32 @MY_relocate_contents(%struct.TYPE_26__*, i32, i64, i32*) #1

declare dso_local i32 @bfd_section_name(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @bfd_set_section_contents(i32, %struct.TYPE_27__*, i8*, i64, i64) #1

declare dso_local i64 @bfd_seek(i32, i64, i32) #1

declare dso_local i64 @bfd_bwrite(i8*, i64, i32) #1

declare dso_local i64 @obj_sym_filepos(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
