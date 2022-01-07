; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-strtab.c__bfd_elf_strtab_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-strtab.c__bfd_elf_strtab_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_strtab_hash = type { i64, i32, i32, %struct.elf_strtab_hash_entry**, i32 }
%struct.elf_strtab_hash_entry = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_elf_strtab_add(%struct.elf_strtab_hash* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.elf_strtab_hash*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.elf_strtab_hash_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.elf_strtab_hash* %0, %struct.elf_strtab_hash** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %106

15:                                               ; preds = %3
  %16 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %5, align 8
  %17 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @BFD_ASSERT(i32 %20)
  %22 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %5, align 8
  %23 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %22, i32 0, i32 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @TRUE, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @bfd_hash_lookup(i32* %23, i8* %24, i32 %25, i32 %26)
  %28 = inttoptr i64 %27 to %struct.elf_strtab_hash_entry*
  store %struct.elf_strtab_hash_entry* %28, %struct.elf_strtab_hash_entry** %8, align 8
  %29 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %8, align 8
  %30 = icmp eq %struct.elf_strtab_hash_entry* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %106

32:                                               ; preds = %15
  %33 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %8, align 8
  %34 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %8, align 8
  %38 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %100

41:                                               ; preds = %32
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @strlen(i8* %42)
  %44 = add nsw i64 %43, 1
  %45 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %8, align 8
  %46 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %8, align 8
  %48 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @BFD_ASSERT(i32 %51)
  %53 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %5, align 8
  %54 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %5, align 8
  %57 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %41
  store i32 8, i32* %9, align 4
  %61 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %5, align 8
  %62 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, 2
  store i32 %64, i32* %62, align 4
  %65 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %5, align 8
  %66 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %65, i32 0, i32 3
  %67 = load %struct.elf_strtab_hash_entry**, %struct.elf_strtab_hash_entry*** %66, align 8
  %68 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %5, align 8
  %69 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %9, align 4
  %72 = mul nsw i32 %70, %71
  %73 = call %struct.elf_strtab_hash_entry** @bfd_realloc(%struct.elf_strtab_hash_entry** %67, i32 %72)
  %74 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %5, align 8
  %75 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %74, i32 0, i32 3
  store %struct.elf_strtab_hash_entry** %73, %struct.elf_strtab_hash_entry*** %75, align 8
  %76 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %5, align 8
  %77 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %76, i32 0, i32 3
  %78 = load %struct.elf_strtab_hash_entry**, %struct.elf_strtab_hash_entry*** %77, align 8
  %79 = icmp eq %struct.elf_strtab_hash_entry** %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %60
  store i32 -1, i32* %4, align 4
  br label %106

81:                                               ; preds = %60
  br label %82

82:                                               ; preds = %81, %41
  %83 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %5, align 8
  %84 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  %87 = sext i32 %85 to i64
  %88 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %8, align 8
  %89 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i64 %87, i64* %90, align 8
  %91 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %8, align 8
  %92 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %5, align 8
  %93 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %92, i32 0, i32 3
  %94 = load %struct.elf_strtab_hash_entry**, %struct.elf_strtab_hash_entry*** %93, align 8
  %95 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %8, align 8
  %96 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %94, i64 %98
  store %struct.elf_strtab_hash_entry* %91, %struct.elf_strtab_hash_entry** %99, align 8
  br label %100

100:                                              ; preds = %82, %32
  %101 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %8, align 8
  %102 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %100, %80, %31, %14
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i64 @bfd_hash_lookup(i32*, i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.elf_strtab_hash_entry** @bfd_realloc(%struct.elf_strtab_hash_entry**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
