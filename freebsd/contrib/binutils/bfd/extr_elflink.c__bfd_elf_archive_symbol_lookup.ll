; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_archive_symbol_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_archive_symbol_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i32 }
%struct.bfd_link_info = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@ELF_VER_CHR = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.elf_link_hash_entry* @_bfd_elf_archive_symbol_lookup(i32* %0, %struct.bfd_link_info* %1, i8* %2) #0 {
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.elf_link_hash_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %14 = call i32 @elf_hash_table(%struct.bfd_link_info* %13)
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* @FALSE, align 4
  %17 = load i32, i32* @FALSE, align 4
  %18 = load i32, i32* @FALSE, align 4
  %19 = call %struct.elf_link_hash_entry* @elf_link_hash_lookup(i32 %14, i8* %15, i32 %16, i32 %17, i32 %18)
  store %struct.elf_link_hash_entry* %19, %struct.elf_link_hash_entry** %8, align 8
  %20 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %21 = icmp ne %struct.elf_link_hash_entry* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  store %struct.elf_link_hash_entry* %23, %struct.elf_link_hash_entry** %4, align 8
  br label %97

24:                                               ; preds = %3
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* @ELF_VER_CHR, align 1
  %27 = call i8* @strchr(i8* %25, i8 signext %26)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8, i8* @ELF_VER_CHR, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30, %24
  %39 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  store %struct.elf_link_hash_entry* %39, %struct.elf_link_hash_entry** %4, align 8
  br label %97

40:                                               ; preds = %30
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @strlen(i8* %41)
  store i64 %42, i64* %11, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i8* @bfd_alloc(i32* %43, i64 %44)
  store i8* %45, i8** %10, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store %struct.elf_link_hash_entry* inttoptr (i64 -1 to %struct.elf_link_hash_entry*), %struct.elf_link_hash_entry** %4, align 8
  br label %97

49:                                               ; preds = %40
  %50 = load i8*, i8** %9, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %12, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @memcpy(i8* %56, i8* %57, i64 %58)
  %60 = load i8*, i8** %10, align 8
  %61 = load i64, i64* %12, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8*, i8** %7, align 8
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %12, align 8
  %69 = sub i64 %67, %68
  %70 = call i32 @memcpy(i8* %62, i8* %66, i64 %69)
  %71 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %72 = call i32 @elf_hash_table(%struct.bfd_link_info* %71)
  %73 = load i8*, i8** %10, align 8
  %74 = load i32, i32* @FALSE, align 4
  %75 = load i32, i32* @FALSE, align 4
  %76 = load i32, i32* @FALSE, align 4
  %77 = call %struct.elf_link_hash_entry* @elf_link_hash_lookup(i32 %72, i8* %73, i32 %74, i32 %75, i32 %76)
  store %struct.elf_link_hash_entry* %77, %struct.elf_link_hash_entry** %8, align 8
  %78 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %79 = icmp eq %struct.elf_link_hash_entry* %78, null
  br i1 %79, label %80, label %92

80:                                               ; preds = %49
  %81 = load i8*, i8** %10, align 8
  %82 = load i64, i64* %12, align 8
  %83 = sub i64 %82, 1
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  store i8 0, i8* %84, align 1
  %85 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %86 = call i32 @elf_hash_table(%struct.bfd_link_info* %85)
  %87 = load i8*, i8** %10, align 8
  %88 = load i32, i32* @FALSE, align 4
  %89 = load i32, i32* @FALSE, align 4
  %90 = load i32, i32* @FALSE, align 4
  %91 = call %struct.elf_link_hash_entry* @elf_link_hash_lookup(i32 %86, i8* %87, i32 %88, i32 %89, i32 %90)
  store %struct.elf_link_hash_entry* %91, %struct.elf_link_hash_entry** %8, align 8
  br label %92

92:                                               ; preds = %80, %49
  %93 = load i32*, i32** %5, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = call i32 @bfd_release(i32* %93, i8* %94)
  %96 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  store %struct.elf_link_hash_entry* %96, %struct.elf_link_hash_entry** %4, align 8
  br label %97

97:                                               ; preds = %92, %48, %38, %22
  %98 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  ret %struct.elf_link_hash_entry* %98
}

declare dso_local %struct.elf_link_hash_entry* @elf_link_hash_lookup(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @bfd_alloc(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @bfd_release(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
