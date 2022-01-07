; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_gc_smash_unused_vtentry_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_gc_smash_unused_vtentry_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i64, %struct.TYPE_16__*, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i64, i64*, i32* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_18__ = type { i64, i64, i64 }
%struct.elf_backend_data = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }

@bfd_link_hash_warning = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_link_hash_entry*, i8*)* @elf_gc_smash_unused_vtentry_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_gc_smash_unused_vtentry_relocs(%struct.elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.elf_backend_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %16 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @bfd_link_hash_warning, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %23 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %28, %struct.elf_link_hash_entry** %4, align 8
  br label %29

29:                                               ; preds = %21, %2
  %30 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %31 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %30, i32 0, i32 1
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = icmp eq %struct.TYPE_16__* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %36 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %35, i32 0, i32 1
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %34, %29
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %3, align 4
  br label %181

43:                                               ; preds = %34
  %44 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %45 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @bfd_link_hash_defined, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %52 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @bfd_link_hash_defweak, align 8
  %56 = icmp eq i64 %54, %55
  br label %57

57:                                               ; preds = %50, %43
  %58 = phi i1 [ true, %43 ], [ %56, %50 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @BFD_ASSERT(i32 %59)
  %61 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %62 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %65, align 8
  store %struct.TYPE_17__* %66, %struct.TYPE_17__** %6, align 8
  %67 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %68 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %75 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  store i64 %77, i64* %8, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %82 = load i32, i32* @TRUE, align 4
  %83 = call %struct.TYPE_18__* @_bfd_elf_link_read_relocs(i32 %80, %struct.TYPE_17__* %81, i32* null, i32* null, i32 %82)
  store %struct.TYPE_18__* %83, %struct.TYPE_18__** %9, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %85 = icmp ne %struct.TYPE_18__* %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %57
  %87 = load i32, i32* @FALSE, align 4
  %88 = load i8*, i8** %5, align 8
  %89 = bitcast i8* %88 to i32*
  store i32 %87, i32* %89, align 4
  store i32 %87, i32* %3, align 4
  br label %181

90:                                               ; preds = %57
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call %struct.elf_backend_data* @get_elf_backend_data(i32 %93)
  store %struct.elf_backend_data* %94, %struct.elf_backend_data** %12, align 8
  %95 = load %struct.elf_backend_data*, %struct.elf_backend_data** %12, align 8
  %96 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %95, i32 0, i32 0
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %13, align 4
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.elf_backend_data*, %struct.elf_backend_data** %12, align 8
  %105 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %104, i32 0, i32 0
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %103, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i64 %110
  store %struct.TYPE_18__* %111, %struct.TYPE_18__** %10, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  store %struct.TYPE_18__* %112, %struct.TYPE_18__** %11, align 8
  br label %113

113:                                              ; preds = %176, %90
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %116 = icmp ult %struct.TYPE_18__* %114, %115
  br i1 %116, label %117, label %179

117:                                              ; preds = %113
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %7, align 8
  %122 = icmp sge i64 %120, %121
  br i1 %122, label %123, label %175

123:                                              ; preds = %117
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %8, align 8
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %129, label %175

129:                                              ; preds = %123
  %130 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %131 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %130, i32 0, i32 1
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load i64*, i64** %133, align 8
  %135 = icmp ne i64* %134, null
  br i1 %135, label %136, label %168

136:                                              ; preds = %129
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %7, align 8
  %141 = sub nsw i64 %139, %140
  %142 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %143 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %142, i32 0, i32 1
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp slt i64 %141, %146
  br i1 %147, label %148, label %168

148:                                              ; preds = %136
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %7, align 8
  %153 = sub nsw i64 %151, %152
  %154 = load i32, i32* %13, align 4
  %155 = zext i32 %154 to i64
  %156 = ashr i64 %153, %155
  store i64 %156, i64* %14, align 8
  %157 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %158 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %157, i32 0, i32 1
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = load i64*, i64** %160, align 8
  %162 = load i64, i64* %14, align 8
  %163 = getelementptr inbounds i64, i64* %161, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %148
  br label %176

167:                                              ; preds = %148
  br label %168

168:                                              ; preds = %167, %136, %129
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 2
  store i64 0, i64* %170, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 1
  store i64 0, i64* %172, align 8
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 0
  store i64 0, i64* %174, align 8
  br label %175

175:                                              ; preds = %168, %123, %117
  br label %176

176:                                              ; preds = %175, %166
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 1
  store %struct.TYPE_18__* %178, %struct.TYPE_18__** %11, align 8
  br label %113

179:                                              ; preds = %113
  %180 = load i32, i32* @TRUE, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %179, %86, %41
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local %struct.TYPE_18__* @_bfd_elf_link_read_relocs(i32, %struct.TYPE_17__*, i32*, i32*, i32) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
