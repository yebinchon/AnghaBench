; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_calc_dynrel_sizes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_calc_dynrel_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpha_elf_link_hash_entry = type { %struct.alpha_elf_reloc_entry*, %struct.TYPE_16__ }
%struct.alpha_elf_reloc_entry = type { i64, i64, %struct.TYPE_15__*, i32, %struct.alpha_elf_reloc_entry* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__, i32, i64 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.bfd_link_info = type { i32, i32 }

@bfd_link_hash_warning = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@DYNAMIC = common dso_local global i32 0, align 4
@bfd_link_hash_undefweak = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@DT_TEXTREL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alpha_elf_link_hash_entry*, %struct.bfd_link_info*)* @elf64_alpha_calc_dynrel_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf64_alpha_calc_dynrel_sizes(%struct.alpha_elf_link_hash_entry* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.alpha_elf_link_hash_entry*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.alpha_elf_reloc_entry*, align 8
  %8 = alloca i64, align 8
  store %struct.alpha_elf_link_hash_entry* %0, %struct.alpha_elf_link_hash_entry** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %9 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %10 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @bfd_link_hash_warning, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %18 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.alpha_elf_link_hash_entry*
  store %struct.alpha_elf_link_hash_entry* %24, %struct.alpha_elf_link_hash_entry** %4, align 8
  br label %25

25:                                               ; preds = %16, %2
  %26 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %27 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %78, label %31

31:                                               ; preds = %25
  %32 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %33 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %78

37:                                               ; preds = %31
  %38 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %39 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %78, label %43

43:                                               ; preds = %37
  %44 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %45 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @bfd_link_hash_defined, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %53 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @bfd_link_hash_defweak, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %51, %43
  %60 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %61 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @DYNAMIC, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %59
  %75 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %76 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %74, %59, %51, %37, %31, %25
  %79 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %80 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %79, i32 0, i32 1
  %81 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %82 = call i32 @alpha_elf_dynamic_symbol_p(%struct.TYPE_16__* %80, %struct.bfd_link_info* %81)
  store i32 %82, i32* %6, align 4
  %83 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %84 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %78
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* @TRUE, align 4
  store i32 %94, i32* %3, align 4
  br label %144

95:                                               ; preds = %90, %78
  %96 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %97 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %96, i32 0, i32 0
  %98 = load %struct.alpha_elf_reloc_entry*, %struct.alpha_elf_reloc_entry** %97, align 8
  store %struct.alpha_elf_reloc_entry* %98, %struct.alpha_elf_reloc_entry** %7, align 8
  br label %99

99:                                               ; preds = %138, %95
  %100 = load %struct.alpha_elf_reloc_entry*, %struct.alpha_elf_reloc_entry** %7, align 8
  %101 = icmp ne %struct.alpha_elf_reloc_entry* %100, null
  br i1 %101, label %102, label %142

102:                                              ; preds = %99
  %103 = load %struct.alpha_elf_reloc_entry*, %struct.alpha_elf_reloc_entry** %7, align 8
  %104 = getelementptr inbounds %struct.alpha_elf_reloc_entry, %struct.alpha_elf_reloc_entry* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %108 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @alpha_dynamic_entries_for_reloc(i32 %105, i32 %106, i32 %109)
  store i64 %110, i64* %8, align 8
  %111 = load i64, i64* %8, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %137

113:                                              ; preds = %102
  %114 = load i64, i64* %8, align 8
  %115 = mul i64 %114, 4
  %116 = load %struct.alpha_elf_reloc_entry*, %struct.alpha_elf_reloc_entry** %7, align 8
  %117 = getelementptr inbounds %struct.alpha_elf_reloc_entry, %struct.alpha_elf_reloc_entry* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = mul i64 %115, %118
  %120 = load %struct.alpha_elf_reloc_entry*, %struct.alpha_elf_reloc_entry** %7, align 8
  %121 = getelementptr inbounds %struct.alpha_elf_reloc_entry, %struct.alpha_elf_reloc_entry* %120, i32 0, i32 2
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %124, %119
  store i64 %125, i64* %123, align 8
  %126 = load %struct.alpha_elf_reloc_entry*, %struct.alpha_elf_reloc_entry** %7, align 8
  %127 = getelementptr inbounds %struct.alpha_elf_reloc_entry, %struct.alpha_elf_reloc_entry* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %113
  %131 = load i32, i32* @DT_TEXTREL, align 4
  %132 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %133 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %130, %113
  br label %137

137:                                              ; preds = %136, %102
  br label %138

138:                                              ; preds = %137
  %139 = load %struct.alpha_elf_reloc_entry*, %struct.alpha_elf_reloc_entry** %7, align 8
  %140 = getelementptr inbounds %struct.alpha_elf_reloc_entry, %struct.alpha_elf_reloc_entry* %139, i32 0, i32 4
  %141 = load %struct.alpha_elf_reloc_entry*, %struct.alpha_elf_reloc_entry** %140, align 8
  store %struct.alpha_elf_reloc_entry* %141, %struct.alpha_elf_reloc_entry** %7, align 8
  br label %99

142:                                              ; preds = %99
  %143 = load i32, i32* @TRUE, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %93
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @alpha_elf_dynamic_symbol_p(%struct.TYPE_16__*, %struct.bfd_link_info*) #1

declare dso_local i64 @alpha_dynamic_entries_for_reloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
