; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_link_find_version_dependencies.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_link_find_version_dependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i32, %struct.TYPE_13__, i64, i32, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64, i32, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.elf_find_verdep_info = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_15__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }

@bfd_link_hash_warning = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_elf_link_find_version_dependencies(%struct.elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.elf_find_verdep_info*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.elf_find_verdep_info*
  store %struct.elf_find_verdep_info* %11, %struct.elf_find_verdep_info** %6, align 8
  %12 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %13 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @bfd_link_hash_warning, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %20 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %25, %struct.elf_link_hash_entry** %4, align 8
  br label %26

26:                                               ; preds = %18, %2
  %27 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %28 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %33 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %31
  %37 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %38 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %43 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = icmp eq %struct.TYPE_12__* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %41, %36, %31, %26
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %3, align 4
  br label %195

49:                                               ; preds = %41
  %50 = load %struct.elf_find_verdep_info*, %struct.elf_find_verdep_info** %6, align 8
  %51 = getelementptr inbounds %struct.elf_find_verdep_info, %struct.elf_find_verdep_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.TYPE_16__* @elf_tdata(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %7, align 8
  br label %56

56:                                               ; preds = %97, %49
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %58 = icmp ne %struct.TYPE_14__* %57, null
  br i1 %58, label %59, label %101

59:                                               ; preds = %56
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %64 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %62, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  br label %97

71:                                               ; preds = %59
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  store %struct.TYPE_15__* %74, %struct.TYPE_15__** %8, align 8
  br label %75

75:                                               ; preds = %92, %71
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %77 = icmp ne %struct.TYPE_15__* %76, null
  br i1 %77, label %78, label %96

78:                                               ; preds = %75
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %83 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %81, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = load i32, i32* @TRUE, align 4
  store i32 %90, i32* %3, align 4
  br label %195

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  store %struct.TYPE_15__* %95, %struct.TYPE_15__** %8, align 8
  br label %75

96:                                               ; preds = %75
  br label %101

97:                                               ; preds = %70
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  store %struct.TYPE_14__* %100, %struct.TYPE_14__** %7, align 8
  br label %56

101:                                              ; preds = %96, %56
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %103 = icmp eq %struct.TYPE_14__* %102, null
  br i1 %103, label %104, label %141

104:                                              ; preds = %101
  store i32 24, i32* %9, align 4
  %105 = load %struct.elf_find_verdep_info*, %struct.elf_find_verdep_info** %6, align 8
  %106 = getelementptr inbounds %struct.elf_find_verdep_info, %struct.elf_find_verdep_info* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i8* @bfd_zalloc(i32 %107, i32 %108)
  %110 = bitcast i8* %109 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %110, %struct.TYPE_14__** %7, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %112 = icmp eq %struct.TYPE_14__* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %104
  %114 = load i32, i32* @TRUE, align 4
  %115 = load %struct.elf_find_verdep_info*, %struct.elf_find_verdep_info** %6, align 8
  %116 = getelementptr inbounds %struct.elf_find_verdep_info, %struct.elf_find_verdep_info* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @FALSE, align 4
  store i32 %117, i32* %3, align 4
  br label %195

118:                                              ; preds = %104
  %119 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %120 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load %struct.elf_find_verdep_info*, %struct.elf_find_verdep_info** %6, align 8
  %128 = getelementptr inbounds %struct.elf_find_verdep_info, %struct.elf_find_verdep_info* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call %struct.TYPE_16__* @elf_tdata(i32 %129)
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 2
  store %struct.TYPE_14__* %132, %struct.TYPE_14__** %134, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %136 = load %struct.elf_find_verdep_info*, %struct.elf_find_verdep_info** %6, align 8
  %137 = getelementptr inbounds %struct.elf_find_verdep_info, %struct.elf_find_verdep_info* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call %struct.TYPE_16__* @elf_tdata(i32 %138)
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  store %struct.TYPE_14__* %135, %struct.TYPE_14__** %140, align 8
  br label %141

141:                                              ; preds = %118, %101
  store i32 32, i32* %9, align 4
  %142 = load %struct.elf_find_verdep_info*, %struct.elf_find_verdep_info** %6, align 8
  %143 = getelementptr inbounds %struct.elf_find_verdep_info, %struct.elf_find_verdep_info* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %9, align 4
  %146 = call i8* @bfd_zalloc(i32 %144, i32 %145)
  %147 = bitcast i8* %146 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %147, %struct.TYPE_15__** %8, align 8
  %148 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %149 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  %156 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %157 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 8
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %165, align 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 2
  store %struct.TYPE_15__* %166, %struct.TYPE_15__** %168, align 8
  %169 = load %struct.elf_find_verdep_info*, %struct.elf_find_verdep_info** %6, align 8
  %170 = getelementptr inbounds %struct.elf_find_verdep_info, %struct.elf_find_verdep_info* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %173 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 2
  store i32 %171, i32* %176, align 8
  %177 = load %struct.elf_find_verdep_info*, %struct.elf_find_verdep_info** %6, align 8
  %178 = getelementptr inbounds %struct.elf_find_verdep_info, %struct.elf_find_verdep_info* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 4
  %181 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %182 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 1
  store i64 %188, i64* %190, align 8
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 1
  store %struct.TYPE_15__* %191, %struct.TYPE_15__** %193, align 8
  %194 = load i32, i32* @TRUE, align 4
  store i32 %194, i32* %3, align 4
  br label %195

195:                                              ; preds = %141, %113, %89, %47
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local %struct.TYPE_16__* @elf_tdata(i32) #1

declare dso_local i8* @bfd_zalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
