; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_collect_hash_codes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_collect_hash_codes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@bfd_link_hash_warning = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@ELF_VER_CHR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_link_hash_entry*, i8*)* @elf_collect_hash_codes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_collect_hash_codes(%struct.elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i64**
  store i64** %12, i64*** %6, align 8
  store i8* null, i8** %10, align 8
  %13 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %14 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @bfd_link_hash_warning, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %21 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %26, %struct.elf_link_hash_entry** %4, align 8
  br label %27

27:                                               ; preds = %19, %2
  %28 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %29 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %3, align 4
  br label %89

34:                                               ; preds = %27
  %35 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %36 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* @ELF_VER_CHR, align 4
  %42 = call i8* @strchr(i8* %40, i32 %41)
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %71

45:                                               ; preds = %34
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = add nsw i64 %50, 1
  %52 = trunc i64 %51 to i32
  %53 = call i8* @bfd_malloc(i32 %52)
  store i8* %53, i8** %10, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @memcpy(i8* %54, i8* %55, i32 %61)
  %63 = load i8*, i8** %10, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = getelementptr inbounds i8, i8* %63, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load i8*, i8** %10, align 8
  store i8* %70, i8** %7, align 8
  br label %71

71:                                               ; preds = %45, %34
  %72 = load i8*, i8** %7, align 8
  %73 = call i64 @bfd_elf_hash(i8* %72)
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64**, i64*** %6, align 8
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i32 1
  store i64* %77, i64** %75, align 8
  store i64 %74, i64* %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %80 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %71
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @free(i8* %85)
  br label %87

87:                                               ; preds = %84, %71
  %88 = load i32, i32* @TRUE, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %32
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i8* @bfd_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @bfd_elf_hash(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
