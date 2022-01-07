; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_size_plt_section_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_size_plt_section_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpha_elf_link_hash_entry = type { %struct.TYPE_3__, %struct.alpha_elf_got_entry* }
%struct.TYPE_3__ = type { i8* }
%struct.alpha_elf_got_entry = type { i64, i64, i64, %struct.alpha_elf_got_entry* }
%struct.TYPE_4__ = type { i64 }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@R_ALPHA_LITERAL = common dso_local global i64 0, align 8
@PLT_HEADER_SIZE = common dso_local global i64 0, align 8
@PLT_ENTRY_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.alpha_elf_link_hash_entry*, i64)* @elf64_alpha_size_plt_section_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @elf64_alpha_size_plt_section_1(%struct.alpha_elf_link_hash_entry* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.alpha_elf_link_hash_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.alpha_elf_got_entry*, align 8
  %8 = alloca i8*, align 8
  store %struct.alpha_elf_link_hash_entry* %0, %struct.alpha_elf_link_hash_entry** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %6, align 8
  %11 = load i8*, i8** @FALSE, align 8
  store i8* %11, i8** %8, align 8
  %12 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %13 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i8*, i8** @TRUE, align 8
  store i8* %18, i8** %3, align 8
  br label %73

19:                                               ; preds = %2
  %20 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %21 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %20, i32 0, i32 1
  %22 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %21, align 8
  store %struct.alpha_elf_got_entry* %22, %struct.alpha_elf_got_entry** %7, align 8
  br label %23

23:                                               ; preds = %59, %19
  %24 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %7, align 8
  %25 = icmp ne %struct.alpha_elf_got_entry* %24, null
  br i1 %25, label %26, label %63

26:                                               ; preds = %23
  %27 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %7, align 8
  %28 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @R_ALPHA_LITERAL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %26
  %33 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %7, align 8
  %34 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %32
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i64, i64* @PLT_HEADER_SIZE, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %37
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %7, align 8
  %51 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* @PLT_ENTRY_SIZE, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load i8*, i8** @TRUE, align 8
  store i8* %57, i8** %8, align 8
  br label %58

58:                                               ; preds = %46, %32, %26
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %7, align 8
  %61 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %60, i32 0, i32 3
  %62 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %61, align 8
  store %struct.alpha_elf_got_entry* %62, %struct.alpha_elf_got_entry** %7, align 8
  br label %23

63:                                               ; preds = %23
  %64 = load i8*, i8** %8, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load i8*, i8** @FALSE, align 8
  %68 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %4, align 8
  %69 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  br label %71

71:                                               ; preds = %66, %63
  %72 = load i8*, i8** @TRUE, align 8
  store i8* %72, i8** %3, align 8
  br label %73

73:                                               ; preds = %71, %17
  %74 = load i8*, i8** %3, align 8
  ret i8* %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
