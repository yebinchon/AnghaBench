; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c__bfd_sparc_elf_adjust_dynamic_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c__bfd_sparc_elf_adjust_dynamic_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64 }
%struct.elf_link_hash_entry = type { i64, i64, i32, %struct.TYPE_20__, i64, %struct.TYPE_29__, %struct.TYPE_24__, i64, i32, i64, i32, i64 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__, %struct.TYPE_31__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_24__ = type { i64, i8* }
%struct._bfd_sparc_elf_link_hash_table = type { %struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_23__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { i32* }
%struct._bfd_sparc_elf_link_hash_entry = type { %struct._bfd_sparc_elf_dyn_relocs* }
%struct._bfd_sparc_elf_dyn_relocs = type { %struct.TYPE_30__*, %struct._bfd_sparc_elf_dyn_relocs* }
%struct.TYPE_30__ = type { %struct.TYPE_22__* }

@STT_FUNC = common dso_local global i64 0, align 8
@STT_NOTYPE = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@SEC_CODE = common dso_local global i32 0, align 4
@bfd_link_hash_undefweak = common dso_local global i64 0, align 8
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"dynamic variable `%s' is zero size\00", align 1
@SEC_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_sparc_elf_adjust_dynamic_symbol(%struct.bfd_link_info* %0, %struct.elf_link_hash_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf_link_hash_entry*, align 8
  %6 = alloca %struct._bfd_sparc_elf_link_hash_table*, align 8
  %7 = alloca %struct._bfd_sparc_elf_link_hash_entry*, align 8
  %8 = alloca %struct._bfd_sparc_elf_dyn_relocs*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %5, align 8
  %10 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %11 = call %struct._bfd_sparc_elf_link_hash_table* @_bfd_sparc_elf_hash_table(%struct.bfd_link_info* %10)
  store %struct._bfd_sparc_elf_link_hash_table* %11, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %12 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %13 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %48

17:                                               ; preds = %2
  %18 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %19 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %17
  %23 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %24 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %27 = icmp ne %struct.TYPE_28__* %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %22
  %29 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %30 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %29, i32 0, i32 9
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %35 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %34, i32 0, i32 11
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %40 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %38, %33, %28
  %45 = phi i1 [ false, %33 ], [ false, %28 ], [ %43, %38 ]
  br label %46

46:                                               ; preds = %44, %22, %17
  %47 = phi i1 [ true, %22 ], [ true, %17 ], [ %45, %44 ]
  br label %48

48:                                               ; preds = %46, %2
  %49 = phi i1 [ false, %2 ], [ %47, %46 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @BFD_ASSERT(i32 %50)
  %52 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %53 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @STT_FUNC, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %94, label %57

57:                                               ; preds = %48
  %58 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %59 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %58, i32 0, i32 7
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %94, label %62

62:                                               ; preds = %57
  %63 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %64 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @STT_NOTYPE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %137

68:                                               ; preds = %62
  %69 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %70 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @bfd_link_hash_defined, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %77 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @bfd_link_hash_defweak, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %137

82:                                               ; preds = %75, %68
  %83 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %84 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SEC_CODE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %137

94:                                               ; preds = %82, %57, %48
  %95 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %96 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sle i64 %98, 0
  br i1 %99, label %129, label %100

100:                                              ; preds = %94
  %101 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %102 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %135, label %105

105:                                              ; preds = %100
  %106 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %107 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %106, i32 0, i32 9
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %135, label %110

110:                                              ; preds = %105
  %111 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %112 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %135, label %115

115:                                              ; preds = %110
  %116 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %117 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %115
  %123 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %124 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @bfd_link_hash_undefined, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %122, %94
  %130 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %131 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %130, i32 0, i32 6
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %132, align 8
  %133 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %134 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %133, i32 0, i32 7
  store i64 0, i64* %134, align 8
  br label %135

135:                                              ; preds = %129, %122, %115, %110, %105, %100
  %136 = load i32, i32* @TRUE, align 4
  store i32 %136, i32* %3, align 4
  br label %297

137:                                              ; preds = %82, %75, %62
  %138 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %139 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %138, i32 0, i32 6
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %140, align 8
  br label %141

141:                                              ; preds = %137
  %142 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %143 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %144, align 8
  %146 = icmp ne %struct.TYPE_28__* %145, null
  br i1 %146, label %147, label %200

147:                                              ; preds = %141
  %148 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %149 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @bfd_link_hash_defined, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %167, label %157

157:                                              ; preds = %147
  %158 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %159 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @bfd_link_hash_defweak, align 8
  %166 = icmp eq i64 %164, %165
  br label %167

167:                                              ; preds = %157, %147
  %168 = phi i1 [ true, %147 ], [ %166, %157 ]
  %169 = zext i1 %168 to i32
  %170 = call i32 @BFD_ASSERT(i32 %169)
  %171 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %172 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %178, align 8
  %180 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %181 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 0
  store %struct.TYPE_17__* %179, %struct.TYPE_17__** %184, align 8
  %185 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %186 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %195 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 1
  store i32 %193, i32* %198, align 8
  %199 = load i32, i32* @TRUE, align 4
  store i32 %199, i32* %3, align 4
  br label %297

200:                                              ; preds = %141
  %201 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %202 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  %206 = load i32, i32* @TRUE, align 4
  store i32 %206, i32* %3, align 4
  br label %297

207:                                              ; preds = %200
  %208 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %209 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %207
  %213 = load i32, i32* @TRUE, align 4
  store i32 %213, i32* %3, align 4
  br label %297

214:                                              ; preds = %207
  %215 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %216 = bitcast %struct.elf_link_hash_entry* %215 to %struct._bfd_sparc_elf_link_hash_entry*
  store %struct._bfd_sparc_elf_link_hash_entry* %216, %struct._bfd_sparc_elf_link_hash_entry** %7, align 8
  %217 = load %struct._bfd_sparc_elf_link_hash_entry*, %struct._bfd_sparc_elf_link_hash_entry** %7, align 8
  %218 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_entry, %struct._bfd_sparc_elf_link_hash_entry* %217, i32 0, i32 0
  %219 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %218, align 8
  store %struct._bfd_sparc_elf_dyn_relocs* %219, %struct._bfd_sparc_elf_dyn_relocs** %8, align 8
  br label %220

220:                                              ; preds = %240, %214
  %221 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %8, align 8
  %222 = icmp ne %struct._bfd_sparc_elf_dyn_relocs* %221, null
  br i1 %222, label %223, label %244

223:                                              ; preds = %220
  %224 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %8, align 8
  %225 = getelementptr inbounds %struct._bfd_sparc_elf_dyn_relocs, %struct._bfd_sparc_elf_dyn_relocs* %224, i32 0, i32 0
  %226 = load %struct.TYPE_30__*, %struct.TYPE_30__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %227, align 8
  store %struct.TYPE_22__* %228, %struct.TYPE_22__** %9, align 8
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %230 = icmp ne %struct.TYPE_22__* %229, null
  br i1 %230, label %231, label %239

231:                                              ; preds = %223
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @SEC_READONLY, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %231
  br label %244

239:                                              ; preds = %231, %223
  br label %240

240:                                              ; preds = %239
  %241 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %8, align 8
  %242 = getelementptr inbounds %struct._bfd_sparc_elf_dyn_relocs, %struct._bfd_sparc_elf_dyn_relocs* %241, i32 0, i32 1
  %243 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %242, align 8
  store %struct._bfd_sparc_elf_dyn_relocs* %243, %struct._bfd_sparc_elf_dyn_relocs** %8, align 8
  br label %220

244:                                              ; preds = %238, %220
  %245 = load %struct._bfd_sparc_elf_dyn_relocs*, %struct._bfd_sparc_elf_dyn_relocs** %8, align 8
  %246 = icmp eq %struct._bfd_sparc_elf_dyn_relocs* %245, null
  br i1 %246, label %247, label %251

247:                                              ; preds = %244
  %248 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %249 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %248, i32 0, i32 4
  store i64 0, i64* %249, align 8
  %250 = load i32, i32* @TRUE, align 4
  store i32 %250, i32* %3, align 4
  br label %297

251:                                              ; preds = %244
  %252 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %253 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %251
  %257 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %258 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %259 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @_bfd_error_handler(i32 %257, i32 %262)
  %264 = load i32, i32* @TRUE, align 4
  store i32 %264, i32* %3, align 4
  br label %297

265:                                              ; preds = %251
  %266 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %267 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @SEC_ALLOC, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %290

277:                                              ; preds = %265
  %278 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %279 = call i64 @SPARC_ELF_RELA_BYTES(%struct._bfd_sparc_elf_link_hash_table* %278)
  %280 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %281 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %280, i32 0, i32 1
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = sext i32 %284 to i64
  %286 = add nsw i64 %285, %279
  %287 = trunc i64 %286 to i32
  store i32 %287, i32* %283, align 4
  %288 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %289 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %288, i32 0, i32 2
  store i32 1, i32* %289, align 8
  br label %290

290:                                              ; preds = %277, %265
  %291 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %6, align 8
  %292 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %291, i32 0, i32 0
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %292, align 8
  store %struct.TYPE_22__* %293, %struct.TYPE_22__** %9, align 8
  %294 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %295 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %296 = call i32 @_bfd_elf_adjust_dynamic_copy(%struct.elf_link_hash_entry* %294, %struct.TYPE_22__* %295)
  store i32 %296, i32* %3, align 4
  br label %297

297:                                              ; preds = %290, %256, %247, %212, %205, %167, %135
  %298 = load i32, i32* %3, align 4
  ret i32 %298
}

declare dso_local %struct._bfd_sparc_elf_link_hash_table* @_bfd_sparc_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @_bfd_error_handler(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @SPARC_ELF_RELA_BYTES(%struct._bfd_sparc_elf_link_hash_table*) #1

declare dso_local i32 @_bfd_elf_adjust_dynamic_copy(%struct.elf_link_hash_entry*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
