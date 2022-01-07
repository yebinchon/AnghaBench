; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_get_scope_pc_bounds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_get_scope_pc_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { i32, %struct.die_info* }
%struct.dwarf2_cu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.die_info*, i32*, i32*, %struct.dwarf2_cu*)* @get_scope_pc_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_scope_pc_bounds(%struct.die_info* %0, i32* %1, i32* %2, %struct.dwarf2_cu* %3) #0 {
  %5 = alloca %struct.die_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dwarf2_cu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.die_info*, align 8
  store %struct.die_info* %0, %struct.die_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.dwarf2_cu* %3, %struct.dwarf2_cu** %8, align 8
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.die_info*, %struct.die_info** %5, align 8
  %15 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %8, align 8
  %16 = call i64 @dwarf2_get_pc_bounds(%struct.die_info* %14, i32* %11, i32* %12, %struct.dwarf2_cu* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %10, align 4
  br label %70

21:                                               ; preds = %4
  %22 = load %struct.die_info*, %struct.die_info** %5, align 8
  %23 = getelementptr inbounds %struct.die_info, %struct.die_info* %22, i32 0, i32 1
  %24 = load %struct.die_info*, %struct.die_info** %23, align 8
  store %struct.die_info* %24, %struct.die_info** %13, align 8
  br label %25

25:                                               ; preds = %66, %21
  %26 = load %struct.die_info*, %struct.die_info** %13, align 8
  %27 = icmp ne %struct.die_info* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.die_info*, %struct.die_info** %13, align 8
  %30 = getelementptr inbounds %struct.die_info, %struct.die_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i1 [ false, %25 ], [ %32, %28 ]
  br i1 %34, label %35, label %69

35:                                               ; preds = %33
  %36 = load %struct.die_info*, %struct.die_info** %13, align 8
  %37 = getelementptr inbounds %struct.die_info, %struct.die_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %65 [
    i32 128, label %39
    i32 129, label %52
  ]

39:                                               ; preds = %35
  %40 = load %struct.die_info*, %struct.die_info** %13, align 8
  %41 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %8, align 8
  %42 = call i64 @dwarf2_get_pc_bounds(%struct.die_info* %40, i32* %11, i32* %12, %struct.dwarf2_cu* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @min(i32 %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @max(i32 %48, i32 %49)
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %44, %39
  br label %66

52:                                               ; preds = %35
  %53 = load %struct.die_info*, %struct.die_info** %13, align 8
  %54 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %8, align 8
  call void @get_scope_pc_bounds(%struct.die_info* %53, i32* %11, i32* %12, %struct.dwarf2_cu* %54)
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @min(i32 %58, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @max(i32 %61, i32 %62)
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %57, %52
  br label %66

65:                                               ; preds = %35
  br label %66

66:                                               ; preds = %65, %64, %51
  %67 = load %struct.die_info*, %struct.die_info** %13, align 8
  %68 = call %struct.die_info* @sibling_die(%struct.die_info* %67)
  store %struct.die_info* %68, %struct.die_info** %13, align 8
  br label %25

69:                                               ; preds = %33
  br label %70

70:                                               ; preds = %69, %18
  %71 = load i32, i32* %9, align 4
  %72 = load i32*, i32** %6, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32*, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  ret void
}

declare dso_local i64 @dwarf2_get_pc_bounds(%struct.die_info*, i32*, i32*, %struct.dwarf2_cu*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.die_info* @sibling_die(%struct.die_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
