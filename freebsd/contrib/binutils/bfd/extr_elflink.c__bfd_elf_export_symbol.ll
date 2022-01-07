; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_export_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_export_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i32, %struct.TYPE_11__, i64, i64, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.elf_info_failed = type { i32, %struct.TYPE_13__*, %struct.bfd_elf_version_tree* }
%struct.TYPE_13__ = type { i32 }
%struct.bfd_elf_version_tree = type { %struct.TYPE_12__, %struct.bfd_elf_version_expr* (%struct.TYPE_12__*, i32*, i32)*, %struct.TYPE_12__, %struct.bfd_elf_version_tree* }
%struct.bfd_elf_version_expr = type { i32 }
%struct.TYPE_12__ = type { i32* }

@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_elf_export_symbol(%struct.elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.elf_info_failed*, align 8
  %7 = alloca %struct.bfd_elf_version_tree*, align 8
  %8 = alloca %struct.bfd_elf_version_expr*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.elf_info_failed*
  store %struct.elf_info_failed* %10, %struct.elf_info_failed** %6, align 8
  %11 = load %struct.elf_info_failed*, %struct.elf_info_failed** %6, align 8
  %12 = getelementptr inbounds %struct.elf_info_failed, %struct.elf_info_failed* %11, i32 0, i32 1
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %19 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %3, align 4
  br label %142

24:                                               ; preds = %17, %2
  %25 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %26 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @bfd_link_hash_indirect, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %3, align 4
  br label %142

33:                                               ; preds = %24
  %34 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %35 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @bfd_link_hash_warning, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %42 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %47, %struct.elf_link_hash_entry** %4, align 8
  br label %48

48:                                               ; preds = %40, %33
  %49 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %50 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %140

53:                                               ; preds = %48
  %54 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %55 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %60 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %140

63:                                               ; preds = %58, %53
  %64 = load %struct.elf_info_failed*, %struct.elf_info_failed** %6, align 8
  %65 = getelementptr inbounds %struct.elf_info_failed, %struct.elf_info_failed* %64, i32 0, i32 2
  %66 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %65, align 8
  store %struct.bfd_elf_version_tree* %66, %struct.bfd_elf_version_tree** %7, align 8
  br label %67

67:                                               ; preds = %116, %63
  %68 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %69 = icmp ne %struct.bfd_elf_version_tree* %68, null
  br i1 %69, label %70, label %120

70:                                               ; preds = %67
  %71 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %72 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %92

76:                                               ; preds = %70
  %77 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %78 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %77, i32 0, i32 1
  %79 = load %struct.bfd_elf_version_expr* (%struct.TYPE_12__*, i32*, i32)*, %struct.bfd_elf_version_expr* (%struct.TYPE_12__*, i32*, i32)** %78, align 8
  %80 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %81 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %80, i32 0, i32 2
  %82 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %83 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call %struct.bfd_elf_version_expr* %79(%struct.TYPE_12__* %81, i32* null, i32 %86)
  store %struct.bfd_elf_version_expr* %87, %struct.bfd_elf_version_expr** %8, align 8
  %88 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %8, align 8
  %89 = icmp ne %struct.bfd_elf_version_expr* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %76
  br label %126

91:                                               ; preds = %76
  br label %92

92:                                               ; preds = %91, %70
  %93 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %94 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %115

98:                                               ; preds = %92
  %99 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %100 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %99, i32 0, i32 1
  %101 = load %struct.bfd_elf_version_expr* (%struct.TYPE_12__*, i32*, i32)*, %struct.bfd_elf_version_expr* (%struct.TYPE_12__*, i32*, i32)** %100, align 8
  %102 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %103 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %102, i32 0, i32 0
  %104 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %105 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call %struct.bfd_elf_version_expr* %101(%struct.TYPE_12__* %103, i32* null, i32 %108)
  store %struct.bfd_elf_version_expr* %109, %struct.bfd_elf_version_expr** %8, align 8
  %110 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %8, align 8
  %111 = icmp ne %struct.bfd_elf_version_expr* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %98
  %113 = load i32, i32* @TRUE, align 4
  store i32 %113, i32* %3, align 4
  br label %142

114:                                              ; preds = %98
  br label %115

115:                                              ; preds = %114, %92
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %118 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %117, i32 0, i32 3
  %119 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %118, align 8
  store %struct.bfd_elf_version_tree* %119, %struct.bfd_elf_version_tree** %7, align 8
  br label %67

120:                                              ; preds = %67
  %121 = load %struct.elf_info_failed*, %struct.elf_info_failed** %6, align 8
  %122 = getelementptr inbounds %struct.elf_info_failed, %struct.elf_info_failed* %121, i32 0, i32 2
  %123 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %122, align 8
  %124 = icmp ne %struct.bfd_elf_version_tree* %123, null
  br i1 %124, label %139, label %125

125:                                              ; preds = %120
  br label %126

126:                                              ; preds = %125, %90
  %127 = load %struct.elf_info_failed*, %struct.elf_info_failed** %6, align 8
  %128 = getelementptr inbounds %struct.elf_info_failed, %struct.elf_info_failed* %127, i32 0, i32 1
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %131 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.TYPE_13__* %129, %struct.elf_link_hash_entry* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %126
  %134 = load i32, i32* @TRUE, align 4
  %135 = load %struct.elf_info_failed*, %struct.elf_info_failed** %6, align 8
  %136 = getelementptr inbounds %struct.elf_info_failed, %struct.elf_info_failed* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @FALSE, align 4
  store i32 %137, i32* %3, align 4
  br label %142

138:                                              ; preds = %126
  br label %139

139:                                              ; preds = %138, %120
  br label %140

140:                                              ; preds = %139, %58, %48
  %141 = load i32, i32* @TRUE, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %133, %112, %31, %22
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @bfd_elf_link_record_dynamic_symbol(%struct.TYPE_13__*, %struct.elf_link_hash_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
