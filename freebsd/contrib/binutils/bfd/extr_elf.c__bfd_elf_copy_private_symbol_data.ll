; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_copy_private_symbol_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_copy_private_symbol_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@MAP_ONESYMTAB = common dso_local global i32 0, align 4
@MAP_DYNSYMTAB = common dso_local global i32 0, align 4
@MAP_STRTAB = common dso_local global i32 0, align 4
@MAP_SHSTRTAB = common dso_local global i32 0, align 4
@MAP_SYM_SHNDX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_elf_copy_private_symbol_data(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i64 @bfd_get_flavour(i32* %13)
  %15 = load i64, i64* @bfd_target_elf_flavour, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load i32*, i32** %8, align 8
  %19 = call i64 @bfd_get_flavour(i32* %18)
  %20 = load i64, i64* @bfd_target_elf_flavour, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %4
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %5, align 4
  br label %99

24:                                               ; preds = %17
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call %struct.TYPE_8__* @elf_symbol_from(i32* %25, i32* %26)
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %10, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call %struct.TYPE_8__* @elf_symbol_from(i32* %28, i32* %29)
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %11, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %32 = icmp ne %struct.TYPE_8__* %31, null
  br i1 %32, label %33, label %97

33:                                               ; preds = %24
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %35 = icmp ne %struct.TYPE_8__* %34, null
  br i1 %35, label %36, label %97

36:                                               ; preds = %33
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @bfd_is_abs_section(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %97

43:                                               ; preds = %36
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @elf_onesymtab(i32* %49)
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* @MAP_ONESYMTAB, align 4
  store i32 %53, i32* %12, align 4
  br label %92

54:                                               ; preds = %43
  %55 = load i32, i32* %12, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @elf_dynsymtab(i32* %56)
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @MAP_DYNSYMTAB, align 4
  store i32 %60, i32* %12, align 4
  br label %91

61:                                               ; preds = %54
  %62 = load i32, i32* %12, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = call %struct.TYPE_9__* @elf_tdata(i32* %63)
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %62, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @MAP_STRTAB, align 4
  store i32 %69, i32* %12, align 4
  br label %90

70:                                               ; preds = %61
  %71 = load i32, i32* %12, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = call %struct.TYPE_9__* @elf_tdata(i32* %72)
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %71, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @MAP_SHSTRTAB, align 4
  store i32 %78, i32* %12, align 4
  br label %89

79:                                               ; preds = %70
  %80 = load i32, i32* %12, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = call %struct.TYPE_9__* @elf_tdata(i32* %81)
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %80, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @MAP_SYM_SHNDX, align 4
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %86, %79
  br label %89

89:                                               ; preds = %88, %77
  br label %90

90:                                               ; preds = %89, %68
  br label %91

91:                                               ; preds = %90, %59
  br label %92

92:                                               ; preds = %91, %52
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 4
  br label %97

97:                                               ; preds = %92, %36, %33, %24
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %97, %22
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i64 @bfd_get_flavour(i32*) #1

declare dso_local %struct.TYPE_8__* @elf_symbol_from(i32*, i32*) #1

declare dso_local i64 @bfd_is_abs_section(i32) #1

declare dso_local i32 @elf_onesymtab(i32*) #1

declare dso_local i32 @elf_dynsymtab(i32*) #1

declare dso_local %struct.TYPE_9__* @elf_tdata(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
