; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_get_sym_h.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_get_sym_h.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i64, i8*, i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }

@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SHN_UNDEF = common dso_local global i64 0, align 8
@SHN_LORESERVE = common dso_local global i64 0, align 8
@SHN_HIRESERVE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_link_hash_entry**, %struct.TYPE_16__**, i32**, %struct.TYPE_16__**, i64, i32*)* @get_sym_h to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sym_h(%struct.elf_link_hash_entry** %0, %struct.TYPE_16__** %1, i32** %2, %struct.TYPE_16__** %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.elf_link_hash_entry**, align 8
  %9 = alloca %struct.TYPE_16__**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca %struct.TYPE_16__**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.elf_link_hash_entry**, align 8
  %16 = alloca %struct.elf_link_hash_entry*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  store %struct.elf_link_hash_entry** %0, %struct.elf_link_hash_entry*** %8, align 8
  store %struct.TYPE_16__** %1, %struct.TYPE_16__*** %9, align 8
  store i32** %2, i32*** %10, align 8
  store %struct.TYPE_16__** %3, %struct.TYPE_16__*** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = call %struct.TYPE_18__* @elf_tdata(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %14, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp uge i64 %25, %28
  br i1 %29, label %30, label %104

30:                                               ; preds = %6
  %31 = load i32*, i32** %13, align 8
  %32 = call %struct.elf_link_hash_entry** @elf_sym_hashes(i32* %31)
  store %struct.elf_link_hash_entry** %32, %struct.elf_link_hash_entry*** %15, align 8
  %33 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %15, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub i64 %34, %37
  %39 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %33, i64 %38
  %40 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %39, align 8
  store %struct.elf_link_hash_entry* %40, %struct.elf_link_hash_entry** %16, align 8
  br label %41

41:                                               ; preds = %57, %30
  %42 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %43 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @bfd_link_hash_indirect, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %50 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @bfd_link_hash_warning, align 8
  %54 = icmp eq i64 %52, %53
  br label %55

55:                                               ; preds = %48, %41
  %56 = phi i1 [ true, %41 ], [ %54, %48 ]
  br i1 %56, label %57, label %65

57:                                               ; preds = %55
  %58 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %59 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %64, %struct.elf_link_hash_entry** %16, align 8
  br label %41

65:                                               ; preds = %55
  %66 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %8, align 8
  %67 = icmp ne %struct.elf_link_hash_entry** %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %70 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %8, align 8
  store %struct.elf_link_hash_entry* %69, %struct.elf_link_hash_entry** %70, align 8
  br label %71

71:                                               ; preds = %68, %65
  %72 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %73 = icmp ne %struct.TYPE_16__** %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %75, align 8
  br label %76

76:                                               ; preds = %74, %71
  %77 = load i32**, i32*** %10, align 8
  %78 = icmp ne i32** %77, null
  br i1 %78, label %79, label %103

79:                                               ; preds = %76
  store i32* null, i32** %17, align 8
  %80 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %81 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @bfd_link_hash_defined, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %93, label %86

86:                                               ; preds = %79
  %87 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %88 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @bfd_link_hash_defweak, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %86, %79
  %94 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %95 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  store i32* %99, i32** %17, align 8
  br label %100

100:                                              ; preds = %93, %86
  %101 = load i32*, i32** %17, align 8
  %102 = load i32**, i32*** %10, align 8
  store i32* %101, i32** %102, align 8
  br label %103

103:                                              ; preds = %100, %76
  br label %191

104:                                              ; preds = %6
  %105 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %11, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  store %struct.TYPE_16__* %106, %struct.TYPE_16__** %19, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %108 = icmp eq %struct.TYPE_16__* %107, null
  br i1 %108, label %109, label %146

109:                                              ; preds = %104
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = bitcast i8* %112 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %113, %struct.TYPE_16__** %19, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %115 = icmp eq %struct.TYPE_16__* %114, null
  br i1 %115, label %116, label %138

116:                                              ; preds = %109
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %20, align 8
  %120 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %11, align 8
  %121 = bitcast %struct.TYPE_16__** %120 to i8**
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 1
  %124 = icmp eq i8** %121, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %116
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = udiv i64 %128, %131
  store i64 %132, i64* %20, align 8
  br label %133

133:                                              ; preds = %125, %116
  %134 = load i32*, i32** %13, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %136 = load i64, i64* %20, align 8
  %137 = call %struct.TYPE_16__* @bfd_elf_get_elf_syms(i32* %134, %struct.TYPE_17__* %135, i64 %136, i32 0, i32* null, i32* null, i32* null)
  store %struct.TYPE_16__* %137, %struct.TYPE_16__** %19, align 8
  br label %138

138:                                              ; preds = %133, %109
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %140 = icmp eq %struct.TYPE_16__* %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load i32, i32* @FALSE, align 4
  store i32 %142, i32* %7, align 4
  br label %193

143:                                              ; preds = %138
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %145 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %11, align 8
  store %struct.TYPE_16__* %144, %struct.TYPE_16__** %145, align 8
  br label %146

146:                                              ; preds = %143, %104
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %148 = load i64, i64* %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i64 %148
  store %struct.TYPE_16__* %149, %struct.TYPE_16__** %18, align 8
  %150 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %8, align 8
  %151 = icmp ne %struct.elf_link_hash_entry** %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %8, align 8
  store %struct.elf_link_hash_entry* null, %struct.elf_link_hash_entry** %153, align 8
  br label %154

154:                                              ; preds = %152, %146
  %155 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %156 = icmp ne %struct.TYPE_16__** %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %159 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  store %struct.TYPE_16__* %158, %struct.TYPE_16__** %159, align 8
  br label %160

160:                                              ; preds = %157, %154
  %161 = load i32**, i32*** %10, align 8
  %162 = icmp ne i32** %161, null
  br i1 %162, label %163, label %190

163:                                              ; preds = %160
  store i32* null, i32** %21, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @SHN_UNDEF, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %163
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @SHN_LORESERVE, align 8
  %174 = icmp slt i64 %172, %173
  br i1 %174, label %181, label %175

175:                                              ; preds = %169, %163
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @SHN_HIRESERVE, align 8
  %180 = icmp sgt i64 %178, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %175, %169
  %182 = load i32*, i32** %13, align 8
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = call i32* @bfd_section_from_elf_index(i32* %182, i64 %185)
  store i32* %186, i32** %21, align 8
  br label %187

187:                                              ; preds = %181, %175
  %188 = load i32*, i32** %21, align 8
  %189 = load i32**, i32*** %10, align 8
  store i32* %188, i32** %189, align 8
  br label %190

190:                                              ; preds = %187, %160
  br label %191

191:                                              ; preds = %190, %103
  %192 = load i32, i32* @TRUE, align 4
  store i32 %192, i32* %7, align 4
  br label %193

193:                                              ; preds = %191, %141
  %194 = load i32, i32* %7, align 4
  ret i32 %194
}

declare dso_local %struct.TYPE_18__* @elf_tdata(i32*) #1

declare dso_local %struct.elf_link_hash_entry** @elf_sym_hashes(i32*) #1

declare dso_local %struct.TYPE_16__* @bfd_elf_get_elf_syms(i32*, %struct.TYPE_17__*, i64, i32, i32*, i32*, i32*) #1

declare dso_local i32* @bfd_section_from_elf_index(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
