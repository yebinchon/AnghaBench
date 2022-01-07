; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_update.c__libelf_write_ehdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_update.c__libelf_write_ehdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct._Elf_Extent = type { i64, i64 }
%struct.TYPE_9__ = type { i8*, i64, i32, i32 }

@ELF_EXTENT_EHDR = common dso_local global i64 0, align 8
@ELF_T_EHDR = common dso_local global i32 0, align 4
@ELF_TOFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, %struct._Elf_Extent*)* @_libelf_write_ehdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_libelf_write_ehdr(%struct.TYPE_10__* %0, i8* %1, %struct._Elf_Extent* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._Elf_Extent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_9__, align 8
  %14 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct._Elf_Extent* %2, %struct._Elf_Extent** %7, align 8
  %15 = load %struct._Elf_Extent*, %struct._Elf_Extent** %7, align 8
  %16 = getelementptr inbounds %struct._Elf_Extent, %struct._Elf_Extent* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ELF_EXTENT_EHDR, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct._Elf_Extent*, %struct._Elf_Extent** %7, align 8
  %23 = getelementptr inbounds %struct._Elf_Extent, %struct._Elf_Extent* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i8* @_libelf_ehdr(%struct.TYPE_10__* %31, i32 %32, i32 0)
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* @ELF_T_EHDR, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @_libelf_fsize(i32 %38, i32 %39, i32 %42, i64 1)
  store i64 %43, i64* %11, align 8
  %44 = load i32, i32* @ELF_T_EHDR, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @_libelf_msize(i32 %44, i32 %45, i32 %48)
  store i64 %49, i64* %12, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = call i32 @_libelf_elfmachine(%struct.TYPE_10__* %50)
  store i32 %51, i32* %9, align 4
  %52 = call i32 @memset(%struct.TYPE_9__* %13, i32 0, i32 24)
  %53 = call i32 @memset(%struct.TYPE_9__* %14, i32 0, i32 24)
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store i8* %54, i8** %55, align 8
  %56 = load i64, i64* %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  store i64 %56, i64* %57, align 8
  %58 = load i32, i32* @ELF_T_EHDR, align 4
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  store i32 %58, i32* %59, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  store i32 %62, i32* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i8* %65, i8** %66, align 8
  %67 = load i64, i64* %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  store i64 %67, i64* %68, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @ELF_TOFILE, align 4
  %75 = call i32* @_libelf_xlate(%struct.TYPE_9__* %13, %struct.TYPE_9__* %14, i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %81

78:                                               ; preds = %3
  %79 = load i64, i64* %11, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %78, %77
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @_libelf_ehdr(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @_libelf_fsize(i32, i32, i32, i64) #1

declare dso_local i64 @_libelf_msize(i32, i32, i32) #1

declare dso_local i32 @_libelf_elfmachine(%struct.TYPE_10__*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32* @_libelf_xlate(%struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
