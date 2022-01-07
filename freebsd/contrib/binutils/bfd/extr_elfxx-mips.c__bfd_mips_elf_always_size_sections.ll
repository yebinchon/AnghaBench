; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_always_size_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_always_size_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_19__* }
%struct.bfd_link_info = type { %struct.TYPE_18__*, i64 }
%struct.mips_got_info = type { i32, i32, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.mips_elf_count_tls_arg = type { i64, %struct.bfd_link_info* }
%struct.mips_elf_link_hash_table = type { i32, i64, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__* }

@.str = private unnamed_addr constant [9 x i8] c".reginfo\00", align 1
@mips_elf_check_mips16_stubs = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MIPS_FUNCTION_STUB_BIG_SIZE = common dso_local global i32 0, align 4
@MIPS_FUNCTION_STUB_NORMAL_SIZE = common dso_local global i32 0, align 4
@mips_elf_count_global_tls_entries = common dso_local global i32 0, align 4
@mips_elf_initialize_tls_index = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_mips_elf_always_size_sections(%struct.TYPE_18__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.mips_got_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.mips_elf_count_tls_arg, align 8
  %16 = alloca %struct.mips_elf_link_hash_table*, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %19 = call %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info* %18)
  store %struct.mips_elf_link_hash_table* %19, %struct.mips_elf_link_hash_table** %16, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %21 = call %struct.TYPE_19__* @bfd_get_section_by_name(%struct.TYPE_18__* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %6, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %23 = icmp ne %struct.TYPE_19__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %27 = call i32 @bfd_set_section_size(%struct.TYPE_18__* %25, %struct.TYPE_19__* %26, i32 4)
  br label %28

28:                                               ; preds = %24, %2
  %29 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %30 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %28
  %34 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %35 = call %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info* %34)
  %36 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %41 = call %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info* %40)
  %42 = load i32, i32* @mips_elf_check_mips16_stubs, align 4
  %43 = call i32 @mips_elf_link_hash_traverse(%struct.mips_elf_link_hash_table* %41, i32 %42, i32* null)
  br label %44

44:                                               ; preds = %39, %33, %28
  %45 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %46 = call %struct.TYPE_20__* @elf_hash_table(%struct.bfd_link_info* %45)
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  store %struct.TYPE_18__* %48, %struct.TYPE_18__** %7, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %50 = icmp eq %struct.TYPE_18__* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %3, align 4
  br label %253

53:                                               ; preds = %44
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %55 = call %struct.mips_got_info* @mips_elf_got_info(%struct.TYPE_18__* %54, %struct.TYPE_19__** %8)
  store %struct.mips_got_info* %55, %struct.mips_got_info** %9, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %57 = icmp eq %struct.TYPE_19__* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %3, align 4
  br label %253

60:                                               ; preds = %53
  %61 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %62 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %61, i32 0, i32 0
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  store %struct.TYPE_18__* %63, %struct.TYPE_18__** %14, align 8
  br label %64

64:                                               ; preds = %95, %60
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %66 = icmp ne %struct.TYPE_18__* %65, null
  br i1 %66, label %67, label %99

67:                                               ; preds = %64
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  store %struct.TYPE_19__* %70, %struct.TYPE_19__** %17, align 8
  br label %71

71:                                               ; preds = %90, %67
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %73 = icmp ne %struct.TYPE_19__* %72, null
  br i1 %73, label %74, label %94

74:                                               ; preds = %71
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @SEC_ALLOC, align 4
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %90

82:                                               ; preds = %74
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 15
  %87 = and i32 %86, -16
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %82, %81
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %92, align 8
  store %struct.TYPE_19__* %93, %struct.TYPE_19__** %17, align 8
  br label %71

94:                                               ; preds = %71
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %97, align 8
  store %struct.TYPE_18__* %98, %struct.TYPE_18__** %14, align 8
  br label %64

99:                                               ; preds = %64
  %100 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %101 = call i32 @mips_elf_sort_hash_table(%struct.bfd_link_info* %100, i32 1)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* @FALSE, align 4
  store i32 %104, i32* %3, align 4
  br label %253

105:                                              ; preds = %99
  %106 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %107 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %106, i32 0, i32 5
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %107, align 8
  %109 = icmp ne %struct.TYPE_17__* %108, null
  br i1 %109, label %110, label %121

110:                                              ; preds = %105
  %111 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %112 = call %struct.TYPE_20__* @elf_hash_table(%struct.bfd_link_info* %111)
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %116 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %115, i32 0, i32 5
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %114, %119
  store i32 %120, i32* %10, align 4
  br label %122

121:                                              ; preds = %105
  store i32 0, i32* %10, align 4
  br label %122

122:                                              ; preds = %121, %110
  %123 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %124 = call %struct.TYPE_20__* @elf_hash_table(%struct.bfd_link_info* %123)
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %128 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %129 = call i32 @count_section_dynsyms(%struct.TYPE_18__* %127, %struct.bfd_link_info* %128)
  %130 = add nsw i32 %126, %129
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp sgt i32 %131, 65536
  br i1 %132, label %133, label %135

133:                                              ; preds = %122
  %134 = load i32, i32* @MIPS_FUNCTION_STUB_BIG_SIZE, align 4
  br label %137

