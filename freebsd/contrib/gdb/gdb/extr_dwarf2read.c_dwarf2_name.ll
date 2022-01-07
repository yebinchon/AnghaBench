; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf2_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf2_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { i32 }
%struct.dwarf2_cu = type { i32 }
%struct.attribute = type { i32 }

@DW_AT_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.die_info*, %struct.dwarf2_cu*)* @dwarf2_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dwarf2_name(%struct.die_info* %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.die_info*, align 8
  %5 = alloca %struct.dwarf2_cu*, align 8
  %6 = alloca %struct.attribute*, align 8
  store %struct.die_info* %0, %struct.die_info** %4, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %5, align 8
  %7 = load %struct.die_info*, %struct.die_info** %4, align 8
  %8 = load i32, i32* @DW_AT_name, align 4
  %9 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %10 = call %struct.attribute* @dwarf2_attr(%struct.die_info* %7, i32 %8, %struct.dwarf2_cu* %9)
  store %struct.attribute* %10, %struct.attribute** %6, align 8
  %11 = load %struct.attribute*, %struct.attribute** %6, align 8
  %12 = icmp ne %struct.attribute* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.attribute*, %struct.attribute** %6, align 8
  %15 = call i8* @DW_STRING(%struct.attribute* %14)
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.attribute*, %struct.attribute** %6, align 8
  %19 = call i8* @DW_STRING(%struct.attribute* %18)
  store i8* %19, i8** %3, align 8
  br label %21

20:                                               ; preds = %13, %2
  store i8* null, i8** %3, align 8
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i8*, i8** %3, align 8
  ret i8* %22
}

declare dso_local %struct.attribute* @dwarf2_attr(%struct.die_info*, i32, %struct.dwarf2_cu*) #1

declare dso_local i8* @DW_STRING(%struct.attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
