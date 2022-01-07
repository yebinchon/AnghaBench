; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_local_relocation_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_local_relocation_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.score_elf_link_hash_entry = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }

@TRUE = common dso_local global i64 0, align 8
@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_14__*, i32**, i64)* @score_elf_local_relocation_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @score_elf_local_relocation_p(i32* %0, %struct.TYPE_14__* %1, i32** %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.score_elf_link_hash_entry*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @ELF32_R_SYM(i32 %16)
  store i64 %17, i64* %10, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call %struct.TYPE_15__* @elf_tdata(i32* %18)
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %11, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @elf_bad_symtab(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %29

25:                                               ; preds = %4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  br label %29

29:                                               ; preds = %25, %24
  %30 = phi i64 [ 0, %24 ], [ %28, %25 ]
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %13, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i64, i64* @TRUE, align 8
  store i64 %35, i64* %5, align 8
  br label %98

36:                                               ; preds = %29
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @elf_bad_symtab(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32**, i32*** %8, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i64, i64* @TRUE, align 8
  store i64 %47, i64* %5, align 8
  br label %98

48:                                               ; preds = %40, %36
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %96

51:                                               ; preds = %48
  %52 = load i32*, i32** %6, align 8
  %53 = call i64* @elf_sym_hashes(i32* %52)
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %13, align 8
  %56 = sub i64 %54, %55
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.score_elf_link_hash_entry*
  store %struct.score_elf_link_hash_entry* %59, %struct.score_elf_link_hash_entry** %12, align 8
  br label %60

60:                                               ; preds = %78, %51
  %61 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %12, align 8
  %62 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @bfd_link_hash_indirect, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %60
  %69 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %12, align 8
  %70 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @bfd_link_hash_warning, align 8
  %75 = icmp eq i64 %73, %74
  br label %76

76:                                               ; preds = %68, %60
  %77 = phi i1 [ true, %60 ], [ %75, %68 ]
  br i1 %77, label %78, label %87

78:                                               ; preds = %76
  %79 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %12, align 8
  %80 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to %struct.score_elf_link_hash_entry*
  store %struct.score_elf_link_hash_entry* %86, %struct.score_elf_link_hash_entry** %12, align 8
  br label %60

87:                                               ; preds = %76
  %88 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %12, align 8
  %89 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i64, i64* @TRUE, align 8
  store i64 %94, i64* %5, align 8
  br label %98

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %48
  %97 = load i64, i64* @FALSE, align 8
  store i64 %97, i64* %5, align 8
  br label %98

98:                                               ; preds = %96, %93, %46, %34
  %99 = load i64, i64* %5, align 8
  ret i64 %99
}

declare dso_local i64 @ELF32_R_SYM(i32) #1

declare dso_local %struct.TYPE_15__* @elf_tdata(i32*) #1

declare dso_local i64 @elf_bad_symtab(i32*) #1

declare dso_local i64* @elf_sym_hashes(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
