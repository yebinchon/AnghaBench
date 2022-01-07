; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_sunos.c_sunos_add_one_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_sunos.c_sunos_add_one_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_21__ = type { i32, i64 }
%struct.bfd_link_hash_entry = type { i32 }
%struct.sunos_link_hash_entry = type { i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_29__, %struct.TYPE_26__, %struct.TYPE_23__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_27__* }
%struct.TYPE_23__ = type { %struct.TYPE_27__* }
%struct.TYPE_22__ = type { i32 }

@BSF_INDIRECT = common dso_local global i32 0, align 4
@BSF_WARNING = common dso_local global i32 0, align 4
@BSF_CONSTRUCTOR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DYNAMIC = common dso_local global i32 0, align 4
@bfd_link_hash_new = common dso_local global i64 0, align 8
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@bfd_und_section_ptr = common dso_local global i32* null, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_common = common dso_local global i64 0, align 8
@SUNOS_CONSTRUCTOR = common dso_local global i32 0, align 4
@SUNOS_REF_REGULAR = common dso_local global i32 0, align 4
@SUNOS_DEF_REGULAR = common dso_local global i32 0, align 4
@SUNOS_REF_DYNAMIC = common dso_local global i32 0, align 4
@SUNOS_DEF_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfd_link_info*, %struct.TYPE_21__*, i8*, i32, i32*, i32, i8*, i32, i32, %struct.bfd_link_hash_entry**)* @sunos_add_one_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunos_add_one_symbol(%struct.bfd_link_info* %0, %struct.TYPE_21__* %1, i8* %2, i32 %3, i32* %4, i32 %5, i8* %6, i32 %7, i32 %8, %struct.bfd_link_hash_entry** %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.bfd_link_info*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.bfd_link_hash_entry**, align 8
  %22 = alloca %struct.sunos_link_hash_entry*, align 8
  %23 = alloca i32, align 4
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %12, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32* %4, i32** %16, align 8
  store i32 %5, i32* %17, align 4
  store i8* %6, i8** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store %struct.bfd_link_hash_entry** %9, %struct.bfd_link_hash_entry*** %21, align 8
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* @BSF_INDIRECT, align 4
  %26 = load i32, i32* @BSF_WARNING, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @BSF_CONSTRUCTOR, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %24, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %10
  %33 = load i32*, i32** %16, align 8
  %34 = call i64 @bfd_is_und_section(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32, %10
  %37 = load %struct.bfd_link_info*, %struct.bfd_link_info** %12, align 8
  %38 = call %struct.TYPE_22__* @sunos_hash_table(%struct.bfd_link_info* %37)
  %39 = load i8*, i8** %14, align 8
  %40 = load i32, i32* @TRUE, align 4
  %41 = load i32, i32* %19, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = call %struct.sunos_link_hash_entry* @sunos_link_hash_lookup(%struct.TYPE_22__* %38, i8* %39, i32 %40, i32 %41, i32 %42)
  store %struct.sunos_link_hash_entry* %43, %struct.sunos_link_hash_entry** %22, align 8
  br label %53

44:                                               ; preds = %32
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %46 = load %struct.bfd_link_info*, %struct.bfd_link_info** %12, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = load i32, i32* @TRUE, align 4
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* @FALSE, align 4
  %51 = call i64 @bfd_wrapped_link_hash_lookup(%struct.TYPE_21__* %45, %struct.bfd_link_info* %46, i8* %47, i32 %48, i32 %49, i32 %50)
  %52 = inttoptr i64 %51 to %struct.sunos_link_hash_entry*
  store %struct.sunos_link_hash_entry* %52, %struct.sunos_link_hash_entry** %22, align 8
  br label %53

53:                                               ; preds = %44, %36
  %54 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %55 = icmp eq %struct.sunos_link_hash_entry* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %11, align 4
  br label %399

58:                                               ; preds = %53
  %59 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %21, align 8
  %60 = icmp ne %struct.bfd_link_hash_entry** %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %63 = bitcast %struct.sunos_link_hash_entry* %62 to %struct.bfd_link_hash_entry*
  %64 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %21, align 8
  store %struct.bfd_link_hash_entry* %63, %struct.bfd_link_hash_entry** %64, align 8
  br label %65

65:                                               ; preds = %61, %58
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @DYNAMIC, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load i32*, i32** %16, align 8
  %74 = call i64 @bfd_is_com_section(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %78 = call i32* @obj_bsssec(%struct.TYPE_21__* %77)
  store i32* %78, i32** %16, align 8
  br label %79

79:                                               ; preds = %76, %72, %65
  %80 = load i32*, i32** %16, align 8
  %81 = call i64 @bfd_is_und_section(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %222, label %83

83:                                               ; preds = %79
  %84 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %85 = getelementptr inbounds %struct.sunos_link_hash_entry, %struct.sunos_link_hash_entry* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @bfd_link_hash_new, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %222

91:                                               ; preds = %83
  %92 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %93 = getelementptr inbounds %struct.sunos_link_hash_entry, %struct.sunos_link_hash_entry* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @bfd_link_hash_undefined, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %222

99:                                               ; preds = %91
  %100 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %101 = getelementptr inbounds %struct.sunos_link_hash_entry, %struct.sunos_link_hash_entry* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @bfd_link_hash_defweak, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %222

107:                                              ; preds = %99
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @DYNAMIC, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32*, i32** @bfd_und_section_ptr, align 8
  store i32* %115, i32** %16, align 8
  br label %221

116:                                              ; preds = %107
  %117 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %118 = getelementptr inbounds %struct.sunos_link_hash_entry, %struct.sunos_link_hash_entry* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @bfd_link_hash_defined, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %171

124:                                              ; preds = %116
  %125 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %126 = getelementptr inbounds %struct.sunos_link_hash_entry, %struct.sunos_link_hash_entry* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %132, align 8
  %134 = icmp ne %struct.TYPE_27__* %133, null
  br i1 %134, label %135, label %171

135:                                              ; preds = %124
  %136 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %137 = getelementptr inbounds %struct.sunos_link_hash_entry, %struct.sunos_link_hash_entry* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @DYNAMIC, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %171

150:                                              ; preds = %135
  %151 = load i64, i64* @bfd_link_hash_undefined, align 8
  %152 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %153 = getelementptr inbounds %struct.sunos_link_hash_entry, %struct.sunos_link_hash_entry* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %154, i32 0, i32 0
  store i64 %151, i64* %155, align 8
  %156 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %157 = getelementptr inbounds %struct.sunos_link_hash_entry, %struct.sunos_link_hash_entry* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %163, align 8
  %165 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %166 = getelementptr inbounds %struct.sunos_link_hash_entry, %struct.sunos_link_hash_entry* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 0
  store %struct.TYPE_27__* %164, %struct.TYPE_27__** %170, align 8
  br label %220

171:                                              ; preds = %135, %124, %116
  %172 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %173 = getelementptr inbounds %struct.sunos_link_hash_entry, %struct.sunos_link_hash_entry* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @bfd_link_hash_common, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %219

179:                                              ; preds = %171
  %180 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %181 = getelementptr inbounds %struct.sunos_link_hash_entry, %struct.sunos_link_hash_entry* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @DYNAMIC, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %219

196:                                              ; preds = %179
  %197 = load i64, i64* @bfd_link_hash_undefined, align 8
  %198 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %199 = getelementptr inbounds %struct.sunos_link_hash_entry, %struct.sunos_link_hash_entry* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %200, i32 0, i32 0
  store i64 %197, i64* %201, align 8
  %202 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %203 = getelementptr inbounds %struct.sunos_link_hash_entry, %struct.sunos_link_hash_entry* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %211, align 8
  %213 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %214 = getelementptr inbounds %struct.sunos_link_hash_entry, %struct.sunos_link_hash_entry* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 0
  store %struct.TYPE_27__* %212, %struct.TYPE_27__** %218, align 8
  br label %219

219:                                              ; preds = %196, %179, %171
  br label %220

220:                                              ; preds = %219, %150
  br label %221

221:                                              ; preds = %220, %114
  br label %222

222:                                              ; preds = %221, %99, %91, %83, %79
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @DYNAMIC, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %248

229:                                              ; preds = %222
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.bfd_link_info*, %struct.bfd_link_info** %12, align 8
  %234 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %233, i32 0, i32 0
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp eq i64 %232, %237
  br i1 %238, label %239, label %248

239:                                              ; preds = %229
  %240 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %241 = getelementptr inbounds %struct.sunos_link_hash_entry, %struct.sunos_link_hash_entry* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @SUNOS_CONSTRUCTOR, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %239
  %247 = load i32*, i32** @bfd_und_section_ptr, align 8
  store i32* %247, i32** %16, align 8
  br label %301

248:                                              ; preds = %239, %229, %222
  %249 = load i32, i32* %15, align 4
  %250 = load i32, i32* @BSF_CONSTRUCTOR, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %300

253:                                              ; preds = %248
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @DYNAMIC, align 4
  %258 = and i32 %256, %257
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %300

260:                                              ; preds = %253
  %261 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %262 = getelementptr inbounds %struct.sunos_link_hash_entry, %struct.sunos_link_hash_entry* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @bfd_link_hash_defined, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %300

268:                                              ; preds = %260
  %269 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %270 = getelementptr inbounds %struct.sunos_link_hash_entry, %struct.sunos_link_hash_entry* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_28__*, %struct.TYPE_28__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_27__*, %struct.TYPE_27__** %276, align 8
  %278 = icmp ne %struct.TYPE_27__* %277, null
  br i1 %278, label %279, label %300

279:                                              ; preds = %268
  %280 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %281 = getelementptr inbounds %struct.sunos_link_hash_entry, %struct.sunos_link_hash_entry* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_28__*, %struct.TYPE_28__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %286, i32 0, i32 0
  %288 = load %struct.TYPE_27__*, %struct.TYPE_27__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @DYNAMIC, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %300

294:                                              ; preds = %279
  %295 = load i64, i64* @bfd_link_hash_new, align 8
  %296 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %297 = getelementptr inbounds %struct.sunos_link_hash_entry, %struct.sunos_link_hash_entry* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %298, i32 0, i32 0
  store i64 %295, i64* %299, align 8
  br label %300

300:                                              ; preds = %294, %279, %268, %260, %253, %248
  br label %301

301:                                              ; preds = %300, %246
  %302 = load %struct.bfd_link_info*, %struct.bfd_link_info** %12, align 8
  %303 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %304 = load i8*, i8** %14, align 8
  %305 = load i32, i32* %15, align 4
  %306 = load i32*, i32** %16, align 8
  %307 = load i32, i32* %17, align 4
  %308 = load i8*, i8** %18, align 8
  %309 = load i32, i32* %19, align 4
  %310 = load i32, i32* %20, align 4
  %311 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %21, align 8
  %312 = call i32 @_bfd_generic_link_add_one_symbol(%struct.bfd_link_info* %302, %struct.TYPE_21__* %303, i8* %304, i32 %305, i32* %306, i32 %307, i8* %308, i32 %309, i32 %310, %struct.bfd_link_hash_entry** %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %316, label %314

314:                                              ; preds = %301
  %315 = load i32, i32* @FALSE, align 4
  store i32 %315, i32* %11, align 4
  br label %399

316:                                              ; preds = %301
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %318 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %317, i32 0, i32 1
  %319 = load i64, i64* %318, align 8
  %320 = load %struct.bfd_link_info*, %struct.bfd_link_info** %12, align 8
  %321 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %320, i32 0, i32 0
  %322 = load %struct.TYPE_20__*, %struct.TYPE_20__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = icmp eq i64 %319, %324
  br i1 %325, label %326, label %397

326:                                              ; preds = %316
  %327 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %328 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @DYNAMIC, align 4
  %331 = and i32 %329, %330
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %342

333:                                              ; preds = %326
  %334 = load i32*, i32** %16, align 8
  %335 = call i64 @bfd_is_und_section(i32* %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %333
  %338 = load i32, i32* @SUNOS_REF_REGULAR, align 4
  store i32 %338, i32* %23, align 4
  br label %341

339:                                              ; preds = %333
  %340 = load i32, i32* @SUNOS_DEF_REGULAR, align 4
  store i32 %340, i32* %23, align 4
  br label %341

341:                                              ; preds = %339, %337
  br label %351

342:                                              ; preds = %326
  %343 = load i32*, i32** %16, align 8
  %344 = call i64 @bfd_is_und_section(i32* %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %342
  %347 = load i32, i32* @SUNOS_REF_DYNAMIC, align 4
  store i32 %347, i32* %23, align 4
  br label %350

348:                                              ; preds = %342
  %349 = load i32, i32* @SUNOS_DEF_DYNAMIC, align 4
  store i32 %349, i32* %23, align 4
  br label %350

350:                                              ; preds = %348, %346
  br label %351

351:                                              ; preds = %350, %341
  %352 = load i32, i32* %23, align 4
  %353 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %354 = getelementptr inbounds %struct.sunos_link_hash_entry, %struct.sunos_link_hash_entry* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = or i32 %355, %352
  store i32 %356, i32* %354, align 8
  %357 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %358 = getelementptr inbounds %struct.sunos_link_hash_entry, %struct.sunos_link_hash_entry* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = icmp eq i32 %359, -1
  br i1 %360, label %361, label %378

361:                                              ; preds = %351
  %362 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %363 = getelementptr inbounds %struct.sunos_link_hash_entry, %struct.sunos_link_hash_entry* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @SUNOS_DEF_REGULAR, align 4
  %366 = load i32, i32* @SUNOS_REF_REGULAR, align 4
  %367 = or i32 %365, %366
  %368 = and i32 %364, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %378

370:                                              ; preds = %361
  %371 = load %struct.bfd_link_info*, %struct.bfd_link_info** %12, align 8
  %372 = call %struct.TYPE_22__* @sunos_hash_table(%struct.bfd_link_info* %371)
  %373 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %373, align 4
  %376 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %377 = getelementptr inbounds %struct.sunos_link_hash_entry, %struct.sunos_link_hash_entry* %376, i32 0, i32 1
  store i32 -2, i32* %377, align 4
  br label %378

378:                                              ; preds = %370, %361, %351
  %379 = load i32, i32* %15, align 4
  %380 = load i32, i32* @BSF_CONSTRUCTOR, align 4
  %381 = and i32 %379, %380
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %396

383:                                              ; preds = %378
  %384 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %385 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = load i32, i32* @DYNAMIC, align 4
  %388 = and i32 %386, %387
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %396

390:                                              ; preds = %383
  %391 = load i32, i32* @SUNOS_CONSTRUCTOR, align 4
  %392 = load %struct.sunos_link_hash_entry*, %struct.sunos_link_hash_entry** %22, align 8
  %393 = getelementptr inbounds %struct.sunos_link_hash_entry, %struct.sunos_link_hash_entry* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = or i32 %394, %391
  store i32 %395, i32* %393, align 8
  br label %396

396:                                              ; preds = %390, %383, %378
  br label %397

397:                                              ; preds = %396, %316
  %398 = load i32, i32* @TRUE, align 4
  store i32 %398, i32* %11, align 4
  br label %399

399:                                              ; preds = %397, %314, %56
  %400 = load i32, i32* %11, align 4
  ret i32 %400
}

declare dso_local i64 @bfd_is_und_section(i32*) #1

declare dso_local %struct.sunos_link_hash_entry* @sunos_link_hash_lookup(%struct.TYPE_22__*, i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_22__* @sunos_hash_table(%struct.bfd_link_info*) #1

declare dso_local i64 @bfd_wrapped_link_hash_lookup(%struct.TYPE_21__*, %struct.bfd_link_info*, i8*, i32, i32, i32) #1

declare dso_local i64 @bfd_is_com_section(i32*) #1

declare dso_local i32* @obj_bsssec(%struct.TYPE_21__*) #1

declare dso_local i32 @_bfd_generic_link_add_one_symbol(%struct.bfd_link_info*, %struct.TYPE_21__*, i8*, i32, i32*, i32, i8*, i32, i32, %struct.bfd_link_hash_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
