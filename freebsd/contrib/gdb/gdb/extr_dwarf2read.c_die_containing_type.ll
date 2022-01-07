; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_die_containing_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_die_containing_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.die_info = type { i32 }
%struct.dwarf2_cu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.attribute = type { i32 }

@DW_AT_containing_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Dwarf Error: Cannot find referent at offset %d [in module %s]\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"Dwarf Error: Problem turning containing type into gdb type [in module %s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.die_info*, %struct.dwarf2_cu*)* @die_containing_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @die_containing_type(%struct.die_info* %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.die_info*, align 8
  %5 = alloca %struct.dwarf2_cu*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.attribute*, align 8
  %8 = alloca %struct.die_info*, align 8
  %9 = alloca i32, align 4
  store %struct.die_info* %0, %struct.die_info** %4, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %5, align 8
  store %struct.type* null, %struct.type** %6, align 8
  store %struct.die_info* null, %struct.die_info** %8, align 8
  %10 = load %struct.die_info*, %struct.die_info** %4, align 8
  %11 = load i32, i32* @DW_AT_containing_type, align 4
  %12 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %13 = call %struct.attribute* @dwarf2_attr(%struct.die_info* %10, i32 %11, %struct.dwarf2_cu* %12)
  store %struct.attribute* %13, %struct.attribute** %7, align 8
  %14 = load %struct.attribute*, %struct.attribute** %7, align 8
  %15 = icmp ne %struct.attribute* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  %17 = load %struct.attribute*, %struct.attribute** %7, align 8
  %18 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %19 = call i32 @dwarf2_get_ref_die_offset(%struct.attribute* %17, %struct.dwarf2_cu* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.die_info* @follow_die_ref(i32 %20)
  store %struct.die_info* %21, %struct.die_info** %8, align 8
  %22 = load %struct.die_info*, %struct.die_info** %8, align 8
  %23 = icmp ne %struct.die_info* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %27 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %30)
  store %struct.type* null, %struct.type** %3, align 8
  br label %54

32:                                               ; preds = %16
  %33 = load %struct.die_info*, %struct.die_info** %8, align 8
  %34 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %35 = call %struct.type* @tag_type_to_type(%struct.die_info* %33, %struct.dwarf2_cu* %34)
  store %struct.type* %35, %struct.type** %6, align 8
  br label %36

36:                                               ; preds = %32, %2
  %37 = load %struct.type*, %struct.type** %6, align 8
  %38 = icmp ne %struct.type* %37, null
  br i1 %38, label %52, label %39

39:                                               ; preds = %36
  %40 = load %struct.die_info*, %struct.die_info** %8, align 8
  %41 = icmp ne %struct.die_info* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.die_info*, %struct.die_info** %8, align 8
  %44 = call i32 @dump_die(%struct.die_info* %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %47 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %45, %36
  %53 = load %struct.type*, %struct.type** %6, align 8
  store %struct.type* %53, %struct.type** %3, align 8
  br label %54

54:                                               ; preds = %52, %24
  %55 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %55
}

declare dso_local %struct.attribute* @dwarf2_attr(%struct.die_info*, i32, %struct.dwarf2_cu*) #1

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
