; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_output_plt_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_output_plt_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.elf32_arm_link_hash_table = type { i32, i64, i64 }
%struct.elf32_arm_link_hash_entry = type { i64 }

@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@ARM_MAP_ARM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ARM_MAP_DATA = common dso_local global i32 0, align 4
@ARM_MAP_THUMB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_link_hash_entry*, i8*)* @elf32_arm_output_plt_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf32_arm_output_plt_map(%struct.elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.elf32_arm_link_hash_table*, align 8
  %8 = alloca %struct.elf32_arm_link_hash_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %6, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(i32 %15)
  store %struct.elf32_arm_link_hash_table* %16, %struct.elf32_arm_link_hash_table** %7, align 8
  %17 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %18 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @bfd_link_hash_indirect, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %3, align 4
  br label %163

25:                                               ; preds = %2
  %26 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %27 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @bfd_link_hash_warning, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %34 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %39, %struct.elf_link_hash_entry** %4, align 8
  br label %40

40:                                               ; preds = %32, %25
  %41 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %42 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, -1
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @TRUE, align 4
  store i32 %47, i32* %3, align 4
  br label %163

48:                                               ; preds = %40
  %49 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %50 = bitcast %struct.elf_link_hash_entry* %49 to %struct.elf32_arm_link_hash_entry*
  store %struct.elf32_arm_link_hash_entry* %50, %struct.elf32_arm_link_hash_entry** %8, align 8
  %51 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %52 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %9, align 8
  %55 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %56 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %48
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = load i32, i32* @ARM_MAP_ARM, align 4
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @elf32_arm_ouput_plt_map_sym(%struct.TYPE_11__* %60, i32 %61, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %3, align 4
  br label %163

67:                                               ; preds = %59
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = load i32, i32* @ARM_MAP_DATA, align 4
  %70 = load i64, i64* %9, align 8
  %71 = add nsw i64 %70, 4
  %72 = call i32 @elf32_arm_ouput_plt_map_sym(%struct.TYPE_11__* %68, i32 %69, i64 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %3, align 4
  br label %163

76:                                               ; preds = %67
  br label %161

77:                                               ; preds = %48
  %78 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %79 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %118

82:                                               ; preds = %77
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %84 = load i32, i32* @ARM_MAP_ARM, align 4
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @elf32_arm_ouput_plt_map_sym(%struct.TYPE_11__* %83, i32 %84, i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %3, align 4
  br label %163

90:                                               ; preds = %82
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = load i32, i32* @ARM_MAP_DATA, align 4
  %93 = load i64, i64* %9, align 8
  %94 = add nsw i64 %93, 8
  %95 = call i32 @elf32_arm_ouput_plt_map_sym(%struct.TYPE_11__* %91, i32 %92, i64 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %3, align 4
  br label %163

99:                                               ; preds = %90
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %101 = load i32, i32* @ARM_MAP_ARM, align 4
  %102 = load i64, i64* %9, align 8
  %103 = add nsw i64 %102, 12
  %104 = call i32 @elf32_arm_ouput_plt_map_sym(%struct.TYPE_11__* %100, i32 %101, i64 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* @FALSE, align 4
  store i32 %107, i32* %3, align 4
  br label %163

108:                                              ; preds = %99
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %110 = load i32, i32* @ARM_MAP_DATA, align 4
  %111 = load i64, i64* %9, align 8
  %112 = add nsw i64 %111, 20
  %113 = call i32 @elf32_arm_ouput_plt_map_sym(%struct.TYPE_11__* %109, i32 %110, i64 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %108
  %116 = load i32, i32* @FALSE, align 4
  store i32 %116, i32* %3, align 4
  br label %163

117:                                              ; preds = %108
  br label %160

118:                                              ; preds = %77
  %119 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %8, align 8
  %120 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %7, align 8
  %125 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  br label %129

129:                                              ; preds = %123, %118
  %130 = phi i1 [ false, %118 ], [ %128, %123 ]
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %129
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %136 = load i32, i32* @ARM_MAP_THUMB, align 4
  %137 = load i64, i64* %9, align 8
  %138 = sub nsw i64 %137, 4
  %139 = call i32 @elf32_arm_ouput_plt_map_sym(%struct.TYPE_11__* %135, i32 %136, i64 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %134
  %142 = load i32, i32* @FALSE, align 4
  store i32 %142, i32* %3, align 4
  br label %163

143:                                              ; preds = %134
  br label %144

144:                                              ; preds = %143, %129
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load i64, i64* %9, align 8
  %149 = icmp eq i64 %148, 20
  br i1 %149, label %150, label %159

150:                                              ; preds = %147, %144
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %152 = load i32, i32* @ARM_MAP_ARM, align 4
  %153 = load i64, i64* %9, align 8
  %154 = call i32 @elf32_arm_ouput_plt_map_sym(%struct.TYPE_11__* %151, i32 %152, i64 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %150
  %157 = load i32, i32* @FALSE, align 4
  store i32 %157, i32* %3, align 4
  br label %163

158:                                              ; preds = %150
  br label %159

159:                                              ; preds = %158, %147
  br label %160

160:                                              ; preds = %159, %117
  br label %161

161:                                              ; preds = %160, %76
  %162 = load i32, i32* @TRUE, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %161, %156, %141, %115, %106, %97, %88, %74, %65, %46, %23
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(i32) #1

declare dso_local i32 @elf32_arm_ouput_plt_map_sym(%struct.TYPE_11__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
