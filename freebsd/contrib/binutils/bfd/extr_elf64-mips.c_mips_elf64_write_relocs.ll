; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-mips.c_mips_elf64_write_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-mips.c_mips_elf64_write_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_16__ }

@SEC_RELOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_14__*, i8*)* @mips_elf64_write_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_elf64_write_relocs(i32* %0, %struct.TYPE_14__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i64*
  store i64* %15, i64** %7, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %136

20:                                               ; preds = %3
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SEC_RELOC, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %136

28:                                               ; preds = %20
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %136

34:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %103, %34
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %106

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %46, i64 %48
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %99, %41
  %54 = load i32, i32* %12, align 4
  %55 = icmp ult i32 %54, 2
  br i1 %55, label %56, label %102

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = add i32 %57, 1
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp uge i32 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %102

64:                                               ; preds = %56
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = add i32 %68, 1
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %67, i64 %70
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  store %struct.TYPE_15__* %72, %struct.TYPE_15__** %13, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %11, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %95, label %78

78:                                               ; preds = %64
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %80, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @bfd_is_abs_section(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %78
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %89, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87, %78, %64
  br label %102

96:                                               ; preds = %87
  %97 = load i32, i32* %10, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %12, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %53

102:                                              ; preds = %95, %63, %53
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %10, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %35

106:                                              ; preds = %35
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %108 = call %struct.TYPE_12__* @elf_section_data(%struct.TYPE_14__* %107)
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  store %struct.TYPE_16__* %109, %struct.TYPE_16__** %9, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = icmp eq i64 %113, 4
  br i1 %114, label %115, label %121

115:                                              ; preds = %106
  %116 = load i32*, i32** %4, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %119 = load i8*, i8** %6, align 8
  %120 = call i32 @mips_elf64_write_rel(i32* %116, %struct.TYPE_14__* %117, %struct.TYPE_16__* %118, i32* %8, i8* %119)
  br label %136

121:                                              ; preds = %106
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = icmp eq i64 %125, 4
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load i32*, i32** %4, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = call i32 @mips_elf64_write_rela(i32* %128, %struct.TYPE_14__* %129, %struct.TYPE_16__* %130, i32* %8, i8* %131)
  br label %135

133:                                              ; preds = %121
  %134 = call i32 @BFD_ASSERT(i32 0)
  br label %135

135:                                              ; preds = %133, %127
  br label %136

136:                                              ; preds = %19, %27, %33, %135, %115
  ret void
}

declare dso_local i32 @bfd_is_abs_section(i32) #1

declare dso_local %struct.TYPE_12__* @elf_section_data(%struct.TYPE_14__*) #1

declare dso_local i32 @mips_elf64_write_rel(i32*, %struct.TYPE_14__*, %struct.TYPE_16__*, i32*, i8*) #1

declare dso_local i32 @mips_elf64_write_rela(i32*, %struct.TYPE_14__*, %struct.TYPE_16__*, i32*, i8*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
