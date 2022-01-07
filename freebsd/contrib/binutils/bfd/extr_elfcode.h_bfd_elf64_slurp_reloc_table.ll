; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfcode.h_bfd_elf64_slurp_reloc_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfcode.h_bfd_elf64_slurp_reloc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i64, i32* }
%struct.bfd_elf_section_data = type { %struct.TYPE_9__, %struct.TYPE_9__*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@SEC_RELOC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_slurp_reloc_table(i32* %0, %struct.TYPE_8__* %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bfd_elf_section_data*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = call %struct.bfd_elf_section_data* @elf_section_data(%struct.TYPE_8__* %17)
  store %struct.bfd_elf_section_data* %18, %struct.bfd_elf_section_data** %10, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %5, align 4
  br label %153

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %92, label %28

28:                                               ; preds = %25
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SEC_RELOC, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35, %28
  %41 = load i32, i32* @TRUE, align 4
  store i32 %41, i32* %5, align 4
  br label %153

42:                                               ; preds = %35
  %43 = load %struct.bfd_elf_section_data*, %struct.bfd_elf_section_data** %10, align 8
  %44 = getelementptr inbounds %struct.bfd_elf_section_data, %struct.bfd_elf_section_data* %43, i32 0, i32 2
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %11, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %46 = call i32 @NUM_SHDR_ENTRIES(%struct.TYPE_9__* %45)
  store i32 %46, i32* %13, align 4
  %47 = load %struct.bfd_elf_section_data*, %struct.bfd_elf_section_data** %10, align 8
  %48 = getelementptr inbounds %struct.bfd_elf_section_data, %struct.bfd_elf_section_data* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %12, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %51 = icmp ne %struct.TYPE_9__* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %54 = call i32 @NUM_SHDR_ENTRIES(%struct.TYPE_9__* %53)
  br label %56

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i32 [ %54, %52 ], [ 0, %55 ]
  store i32 %57, i32* %14, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = icmp eq i64 %60, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @BFD_ASSERT(i32 %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %70, %73
  br i1 %74, label %88, label %75

75:                                               ; preds = %56
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %77 = icmp ne %struct.TYPE_9__* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br label %86

86:                                               ; preds = %78, %75
  %87 = phi i1 [ false, %75 ], [ %85, %78 ]
  br label %88

88:                                               ; preds = %86, %56
  %89 = phi i1 [ true, %56 ], [ %87, %86 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 @BFD_ASSERT(i32 %90)
  br label %104

92:                                               ; preds = %25
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %5, align 4
  br label %153

99:                                               ; preds = %92
  %100 = load %struct.bfd_elf_section_data*, %struct.bfd_elf_section_data** %10, align 8
  %101 = getelementptr inbounds %struct.bfd_elf_section_data, %struct.bfd_elf_section_data* %100, i32 0, i32 0
  store %struct.TYPE_9__* %101, %struct.TYPE_9__** %11, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %103 = call i32 @NUM_SHDR_ENTRIES(%struct.TYPE_9__* %102)
  store i32 %103, i32* %13, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %12, align 8
  store i32 0, i32* %14, align 4
  br label %104

104:                                              ; preds = %99, %88
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 4
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %16, align 4
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %16, align 4
  %113 = call i32* @bfd_alloc(i32* %111, i32 %112)
  store i32* %113, i32** %15, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %104
  %117 = load i32, i32* @FALSE, align 4
  store i32 %117, i32* %5, align 4
  br label %153

118:                                              ; preds = %104
  %119 = load i32*, i32** %6, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %122 = load i32, i32* %13, align 4
  %123 = load i32*, i32** %15, align 8
  %124 = load i32**, i32*** %8, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @elf_slurp_reloc_table_from_section(i32* %119, %struct.TYPE_8__* %120, %struct.TYPE_9__* %121, i32 %122, i32* %123, i32** %124, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %118
  %129 = load i32, i32* @FALSE, align 4
  store i32 %129, i32* %5, align 4
  br label %153

130:                                              ; preds = %118
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %132 = icmp ne %struct.TYPE_9__* %131, null
  br i1 %132, label %133, label %148

133:                                              ; preds = %130
  %134 = load i32*, i32** %6, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %137 = load i32, i32* %14, align 4
  %138 = load i32*, i32** %15, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32**, i32*** %8, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @elf_slurp_reloc_table_from_section(i32* %134, %struct.TYPE_8__* %135, %struct.TYPE_9__* %136, i32 %137, i32* %141, i32** %142, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %133
  %147 = load i32, i32* @FALSE, align 4
  store i32 %147, i32* %5, align 4
  br label %153

148:                                              ; preds = %133, %130
  %149 = load i32*, i32** %15, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 4
  store i32* %149, i32** %151, align 8
  %152 = load i32, i32* @TRUE, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %148, %146, %128, %116, %97, %40, %23
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local %struct.bfd_elf_section_data* @elf_section_data(%struct.TYPE_8__*) #1

declare dso_local i32 @NUM_SHDR_ENTRIES(%struct.TYPE_9__*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32* @bfd_alloc(i32*, i32) #1

declare dso_local i32 @elf_slurp_reloc_table_from_section(i32*, %struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32*, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
