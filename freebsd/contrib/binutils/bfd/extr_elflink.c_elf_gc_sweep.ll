; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_gc_sweep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_gc_sweep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32, i32, i64, i64, i32, i32, i32, %struct.TYPE_15__* }
%struct.bfd_link_info = type { i32, i64, %struct.TYPE_16__* }
%struct.elf_backend_data = type { i32, i32 (i32, %struct.bfd_link_info*, %struct.TYPE_15__*, i32*)* }
%struct.elf_gc_sweep_symbol_info = type { i32, %struct.bfd_link_info* }
%struct.TYPE_17__ = type { i32*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }

@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@SEC_DEBUGGING = common dso_local global i32 0, align 4
@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@SHT_NOTE = common dso_local global i64 0, align 8
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_RELOC = common dso_local global i32 0, align 4
@SEC_EXCLUDE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Removing unused section '%s' in file '%B'\00", align 1
@FALSE = common dso_local global i32 0, align 4
@elf_gc_sweep_symbol = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.bfd_link_info*)* @elf_gc_sweep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_gc_sweep(%struct.TYPE_16__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.elf_backend_data*, align 8
  %8 = alloca i32 (i32, %struct.bfd_link_info*, %struct.TYPE_15__*, i32*)*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.elf_gc_sweep_symbol_info, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = call %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_16__* %14)
  store %struct.elf_backend_data* %15, %struct.elf_backend_data** %7, align 8
  %16 = load %struct.elf_backend_data*, %struct.elf_backend_data** %7, align 8
  %17 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %16, i32 0, i32 1
  %18 = load i32 (i32, %struct.bfd_link_info*, %struct.TYPE_15__*, i32*)*, i32 (i32, %struct.bfd_link_info*, %struct.TYPE_15__*, i32*)** %17, align 8
  store i32 (i32, %struct.bfd_link_info*, %struct.TYPE_15__*, i32*)* %18, i32 (i32, %struct.bfd_link_info*, %struct.TYPE_15__*, i32*)** %8, align 8
  %19 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %20 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %19, i32 0, i32 2
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %6, align 8
  br label %22

22:                                               ; preds = %169, %2
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %24 = icmp ne %struct.TYPE_16__* %23, null
  br i1 %24, label %25, label %173

25:                                               ; preds = %22
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %27 = call i64 @bfd_get_flavour(%struct.TYPE_16__* %26)
  %28 = load i64, i64* @bfd_target_elf_flavour, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %169

31:                                               ; preds = %25
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %11, align 8
  br label %35

35:                                               ; preds = %164, %31
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %37 = icmp ne %struct.TYPE_15__* %36, null
  br i1 %37, label %38, label %168

38:                                               ; preds = %35
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SEC_DEBUGGING, align 4
  %43 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %66, label %47

47:                                               ; preds = %38
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %49 = call %struct.TYPE_17__* @elf_section_data(%struct.TYPE_15__* %48)
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SHT_NOTE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %66, label %55

55:                                               ; preds = %47
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SEC_ALLOC, align 4
  %60 = load i32, i32* @SEC_LOAD, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @SEC_RELOC, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %58, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %55, %47, %38
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %55
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %164

75:                                               ; preds = %69
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @SEC_EXCLUDE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %164

83:                                               ; preds = %75
  %84 = load i32, i32* @SEC_EXCLUDE, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %90 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %83
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @_bfd_error_handler(i32 %99, %struct.TYPE_16__* %100, i32 %103)
  br label %105

105:                                              ; preds = %98, %93, %83
  %106 = load i32 (i32, %struct.bfd_link_info*, %struct.TYPE_15__*, i32*)*, i32 (i32, %struct.bfd_link_info*, %struct.TYPE_15__*, i32*)** %8, align 8
  %107 = icmp ne i32 (i32, %struct.bfd_link_info*, %struct.TYPE_15__*, i32*)* %106, null
  br i1 %107, label %108, label %163

