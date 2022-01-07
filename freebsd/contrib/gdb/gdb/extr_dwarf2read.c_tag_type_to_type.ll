; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_tag_type_to_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_tag_type_to_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.die_info = type { %struct.type*, i32 }
%struct.dwarf2_cu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [57 x i8] c"Dwarf Error: Cannot find type of die 0x%x [in module %s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.die_info*, %struct.dwarf2_cu*)* @tag_type_to_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @tag_type_to_type(%struct.die_info* %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.die_info*, align 8
  %5 = alloca %struct.dwarf2_cu*, align 8
  store %struct.die_info* %0, %struct.die_info** %4, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %5, align 8
  %6 = load %struct.die_info*, %struct.die_info** %4, align 8
  %7 = getelementptr inbounds %struct.die_info, %struct.die_info* %6, i32 0, i32 0
  %8 = load %struct.type*, %struct.type** %7, align 8
  %9 = icmp ne %struct.type* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.die_info*, %struct.die_info** %4, align 8
  %12 = getelementptr inbounds %struct.die_info, %struct.die_info* %11, i32 0, i32 0
  %13 = load %struct.type*, %struct.type** %12, align 8
  store %struct.type* %13, %struct.type** %3, align 8
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.die_info*, %struct.die_info** %4, align 8
  %16 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %17 = call i32 @read_type_die(%struct.die_info* %15, %struct.dwarf2_cu* %16)
  %18 = load %struct.die_info*, %struct.die_info** %4, align 8
  %19 = getelementptr inbounds %struct.die_info, %struct.die_info* %18, i32 0, i32 0
  %20 = load %struct.type*, %struct.type** %19, align 8
  %21 = icmp ne %struct.type* %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %14
  %23 = load %struct.die_info*, %struct.die_info** %4, align 8
  %24 = call i32 @dump_die(%struct.die_info* %23)
  %25 = load %struct.die_info*, %struct.die_info** %4, align 8
  %26 = getelementptr inbounds %struct.die_info, %struct.die_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %29 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %32)
  br label %34

34:                                               ; preds = %22, %14
  %35 = load %struct.die_info*, %struct.die_info** %4, align 8
  %36 = getelementptr inbounds %struct.die_info, %struct.die_info* %35, i32 0, i32 0
  %37 = load %struct.type*, %struct.type** %36, align 8
  store %struct.type* %37, %struct.type** %3, align 8
  br label %38

38:                                               ; preds = %34, %10
  %39 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %39
}

declare dso_local i32 @read_type_die(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @dump_die(%struct.die_info*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
