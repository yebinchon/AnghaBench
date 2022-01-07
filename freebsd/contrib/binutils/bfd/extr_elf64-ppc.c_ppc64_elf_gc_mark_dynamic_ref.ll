; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_gc_mark_dynamic_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_gc_mark_dynamic_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i32 }
%struct.bfd_link_info = type { i32 }
%struct.ppc_link_hash_entry = type { %struct.TYPE_14__, %struct.ppc_link_hash_entry*, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32, i64, i64 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_15__ = type { i32 }

@bfd_link_hash_warning = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@STV_INTERNAL = common dso_local global i64 0, align 8
@STV_HIDDEN = common dso_local global i64 0, align 8
@SEC_KEEP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_link_hash_entry*, i8*)* @ppc64_elf_gc_mark_dynamic_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc64_elf_gc_mark_dynamic_ref(%struct.elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.elf_link_hash_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.ppc_link_hash_entry*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.bfd_link_info*
  store %struct.bfd_link_info* %9, %struct.bfd_link_info** %5, align 8
  %10 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  %11 = bitcast %struct.elf_link_hash_entry* %10 to %struct.ppc_link_hash_entry*
  store %struct.ppc_link_hash_entry* %11, %struct.ppc_link_hash_entry** %6, align 8
  %12 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %13 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @bfd_link_hash_warning, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %21 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.ppc_link_hash_entry*
  store %struct.ppc_link_hash_entry* %27, %struct.ppc_link_hash_entry** %6, align 8
  br label %28

28:                                               ; preds = %19, %2
  %29 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %30 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %29, i32 0, i32 1
  %31 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %30, align 8
  %32 = icmp ne %struct.ppc_link_hash_entry* %31, null
  br i1 %32, label %33, label %64

33:                                               ; preds = %28
  %34 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %35 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %34, i32 0, i32 1
  %36 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %35, align 8
  %37 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %33
  %41 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %42 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %41, i32 0, i32 1
  %43 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %42, align 8
  %44 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @bfd_link_hash_defined, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %40
  %51 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %52 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %51, i32 0, i32 1
  %53 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %52, align 8
  %54 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @bfd_link_hash_defweak, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %50, %40
  %61 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %62 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %61, i32 0, i32 1
  %63 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %62, align 8
  store %struct.ppc_link_hash_entry* %63, %struct.ppc_link_hash_entry** %6, align 8
  br label %64

64:                                               ; preds = %60, %50, %33, %28
  %65 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %66 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @bfd_link_hash_defined, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %64
  %73 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %74 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @bfd_link_hash_defweak, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %198

80:                                               ; preds = %72, %64
  %81 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %82 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %113, label %86

86:                                               ; preds = %80
  %87 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %88 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %198, label %91

91:                                               ; preds = %86
  %92 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %93 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %198

97:                                               ; preds = %91
  %98 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %99 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @ELF_ST_VISIBILITY(i32 %101)
  %103 = load i64, i64* @STV_INTERNAL, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %198

105:                                              ; preds = %97
  %106 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %107 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @ELF_ST_VISIBILITY(i32 %109)
  %111 = load i64, i64* @STV_HIDDEN, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %198

113:                                              ; preds = %105, %80
  %114 = load i32, i32* @SEC_KEEP, align 4
  %115 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %116 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %114
  store i32 %124, i32* %122, align 4
  %125 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %126 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %163

129:                                              ; preds = %113
  %130 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %131 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %130, i32 0, i32 1
  %132 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %131, align 8
  %133 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @bfd_link_hash_defined, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %149, label %139

139:                                              ; preds = %129
  %140 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %141 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %140, i32 0, i32 1
  %142 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %141, align 8
  %143 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @bfd_link_hash_defweak, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %163

149:                                              ; preds = %139, %129
  %150 = load i32, i32* @SEC_KEEP, align 4
  %151 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %152 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %151, i32 0, i32 1
  %153 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %152, align 8
  %154 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %150
  store i32 %162, i32* %160, align 4
  br label %197

163:                                              ; preds = %139, %113
  %164 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %165 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = call i32* @get_opd_info(%struct.TYPE_16__* %170)
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %196

173:                                              ; preds = %163
  %174 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %175 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %179, align 8
  %181 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %6, align 8
  %182 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i64 @opd_entry_value(%struct.TYPE_16__* %180, i32 %187, %struct.TYPE_15__** %7, i32* null)
  %189 = icmp ne i64 %188, -1
  br i1 %189, label %190, label %196

190:                                              ; preds = %173
  %191 = load i32, i32* @SEC_KEEP, align 4
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %190, %173, %163
  br label %197

197:                                              ; preds = %196, %149
  br label %198

198:                                              ; preds = %197, %105, %97, %91, %86, %72
  %199 = load i32, i32* @TRUE, align 4
  ret i32 %199
}

declare dso_local i64 @ELF_ST_VISIBILITY(i32) #1

declare dso_local i32* @get_opd_info(%struct.TYPE_16__*) #1

declare dso_local i64 @opd_entry_value(%struct.TYPE_16__*, i32, %struct.TYPE_15__**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
