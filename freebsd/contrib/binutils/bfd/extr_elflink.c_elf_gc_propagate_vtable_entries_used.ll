; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_gc_propagate_vtable_entries_used.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_gc_propagate_vtable_entries_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { %struct.TYPE_14__*, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32, %struct.elf_link_hash_entry*, i64* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.elf_backend_data = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@bfd_link_hash_warning = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.elf_link_hash_entry*, i8*)* @elf_gc_propagate_vtable_entries_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elf_gc_propagate_vtable_entries_used(%struct.elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.elf_backend_data*, align 8
  %10 = alloca i32, align 4
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %12 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @bfd_link_hash_warning, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %19 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %24, %struct.elf_link_hash_entry** %4, align 8
  br label %25

25:                                               ; preds = %17, %2
  %26 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %27 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %26, i32 0, i32 0
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = icmp eq %struct.TYPE_14__* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %32 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %31, i32 0, i32 0
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %34, align 8
  %36 = icmp eq %struct.elf_link_hash_entry* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %30, %25
  %38 = load i64, i64* @TRUE, align 8
  store i64 %38, i64* %3, align 8
  br label %174

39:                                               ; preds = %30
  %40 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %41 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %40, i32 0, i32 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %45 = icmp eq %struct.elf_link_hash_entry* %44, inttoptr (i64 -1 to %struct.elf_link_hash_entry*)
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i64, i64* @TRUE, align 8
  store i64 %47, i64* %3, align 8
  br label %174

48:                                               ; preds = %39
  %49 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %50 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %49, i32 0, i32 0
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = icmp ne i64* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %57 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %56, i32 0, i32 0
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 -1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i64, i64* @TRUE, align 8
  store i64 %65, i64* %3, align 8
  br label %174

66:                                               ; preds = %55, %48
  %67 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %68 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %67, i32 0, i32 0
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %70, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = call i64 @elf_gc_propagate_vtable_entries_used(%struct.elf_link_hash_entry* %71, i8* %72)
  %74 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %75 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %74, i32 0, i32 0
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = load i64*, i64** %77, align 8
  %79 = icmp eq i64* %78, null
  br i1 %79, label %80, label %107

80:                                               ; preds = %66
  %81 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %82 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %81, i32 0, i32 0
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %84, align 8
  %86 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %85, i32 0, i32 0
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load i64*, i64** %88, align 8
  %90 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %91 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %90, i32 0, i32 0
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  store i64* %89, i64** %93, align 8
  %94 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %95 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %94, i32 0, i32 0
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %97, align 8
  %99 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %98, i32 0, i32 0
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %104 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %103, i32 0, i32 0
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  store i32 %102, i32* %106, align 8
  br label %172

107:                                              ; preds = %66
  %108 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %109 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %108, i32 0, i32 0
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 2
  %112 = load i64*, i64** %111, align 8
  store i64* %112, i64** %7, align 8
  %113 = load i64, i64* @TRUE, align 8
  %114 = load i64*, i64** %7, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 -1
  store i64 %113, i64* %115, align 8
  %116 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %117 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %116, i32 0, i32 0
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  %120 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %119, align 8
  %121 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %120, i32 0, i32 0
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  %124 = load i64*, i64** %123, align 8
  store i64* %124, i64** %8, align 8
  %125 = load i64*, i64** %8, align 8
  %126 = icmp ne i64* %125, null
  br i1 %126, label %127, label %171

127:                                              ; preds = %107
  %128 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %129 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call %struct.elf_backend_data* @get_elf_backend_data(i32 %135)
  store %struct.elf_backend_data* %136, %struct.elf_backend_data** %9, align 8
  %137 = load %struct.elf_backend_data*, %struct.elf_backend_data** %9, align 8
  %138 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %137, i32 0, i32 0
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %10, align 4
  %142 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %143 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %142, i32 0, i32 0
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %145, align 8
  %147 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %146, i32 0, i32 0
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = lshr i32 %150, %151
  %153 = zext i32 %152 to i64
  store i64 %153, i64* %6, align 8
  br label %154

154:                                              ; preds = %165, %127
  %155 = load i64, i64* %6, align 8
  %156 = add i64 %155, -1
  store i64 %156, i64* %6, align 8
  %157 = icmp ne i64 %155, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %154
  %159 = load i64*, i64** %8, align 8
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = load i64, i64* @TRUE, align 8
  %164 = load i64*, i64** %7, align 8
  store i64 %163, i64* %164, align 8
  br label %165

165:                                              ; preds = %162, %158
  %166 = load i64*, i64** %8, align 8
  %167 = getelementptr inbounds i64, i64* %166, i32 1
  store i64* %167, i64** %8, align 8
  %168 = load i64*, i64** %7, align 8
  %169 = getelementptr inbounds i64, i64* %168, i32 1
  store i64* %169, i64** %7, align 8
  br label %154

170:                                              ; preds = %154
  br label %171

171:                                              ; preds = %170, %107
  br label %172

172:                                              ; preds = %171, %80
  %173 = load i64, i64* @TRUE, align 8
  store i64 %173, i64* %3, align 8
  br label %174

174:                                              ; preds = %172, %64, %46, %37
  %175 = load i64, i64* %3, align 8
  ret i64 %175
}

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
