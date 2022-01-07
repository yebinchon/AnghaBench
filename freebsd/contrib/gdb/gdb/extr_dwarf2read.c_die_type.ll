; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_die_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_die_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.die_info = type { i32 }
%struct.dwarf2_cu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.attribute = type { i32 }

@DW_AT_type = common dso_local global i32 0, align 4
@FT_VOID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Dwarf Error: Cannot find referent at offset %d [in module %s]\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"Dwarf Error: Problem turning type die at offset into gdb type [in module %s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.die_info*, %struct.dwarf2_cu*)* @die_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @die_type(%struct.die_info* %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.die_info*, align 8
  %5 = alloca %struct.dwarf2_cu*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.attribute*, align 8
  %8 = alloca %struct.die_info*, align 8
  %9 = alloca i32, align 4
  store %struct.die_info* %0, %struct.die_info** %4, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %5, align 8
  %10 = load %struct.die_info*, %struct.die_info** %4, align 8
  %11 = load i32, i32* @DW_AT_type, align 4
  %12 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %13 = call %struct.attribute* @dwarf2_attr(%struct.die_info* %10, i32 %11, %struct.dwarf2_cu* %12)
  store %struct.attribute* %13, %struct.attribute** %7, align 8
  %14 = load %struct.attribute*, %struct.attribute** %7, align 8
  %15 = icmp ne %struct.attribute* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %18 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* @FT_VOID, align 4
  %21 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %22 = call %struct.type* @dwarf2_fundamental_type(%struct.TYPE_2__* %19, i32 %20, %struct.dwarf2_cu* %21)
  store %struct.type* %22, %struct.type** %3, align 8
  br label %57

23:                                               ; preds = %2
  %24 = load %struct.attribute*, %struct.attribute** %7, align 8
  %25 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %26 = call i32 @dwarf2_get_ref_die_offset(%struct.attribute* %24, %struct.dwarf2_cu* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.die_info* @follow_die_ref(i32 %27)
  store %struct.die_info* %28, %struct.die_info** %8, align 8
  %29 = load %struct.die_info*, %struct.die_info** %8, align 8
  %30 = icmp ne %struct.die_info* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %34 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %37)
  store %struct.type* null, %struct.type** %3, align 8
  br label %57

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.die_info*, %struct.die_info** %8, align 8
  %42 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %43 = call %struct.type* @tag_type_to_type(%struct.die_info* %41, %struct.dwarf2_cu* %42)
  store %struct.type* %43, %struct.type** %6, align 8
  %44 = load %struct.type*, %struct.type** %6, align 8
  %45 = icmp ne %struct.type* %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %40
  %47 = load %struct.die_info*, %struct.die_info** %8, align 8
  %48 = call i32 @dump_die(%struct.die_info* %47)
  %49 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %50 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %46, %40
  %56 = load %struct.type*, %struct.type** %6, align 8
  store %struct.type* %56, %struct.type** %3, align 8
  br label %57

57:                                               ; preds = %55, %31, %16
  %58 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %58
}

declare dso_local %struct.attribute* @dwarf2_attr(%struct.die_info*, i32, %struct.dwarf2_cu*) #1

declare dso_local %struct.type* @dwarf2_fundamental_type(%struct.TYPE_2__*, i32, %struct.dwarf2_cu*) #1

declare dso_local i32 @dwarf2_get_ref_die_offset(%struct.attribute*, %struct.dwarf2_cu*) #1

declare dso_local %struct.die_info* @follow_die_ref(i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local %struct.type* @tag_type_to_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @dump_die(%struct.die_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
