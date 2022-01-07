; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_vxworks_adjust_dynamic_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_vxworks_adjust_dynamic_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64 }
%struct.elf_link_hash_entry = type { i32, i32, i64, %struct.TYPE_19__, %struct.TYPE_30__, i32, i64, i64, %struct.TYPE_22__, i32, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_22__ = type { i64 }
%struct.mips_elf_link_hash_entry = type { i64, i64 }
%struct.mips_elf_link_hash_table = type { i64, i64, i32, %struct.TYPE_20__*, %struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_16__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i32* }

@STT_FUNC = common dso_local global i64 0, align 8
@STV_DEFAULT = common dso_local global i64 0, align 8
@bfd_link_hash_undefweak = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@SEC_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_mips_vxworks_adjust_dynamic_symbol(%struct.bfd_link_info* %0, %struct.elf_link_hash_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf_link_hash_entry*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mips_elf_link_hash_entry*, align 8
  %8 = alloca %struct.mips_elf_link_hash_table*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %5, align 8
  %9 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %10 = call %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info* %9)
  store %struct.mips_elf_link_hash_table* %10, %struct.mips_elf_link_hash_table** %8, align 8
  %11 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %12 = call %struct.TYPE_21__* @elf_hash_table(%struct.bfd_link_info* %11)
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %16 = bitcast %struct.elf_link_hash_entry* %15 to %struct.mips_elf_link_hash_entry*
  store %struct.mips_elf_link_hash_entry* %16, %struct.mips_elf_link_hash_entry** %7, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %55

19:                                               ; preds = %2
  %20 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %21 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %53, label %24

24:                                               ; preds = %19
  %25 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %26 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %53, label %29

29:                                               ; preds = %24
  %30 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %31 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %32, align 8
  %34 = icmp ne %struct.TYPE_29__* %33, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %29
  %36 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %37 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %42 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %47 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %45, %40, %35
  %52 = phi i1 [ false, %40 ], [ false, %35 ], [ %50, %45 ]
  br label %53

53:                                               ; preds = %51, %29, %24, %19
  %54 = phi i1 [ true, %29 ], [ true, %24 ], [ true, %19 ], [ %52, %51 ]
  br label %55

55:                                               ; preds = %53, %2
  %56 = phi i1 [ false, %2 ], [ %54, %53 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @BFD_ASSERT(i32 %57)
  %59 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %7, align 8
  %60 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %55
  %64 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %65 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %102, label %68

68:                                               ; preds = %63
  %69 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %70 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @STT_FUNC, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %102

74:                                               ; preds = %68
  %75 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %7, align 8
  %76 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %102

79:                                               ; preds = %74, %55
  %80 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %81 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %79
  %85 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %86 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %84
  %90 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %91 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %89
  %95 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %96 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %95, i32 0, i32 10
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %101 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  br label %131

102:                                              ; preds = %94, %89, %84, %79, %74, %68, %63
  %103 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %104 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %130

107:                                              ; preds = %102
  %108 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %109 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %110 = call i64 @SYMBOL_CALLS_LOCAL(%struct.bfd_link_info* %108, %struct.elf_link_hash_entry* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %107
  %113 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %114 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @ELF_ST_VISIBILITY(i32 %115)
  %117 = load i64, i64* @STV_DEFAULT, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %112
  %120 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %121 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %119, %107
  %127 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %128 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %127, i32 0, i32 0
  store i32 0, i32* %128, align 8
  %129 = load i32, i32* @TRUE, align 4
  store i32 %129, i32* %3, align 4
  br label %373

130:                                              ; preds = %119, %112, %102
  br label %131

131:                                              ; preds = %130, %99
  %132 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %133 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %250

136:                                              ; preds = %131
  %137 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %8, align 8
  %138 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %137, i32 0, i32 7
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %167

143:                                              ; preds = %136
  %144 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %8, align 8
  %145 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %8, align 8
  %148 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %147, i32 0, i32 7
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, %146
  store i64 %152, i64* %150, align 8
  %153 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %154 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %166, label %157

157:                                              ; preds = %143
  %158 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %8, align 8
  %159 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %158, i32 0, i32 4
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = add i64 %163, 8
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %161, align 4
  br label %166

166:                                              ; preds = %157, %143
  br label %167

167:                                              ; preds = %166, %136
  %168 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %8, align 8
  %169 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %168, i32 0, i32 7
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %174 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %173, i32 0, i32 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 0
  store i64 %172, i64* %175, align 8
  %176 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %8, align 8
  %177 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %8, align 8
  %180 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %179, i32 0, i32 7
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %183, %178
  store i64 %184, i64* %182, align 8
  %185 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %186 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %220, label %189

189:                                              ; preds = %167
  %190 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %8, align 8
  %191 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %190, i32 0, i32 7
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %191, align 8
  %193 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %194 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 1
  store %struct.TYPE_16__* %192, %struct.TYPE_16__** %197, align 8
  %198 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %199 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %198, i32 0, i32 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %203 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  store i64 %201, i64* %206, align 8
  %207 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %208 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %219, label %211

211:                                              ; preds = %189
  %212 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %213 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 %217, 8
  store i64 %218, i64* %216, align 8
  br label %219

219:                                              ; preds = %211, %189
  br label %220

220:                                              ; preds = %219, %167
  %221 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %8, align 8
  %222 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %221, i32 0, i32 6
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, 4
  store i32 %226, i32* %224, align 4
  %227 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %8, align 8
  %228 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %227, i32 0, i32 5
  %229 = load %struct.TYPE_24__*, %struct.TYPE_24__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = add i64 %232, 4
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %230, align 4
  %235 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %236 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %248, label %239

239:                                              ; preds = %220
  %240 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %8, align 8
  %241 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %240, i32 0, i32 4
  %242 = load %struct.TYPE_25__*, %struct.TYPE_25__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  %246 = add i64 %245, 12
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %243, align 4
  br label %248

248:                                              ; preds = %239, %220
  %249 = load i32, i32* @TRUE, align 4
  store i32 %249, i32* %3, align 4
  br label %373

250:                                              ; preds = %131
  %251 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %252 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @STT_FUNC, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %278

256:                                              ; preds = %250
  %257 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %258 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %257, i32 0, i32 7
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %278

261:                                              ; preds = %256
  %262 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %263 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %262, i32 0, i32 6
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %278

266:                                              ; preds = %261
  %267 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %268 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 8
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %278, label %271

271:                                              ; preds = %266
  %272 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %273 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 0
  store i64 0, i64* %276, align 8
  %277 = load i32, i32* @TRUE, align 4
  store i32 %277, i32* %3, align 4
  br label %373

278:                                              ; preds = %266, %261, %256, %250
  %279 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %280 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %279, i32 0, i32 4
  %281 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_29__*, %struct.TYPE_29__** %281, align 8
  %283 = icmp ne %struct.TYPE_29__* %282, null
  br i1 %283, label %284, label %337

284:                                              ; preds = %278
  %285 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %286 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %285, i32 0, i32 4
  %287 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %286, i32 0, i32 0
  %288 = load %struct.TYPE_29__*, %struct.TYPE_29__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @bfd_link_hash_defined, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %304, label %294

294:                                              ; preds = %284
  %295 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %296 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %295, i32 0, i32 4
  %297 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %296, i32 0, i32 0
  %298 = load %struct.TYPE_29__*, %struct.TYPE_29__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @bfd_link_hash_defweak, align 8
  %303 = icmp eq i64 %301, %302
  br label %304

304:                                              ; preds = %294, %284
  %305 = phi i1 [ true, %284 ], [ %303, %294 ]
  %306 = zext i1 %305 to i32
  %307 = call i32 @BFD_ASSERT(i32 %306)
  %308 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %309 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %308, i32 0, i32 4
  %310 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %309, i32 0, i32 0
  %311 = load %struct.TYPE_29__*, %struct.TYPE_29__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %314, i32 0, i32 1
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %315, align 8
  %317 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %318 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %317, i32 0, i32 3
  %319 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i32 0, i32 1
  store %struct.TYPE_16__* %316, %struct.TYPE_16__** %321, align 8
  %322 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %323 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %322, i32 0, i32 4
  %324 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %323, i32 0, i32 0
  %325 = load %struct.TYPE_29__*, %struct.TYPE_29__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %332 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %331, i32 0, i32 3
  %333 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %334, i32 0, i32 0
  store i64 %330, i64* %335, align 8
  %336 = load i32, i32* @TRUE, align 4
  store i32 %336, i32* %3, align 4
  br label %373

337:                                              ; preds = %278
  %338 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %339 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %337
  %343 = load i32, i32* @TRUE, align 4
  store i32 %343, i32* %3, align 4
  br label %373

344:                                              ; preds = %337
  %345 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %346 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %345, i32 0, i32 3
  %347 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %348, i32 0, i32 1
  %350 = load %struct.TYPE_16__*, %struct.TYPE_16__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = load i32, i32* @SEC_ALLOC, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %367

356:                                              ; preds = %344
  %357 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %8, align 8
  %358 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %357, i32 0, i32 3
  %359 = load %struct.TYPE_20__*, %struct.TYPE_20__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = sext i32 %361 to i64
  %363 = add i64 %362, 4
  %364 = trunc i64 %363 to i32
  store i32 %364, i32* %360, align 4
  %365 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %366 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %365, i32 0, i32 1
  store i32 1, i32* %366, align 4
  br label %367

367:                                              ; preds = %356, %344
  %368 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %369 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %8, align 8
  %370 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 8
  %372 = call i32 @_bfd_elf_adjust_dynamic_copy(%struct.elf_link_hash_entry* %368, i32 %371)
  store i32 %372, i32* %3, align 4
  br label %373

373:                                              ; preds = %367, %342, %304, %271, %248, %126
  %374 = load i32, i32* %3, align 4
  ret i32 %374
}

declare dso_local %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_21__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i64 @SYMBOL_CALLS_LOCAL(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local i64 @ELF_ST_VISIBILITY(i32) #1

declare dso_local i32 @_bfd_elf_adjust_dynamic_copy(%struct.elf_link_hash_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
