; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_compute_section_file_positions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_compute_section_file_positions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64 }
%struct.bfd_link_info = type { i32 }
%struct.elf_backend_data = type { i32 (%struct.TYPE_19__*, %struct.bfd_link_info.0*)*, i32 (%struct.TYPE_19__*, %struct.bfd_link_info.1*)* }
%struct.bfd_link_info.0 = type opaque
%struct.bfd_link_info.1 = type opaque
%struct.bfd_strtab_hash = type { i32 }
%struct.TYPE_20__ = type { i64, i32, i32, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__, %struct.TYPE_20__, %struct.TYPE_20__, %struct.TYPE_20__ }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@elf_fake_sections = common dso_local global i32 0, align 4
@EXEC_P = common dso_local global i32 0, align 4
@DYNAMIC = common dso_local global i32 0, align 4
@bfd_elf_set_group_contents = common dso_local global i32 0, align 4
@SHT_STRTAB = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_elf_compute_section_file_positions(%struct.TYPE_19__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.elf_backend_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bfd_strtab_hash*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = call %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_19__* %13)
  store %struct.elf_backend_data* %14, %struct.elf_backend_data** %6, align 8
  store %struct.bfd_strtab_hash* null, %struct.bfd_strtab_hash** %8, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i64, i64* @TRUE, align 8
  store i64 %20, i64* %3, align 8
  br label %201

21:                                               ; preds = %2
  %22 = load %struct.elf_backend_data*, %struct.elf_backend_data** %6, align 8
  %23 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %22, i32 0, i32 1
  %24 = load i32 (%struct.TYPE_19__*, %struct.bfd_link_info.1*)*, i32 (%struct.TYPE_19__*, %struct.bfd_link_info.1*)** %23, align 8
  %25 = icmp ne i32 (%struct.TYPE_19__*, %struct.bfd_link_info.1*)* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.elf_backend_data*, %struct.elf_backend_data** %6, align 8
  %28 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %27, i32 0, i32 1
  %29 = load i32 (%struct.TYPE_19__*, %struct.bfd_link_info.1*)*, i32 (%struct.TYPE_19__*, %struct.bfd_link_info.1*)** %28, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %31 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %32 = bitcast %struct.bfd_link_info* %31 to %struct.bfd_link_info.1*
  %33 = call i32 %29(%struct.TYPE_19__* %30, %struct.bfd_link_info.1* %32)
  br label %34

34:                                               ; preds = %26, %21
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %36 = call i32 @prep_headers(%struct.TYPE_19__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* @FALSE, align 8
  store i64 %39, i64* %3, align 8
  br label %201

40:                                               ; preds = %34
  %41 = load %struct.elf_backend_data*, %struct.elf_backend_data** %6, align 8
  %42 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_19__*, %struct.bfd_link_info.0*)*, i32 (%struct.TYPE_19__*, %struct.bfd_link_info.0*)** %42, align 8
  %44 = icmp ne i32 (%struct.TYPE_19__*, %struct.bfd_link_info.0*)* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.elf_backend_data*, %struct.elf_backend_data** %6, align 8
  %47 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_19__*, %struct.bfd_link_info.0*)*, i32 (%struct.TYPE_19__*, %struct.bfd_link_info.0*)** %47, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %50 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %51 = bitcast %struct.bfd_link_info* %50 to %struct.bfd_link_info.0*
  %52 = call i32 %48(%struct.TYPE_19__* %49, %struct.bfd_link_info.0* %51)
  br label %53

53:                                               ; preds = %45, %40
  %54 = load i64, i64* @FALSE, align 8
  store i64 %54, i64* %7, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %56 = load i32, i32* @elf_fake_sections, align 4
  %57 = call i32 @bfd_map_over_sections(%struct.TYPE_19__* %55, i32 %56, i64* %7)
  %58 = load i64, i64* %7, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i64, i64* @FALSE, align 8
  store i64 %61, i64* %3, align 8
  br label %201

