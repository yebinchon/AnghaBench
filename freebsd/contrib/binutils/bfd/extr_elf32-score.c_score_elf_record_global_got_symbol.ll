; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_record_global_got_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_record_global_got_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.bfd_link_info = type { i32 }
%struct.score_got_info = type { i32 }
%struct.score_got_entry = type { i32, i32, %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { %struct.score_elf_link_hash_entry* }
%struct.score_elf_link_hash_entry = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4
@MINUS_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_link_hash_entry*, i32*, %struct.bfd_link_info*, %struct.score_got_info*)* @score_elf_record_global_got_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @score_elf_record_global_got_symbol(%struct.elf_link_hash_entry* %0, i32* %1, %struct.bfd_link_info* %2, %struct.score_got_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.elf_link_hash_entry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bfd_link_info*, align 8
  %9 = alloca %struct.score_got_info*, align 8
  %10 = alloca %struct.score_got_entry, align 8
  %11 = alloca %struct.score_got_entry**, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.bfd_link_info* %2, %struct.bfd_link_info** %8, align 8
  store %struct.score_got_info* %3, %struct.score_got_info** %9, align 8
  %12 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %13 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %34

16:                                               ; preds = %4
  %17 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %18 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ELF_ST_VISIBILITY(i32 %19)
  switch i32 %20, label %26 [
    i32 128, label %21
    i32 129, label %21
  ]

21:                                               ; preds = %16, %16
  %22 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %23 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %24 = load i32, i32* @TRUE, align 4
  %25 = call i32 @_bfd_score_elf_hide_symbol(%struct.bfd_link_info* %22, %struct.elf_link_hash_entry* %23, i32 %24)
  br label %26

26:                                               ; preds = %16, %21
  %27 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %28 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %29 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %27, %struct.elf_link_hash_entry* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %5, align 4
  br label %80

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %4
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %10, i32 0, i32 3
  store i32* %35, i32** %36, align 8
  %37 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %10, i32 0, i32 0
  store i32 -1, i32* %37, align 8
  %38 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %39 = bitcast %struct.elf_link_hash_entry* %38 to %struct.score_elf_link_hash_entry*
  %40 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %10, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store %struct.score_elf_link_hash_entry* %39, %struct.score_elf_link_hash_entry** %41, align 8
  %42 = load %struct.score_got_info*, %struct.score_got_info** %9, align 8
  %43 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @INSERT, align 4
  %46 = call i64 @htab_find_slot(i32 %44, %struct.score_got_entry* %10, i32 %45)
  %47 = inttoptr i64 %46 to %struct.score_got_entry**
  store %struct.score_got_entry** %47, %struct.score_got_entry*** %11, align 8
  %48 = load %struct.score_got_entry**, %struct.score_got_entry*** %11, align 8
  %49 = load %struct.score_got_entry*, %struct.score_got_entry** %48, align 8
  %50 = icmp ne %struct.score_got_entry* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %34
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %5, align 4
  br label %80

53:                                               ; preds = %34
  %54 = load i32*, i32** %7, align 8
  %55 = call %struct.score_got_entry* @bfd_alloc(i32* %54, i32 24)
  %56 = load %struct.score_got_entry**, %struct.score_got_entry*** %11, align 8
  store %struct.score_got_entry* %55, %struct.score_got_entry** %56, align 8
  %57 = load %struct.score_got_entry**, %struct.score_got_entry*** %11, align 8
  %58 = load %struct.score_got_entry*, %struct.score_got_entry** %57, align 8
  %59 = icmp ne %struct.score_got_entry* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %5, align 4
  br label %80

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %10, i32 0, i32 1
  store i32 -1, i32* %63, align 4
  %64 = load %struct.score_got_entry**, %struct.score_got_entry*** %11, align 8
  %65 = load %struct.score_got_entry*, %struct.score_got_entry** %64, align 8
  %66 = call i32 @memcpy(%struct.score_got_entry* %65, %struct.score_got_entry* %10, i32 24)
  %67 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %68 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MINUS_ONE, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %5, align 4
  br label %80

75:                                               ; preds = %62
  %76 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %77 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 4
  %79 = load i32, i32* @TRUE, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %75, %73, %60, %51, %31
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @ELF_ST_VISIBILITY(i32) #1

declare dso_local i32 @_bfd_score_elf_hide_symbol(%struct.bfd_link_info*, %struct.elf_link_hash_entry*, i32) #1

declare dso_local i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local i64 @htab_find_slot(i32, %struct.score_got_entry*, i32) #1

declare dso_local %struct.score_got_entry* @bfd_alloc(i32*, i32) #1

declare dso_local i32 @memcpy(%struct.score_got_entry*, %struct.score_got_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
