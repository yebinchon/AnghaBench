; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_write_object_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_write_object_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32 }
%struct.elf_backend_data = type { %struct.TYPE_26__*, i32 (%struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_27__*, %struct.TYPE_28__*)* }
%struct.TYPE_26__ = type { i64 (%struct.TYPE_27__*)*, i32 }
%struct.TYPE_28__ = type { i64, i64, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@SHN_LORESERVE = common dso_local global i32 0, align 4
@SHN_HIRESERVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_elf_write_object_contents(%struct.TYPE_27__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.elf_backend_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_28__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  %11 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %12 = call %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_27__* %11)
  store %struct.elf_backend_data* %12, %struct.elf_backend_data** %4, align 8
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %19 = call i32 @_bfd_elf_compute_section_file_positions(%struct.TYPE_27__* %18, i32* null)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %2, align 8
  br label %170

23:                                               ; preds = %17, %1
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %25 = call %struct.TYPE_28__** @elf_elfsections(%struct.TYPE_27__* %24)
  store %struct.TYPE_28__** %25, %struct.TYPE_28__*** %6, align 8
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %27 = call i32* @elf_elfheader(%struct.TYPE_27__* %26)
  store i32* %27, i32** %5, align 8
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %7, align 8
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %30 = load %struct.elf_backend_data*, %struct.elf_backend_data** %4, align 8
  %31 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @bfd_map_over_sections(%struct.TYPE_27__* %29, i32 %34, i64* %7)
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = load i64, i64* @FALSE, align 8
  store i64 %39, i64* %2, align 8
  br label %170

40:                                               ; preds = %23
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %42 = call i32 @_bfd_elf_assign_file_positions_for_relocs(%struct.TYPE_27__* %41)
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %44 = call i32 @elf_numsections(%struct.TYPE_27__* %43)
  store i32 %44, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %45

45:                                               ; preds = %122, %40
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %125

49:                                               ; preds = %45
  %50 = load %struct.elf_backend_data*, %struct.elf_backend_data** %4, align 8
  %51 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %50, i32 0, i32 2
  %52 = load i32 (%struct.TYPE_27__*, %struct.TYPE_28__*)*, i32 (%struct.TYPE_27__*, %struct.TYPE_28__*)** %51, align 8
  %53 = icmp ne i32 (%struct.TYPE_27__*, %struct.TYPE_28__*)* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.elf_backend_data*, %struct.elf_backend_data** %4, align 8
  %56 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %55, i32 0, i32 2
  %57 = load i32 (%struct.TYPE_27__*, %struct.TYPE_28__*)*, i32 (%struct.TYPE_27__*, %struct.TYPE_28__*)** %56, align 8
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %59 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %59, i64 %61
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %62, align 8
  %64 = call i32 %57(%struct.TYPE_27__* %58, %struct.TYPE_28__* %63)
  br label %65

65:                                               ; preds = %54, %49
  %66 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %66, i64 %68
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %109

74:                                               ; preds = %65
  %75 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %75, i64 %77
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %10, align 8
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %83 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %83, i64 %85
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @SEEK_SET, align 4
  %91 = call i64 @bfd_seek(%struct.TYPE_27__* %82, i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %106, label %93

93:                                               ; preds = %74
  %94 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %94, i64 %96
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %103 = call i64 @bfd_bwrite(i64 %100, i64 %101, %struct.TYPE_27__* %102)
  %104 = load i64, i64* %10, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %93, %74
  %107 = load i64, i64* @FALSE, align 8
  store i64 %107, i64* %2, align 8
  br label %170

108:                                              ; preds = %93
  br label %109

109:                                              ; preds = %108, %65
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @SHN_LORESERVE, align 4
  %112 = sub nsw i32 %111, 1
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = load i32, i32* @SHN_HIRESERVE, align 4
  %116 = add nsw i32 %115, 1
  %117 = load i32, i32* @SHN_LORESERVE, align 4
  %118 = sub nsw i32 %116, %117
  %119 = load i32, i32* %8, align 4
  %120 = add i32 %119, %118
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %114, %109
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %8, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %45

125:                                              ; preds = %45
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %127 = call i32* @elf_shstrtab(%struct.TYPE_27__* %126)
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %147

129:                                              ; preds = %125
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %132 = call %struct.TYPE_24__* @elf_tdata(%struct.TYPE_27__* %131)
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @SEEK_SET, align 4
  %137 = call i64 @bfd_seek(%struct.TYPE_27__* %130, i32 %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %129
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %142 = call i32* @elf_shstrtab(%struct.TYPE_27__* %141)
  %143 = call i32 @_bfd_elf_strtab_emit(%struct.TYPE_27__* %140, i32* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %139, %129
  %146 = load i64, i64* @FALSE, align 8
  store i64 %146, i64* %2, align 8
  br label %170

147:                                              ; preds = %139, %125
  %148 = load %struct.elf_backend_data*, %struct.elf_backend_data** %4, align 8
  %149 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %148, i32 0, i32 1
  %150 = load i32 (%struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_27__*, i32)** %149, align 8
  %151 = icmp ne i32 (%struct.TYPE_27__*, i32)* %150, null
  br i1 %151, label %152, label %162

152:                                              ; preds = %147
  %153 = load %struct.elf_backend_data*, %struct.elf_backend_data** %4, align 8
  %154 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %153, i32 0, i32 1
  %155 = load i32 (%struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_27__*, i32)** %154, align 8
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %158 = call %struct.TYPE_24__* @elf_tdata(%struct.TYPE_27__* %157)
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 %155(%struct.TYPE_27__* %156, i32 %160)
  br label %162

162:                                              ; preds = %152, %147
  %163 = load %struct.elf_backend_data*, %struct.elf_backend_data** %4, align 8
  %164 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %163, i32 0, i32 0
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 0
  %167 = load i64 (%struct.TYPE_27__*)*, i64 (%struct.TYPE_27__*)** %166, align 8
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %169 = call i64 %167(%struct.TYPE_27__* %168)
  store i64 %169, i64* %2, align 8
  br label %170

170:                                              ; preds = %162, %145, %106, %38, %21
  %171 = load i64, i64* %2, align 8
  ret i64 %171
}

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_27__*) #1

declare dso_local i32 @_bfd_elf_compute_section_file_positions(%struct.TYPE_27__*, i32*) #1

declare dso_local %struct.TYPE_28__** @elf_elfsections(%struct.TYPE_27__*) #1

declare dso_local i32* @elf_elfheader(%struct.TYPE_27__*) #1

declare dso_local i32 @bfd_map_over_sections(%struct.TYPE_27__*, i32, i64*) #1

declare dso_local i32 @_bfd_elf_assign_file_positions_for_relocs(%struct.TYPE_27__*) #1

declare dso_local i32 @elf_numsections(%struct.TYPE_27__*) #1

declare dso_local i64 @bfd_seek(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i64 @bfd_bwrite(i64, i64, %struct.TYPE_27__*) #1

declare dso_local i32* @elf_shstrtab(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_24__* @elf_tdata(%struct.TYPE_27__*) #1

declare dso_local i32 @_bfd_elf_strtab_emit(%struct.TYPE_27__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