62:                                               ; preds = %53
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %64 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %65 = call i32 @assign_section_numbers(%struct.TYPE_19__* %63, %struct.bfd_link_info* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = load i64, i64* @FALSE, align 8
  store i64 %68, i64* %3, align 8
  br label %201

69:                                               ; preds = %62
  %70 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %71 = icmp eq %struct.bfd_link_info* %70, null
  br i1 %71, label %72, label %94

72:                                               ; preds = %69
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %74 = call i64 @bfd_get_symcount(%struct.TYPE_19__* %73)
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %72
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @EXEC_P, align 4
  %81 = load i32, i32* @DYNAMIC, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %10, align 4
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @swap_out_syms(%struct.TYPE_19__* %87, %struct.bfd_strtab_hash** %8, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %76
  %92 = load i64, i64* @FALSE, align 8
  store i64 %92, i64* %3, align 8
  br label %201

93:                                               ; preds = %76
  br label %94

94:                                               ; preds = %93, %72, %69
  %95 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %96 = icmp eq %struct.bfd_link_info* %95, null
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %99 = load i32, i32* @bfd_elf_set_group_contents, align 4
  %100 = call i32 @bfd_map_over_sections(%struct.TYPE_19__* %98, i32 %99, i64* %7)
  %101 = load i64, i64* %7, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i64, i64* @FALSE, align 8
  store i64 %104, i64* %3, align 8
  br label %201

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %105, %94
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %108 = call %struct.TYPE_21__* @elf_tdata(%struct.TYPE_19__* %107)
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 4
  store %struct.TYPE_20__* %109, %struct.TYPE_20__** %9, align 8
  %110 = load i32, i32* @SHT_STRTAB, align 4
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 8
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 7
  store i64 0, i64* %114, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 6
  store i64 0, i64* %116, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %118 = call i32 @elf_shstrtab(%struct.TYPE_19__* %117)
  %119 = call i64 @_bfd_elf_strtab_size(i32 %118)
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 5
  store i64 0, i64* %123, align 8
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 4
  store i64 0, i64* %125, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 3
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 1
  store i32 1, i32* %129, align 8
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %131 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %132 = call i32 @assign_file_positions_except_relocs(%struct.TYPE_19__* %130, %struct.bfd_link_info* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %106
  %135 = load i64, i64* @FALSE, align 8
  store i64 %135, i64* %3, align 8
  br label %201

136:                                              ; preds = %106
  %137 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %138 = icmp eq %struct.bfd_link_info* %137, null
  br i1 %138, label %139, label %196

139:                                              ; preds = %136
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %141 = call i64 @bfd_get_symcount(%struct.TYPE_19__* %140)
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %196

143:                                              ; preds = %139
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %145 = call %struct.TYPE_21__* @elf_tdata(%struct.TYPE_19__* %144)
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  store i32 %147, i32* %11, align 4
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %149 = call %struct.TYPE_21__* @elf_tdata(%struct.TYPE_19__* %148)
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 3
  store %struct.TYPE_20__* %150, %struct.TYPE_20__** %12, align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %152 = load i32, i32* %11, align 4
  %153 = load i64, i64* @TRUE, align 8
  %154 = call i32 @_bfd_elf_assign_file_position_for_section(%struct.TYPE_20__* %151, i32 %152, i64 %153)
  store i32 %154, i32* %11, align 4
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %156 = call %struct.TYPE_21__* @elf_tdata(%struct.TYPE_19__* %155)
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 2
  store %struct.TYPE_20__* %157, %struct.TYPE_20__** %12, align 8
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %143
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %164 = load i32, i32* %11, align 4
  %165 = load i64, i64* @TRUE, align 8
  %166 = call i32 @_bfd_elf_assign_file_position_for_section(%struct.TYPE_20__* %163, i32 %164, i64 %165)
  store i32 %166, i32* %11, align 4
  br label %167

167:                                              ; preds = %162, %143
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %169 = call %struct.TYPE_21__* @elf_tdata(%struct.TYPE_19__* %168)
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 1
  store %struct.TYPE_20__* %170, %struct.TYPE_20__** %12, align 8
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %172 = load i32, i32* %11, align 4
  %173 = load i64, i64* @TRUE, align 8
  %174 = call i32 @_bfd_elf_assign_file_position_for_section(%struct.TYPE_20__* %171, i32 %172, i64 %173)
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %177 = call %struct.TYPE_21__* @elf_tdata(%struct.TYPE_19__* %176)
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 0
  store i32 %175, i32* %178, align 8
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @SEEK_SET, align 4
  %184 = call i64 @bfd_seek(%struct.TYPE_19__* %179, i32 %182, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %167
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %188 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %8, align 8
  %189 = call i32 @_bfd_stringtab_emit(%struct.TYPE_19__* %187, %struct.bfd_strtab_hash* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %186, %167
  %192 = load i64, i64* @FALSE, align 8
  store i64 %192, i64* %3, align 8
  br label %201

193:                                              ; preds = %186
  %194 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %8, align 8
  %195 = call i32 @_bfd_stringtab_free(%struct.bfd_strtab_hash* %194)
  br label %196

196:                                              ; preds = %193, %139, %136
  %197 = load i64, i64* @TRUE, align 8
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 1
  store i64 %197, i64* %199, align 8
  %200 = load i64, i64* @TRUE, align 8
  store i64 %200, i64* %3, align 8
  br label %201

201:                                              ; preds = %196, %191, %134, %103, %91, %67, %60, %38, %19
  %202 = load i64, i64* %3, align 8
  ret i64 %202
}

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_19__*) #1

declare dso_local i32 @prep_headers(%struct.TYPE_19__*) #1

declare dso_local i32 @bfd_map_over_sections(%struct.TYPE_19__*, i32, i64*) #1

declare dso_local i32 @assign_section_numbers(%struct.TYPE_19__*, %struct.bfd_link_info*) #1

declare dso_local i64 @bfd_get_symcount(%struct.TYPE_19__*) #1

declare dso_local i32 @swap_out_syms(%struct.TYPE_19__*, %struct.bfd_strtab_hash**, i32) #1

declare dso_local %struct.TYPE_21__* @elf_tdata(%struct.TYPE_19__*) #1

declare dso_local i64 @_bfd_elf_strtab_size(i32) #1

declare dso_local i32 @elf_shstrtab(%struct.TYPE_19__*) #1

declare dso_local i32 @assign_file_positions_except_relocs(%struct.TYPE_19__*, %struct.bfd_link_info*) #1

declare dso_local i32 @_bfd_elf_assign_file_position_for_section(%struct.TYPE_20__*, i32, i64) #1

declare dso_local i64 @bfd_seek(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @_bfd_stringtab_emit(%struct.TYPE_19__*, %struct.bfd_strtab_hash*) #1

declare dso_local i32 @_bfd_stringtab_free(%struct.bfd_strtab_hash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
