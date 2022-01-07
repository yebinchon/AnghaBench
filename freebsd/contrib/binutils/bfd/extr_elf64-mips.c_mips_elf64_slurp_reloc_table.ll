; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-mips.c_mips_elf64_slurp_reloc_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-mips.c_mips_elf64_slurp_reloc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i64, i32* }
%struct.bfd_elf_section_data = type { %struct.TYPE_9__*, %struct.TYPE_9__, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@SEC_RELOC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i32**, i32)* @mips_elf64_slurp_reloc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_elf64_slurp_reloc_table(i32* %0, %struct.TYPE_8__* %1, i32** %2, i32 %3) #0 {
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
  br label %160

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
  br label %160

42:                                               ; preds = %35
  %43 = load %struct.bfd_elf_section_data*, %struct.bfd_elf_section_data** %10, align 8
  %44 = getelementptr inbounds %struct.bfd_elf_section_data, %struct.bfd_elf_section_data* %43, i32 0, i32 2
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %11, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %46 = call i32 @NUM_SHDR_ENTRIES(%struct.TYPE_9__* %45)
  store i32 %46, i32* %13, align 4
  %47 = load %struct.bfd_elf_section_data*, %struct.bfd_elf_section_data** %10, align 8
  %48 = getelementptr inbounds %struct.bfd_elf_section_data, %struct.bfd_elf_section_data* %47, i32 0, i32 0
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
  br label %160

99:                                               ; preds = %92
  %100 = load %struct.bfd_elf_section_data*, %struct.bfd_elf_section_data** %10, align 8
  %101 = getelementptr inbounds %struct.bfd_elf_section_data, %struct.bfd_elf_section_data* %100, i32 0, i32 1
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
  %108 = mul nsw i32 %107, 3
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 4
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %16, align 4
  %112 = load i32*, i32** %6, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call i32* @bfd_alloc(i32* %112, i32 %113)
  store i32* %114, i32** %15, align 8
  %115 = load i32*, i32** %15, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %104
  %118 = load i32, i32* @FALSE, align 4
  store i32 %118, i32* %5, align 4
  br label %160

119:                                              ; preds = %104
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  %122 = load i32*, i32** %6, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %125 = load i32, i32* %13, align 4
  %126 = load i32*, i32** %15, align 8
  %127 = load i32**, i32*** %8, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @mips_elf64_slurp_one_reloc_table(i32* %122, %struct.TYPE_8__* %123, %struct.TYPE_9__* %124, i32 %125, i32* %126, i32** %127, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %119
  %132 = load i32, i32* @FALSE, align 4
  store i32 %132, i32* %5, align 4
  br label %160

133:                                              ; preds = %119
  %134 = load %struct.bfd_elf_section_data*, %struct.bfd_elf_section_data** %10, align 8
  %135 = getelementptr inbounds %struct.bfd_elf_section_data, %struct.bfd_elf_section_data* %134, i32 0, i32 0
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = icmp ne %struct.TYPE_9__* %136, null
  br i1 %137, label %138, label %155

138:                                              ; preds = %133
  %139 = load i32*, i32** %6, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %142 = load i32, i32* %14, align 4
  %143 = load i32*, i32** %15, align 8
  %144 = load i32, i32* %13, align 4
  %145 = mul nsw i32 %144, 3
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  %148 = load i32**, i32*** %8, align 8
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @mips_elf64_slurp_one_reloc_table(i32* %139, %struct.TYPE_8__* %140, %struct.TYPE_9__* %141, i32 %142, i32* %147, i32** %148, i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %138
  %153 = load i32, i32* @FALSE, align 4
  store i32 %153, i32* %5, align 4
  br label %160

154:                                              ; preds = %138
  br label %155

155:                                              ; preds = %154, %133
  %156 = load i32*, i32** %15, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 4
  store i32* %156, i32** %158, align 8
  %159 = load i32, i32* @TRUE, align 4
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %155, %152, %131, %117, %97, %40, %23
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local %struct.bfd_elf_section_data* @elf_section_data(%struct.TYPE_8__*) #1

declare dso_local i32 @NUM_SHDR_ENTRIES(%struct.TYPE_9__*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32* @bfd_alloc(i32*, i32) #1

declare dso_local i32 @mips_elf64_slurp_one_reloc_table(i32*, %struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32*, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
