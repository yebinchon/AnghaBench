; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf2_lookup_abbrev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf2_lookup_abbrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abbrev_info = type { i32, %struct.abbrev_info* }
%struct.dwarf2_cu = type { %struct.comp_unit_head }
%struct.comp_unit_head = type { %struct.abbrev_info** }

@ABBREV_HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.abbrev_info* (i32, %struct.dwarf2_cu*)* @dwarf2_lookup_abbrev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.abbrev_info* @dwarf2_lookup_abbrev(i32 %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca %struct.abbrev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dwarf2_cu*, align 8
  %6 = alloca %struct.comp_unit_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.abbrev_info*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %5, align 8
  %9 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %10 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %9, i32 0, i32 0
  store %struct.comp_unit_head* %10, %struct.comp_unit_head** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ABBREV_HASH_SIZE, align 4
  %13 = urem i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.comp_unit_head*, %struct.comp_unit_head** %6, align 8
  %15 = getelementptr inbounds %struct.comp_unit_head, %struct.comp_unit_head* %14, i32 0, i32 0
  %16 = load %struct.abbrev_info**, %struct.abbrev_info*** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.abbrev_info*, %struct.abbrev_info** %16, i64 %18
  %20 = load %struct.abbrev_info*, %struct.abbrev_info** %19, align 8
  store %struct.abbrev_info* %20, %struct.abbrev_info** %8, align 8
  br label %21

21:                                               ; preds = %36, %2
  %22 = load %struct.abbrev_info*, %struct.abbrev_info** %8, align 8
  %23 = icmp ne %struct.abbrev_info* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load %struct.abbrev_info*, %struct.abbrev_info** %8, align 8
  %26 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load %struct.abbrev_info*, %struct.abbrev_info** %8, align 8
  store %struct.abbrev_info* %31, %struct.abbrev_info** %3, align 8
  br label %38

32:                                               ; preds = %24
  %33 = load %struct.abbrev_info*, %struct.abbrev_info** %8, align 8
  %34 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %33, i32 0, i32 1
  %35 = load %struct.abbrev_info*, %struct.abbrev_info** %34, align 8
  store %struct.abbrev_info* %35, %struct.abbrev_info** %8, align 8
  br label %36

36:                                               ; preds = %32
  br label %21

37:                                               ; preds = %21
  store %struct.abbrev_info* null, %struct.abbrev_info** %3, align 8
  br label %38

38:                                               ; preds = %37, %30
  %39 = load %struct.abbrev_info*, %struct.abbrev_info** %3, align 8
  ret %struct.abbrev_info* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
