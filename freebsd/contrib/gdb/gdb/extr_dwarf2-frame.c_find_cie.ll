; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2-frame.c_find_cie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2-frame.c_find_cie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf2_cie = type { i64, %struct.dwarf2_cie* }
%struct.comp_unit = type { %struct.dwarf2_cie* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dwarf2_cie* (%struct.comp_unit*, i64)* @find_cie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dwarf2_cie* @find_cie(%struct.comp_unit* %0, i64 %1) #0 {
  %3 = alloca %struct.dwarf2_cie*, align 8
  %4 = alloca %struct.comp_unit*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dwarf2_cie*, align 8
  store %struct.comp_unit* %0, %struct.comp_unit** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %8 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %7, i32 0, i32 0
  %9 = load %struct.dwarf2_cie*, %struct.dwarf2_cie** %8, align 8
  store %struct.dwarf2_cie* %9, %struct.dwarf2_cie** %6, align 8
  br label %10

10:                                               ; preds = %21, %2
  %11 = load %struct.dwarf2_cie*, %struct.dwarf2_cie** %6, align 8
  %12 = icmp ne %struct.dwarf2_cie* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.dwarf2_cie*, %struct.dwarf2_cie** %6, align 8
  %15 = getelementptr inbounds %struct.dwarf2_cie, %struct.dwarf2_cie* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load %struct.dwarf2_cie*, %struct.dwarf2_cie** %6, align 8
  store %struct.dwarf2_cie* %20, %struct.dwarf2_cie** %3, align 8
  br label %26

21:                                               ; preds = %13
  %22 = load %struct.dwarf2_cie*, %struct.dwarf2_cie** %6, align 8
  %23 = getelementptr inbounds %struct.dwarf2_cie, %struct.dwarf2_cie* %22, i32 0, i32 1
  %24 = load %struct.dwarf2_cie*, %struct.dwarf2_cie** %23, align 8
  store %struct.dwarf2_cie* %24, %struct.dwarf2_cie** %6, align 8
  br label %10

25:                                               ; preds = %10
  store %struct.dwarf2_cie* null, %struct.dwarf2_cie** %3, align 8
  br label %26

26:                                               ; preds = %25, %19
  %27 = load %struct.dwarf2_cie*, %struct.dwarf2_cie** %3, align 8
  ret %struct.dwarf2_cie* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
