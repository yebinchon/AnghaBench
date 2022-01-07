; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-i386.c_elf_i386_adjust_dynamic_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-i386.c_elf_i386_adjust_dynamic_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64, i64 }
%struct.elf_link_hash_entry = type { i64, i64, i32, %struct.TYPE_18__, i64, %struct.TYPE_26__, %struct.TYPE_21__, i64, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__, %struct.TYPE_28__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_29__*, i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, %struct.TYPE_29__* }
%struct.TYPE_21__ = type { i64, i8* }
%struct.elf_i386_link_hash_table = type { %struct.TYPE_20__*, %struct.TYPE_19__*, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.elf_i386_link_hash_entry = type { %struct.elf_i386_dyn_relocs* }
%struct.elf_i386_dyn_relocs = type { %struct.TYPE_27__*, %struct.elf_i386_dyn_relocs* }
%struct.TYPE_27__ = type { %struct.TYPE_20__* }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfd_link_info*, %struct.elf_link_hash_entry*)* @elf_i386_adjust_dynamic_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_i386_adjust_dynamic_symbol(%struct.bfd_link_info* %0, %struct.elf_link_hash_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf_link_hash_entry*, align 8
  %6 = alloca %struct.elf_i386_link_hash_table*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.elf_i386_link_hash_entry*, align 8
  %9 = alloca %struct.elf_i386_dyn_relocs*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %5, align 8
  %10 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %11 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @STT_FUNC, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %17 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %53

20:                                               ; preds = %15, %2
  %21 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %22 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %20
  %27 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %28 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %29 = call i64 @SYMBOL_CALLS_LOCAL(%struct.bfd_link_info* %27, %struct.elf_link_hash_entry* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %26
  %32 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %33 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @ELF_ST_VISIBILITY(i32 %34)
  %36 = load i64, i64* @STV_DEFAULT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %31
  %39 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %40 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %38, %26, %20
  %46 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %47 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %48, align 8
  %49 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %50 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %49, i32 0, i32 7
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %45, %38, %31
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %3, align 4
  br label %248

53:                                               ; preds = %15
  %54 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %55 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %56, align 8
  br label %57

57:                                               ; preds = %53
  %58 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %59 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %60, align 8
  %62 = icmp ne %struct.TYPE_25__* %61, null
  br i1 %62, label %63, label %133

63:                                               ; preds = %57
  %64 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %65 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @bfd_link_hash_defined, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %83, label %73

73:                                               ; preds = %63
  %74 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %75 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @bfd_link_hash_defweak, align 8
  %82 = icmp eq i64 %80, %81
  br label %83

83:                                               ; preds = %73, %63
  %84 = phi i1 [ true, %63 ], [ %82, %73 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @BFD_ASSERT(i32 %85)
  %87 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %88 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %94, align 8
  %96 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %97 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  store %struct.TYPE_29__* %95, %struct.TYPE_29__** %100, align 8
  %101 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %102 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %111 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  store i32 %109, i32* %114, align 8
  %115 = load i64, i64* @ELIMINATE_COPY_RELOCS, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %83
  %118 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %119 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %117, %83
  %123 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %124 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %130 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %129, i32 0, i32 4
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %122, %117
  %132 = load i32, i32* @TRUE, align 4
  store i32 %132, i32* %3, align 4
  br label %248

133:                                              ; preds = %57
  %134 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %135 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i32, i32* @TRUE, align 4
  store i32 %139, i32* %3, align 4
  br label %248

140:                                              ; preds = %133
  %141 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %142 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %140
  %146 = load i32, i32* @TRUE, align 4
  store i32 %146, i32* %3, align 4
  br label %248

147:                                              ; preds = %140
  %148 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %149 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %154 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %153, i32 0, i32 4
  store i64 0, i64* %154, align 8
  %155 = load i32, i32* @TRUE, align 4
  store i32 %155, i32* %3, align 4
  br label %248

156:                                              ; preds = %147
  %157 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %158 = call %struct.elf_i386_link_hash_table* @elf_i386_hash_table(%struct.bfd_link_info* %157)
  store %struct.elf_i386_link_hash_table* %158, %struct.elf_i386_link_hash_table** %6, align 8
  %159 = load i64, i64* @ELIMINATE_COPY_RELOCS, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %204

161:                                              ; preds = %156
  %162 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %6, align 8
  %163 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %204, label %166

166:                                              ; preds = %161
  %167 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %168 = bitcast %struct.elf_link_hash_entry* %167 to %struct.elf_i386_link_hash_entry*
  store %struct.elf_i386_link_hash_entry* %168, %struct.elf_i386_link_hash_entry** %8, align 8
  %169 = load %struct.elf_i386_link_hash_entry*, %struct.elf_i386_link_hash_entry** %8, align 8
  %170 = getelementptr inbounds %struct.elf_i386_link_hash_entry, %struct.elf_i386_link_hash_entry* %169, i32 0, i32 0
  %171 = load %struct.elf_i386_dyn_relocs*, %struct.elf_i386_dyn_relocs** %170, align 8
  store %struct.elf_i386_dyn_relocs* %171, %struct.elf_i386_dyn_relocs** %9, align 8
  br label %172

172:                                              ; preds = %192, %166
  %173 = load %struct.elf_i386_dyn_relocs*, %struct.elf_i386_dyn_relocs** %9, align 8
  %174 = icmp ne %struct.elf_i386_dyn_relocs* %173, null
  br i1 %174, label %175, label %196

175:                                              ; preds = %172
  %176 = load %struct.elf_i386_dyn_relocs*, %struct.elf_i386_dyn_relocs** %9, align 8
  %177 = getelementptr inbounds %struct.elf_i386_dyn_relocs, %struct.elf_i386_dyn_relocs* %176, i32 0, i32 0
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %179, align 8
  store %struct.TYPE_20__* %180, %struct.TYPE_20__** %7, align 8
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %182 = icmp ne %struct.TYPE_20__* %181, null
  br i1 %182, label %183, label %191

183:                                              ; preds = %175
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @SEC_READONLY, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %183
  br label %196

191:                                              ; preds = %183, %175
  br label %192

192:                                              ; preds = %191
  %193 = load %struct.elf_i386_dyn_relocs*, %struct.elf_i386_dyn_relocs** %9, align 8
  %194 = getelementptr inbounds %struct.elf_i386_dyn_relocs, %struct.elf_i386_dyn_relocs* %193, i32 0, i32 1
  %195 = load %struct.elf_i386_dyn_relocs*, %struct.elf_i386_dyn_relocs** %194, align 8
  store %struct.elf_i386_dyn_relocs* %195, %struct.elf_i386_dyn_relocs** %9, align 8
  br label %172

196:                                              ; preds = %190, %172
  %197 = load %struct.elf_i386_dyn_relocs*, %struct.elf_i386_dyn_relocs** %9, align 8
  %198 = icmp eq %struct.elf_i386_dyn_relocs* %197, null
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %201 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %200, i32 0, i32 4
  store i64 0, i64* %201, align 8
  %202 = load i32, i32* @TRUE, align 4
  store i32 %202, i32* %3, align 4
  br label %248

203:                                              ; preds = %196
  br label %204

204:                                              ; preds = %203, %161, %156
  %205 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %206 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %204
  %210 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %211 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %212 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @_bfd_error_handler(i32 %210, i32 %215)
  %217 = load i32, i32* @TRUE, align 4
  store i32 %217, i32* %3, align 4
  br label %248

218:                                              ; preds = %204
  %219 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %220 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_29__*, %struct.TYPE_29__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @SEC_ALLOC, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %241

230:                                              ; preds = %218
  %231 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %6, align 8
  %232 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %231, i32 0, i32 1
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = add i64 %236, 4
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %234, align 4
  %239 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %240 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %239, i32 0, i32 2
  store i32 1, i32* %240, align 8
  br label %241

241:                                              ; preds = %230, %218
  %242 = load %struct.elf_i386_link_hash_table*, %struct.elf_i386_link_hash_table** %6, align 8
  %243 = getelementptr inbounds %struct.elf_i386_link_hash_table, %struct.elf_i386_link_hash_table* %242, i32 0, i32 0
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %243, align 8
  store %struct.TYPE_20__* %244, %struct.TYPE_20__** %7, align 8
  %245 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %247 = call i32 @_bfd_elf_adjust_dynamic_copy(%struct.elf_link_hash_entry* %245, %struct.TYPE_20__* %246)
  store i32 %247, i32* %3, align 4
  br label %248

248:                                              ; preds = %241, %209, %199, %152, %145, %138, %131, %51
  %249 = load i32, i32* %3, align 4
  ret i32 %249
}

declare dso_local i64 @SYMBOL_CALLS_LOCAL(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local i64 @ELF_ST_VISIBILITY(i32) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local %struct.elf_i386_link_hash_table* @elf_i386_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @_bfd_error_handler(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @_bfd_elf_adjust_dynamic_copy(%struct.elf_link_hash_entry*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