135:                                              ; preds = %122
  %136 = load i32, i32* @MIPS_FUNCTION_STUB_NORMAL_SIZE, align 4
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi i32 [ %134, %133 ], [ %136, %135 ]
  %139 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %16, align 8
  %140 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %16, align 8
  %142 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 1
  %146 = mul nsw i32 %143, %145
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %11, align 4
  %149 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %16, align 8
  %150 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %137
  store i32 0, i32* %12, align 4
  br label %158

154:                                              ; preds = %137
  %155 = load i32, i32* %11, align 4
  %156 = ashr i32 %155, 16
  %157 = add nsw i32 %156, 5
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %154, %153
  %159 = load i32, i32* %12, align 4
  %160 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %161 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, %159
  store i32 %163, i32* %161, align 8
  %164 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %165 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %168 = call i32 @MIPS_ELF_GOT_SIZE(%struct.TYPE_18__* %167)
  %169 = mul nsw i32 %166, %168
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, %169
  store i32 %173, i32* %171, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %176 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* %10, align 4
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %179 = call i32 @MIPS_ELF_GOT_SIZE(%struct.TYPE_18__* %178)
  %180 = mul nsw i32 %177, %179
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, %180
  store i32 %184, i32* %182, align 4
  %185 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %186 = getelementptr inbounds %struct.mips_elf_count_tls_arg, %struct.mips_elf_count_tls_arg* %15, i32 0, i32 1
  store %struct.bfd_link_info* %185, %struct.bfd_link_info** %186, align 8
  %187 = getelementptr inbounds %struct.mips_elf_count_tls_arg, %struct.mips_elf_count_tls_arg* %15, i32 0, i32 0
  store i64 0, i64* %187, align 8
  %188 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %189 = call %struct.TYPE_20__* @elf_hash_table(%struct.bfd_link_info* %188)
  %190 = load i32, i32* @mips_elf_count_global_tls_entries, align 4
  %191 = call i32 @elf_link_hash_traverse(%struct.TYPE_20__* %189, i32 %190, %struct.mips_elf_count_tls_arg* %15)
  %192 = getelementptr inbounds %struct.mips_elf_count_tls_arg, %struct.mips_elf_count_tls_arg* %15, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %195 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %197, %193
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %195, align 8
  %200 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %201 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %204 = call i32 @MIPS_ELF_GOT_SIZE(%struct.TYPE_18__* %203)
  %205 = mul nsw i32 %202, %204
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, %205
  store i32 %209, i32* %207, align 4
  %210 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %211 = call i32 @mips_elf_resolve_final_got_entries(%struct.mips_got_info* %210)
  %212 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %16, align 8
  %213 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %235, label %216

216:                                              ; preds = %158
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %222 = call i64 @MIPS_ELF_GOT_MAX_SIZE(%struct.bfd_link_info* %221)
  %223 = icmp sgt i64 %220, %222
  br i1 %223, label %224, label %235

224:                                              ; preds = %216
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %226 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %227 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %229 = load i32, i32* %12, align 4
  %230 = call i32 @mips_elf_multi_got(%struct.TYPE_18__* %225, %struct.bfd_link_info* %226, %struct.mips_got_info* %227, %struct.TYPE_19__* %228, i32 %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %224
  %233 = load i32, i32* @FALSE, align 4
  store i32 %233, i32* %3, align 4
  br label %253

234:                                              ; preds = %224
  br label %251

235:                                              ; preds = %216, %158
  %236 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %237 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %240 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = add nsw i32 %238, %241
  %243 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %244 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %243, i32 0, i32 3
  store i32 %242, i32* %244, align 4
  %245 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %246 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @mips_elf_initialize_tls_index, align 4
  %249 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %250 = call i32 @htab_traverse(i32 %247, i32 %248, %struct.mips_got_info* %249)
  br label %251

251:                                              ; preds = %235, %234
  %252 = load i32, i32* @TRUE, align 4
  store i32 %252, i32* %3, align 4
  br label %253

253:                                              ; preds = %251, %232, %103, %58, %51
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_19__* @bfd_get_section_by_name(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @bfd_set_section_size(%struct.TYPE_18__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @mips_elf_link_hash_traverse(%struct.mips_elf_link_hash_table*, i32, i32*) #1

declare dso_local %struct.TYPE_20__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.mips_got_info* @mips_elf_got_info(%struct.TYPE_18__*, %struct.TYPE_19__**) #1

declare dso_local i32 @mips_elf_sort_hash_table(%struct.bfd_link_info*, i32) #1

declare dso_local i32 @count_section_dynsyms(%struct.TYPE_18__*, %struct.bfd_link_info*) #1

declare dso_local i32 @MIPS_ELF_GOT_SIZE(%struct.TYPE_18__*) #1

declare dso_local i32 @elf_link_hash_traverse(%struct.TYPE_20__*, i32, %struct.mips_elf_count_tls_arg*) #1

declare dso_local i32 @mips_elf_resolve_final_got_entries(%struct.mips_got_info*) #1

declare dso_local i64 @MIPS_ELF_GOT_MAX_SIZE(%struct.bfd_link_info*) #1

declare dso_local i32 @mips_elf_multi_got(%struct.TYPE_18__*, %struct.bfd_link_info*, %struct.mips_got_info*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @htab_traverse(i32, i32, %struct.mips_got_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
