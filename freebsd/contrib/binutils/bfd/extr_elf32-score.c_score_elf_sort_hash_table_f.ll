; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_sort_hash_table_f.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_sort_hash_table_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.score_elf_link_hash_entry = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.score_elf_hash_sort_data = type { i64, i64, %struct.elf_link_hash_entry*, i32 }
%struct.elf_link_hash_entry = type { i32 }

@bfd_link_hash_warning = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.score_elf_link_hash_entry*, i8*)* @score_elf_sort_hash_table_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @score_elf_sort_hash_table_f(%struct.score_elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.score_elf_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.score_elf_hash_sort_data*, align 8
  store %struct.score_elf_link_hash_entry* %0, %struct.score_elf_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.score_elf_hash_sort_data*
  store %struct.score_elf_hash_sort_data* %8, %struct.score_elf_hash_sort_data** %6, align 8
  %9 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %4, align 8
  %10 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @bfd_link_hash_warning, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %4, align 8
  %18 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.score_elf_link_hash_entry*
  store %struct.score_elf_link_hash_entry* %24, %struct.score_elf_link_hash_entry** %4, align 8
  br label %25

25:                                               ; preds = %16, %2
  %26 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %4, align 8
  %27 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %3, align 4
  br label %93

33:                                               ; preds = %25
  %34 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %4, align 8
  %35 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %62

40:                                               ; preds = %33
  %41 = load %struct.score_elf_hash_sort_data*, %struct.score_elf_hash_sort_data** %6, align 8
  %42 = getelementptr inbounds %struct.score_elf_hash_sort_data, %struct.score_elf_hash_sort_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.score_elf_hash_sort_data*, %struct.score_elf_hash_sort_data** %6, align 8
  %45 = getelementptr inbounds %struct.score_elf_hash_sort_data, %struct.score_elf_hash_sort_data* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %4, align 8
  %50 = bitcast %struct.score_elf_link_hash_entry* %49 to %struct.elf_link_hash_entry*
  %51 = load %struct.score_elf_hash_sort_data*, %struct.score_elf_hash_sort_data** %6, align 8
  %52 = getelementptr inbounds %struct.score_elf_hash_sort_data, %struct.score_elf_hash_sort_data* %51, i32 0, i32 2
  store %struct.elf_link_hash_entry* %50, %struct.elf_link_hash_entry** %52, align 8
  br label %53

53:                                               ; preds = %48, %40
  %54 = load %struct.score_elf_hash_sort_data*, %struct.score_elf_hash_sort_data** %6, align 8
  %55 = getelementptr inbounds %struct.score_elf_hash_sort_data, %struct.score_elf_hash_sort_data* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = trunc i64 %56 to i32
  %59 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %4, align 8
  %60 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  br label %91

62:                                               ; preds = %33
  %63 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %4, align 8
  %64 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load %struct.score_elf_hash_sort_data*, %struct.score_elf_hash_sort_data** %6, align 8
  %71 = getelementptr inbounds %struct.score_elf_hash_sort_data, %struct.score_elf_hash_sort_data* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %4, align 8
  %75 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 8
  br label %90

77:                                               ; preds = %62
  %78 = load %struct.score_elf_hash_sort_data*, %struct.score_elf_hash_sort_data** %6, align 8
  %79 = getelementptr inbounds %struct.score_elf_hash_sort_data, %struct.score_elf_hash_sort_data* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, -1
  store i64 %81, i64* %79, align 8
  %82 = trunc i64 %81 to i32
  %83 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %4, align 8
  %84 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %4, align 8
  %87 = bitcast %struct.score_elf_link_hash_entry* %86 to %struct.elf_link_hash_entry*
  %88 = load %struct.score_elf_hash_sort_data*, %struct.score_elf_hash_sort_data** %6, align 8
  %89 = getelementptr inbounds %struct.score_elf_hash_sort_data, %struct.score_elf_hash_sort_data* %88, i32 0, i32 2
  store %struct.elf_link_hash_entry* %87, %struct.elf_link_hash_entry** %89, align 8
  br label %90

90:                                               ; preds = %77, %69
  br label %91

91:                                               ; preds = %90, %53
  %92 = load i32, i32* @TRUE, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %31
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
