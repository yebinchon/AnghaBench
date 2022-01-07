; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-sparc.c_elf64_sparc_canonicalize_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-sparc.c_elf64_sparc_canonicalize_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.elf_backend_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32*, %struct.TYPE_7__*, i32**, i32)* }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_7__*, i32**, i32**)* @elf64_sparc_canonicalize_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elf64_sparc_canonicalize_reloc(i32* %0, %struct.TYPE_7__* %1, i32** %2, i32** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.elf_backend_data*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %13)
  store %struct.elf_backend_data* %14, %struct.elf_backend_data** %12, align 8
  %15 = load %struct.elf_backend_data*, %struct.elf_backend_data** %12, align 8
  %16 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32 (i32*, %struct.TYPE_7__*, i32**, i32)*, i32 (i32*, %struct.TYPE_7__*, i32**, i32)** %18, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = load i32**, i32*** %9, align 8
  %23 = load i32, i32* @FALSE, align 4
  %24 = call i32 %19(i32* %20, %struct.TYPE_7__* %21, i32** %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  store i64 -1, i64* %5, align 8
  br label %49

27:                                               ; preds = %4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %42, %27
  %32 = load i32, i32* %11, align 4
  %33 = zext i32 %32 to i64
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = call i64 @canon_reloc_count(%struct.TYPE_7__* %34)
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load i32*, i32** %10, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %10, align 8
  %40 = load i32**, i32*** %8, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i32 1
  store i32** %41, i32*** %8, align 8
  store i32* %38, i32** %40, align 8
  br label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %11, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %31

45:                                               ; preds = %31
  %46 = load i32**, i32*** %8, align 8
  store i32* null, i32** %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = call i64 @canon_reloc_count(%struct.TYPE_7__* %47)
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %45, %26
  %50 = load i64, i64* %5, align 8
  ret i64 %50
}

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32*) #1

declare dso_local i64 @canon_reloc_count(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
