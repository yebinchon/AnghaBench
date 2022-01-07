; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coff-arm.c_bfd_arm_wince_pe_process_before_allocation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coff-arm.c_bfd_arm_wince_pe_process_before_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_11__* }
%struct.bfd_link_info = type { i64 }
%struct.coff_arm_link_hash_table = type { i32, i32* }
%struct.internal_reloc = type { i16, i64 }
%struct.coff_link_hash_entry = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%B: illegal symbol index in reloc: %d\00", align 1
@C_THUMBEXTFUNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_arm_process_before_allocation(%struct.TYPE_10__* %0, %struct.bfd_link_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.coff_arm_link_hash_table*, align 8
  %10 = alloca %struct.internal_reloc*, align 8
  %11 = alloca %struct.internal_reloc*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i64, align 8
  %14 = alloca %struct.coff_link_hash_entry*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %16 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* %4, align 4
  br label %138

21:                                               ; preds = %3
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = call i32 @_bfd_coff_get_external_symbols(%struct.TYPE_10__* %22)
  %24 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %25 = call %struct.coff_arm_link_hash_table* @coff_arm_hash_table(%struct.bfd_link_info* %24)
  store %struct.coff_arm_link_hash_table* %25, %struct.coff_arm_link_hash_table** %9, align 8
  %26 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %9, align 8
  %27 = icmp ne %struct.coff_arm_link_hash_table* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @BFD_ASSERT(i32 %28)
  %30 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %9, align 8
  %31 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @BFD_ASSERT(i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.coff_arm_link_hash_table*, %struct.coff_arm_link_hash_table** %9, align 8
  %38 = getelementptr inbounds %struct.coff_arm_link_hash_table, %struct.coff_arm_link_hash_table* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %8, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %43 = icmp eq %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %21
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* %4, align 4
  br label %138

46:                                               ; preds = %21
  br label %47

47:                                               ; preds = %132, %46
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %49 = icmp ne %struct.TYPE_11__* %48, null
  br i1 %49, label %50, label %136

50:                                               ; preds = %47
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %132

56:                                               ; preds = %50
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %59 = call %struct.internal_reloc* @_bfd_coff_read_internal_relocs(%struct.TYPE_10__* %57, %struct.TYPE_11__* %58, i32 1, i32 0, i32 0, i32 0)
  store %struct.internal_reloc* %59, %struct.internal_reloc** %10, align 8
  %60 = load %struct.internal_reloc*, %struct.internal_reloc** %10, align 8
  %61 = icmp ne %struct.internal_reloc* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i32 @BFD_ASSERT(i32 %62)
  %64 = load %struct.internal_reloc*, %struct.internal_reloc** %10, align 8
  store %struct.internal_reloc* %64, %struct.internal_reloc** %11, align 8
  br label %65

65:                                               ; preds = %128, %56
  %66 = load %struct.internal_reloc*, %struct.internal_reloc** %11, align 8
  %67 = load %struct.internal_reloc*, %struct.internal_reloc** %10, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %67, i64 %70
  %72 = icmp ult %struct.internal_reloc* %66, %71
  br i1 %72, label %73, label %131

73:                                               ; preds = %65
  %74 = load %struct.internal_reloc*, %struct.internal_reloc** %11, align 8
  %75 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %74, i32 0, i32 0
  %76 = load i16, i16* %75, align 8
  store i16 %76, i16* %12, align 2
  %77 = load %struct.internal_reloc*, %struct.internal_reloc** %11, align 8
  %78 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %13, align 8
  %80 = load i64, i64* %13, align 8
  %81 = icmp eq i64 %80, -1
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %128

83:                                               ; preds = %73
  %84 = load i64, i64* %13, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = call i64 @obj_conv_table_size(%struct.TYPE_10__* %85)
  %87 = icmp sge i64 %84, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = load i64, i64* %13, align 8
  %92 = call i32 @_bfd_error_handler(i32 %89, %struct.TYPE_10__* %90, i64 %91)
  br label %128

93:                                               ; preds = %83
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %95 = call %struct.coff_link_hash_entry** @obj_coff_sym_hashes(%struct.TYPE_10__* %94)
  %96 = load i64, i64* %13, align 8
  %97 = getelementptr inbounds %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %95, i64 %96
  %98 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %97, align 8
  store %struct.coff_link_hash_entry* %98, %struct.coff_link_hash_entry** %14, align 8
  %99 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %14, align 8
  %100 = icmp eq %struct.coff_link_hash_entry* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %128

102:                                              ; preds = %93
  %103 = load i16, i16* %12, align 2
  %104 = zext i16 %103 to i32
  switch i32 %104, label %126 [
    i32 132, label %105
    i32 131, label %116
  ]

105:                                              ; preds = %102
  %106 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %14, align 8
  %107 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @C_THUMBEXTFUNC, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %113 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %14, align 8
  %114 = call i32 @record_arm_to_thumb_glue(%struct.bfd_link_info* %112, %struct.coff_link_hash_entry* %113)
  br label %115

115:                                              ; preds = %111, %105
  br label %127

116:                                              ; preds = %102
  %117 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %14, align 8
  %118 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  switch i32 %119, label %124 [
    i32 130, label %120
    i32 128, label %120
    i32 129, label %120
  ]

120:                                              ; preds = %116, %116, %116
  %121 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %122 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %14, align 8
  %123 = call i32 @record_thumb_to_arm_glue(%struct.bfd_link_info* %121, %struct.coff_link_hash_entry* %122)
  br label %125

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %120
  br label %127

126:                                              ; preds = %102
  br label %127

127:                                              ; preds = %126, %125, %115
  br label %128

128:                                              ; preds = %127, %101, %88, %82
  %129 = load %struct.internal_reloc*, %struct.internal_reloc** %11, align 8
  %130 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %129, i32 1
  store %struct.internal_reloc* %130, %struct.internal_reloc** %11, align 8
  br label %65

131:                                              ; preds = %65
  br label %132

132:                                              ; preds = %131, %55
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  store %struct.TYPE_11__* %135, %struct.TYPE_11__** %8, align 8
  br label %47

136:                                              ; preds = %47
  %137 = load i32, i32* @TRUE, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %136, %44, %19
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @_bfd_coff_get_external_symbols(%struct.TYPE_10__*) #1

declare dso_local %struct.coff_arm_link_hash_table* @coff_arm_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local %struct.internal_reloc* @_bfd_coff_read_internal_relocs(%struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32, i32, i32) #1

declare dso_local i64 @obj_conv_table_size(%struct.TYPE_10__*) #1

declare dso_local i32 @_bfd_error_handler(i32, %struct.TYPE_10__*, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.coff_link_hash_entry** @obj_coff_sym_hashes(%struct.TYPE_10__*) #1

declare dso_local i32 @record_arm_to_thumb_glue(%struct.bfd_link_info*, %struct.coff_link_hash_entry*) #1

declare dso_local i32 @record_thumb_to_arm_glue(%struct.bfd_link_info*, %struct.coff_link_hash_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
