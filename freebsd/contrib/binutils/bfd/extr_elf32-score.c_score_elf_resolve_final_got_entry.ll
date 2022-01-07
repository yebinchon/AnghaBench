; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_resolve_final_got_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_resolve_final_got_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.score_got_entry = type { i32, %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { %struct.score_elf_link_hash_entry* }
%struct.score_elf_link_hash_entry = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@INSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @score_elf_resolve_final_got_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @score_elf_resolve_final_got_entry(i8** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.score_got_entry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.score_elf_link_hash_entry*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = bitcast i8* %10 to %struct.score_got_entry*
  store %struct.score_got_entry* %11, %struct.score_got_entry** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i32**
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load %struct.score_got_entry*, %struct.score_got_entry** %6, align 8
  %16 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %92

19:                                               ; preds = %2
  %20 = load %struct.score_got_entry*, %struct.score_got_entry** %6, align 8
  %21 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %92

24:                                               ; preds = %19
  %25 = load %struct.score_got_entry*, %struct.score_got_entry** %6, align 8
  %26 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %27, align 8
  store %struct.score_elf_link_hash_entry* %28, %struct.score_elf_link_hash_entry** %8, align 8
  br label %29

29:                                               ; preds = %47, %24
  %30 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %8, align 8
  %31 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @bfd_link_hash_indirect, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %8, align 8
  %39 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @bfd_link_hash_warning, align 8
  %44 = icmp eq i64 %42, %43
  br label %45

45:                                               ; preds = %37, %29
  %46 = phi i1 [ true, %29 ], [ %44, %37 ]
  br i1 %46, label %47, label %56

47:                                               ; preds = %45
  %48 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %8, align 8
  %49 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.score_elf_link_hash_entry*
  store %struct.score_elf_link_hash_entry* %55, %struct.score_elf_link_hash_entry** %8, align 8
  br label %29

56:                                               ; preds = %45
  %57 = load %struct.score_got_entry*, %struct.score_got_entry** %6, align 8
  %58 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %59, align 8
  %61 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %8, align 8
  %62 = icmp eq %struct.score_elf_link_hash_entry* %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %93

64:                                               ; preds = %56
  %65 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %8, align 8
  %66 = load %struct.score_got_entry*, %struct.score_got_entry** %6, align 8
  %67 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store %struct.score_elf_link_hash_entry* %65, %struct.score_elf_link_hash_entry** %68, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.score_got_entry*, %struct.score_got_entry** %6, align 8
  %71 = call i32 @htab_find(i32* %69, %struct.score_got_entry* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %91, label %73

73:                                               ; preds = %64
  %74 = load i32*, i32** %7, align 8
  %75 = load i8**, i8*** %4, align 8
  %76 = call i32 @htab_clear_slot(i32* %74, i8** %75)
  %77 = load i32*, i32** %7, align 8
  %78 = load %struct.score_got_entry*, %struct.score_got_entry** %6, align 8
  %79 = load i32, i32* @INSERT, align 4
  %80 = call i8** @htab_find_slot(i32* %77, %struct.score_got_entry* %78, i32 %79)
  store i8** %80, i8*** %4, align 8
  %81 = load i8**, i8*** %4, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %73
  %85 = load %struct.score_got_entry*, %struct.score_got_entry** %6, align 8
  %86 = bitcast %struct.score_got_entry* %85 to i8*
  %87 = load i8**, i8*** %4, align 8
  store i8* %86, i8** %87, align 8
  br label %88

88:                                               ; preds = %84, %73
  %89 = load i8*, i8** %5, align 8
  %90 = bitcast i8* %89 to i32**
  store i32* null, i32** %90, align 8
  store i32 0, i32* %3, align 4
  br label %93

91:                                               ; preds = %64
  br label %92

92:                                               ; preds = %91, %19, %2
  store i32 1, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %88, %63
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @htab_find(i32*, %struct.score_got_entry*) #1

declare dso_local i32 @htab_clear_slot(i32*, i8**) #1

declare dso_local i8** @htab_find_slot(i32*, %struct.score_got_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
