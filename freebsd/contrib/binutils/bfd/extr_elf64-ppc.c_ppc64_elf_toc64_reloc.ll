; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_toc64_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_toc64_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@TOC_BASE_OFF = common dso_local global i64 0, align 8
@bfd_reloc_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, i32*, i8*, %struct.TYPE_9__*, i32*, i8**)* @ppc64_elf_toc64_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc64_elf_toc64_reloc(i32* %0, %struct.TYPE_10__* %1, i32* %2, i8* %3, %struct.TYPE_9__* %4, i32* %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  %18 = load i32*, i32** %14, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %7
  %21 = load i32*, i32** %9, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = load i8**, i8*** %15, align 8
  %28 = call i32 @bfd_elf_generic_reloc(i32* %21, %struct.TYPE_10__* %22, i32* %23, i8* %24, %struct.TYPE_9__* %25, i32* %26, i8** %27)
  store i32 %28, i32* %8, align 4
  br label %63

29:                                               ; preds = %7
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @_bfd_get_gp_value(i32 %34)
  store i64 %35, i64* %16, align 8
  %36 = load i64, i64* %16, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @ppc64_elf_toc(i32 %43)
  store i64 %44, i64* %16, align 8
  br label %45

45:                                               ; preds = %38, %29
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @bfd_octets_per_byte(i32* %49)
  %51 = mul nsw i32 %48, %50
  store i32 %51, i32* %17, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* @TOC_BASE_OFF, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i8*, i8** %12, align 8
  %57 = bitcast i8* %56 to i32*
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i32 @bfd_put_64(i32* %52, i64 %55, i32* %60)
  %62 = load i32, i32* @bfd_reloc_ok, align 4
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %45, %20
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local i32 @bfd_elf_generic_reloc(i32*, %struct.TYPE_10__*, i32*, i8*, %struct.TYPE_9__*, i32*, i8**) #1

declare dso_local i64 @_bfd_get_gp_value(i32) #1

declare dso_local i64 @ppc64_elf_toc(i32) #1

declare dso_local i32 @bfd_octets_per_byte(i32*) #1

declare dso_local i32 @bfd_put_64(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
