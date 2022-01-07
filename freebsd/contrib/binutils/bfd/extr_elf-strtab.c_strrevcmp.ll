; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-strtab.c_strrevcmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-strtab.c_strrevcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_strtab_hash_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @strrevcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strrevcmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.elf_strtab_hash_entry*, align 8
  %7 = alloca %struct.elf_strtab_hash_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.elf_strtab_hash_entry**
  %15 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %14, align 8
  store %struct.elf_strtab_hash_entry* %15, %struct.elf_strtab_hash_entry** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.elf_strtab_hash_entry**
  %18 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %17, align 8
  store %struct.elf_strtab_hash_entry* %18, %struct.elf_strtab_hash_entry** %7, align 8
  %19 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %6, align 8
  %20 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %7, align 8
  %23 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %9, align 4
  %25 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %6, align 8
  %26 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = getelementptr inbounds i8, i8* %32, i64 -1
  store i8* %33, i8** %10, align 8
  %34 = load %struct.elf_strtab_hash_entry*, %struct.elf_strtab_hash_entry** %7, align 8
  %35 = getelementptr inbounds %struct.elf_strtab_hash_entry, %struct.elf_strtab_hash_entry* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = getelementptr inbounds i8, i8* %41, i64 -1
  store i8* %42, i8** %11, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %2
  %47 = load i32, i32* %8, align 4
  br label %50

48:                                               ; preds = %2
  %49 = load i32, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %71, %50
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %52
  %56 = load i8*, i8** %10, align 8
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8*, i8** %11, align 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %55
  %64 = load i8*, i8** %10, align 8
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8*, i8** %11, align 8
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = sub nsw i32 %66, %69
  store i32 %70, i32* %3, align 4
  br label %82

71:                                               ; preds = %55
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 -1
  store i8* %73, i8** %10, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 -1
  store i8* %75, i8** %11, align 8
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %12, align 4
  br label %52

78:                                               ; preds = %52
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = sub i32 %79, %80
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %63
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
