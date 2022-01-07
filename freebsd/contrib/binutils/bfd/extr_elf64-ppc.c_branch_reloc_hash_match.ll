; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_branch_reloc_hash_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_branch_reloc_hash_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.ppc_link_hash_entry = type { %struct.elf_link_hash_entry }
%struct.elf_link_hash_entry = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }

@R_PPC64_REL24 = common dso_local global i32 0, align 4
@R_PPC64_REL14 = common dso_local global i32 0, align 4
@R_PPC64_REL14_BRTAKEN = common dso_local global i32 0, align 4
@R_PPC64_REL14_BRNTAKEN = common dso_local global i32 0, align 4
@R_PPC64_ADDR24 = common dso_local global i32 0, align 4
@R_PPC64_ADDR14 = common dso_local global i32 0, align 4
@R_PPC64_ADDR14_BRTAKEN = common dso_local global i32 0, align 4
@R_PPC64_ADDR14_BRNTAKEN = common dso_local global i32 0, align 4
@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*, %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry*)* @branch_reloc_hash_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @branch_reloc_hash_match(i32* %0, %struct.TYPE_12__* %1, %struct.ppc_link_hash_entry* %2, %struct.ppc_link_hash_entry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.ppc_link_hash_entry*, align 8
  %9 = alloca %struct.ppc_link_hash_entry*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.elf_link_hash_entry**, align 8
  %14 = alloca %struct.elf_link_hash_entry*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store %struct.ppc_link_hash_entry* %2, %struct.ppc_link_hash_entry** %8, align 8
  store %struct.ppc_link_hash_entry* %3, %struct.ppc_link_hash_entry** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call %struct.TYPE_13__* @elf_tdata(i32* %15)
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %10, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ELF64_R_TYPE(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ELF64_R_SYM(i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp uge i32 %26, %29
  br i1 %30, label %31, label %112

31:                                               ; preds = %4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @R_PPC64_REL24, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %63, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @R_PPC64_REL14, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %63, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @R_PPC64_REL14_BRTAKEN, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %63, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @R_PPC64_REL14_BRNTAKEN, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %63, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @R_PPC64_ADDR24, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %63, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @R_PPC64_ADDR14, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @R_PPC64_ADDR14_BRTAKEN, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @R_PPC64_ADDR14_BRNTAKEN, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %112

63:                                               ; preds = %59, %55, %51, %47, %43, %39, %35, %31
  %64 = load i32*, i32** %6, align 8
  %65 = call %struct.elf_link_hash_entry** @elf_sym_hashes(i32* %64)
  store %struct.elf_link_hash_entry** %65, %struct.elf_link_hash_entry*** %13, align 8
  %66 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %13, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub i32 %67, %70
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %66, i64 %72
  %74 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %73, align 8
  store %struct.elf_link_hash_entry* %74, %struct.elf_link_hash_entry** %14, align 8
  br label %75

75:                                               ; preds = %91, %63
  %76 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %14, align 8
  %77 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @bfd_link_hash_indirect, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %89, label %82

82:                                               ; preds = %75
  %83 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %14, align 8
  %84 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @bfd_link_hash_warning, align 8
  %88 = icmp eq i64 %86, %87
  br label %89

89:                                               ; preds = %82, %75
  %90 = phi i1 [ true, %75 ], [ %88, %82 ]
  br i1 %90, label %91, label %99

91:                                               ; preds = %89
  %92 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %14, align 8
  %93 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %98, %struct.elf_link_hash_entry** %14, align 8
  br label %75

99:                                               ; preds = %89
  %100 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %14, align 8
  %101 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %102 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %101, i32 0, i32 0
  %103 = icmp eq %struct.elf_link_hash_entry* %100, %102
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %14, align 8
  %106 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %107 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %106, i32 0, i32 0
  %108 = icmp eq %struct.elf_link_hash_entry* %105, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %104, %99
  %110 = load i32, i32* @TRUE, align 4
  store i32 %110, i32* %5, align 4
  br label %114

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111, %59, %4
  %113 = load i32, i32* @FALSE, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %112, %109
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local %struct.TYPE_13__* @elf_tdata(i32*) #1

declare dso_local i32 @ELF64_R_TYPE(i32) #1

declare dso_local i32 @ELF64_R_SYM(i32) #1

declare dso_local %struct.elf_link_hash_entry** @elf_sym_hashes(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
