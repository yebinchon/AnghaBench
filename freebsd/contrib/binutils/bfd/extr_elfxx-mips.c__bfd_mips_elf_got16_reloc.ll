; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_got16_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_got16_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@BSF_GLOBAL = common dso_local global i32 0, align 4
@BSF_WEAK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_mips_elf_got16_reloc(i32* %0, i32* %1, %struct.TYPE_6__* %2, i8* %3, i32* %4, i32* %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BSF_GLOBAL, align 4
  %20 = load i32, i32* @BSF_WEAK, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %7
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %26 = call i32 @bfd_get_section(%struct.TYPE_6__* %25)
  %27 = call i64 @bfd_is_und_section(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %31 = call i32 @bfd_get_section(%struct.TYPE_6__* %30)
  %32 = call i64 @bfd_is_com_section(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29, %24, %7
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = load i8**, i8*** %15, align 8
  %42 = call i32 @_bfd_mips_elf_generic_reloc(i32* %35, i32* %36, %struct.TYPE_6__* %37, i8* %38, i32* %39, i32* %40, i8** %41)
  store i32 %42, i32* %8, align 4
  br label %52

43:                                               ; preds = %29
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = load i8**, i8*** %15, align 8
  %51 = call i32 @_bfd_mips_elf_hi16_reloc(i32* %44, i32* %45, %struct.TYPE_6__* %46, i8* %47, i32* %48, i32* %49, i8** %50)
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %43, %34
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local i64 @bfd_is_und_section(i32) #1

declare dso_local i32 @bfd_get_section(%struct.TYPE_6__*) #1

declare dso_local i64 @bfd_is_com_section(i32) #1

declare dso_local i32 @_bfd_mips_elf_generic_reloc(i32*, i32*, %struct.TYPE_6__*, i8*, i32*, i32*, i8**) #1

declare dso_local i32 @_bfd_mips_elf_hi16_reloc(i32*, i32*, %struct.TYPE_6__*, i8*, i32*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
