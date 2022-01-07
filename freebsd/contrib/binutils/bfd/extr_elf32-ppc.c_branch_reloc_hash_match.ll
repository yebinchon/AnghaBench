; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_branch_reloc_hash_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_branch_reloc_hash_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.elf_link_hash_entry = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }

@R_PPC_PLTREL24 = common dso_local global i32 0, align 4
@R_PPC_LOCAL24PC = common dso_local global i32 0, align 4
@R_PPC_REL14 = common dso_local global i32 0, align 4
@R_PPC_REL14_BRTAKEN = common dso_local global i32 0, align 4
@R_PPC_REL14_BRNTAKEN = common dso_local global i32 0, align 4
@R_PPC_REL24 = common dso_local global i32 0, align 4
@R_PPC_ADDR24 = common dso_local global i32 0, align 4
@R_PPC_ADDR14 = common dso_local global i32 0, align 4
@R_PPC_ADDR14_BRTAKEN = common dso_local global i32 0, align 4
@R_PPC_ADDR14_BRNTAKEN = common dso_local global i32 0, align 4
@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*, %struct.elf_link_hash_entry*)* @branch_reloc_hash_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @branch_reloc_hash_match(i32* %0, %struct.TYPE_12__* %1, %struct.elf_link_hash_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.elf_link_hash_entry*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.elf_link_hash_entry**, align 8
  %12 = alloca %struct.elf_link_hash_entry*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.elf_link_hash_entry* %2, %struct.elf_link_hash_entry** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct.TYPE_13__* @elf_tdata(i32* %13)
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %8, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ELF32_R_TYPE(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ELF32_R_SYM(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp uge i32 %24, %27
  br i1 %28, label %29, label %112

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @R_PPC_PLTREL24, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %69, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @R_PPC_LOCAL24PC, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %69, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @R_PPC_REL14, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %69, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @R_PPC_REL14_BRTAKEN, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %69, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @R_PPC_REL14_BRNTAKEN, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %69, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @R_PPC_REL24, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %69, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @R_PPC_ADDR24, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %69, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @R_PPC_ADDR14, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @R_PPC_ADDR14_BRTAKEN, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @R_PPC_ADDR14_BRNTAKEN, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %112

69:                                               ; preds = %65, %61, %57, %53, %49, %45, %41, %37, %33, %29
  %70 = load i32*, i32** %5, align 8
  %71 = call %struct.elf_link_hash_entry** @elf_sym_hashes(i32* %70)
  store %struct.elf_link_hash_entry** %71, %struct.elf_link_hash_entry*** %11, align 8
  %72 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %11, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sub i32 %73, %76
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %72, i64 %78
  %80 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %79, align 8
  store %struct.elf_link_hash_entry* %80, %struct.elf_link_hash_entry** %12, align 8
  br label %81

81:                                               ; preds = %97, %69
  %82 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %83 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @bfd_link_hash_indirect, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %95, label %88

88:                                               ; preds = %81
  %89 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %90 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @bfd_link_hash_warning, align 8
  %94 = icmp eq i64 %92, %93
  br label %95

95:                                               ; preds = %88, %81
  %96 = phi i1 [ true, %81 ], [ %94, %88 ]
  br i1 %96, label %97, label %105

97:                                               ; preds = %95
  %98 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %99 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %104, %struct.elf_link_hash_entry** %12, align 8
  br label %81

105:                                              ; preds = %95
  %106 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %107 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %108 = icmp eq %struct.elf_link_hash_entry* %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, i32* @TRUE, align 4
  store i32 %110, i32* %4, align 4
  br label %114

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %111, %65, %3
  %113 = load i32, i32* @FALSE, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %109
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.TYPE_13__* @elf_tdata(i32*) #1

declare dso_local i32 @ELF32_R_TYPE(i32) #1

declare dso_local i32 @ELF32_R_SYM(i32) #1

declare dso_local %struct.elf_link_hash_entry** @elf_sym_hashes(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
