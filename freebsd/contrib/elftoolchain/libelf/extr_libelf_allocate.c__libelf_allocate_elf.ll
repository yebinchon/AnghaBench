; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_allocate.c__libelf_allocate_elf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_allocate.c__libelf_allocate_elf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i64, i32*, i32*, i32, i64, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@RESOURCE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ELFDATANONE = common dso_local global i32 0, align 4
@ELFCLASSNONE = common dso_local global i32 0, align 4
@ELF_C_NULL = common dso_local global i32 0, align 4
@ELF_K_NONE = common dso_local global i32 0, align 4
@version = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @_libelf_allocate_elf() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = call %struct.TYPE_6__* @malloc(i32 80)
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %2, align 8
  %4 = icmp eq %struct.TYPE_6__* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @RESOURCE, align 4
  %7 = load i32, i32* @errno, align 4
  %8 = call i32 @LIBELF_SET_ERROR(i32 %6, i32 %7)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %45

9:                                                ; preds = %0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 12
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* @ELFDATANONE, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 11
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @ELFCLASSNONE, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 10
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @ELF_C_NULL, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32 -1, i32* %25, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 8
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @ELF_K_NONE, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 6
  store i32* null, i32** %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 5
  store i32* null, i32** %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @version, align 4
  %38 = call i32 @LIBELF_PRIVATE(i32 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = call i32 @memset(i32* %42, i32 0, i32 4)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %1, align 8
  br label %45

45:                                               ; preds = %9, %5
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  ret %struct.TYPE_6__* %46
}

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local i32 @LIBELF_PRIVATE(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
