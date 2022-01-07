; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-strtab.c__bfd_elf_strtab_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-strtab.c__bfd_elf_strtab_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_strtab_hash = type { i32, i32, i32**, i64, i32 }

@elf_strtab_hash_newfunc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.elf_strtab_hash* @_bfd_elf_strtab_init() #0 {
  %1 = alloca %struct.elf_strtab_hash*, align 8
  %2 = alloca %struct.elf_strtab_hash*, align 8
  %3 = alloca i32, align 4
  store i32 32, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i8* @bfd_malloc(i32 %4)
  %6 = bitcast i8* %5 to %struct.elf_strtab_hash*
  store %struct.elf_strtab_hash* %6, %struct.elf_strtab_hash** %2, align 8
  %7 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %2, align 8
  %8 = icmp eq %struct.elf_strtab_hash* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store %struct.elf_strtab_hash* null, %struct.elf_strtab_hash** %1, align 8
  br label %48

10:                                               ; preds = %0
  %11 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %2, align 8
  %12 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %11, i32 0, i32 4
  %13 = load i32, i32* @elf_strtab_hash_newfunc, align 4
  %14 = call i32 @bfd_hash_table_init(i32* %12, i32 %13, i32 4)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %2, align 8
  %18 = call i32 @free(%struct.elf_strtab_hash* %17)
  store %struct.elf_strtab_hash* null, %struct.elf_strtab_hash** %1, align 8
  br label %48

19:                                               ; preds = %10
  %20 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %2, align 8
  %21 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %2, align 8
  %23 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %2, align 8
  %25 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %24, i32 0, i32 1
  store i32 64, i32* %25, align 4
  store i32 8, i32* %3, align 4
  %26 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %2, align 8
  %27 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %3, align 4
  %30 = mul nsw i32 %28, %29
  %31 = call i8* @bfd_malloc(i32 %30)
  %32 = bitcast i8* %31 to i32**
  %33 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %2, align 8
  %34 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %33, i32 0, i32 2
  store i32** %32, i32*** %34, align 8
  %35 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %2, align 8
  %36 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %35, i32 0, i32 2
  %37 = load i32**, i32*** %36, align 8
  %38 = icmp eq i32** %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %19
  %40 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %2, align 8
  %41 = call i32 @free(%struct.elf_strtab_hash* %40)
  store %struct.elf_strtab_hash* null, %struct.elf_strtab_hash** %1, align 8
  br label %48

42:                                               ; preds = %19
  %43 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %2, align 8
  %44 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %43, i32 0, i32 2
  %45 = load i32**, i32*** %44, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  store i32* null, i32** %46, align 8
  %47 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %2, align 8
  store %struct.elf_strtab_hash* %47, %struct.elf_strtab_hash** %1, align 8
  br label %48

48:                                               ; preds = %42, %39, %16, %9
  %49 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %1, align 8
  ret %struct.elf_strtab_hash* %49
}

declare dso_local i8* @bfd_malloc(i32) #1

declare dso_local i32 @bfd_hash_table_init(i32*, i32, i32) #1

declare dso_local i32 @free(%struct.elf_strtab_hash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
