; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_tag_volatile_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_tag_volatile_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { i32 }
%struct.dwarf2_cu = type { i32 }
%struct.type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.die_info*, %struct.dwarf2_cu*)* @read_tag_volatile_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_tag_volatile_type(%struct.die_info* %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca %struct.die_info*, align 8
  %4 = alloca %struct.dwarf2_cu*, align 8
  %5 = alloca %struct.type*, align 8
  store %struct.die_info* %0, %struct.die_info** %3, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %4, align 8
  %6 = load %struct.die_info*, %struct.die_info** %3, align 8
  %7 = getelementptr inbounds %struct.die_info, %struct.die_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %23

11:                                               ; preds = %2
  %12 = load %struct.die_info*, %struct.die_info** %3, align 8
  %13 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %14 = call %struct.type* @die_type(%struct.die_info* %12, %struct.dwarf2_cu* %13)
  store %struct.type* %14, %struct.type** %5, align 8
  %15 = load %struct.type*, %struct.type** %5, align 8
  %16 = call i32 @TYPE_CONST(%struct.type* %15)
  %17 = load %struct.type*, %struct.type** %5, align 8
  %18 = call i32 @TYPE_RESTRICT(%struct.type* %17)
  %19 = load %struct.type*, %struct.type** %5, align 8
  %20 = call i32 @make_cvr_type(i32 %16, i32 1, i32 %18, %struct.type* %19, i32 0)
  %21 = load %struct.die_info*, %struct.die_info** %3, align 8
  %22 = getelementptr inbounds %struct.die_info, %struct.die_info* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.type* @die_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @make_cvr_type(i32, i32, i32, %struct.type*, i32) #1

declare dso_local i32 @TYPE_CONST(%struct.type*) #1

declare dso_local i32 @TYPE_RESTRICT(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