108:                                              ; preds = %105
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @SEC_RELOC, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %163

115:                                              ; preds = %108
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %163

120:                                              ; preds = %115
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @bfd_is_abs_section(i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %163, label %126

126:                                              ; preds = %120
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %131 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %132 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32* @_bfd_elf_link_read_relocs(i32 %129, %struct.TYPE_15__* %130, i32* null, i32* null, i32 %133)
  store i32* %134, i32** %12, align 8
  %135 = load i32*, i32** %12, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %126
  %138 = load i32, i32* @FALSE, align 4
  store i32 %138, i32* %3, align 4
  br label %188

139:                                              ; preds = %126
  %140 = load i32 (i32, %struct.bfd_link_info*, %struct.TYPE_15__*, i32*)*, i32 (i32, %struct.bfd_link_info*, %struct.TYPE_15__*, i32*)** %8, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %146 = load i32*, i32** %12, align 8
  %147 = call i32 %140(i32 %143, %struct.bfd_link_info* %144, %struct.TYPE_15__* %145, i32* %146)
  store i32 %147, i32* %13, align 4
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %149 = call %struct.TYPE_17__* @elf_section_data(%struct.TYPE_15__* %148)
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i32*, i32** %12, align 8
  %153 = icmp ne i32* %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %139
  %155 = load i32*, i32** %12, align 8
  %156 = call i32 @free(i32* %155)
  br label %157

157:                                              ; preds = %154, %139
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* @FALSE, align 4
  store i32 %161, i32* %3, align 4
  br label %188

162:                                              ; preds = %157
  br label %163

163:                                              ; preds = %162, %120, %115, %108, %105
  br label %164

164:                                              ; preds = %163, %82, %74
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 7
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %166, align 8
  store %struct.TYPE_15__* %167, %struct.TYPE_15__** %11, align 8
  br label %35

168:                                              ; preds = %35
  br label %169

169:                                              ; preds = %168, %30
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %171, align 8
  store %struct.TYPE_16__* %172, %struct.TYPE_16__** %6, align 8
  br label %22

173:                                              ; preds = %22
  %174 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %175 = getelementptr inbounds %struct.elf_gc_sweep_symbol_info, %struct.elf_gc_sweep_symbol_info* %10, i32 0, i32 1
  store %struct.bfd_link_info* %174, %struct.bfd_link_info** %175, align 8
  %176 = load %struct.elf_backend_data*, %struct.elf_backend_data** %7, align 8
  %177 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = getelementptr inbounds %struct.elf_gc_sweep_symbol_info, %struct.elf_gc_sweep_symbol_info* %10, i32 0, i32 0
  store i32 %178, i32* %179, align 8
  %180 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %181 = call i32 @elf_hash_table(%struct.bfd_link_info* %180)
  %182 = load i32, i32* @elf_gc_sweep_symbol, align 4
  %183 = call i32 @elf_link_hash_traverse(i32 %181, i32 %182, %struct.elf_gc_sweep_symbol_info* %10)
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %185 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %186 = call i32 @_bfd_elf_link_renumber_dynsyms(%struct.TYPE_16__* %184, %struct.bfd_link_info* %185, i64* %9)
  %187 = load i32, i32* @TRUE, align 4
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %173, %160, %137
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_16__*) #1

declare dso_local i64 @bfd_get_flavour(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @elf_section_data(%struct.TYPE_15__*) #1

declare dso_local i32 @_bfd_error_handler(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_is_abs_section(i32) #1

declare dso_local i32* @_bfd_elf_link_read_relocs(i32, %struct.TYPE_15__*, i32*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @elf_link_hash_traverse(i32, i32, %struct.elf_gc_sweep_symbol_info*) #1

declare dso_local i32 @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @_bfd_elf_link_renumber_dynsyms(%struct.TYPE_16__*, %struct.bfd_link_info*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
