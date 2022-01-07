; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_ppc_elf_adjust_dynamic_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_ppc_elf_adjust_dynamic_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64 }
%struct.elf_link_hash_entry = type { i64, i64, i32, %struct.TYPE_22__, i64, %struct.TYPE_32__, %struct.TYPE_27__, i64, i32, i32, i64, i64 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__, %struct.TYPE_18__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_32__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i64, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_27__ = type { %struct.plt_entry* }
%struct.plt_entry = type { %struct.TYPE_26__, %struct.plt_entry* }
%struct.TYPE_26__ = type { i64 }
%struct.ppc_elf_link_hash_table = type { %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_25__ }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32* }
%struct.ppc_elf_dyn_relocs = type { %struct.TYPE_33__*, %struct.ppc_elf_dyn_relocs* }
%struct.TYPE_33__ = type { %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i64, %struct.ppc_elf_dyn_relocs* }

@STT_FUNC = common dso_local global i64 0, align 8
@STV_DEFAULT = common dso_local global i64 0, align 8
@bfd_link_hash_undefweak = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@ELIMINATE_COPY_RELOCS = common dso_local global i64 0, align 8
@SEC_READONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"dynamic variable `%s' is zero size\00", align 1
@SEC_ALLOC = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfd_link_info*, %struct.elf_link_hash_entry*)* @ppc_elf_adjust_dynamic_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_elf_adjust_dynamic_symbol(%struct.bfd_link_info* %0, %struct.elf_link_hash_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf_link_hash_entry*, align 8
  %6 = alloca %struct.ppc_elf_link_hash_table*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.plt_entry*, align 8
  %9 = alloca %struct.ppc_elf_dyn_relocs*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %5, align 8
  %11 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %12 = call %struct.ppc_elf_link_hash_table* @ppc_elf_hash_table(%struct.bfd_link_info* %11)
  store %struct.ppc_elf_link_hash_table* %12, %struct.ppc_elf_link_hash_table** %6, align 8
  %13 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %6, align 8
  %14 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %49

18:                                               ; preds = %2
  %19 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %20 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %18
  %24 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %25 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** %26, align 8
  %28 = icmp ne %struct.TYPE_31__* %27, null
  br i1 %28, label %47, label %29

29:                                               ; preds = %23
  %30 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %31 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %30, i32 0, i32 11
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %36 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %35, i32 0, i32 10
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %41 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %39, %34, %29
  %46 = phi i1 [ false, %34 ], [ false, %29 ], [ %44, %39 ]
  br label %47

47:                                               ; preds = %45, %23, %18
  %48 = phi i1 [ true, %23 ], [ true, %18 ], [ %46, %45 ]
  br label %49

49:                                               ; preds = %47, %2
  %50 = phi i1 [ false, %2 ], [ %48, %47 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @BFD_ASSERT(i32 %51)
  %53 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %54 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @STT_FUNC, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %63, label %58

58:                                               ; preds = %49
  %59 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %60 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %59, i32 0, i32 7
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %113

63:                                               ; preds = %58, %49
  %64 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %65 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 0
  %67 = load %struct.plt_entry*, %struct.plt_entry** %66, align 8
  store %struct.plt_entry* %67, %struct.plt_entry** %8, align 8
  br label %68

68:                                               ; preds = %79, %63
  %69 = load %struct.plt_entry*, %struct.plt_entry** %8, align 8
  %70 = icmp ne %struct.plt_entry* %69, null
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load %struct.plt_entry*, %struct.plt_entry** %8, align 8
  %73 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %83

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.plt_entry*, %struct.plt_entry** %8, align 8
  %81 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %80, i32 0, i32 1
  %82 = load %struct.plt_entry*, %struct.plt_entry** %81, align 8
  store %struct.plt_entry* %82, %struct.plt_entry** %8, align 8
  br label %68

83:                                               ; preds = %77, %68
  %84 = load %struct.plt_entry*, %struct.plt_entry** %8, align 8
  %85 = icmp eq %struct.plt_entry* %84, null
  br i1 %85, label %105, label %86

86:                                               ; preds = %83
  %87 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %88 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %89 = call i64 @SYMBOL_CALLS_LOCAL(%struct.bfd_link_info* %87, %struct.elf_link_hash_entry* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %105, label %91

91:                                               ; preds = %86
  %92 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %93 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @ELF_ST_VISIBILITY(i32 %94)
  %96 = load i64, i64* @STV_DEFAULT, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %91
  %99 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %100 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %98, %86, %83
  %106 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %107 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 0
  store %struct.plt_entry* null, %struct.plt_entry** %108, align 8
  %109 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %110 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %109, i32 0, i32 7
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %105, %98, %91
  %112 = load i32, i32* @TRUE, align 4
  store i32 %112, i32* %3, align 4
  br label %323

113:                                              ; preds = %58
  %114 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %115 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 0
  store %struct.plt_entry* null, %struct.plt_entry** %116, align 8
  br label %117

117:                                              ; preds = %113
  %118 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %119 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_31__*, %struct.TYPE_31__** %120, align 8
  %122 = icmp ne %struct.TYPE_31__* %121, null
  br i1 %122, label %123, label %188

123:                                              ; preds = %117
  %124 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %125 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_31__*, %struct.TYPE_31__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @bfd_link_hash_defined, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %143, label %133

133:                                              ; preds = %123
  %134 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %135 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_31__*, %struct.TYPE_31__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @bfd_link_hash_defweak, align 8
  %142 = icmp eq i64 %140, %141
  br label %143

143:                                              ; preds = %133, %123
  %144 = phi i1 [ true, %123 ], [ %142, %133 ]
  %145 = zext i1 %144 to i32
  %146 = call i32 @BFD_ASSERT(i32 %145)
  %147 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %148 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_31__*, %struct.TYPE_31__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %154, align 8
  %156 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %157 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  store %struct.TYPE_19__* %155, %struct.TYPE_19__** %160, align 8
  %161 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %162 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_31__*, %struct.TYPE_31__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %171 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 1
  store i32 %169, i32* %174, align 8
  %175 = load i64, i64* @ELIMINATE_COPY_RELOCS, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %143
  %178 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %179 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_31__*, %struct.TYPE_31__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %185 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %184, i32 0, i32 4
  store i64 %183, i64* %185, align 8
  br label %186

186:                                              ; preds = %177, %143
  %187 = load i32, i32* @TRUE, align 4
  store i32 %187, i32* %3, align 4
  br label %323

188:                                              ; preds = %117
  %189 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %190 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = load i32, i32* @TRUE, align 4
  store i32 %194, i32* %3, align 4
  br label %323

195:                                              ; preds = %188
  %196 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %197 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %195
  %201 = load i32, i32* @TRUE, align 4
  store i32 %201, i32* %3, align 4
  br label %323

202:                                              ; preds = %195
  %203 = load i64, i64* @ELIMINATE_COPY_RELOCS, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %248

205:                                              ; preds = %202
  %206 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %207 = call %struct.TYPE_24__* @ppc_elf_hash_entry(%struct.elf_link_hash_entry* %206)
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %248, label %211

211:                                              ; preds = %205
  %212 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %213 = call %struct.TYPE_24__* @ppc_elf_hash_entry(%struct.elf_link_hash_entry* %212)
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 1
  %215 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %214, align 8
  store %struct.ppc_elf_dyn_relocs* %215, %struct.ppc_elf_dyn_relocs** %9, align 8
  br label %216

216:                                              ; preds = %236, %211
  %217 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %9, align 8
  %218 = icmp ne %struct.ppc_elf_dyn_relocs* %217, null
  br i1 %218, label %219, label %240

219:                                              ; preds = %216
  %220 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %9, align 8
  %221 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %220, i32 0, i32 0
  %222 = load %struct.TYPE_33__*, %struct.TYPE_33__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %223, align 8
  store %struct.TYPE_23__* %224, %struct.TYPE_23__** %7, align 8
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %226 = icmp ne %struct.TYPE_23__* %225, null
  br i1 %226, label %227, label %235

227:                                              ; preds = %219
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @SEC_READONLY, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %227
  br label %240

235:                                              ; preds = %227, %219
  br label %236

236:                                              ; preds = %235
  %237 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %9, align 8
  %238 = getelementptr inbounds %struct.ppc_elf_dyn_relocs, %struct.ppc_elf_dyn_relocs* %237, i32 0, i32 1
  %239 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %238, align 8
  store %struct.ppc_elf_dyn_relocs* %239, %struct.ppc_elf_dyn_relocs** %9, align 8
  br label %216

240:                                              ; preds = %234, %216
  %241 = load %struct.ppc_elf_dyn_relocs*, %struct.ppc_elf_dyn_relocs** %9, align 8
  %242 = icmp eq %struct.ppc_elf_dyn_relocs* %241, null
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %245 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %244, i32 0, i32 4
  store i64 0, i64* %245, align 8
  %246 = load i32, i32* @TRUE, align 4
  store i32 %246, i32* %3, align 4
  br label %323

247:                                              ; preds = %240
  br label %248

248:                                              ; preds = %247, %205, %202
  %249 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %250 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %262

253:                                              ; preds = %248
  %254 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %255 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %256 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  %260 = call i32 @_bfd_error_handler(i32 %254, i8* %259)
  %261 = load i32, i32* @TRUE, align 4
  store i32 %261, i32* %3, align 4
  br label %323

262:                                              ; preds = %248
  %263 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %264 = call %struct.TYPE_24__* @ppc_elf_hash_entry(%struct.elf_link_hash_entry* %263)
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %262
  %269 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %6, align 8
  %270 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %269, i32 0, i32 3
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** %270, align 8
  store %struct.TYPE_23__* %271, %struct.TYPE_23__** %7, align 8
  br label %276

272:                                              ; preds = %262
  %273 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %6, align 8
  %274 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %273, i32 0, i32 2
  %275 = load %struct.TYPE_23__*, %struct.TYPE_23__** %274, align 8
  store %struct.TYPE_23__* %275, %struct.TYPE_23__** %7, align 8
  br label %276

276:                                              ; preds = %272, %268
  %277 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %278 = icmp ne %struct.TYPE_23__* %277, null
  %279 = zext i1 %278 to i32
  %280 = call i32 @BFD_ASSERT(i32 %279)
  %281 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %282 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @SEC_ALLOC, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %319

292:                                              ; preds = %276
  %293 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %294 = call %struct.TYPE_24__* @ppc_elf_hash_entry(%struct.elf_link_hash_entry* %293)
  %295 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %302

298:                                              ; preds = %292
  %299 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %6, align 8
  %300 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %299, i32 0, i32 1
  %301 = load %struct.TYPE_23__*, %struct.TYPE_23__** %300, align 8
  store %struct.TYPE_23__* %301, %struct.TYPE_23__** %10, align 8
  br label %306

302:                                              ; preds = %292
  %303 = load %struct.ppc_elf_link_hash_table*, %struct.ppc_elf_link_hash_table** %6, align 8
  %304 = getelementptr inbounds %struct.ppc_elf_link_hash_table, %struct.ppc_elf_link_hash_table* %303, i32 0, i32 0
  %305 = load %struct.TYPE_23__*, %struct.TYPE_23__** %304, align 8
  store %struct.TYPE_23__* %305, %struct.TYPE_23__** %10, align 8
  br label %306

306:                                              ; preds = %302, %298
  %307 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %308 = icmp ne %struct.TYPE_23__* %307, null
  %309 = zext i1 %308 to i32
  %310 = call i32 @BFD_ASSERT(i32 %309)
  %311 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %312 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = sext i32 %313 to i64
  %315 = add i64 %314, 4
  %316 = trunc i64 %315 to i32
  store i32 %316, i32* %312, align 4
  %317 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %318 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %317, i32 0, i32 2
  store i32 1, i32* %318, align 8
  br label %319

319:                                              ; preds = %306, %276
  %320 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %321 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %322 = call i32 @_bfd_elf_adjust_dynamic_copy(%struct.elf_link_hash_entry* %320, %struct.TYPE_23__* %321)
  store i32 %322, i32* %3, align 4
  br label %323

323:                                              ; preds = %319, %253, %243, %200, %193, %186, %111
  %324 = load i32, i32* %3, align 4
  ret i32 %324
}

declare dso_local %struct.ppc_elf_link_hash_table* @ppc_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i64 @SYMBOL_CALLS_LOCAL(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local i64 @ELF_ST_VISIBILITY(i32) #1

declare dso_local %struct.TYPE_24__* @ppc_elf_hash_entry(%struct.elf_link_hash_entry*) #1

declare dso_local i32 @_bfd_error_handler(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @_bfd_elf_adjust_dynamic_copy(%struct.elf_link_hash_entry*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
