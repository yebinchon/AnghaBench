; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_update.c__libelf_write_phdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_update.c__libelf_write_phdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct._Elf_Extent = type { i64, i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i8*, i64, i32, i32 }

@ELF_EXTENT_PHDR = common dso_local global i64 0, align 8
@ELFCLASS32 = common dso_local global i32 0, align 4
@ELF_T_PHDR = common dso_local global i32 0, align 4
@ELF_TOFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i8*, %struct._Elf_Extent*)* @_libelf_write_phdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_libelf_write_phdr(%struct.TYPE_19__* %0, i8* %1, %struct._Elf_Extent* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._Elf_Extent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca %struct.TYPE_16__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct._Elf_Extent* %2, %struct._Elf_Extent** %7, align 8
  %18 = load %struct._Elf_Extent*, %struct._Elf_Extent** %7, align 8
  %19 = getelementptr inbounds %struct._Elf_Extent, %struct._Elf_Extent* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ELF_EXTENT_PHDR, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i8* @_libelf_ehdr(%struct.TYPE_19__* %28, i32 %29, i32 0)
  store i8* %30, i8** %10, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %16, align 8
  %36 = load i64, i64* %16, align 8
  %37 = icmp ugt i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @ELFCLASS32, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %3
  %44 = load i8*, i8** %10, align 8
  %45 = bitcast i8* %44 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %45, %struct.TYPE_18__** %11, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %17, align 8
  br label %55

49:                                               ; preds = %3
  %50 = load i8*, i8** %10, align 8
  %51 = bitcast i8* %50 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %51, %struct.TYPE_17__** %12, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %17, align 8
  br label %55

55:                                               ; preds = %49, %43
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %57 = call i32 @_libelf_elfmachine(%struct.TYPE_19__* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i64, i64* %17, align 8
  %59 = icmp ugt i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct._Elf_Extent*, %struct._Elf_Extent** %7, align 8
  %63 = getelementptr inbounds %struct._Elf_Extent, %struct._Elf_Extent* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %17, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i64, i64* %17, align 8
  %70 = load i32, i32* @ELF_T_PHDR, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i64 @_libelf_falign(i32 %70, i32 %71)
  %73 = urem i64 %69, %72
  %74 = icmp eq i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = call i32 @memset(%struct.TYPE_16__* %13, i32 0, i32 24)
  %78 = call i32 @memset(%struct.TYPE_16__* %14, i32 0, i32 24)
  %79 = load i32, i32* @ELF_T_PHDR, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i64, i64* %16, align 8
  %85 = call i64 @_libelf_fsize(i32 %79, i32 %80, i32 %83, i64 %84)
  store i64 %85, i64* %15, align 8
  %86 = load i64, i64* %15, align 8
  %87 = icmp ugt i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i8* @_libelf_getphdr(%struct.TYPE_19__* %90, i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i8* %92, i8** %93, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 3
  store i32 %96, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @ELF_T_PHDR, align 4
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  store i32 %99, i32* %100, align 8
  %101 = load i64, i64* %16, align 8
  %102 = load i32, i32* @ELF_T_PHDR, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @_libelf_msize(i32 %102, i32 %103, i32 %106)
  %108 = mul i64 %101, %107
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  store i64 %108, i64* %109, align 8
  %110 = load i64, i64* %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  store i64 %110, i64* %111, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = load %struct._Elf_Extent*, %struct._Elf_Extent** %7, align 8
  %114 = getelementptr inbounds %struct._Elf_Extent, %struct._Elf_Extent* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i8* %116, i8** %117, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @ELF_TOFILE, align 4
  %124 = call i32* @_libelf_xlate(%struct.TYPE_16__* %13, %struct.TYPE_16__* %14, i32 %120, i32 %121, i32 %122, i32 %123)
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %55
  store i32 -1, i32* %4, align 4
  br label %132

127:                                              ; preds = %55
  %128 = load i64, i64* %17, align 8
  %129 = load i64, i64* %15, align 8
  %130 = add i64 %128, %129
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %127, %126
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @_libelf_ehdr(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @_libelf_elfmachine(%struct.TYPE_19__*) #1

declare dso_local i64 @_libelf_falign(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i64 @_libelf_fsize(i32, i32, i32, i64) #1

declare dso_local i8* @_libelf_getphdr(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @_libelf_msize(i32, i32, i32) #1

declare dso_local i32* @_libelf_xlate(%struct.TYPE_16__*, %struct.TYPE_16__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
