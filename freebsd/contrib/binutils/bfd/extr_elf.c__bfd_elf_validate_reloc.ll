; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_validate_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_validate_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_14__*, i64, i32, %struct.TYPE_13__** }
%struct.TYPE_14__ = type { i32, i64, i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@BFD_RELOC_8_PCREL = common dso_local global i32 0, align 4
@BFD_RELOC_12_PCREL = common dso_local global i32 0, align 4
@BFD_RELOC_16_PCREL = common dso_local global i32 0, align 4
@BFD_RELOC_24_PCREL = common dso_local global i32 0, align 4
@BFD_RELOC_32_PCREL = common dso_local global i32 0, align 4
@BFD_RELOC_64_PCREL = common dso_local global i32 0, align 4
@BFD_RELOC_8 = common dso_local global i32 0, align 4
@BFD_RELOC_14 = common dso_local global i32 0, align 4
@BFD_RELOC_16 = common dso_local global i32 0, align 4
@BFD_RELOC_26 = common dso_local global i32 0, align 4
@BFD_RELOC_32 = common dso_local global i32 0, align 4
@BFD_RELOC_64 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%B: unsupported relocation type %s\00", align 1
@bfd_error_bad_value = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_elf_validate_reloc(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %118

20:                                               ; preds = %2
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %86

27:                                               ; preds = %20
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %45 [
    i32 8, label %33
    i32 12, label %35
    i32 16, label %37
    i32 24, label %39
    i32 32, label %41
    i32 64, label %43
  ]

33:                                               ; preds = %27
  %34 = load i32, i32* @BFD_RELOC_8_PCREL, align 4
  store i32 %34, i32* %6, align 4
  br label %46

35:                                               ; preds = %27
  %36 = load i32, i32* @BFD_RELOC_12_PCREL, align 4
  store i32 %36, i32* %6, align 4
  br label %46

37:                                               ; preds = %27
  %38 = load i32, i32* @BFD_RELOC_16_PCREL, align 4
  store i32 %38, i32* %6, align 4
  br label %46

39:                                               ; preds = %27
  %40 = load i32, i32* @BFD_RELOC_24_PCREL, align 4
  store i32 %40, i32* %6, align 4
  br label %46

41:                                               ; preds = %27
  %42 = load i32, i32* @BFD_RELOC_32_PCREL, align 4
  store i32 %42, i32* %6, align 4
  br label %46

43:                                               ; preds = %27
  %44 = load i32, i32* @BFD_RELOC_64_PCREL, align 4
  store i32 %44, i32* %6, align 4
  br label %46

45:                                               ; preds = %27
  br label %120

46:                                               ; preds = %43, %41, %39, %37, %35, %33
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call %struct.TYPE_14__* @bfd_reloc_type_lookup(%struct.TYPE_15__* %47, i32 %48)
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** %7, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %85

59:                                               ; preds = %46
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 8
  br label %84

74:                                               ; preds = %59
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = sub nsw i64 %81, %77
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 8
  br label %84

84:                                               ; preds = %74, %64
  br label %85

85:                                               ; preds = %84, %46
  br label %109

86:                                               ; preds = %20
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %104 [
    i32 8, label %92
    i32 14, label %94
    i32 16, label %96
    i32 26, label %98
    i32 32, label %100
    i32 64, label %102
  ]

92:                                               ; preds = %86
  %93 = load i32, i32* @BFD_RELOC_8, align 4
  store i32 %93, i32* %6, align 4
  br label %105

94:                                               ; preds = %86
  %95 = load i32, i32* @BFD_RELOC_14, align 4
  store i32 %95, i32* %6, align 4
  br label %105

96:                                               ; preds = %86
  %97 = load i32, i32* @BFD_RELOC_16, align 4
  store i32 %97, i32* %6, align 4
  br label %105

98:                                               ; preds = %86
  %99 = load i32, i32* @BFD_RELOC_26, align 4
  store i32 %99, i32* %6, align 4
  br label %105

100:                                              ; preds = %86
  %101 = load i32, i32* @BFD_RELOC_32, align 4
  store i32 %101, i32* %6, align 4
  br label %105

102:                                              ; preds = %86
  %103 = load i32, i32* @BFD_RELOC_64, align 4
  store i32 %103, i32* %6, align 4
  br label %105

104:                                              ; preds = %86
  br label %120

105:                                              ; preds = %102, %100, %98, %96, %94, %92
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call %struct.TYPE_14__* @bfd_reloc_type_lookup(%struct.TYPE_15__* %106, i32 %107)
  store %struct.TYPE_14__* %108, %struct.TYPE_14__** %7, align 8
  br label %109

109:                                              ; preds = %105, %85
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %111 = icmp ne %struct.TYPE_14__* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  store %struct.TYPE_14__* %113, %struct.TYPE_14__** %115, align 8
  br label %117

116:                                              ; preds = %109
  br label %120

117:                                              ; preds = %112
  br label %118

118:                                              ; preds = %117, %2
  %119 = load i32, i32* @TRUE, align 4
  store i32 %119, i32* %3, align 4
  br label %132

120:                                              ; preds = %116, %104, %45
  %121 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @_bfd_error_handler(i32 %121, %struct.TYPE_15__* %122, i32 %127)
  %129 = load i32, i32* @bfd_error_bad_value, align 4
  %130 = call i32 @bfd_set_error(i32 %129)
  %131 = load i32, i32* @FALSE, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %120, %118
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.TYPE_14__* @bfd_reloc_type_lookup(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @_bfd_error_handler(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
