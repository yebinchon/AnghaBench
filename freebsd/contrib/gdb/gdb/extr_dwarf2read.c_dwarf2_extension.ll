; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf2_extension.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf2_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { i32 }
%struct.dwarf2_cu = type { i32 }
%struct.attribute = type { i32 }

@DW_AT_extension = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Dwarf Error: Cannot find referent at offset %d.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.die_info* (%struct.die_info*, %struct.dwarf2_cu*)* @dwarf2_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.die_info* @dwarf2_extension(%struct.die_info* %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca %struct.die_info*, align 8
  %4 = alloca %struct.die_info*, align 8
  %5 = alloca %struct.dwarf2_cu*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca %struct.die_info*, align 8
  %8 = alloca i32, align 4
  store %struct.die_info* %0, %struct.die_info** %4, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %5, align 8
  %9 = load %struct.die_info*, %struct.die_info** %4, align 8
  %10 = load i32, i32* @DW_AT_extension, align 4
  %11 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %12 = call %struct.attribute* @dwarf2_attr(%struct.die_info* %9, i32 %10, %struct.dwarf2_cu* %11)
  store %struct.attribute* %12, %struct.attribute** %6, align 8
  %13 = load %struct.attribute*, %struct.attribute** %6, align 8
  %14 = icmp eq %struct.attribute* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.die_info* null, %struct.die_info** %3, align 8
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.attribute*, %struct.attribute** %6, align 8
  %18 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %19 = call i32 @dwarf2_get_ref_die_offset(%struct.attribute* %17, %struct.dwarf2_cu* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.die_info* @follow_die_ref(i32 %20)
  store %struct.die_info* %21, %struct.die_info** %7, align 8
  %22 = load %struct.die_info*, %struct.die_info** %7, align 8
  %23 = icmp ne %struct.die_info* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %16
  %28 = load %struct.die_info*, %struct.die_info** %7, align 8
  store %struct.die_info* %28, %struct.die_info** %3, align 8
  br label %29

29:                                               ; preds = %27, %15
  %30 = load %struct.die_info*, %struct.die_info** %3, align 8
  ret %struct.die_info* %30
}

declare dso_local %struct.attribute* @dwarf2_attr(%struct.die_info*, i32, %struct.dwarf2_cu*) #1

declare dso_local i32 @dwarf2_get_ref_die_offset(%struct.attribute*, %struct.dwarf2_cu*) #1

declare dso_local %struct.die_info* @follow_die_ref(i32) #1

declare dso_local i32 @error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
