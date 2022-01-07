; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_tag_string_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_tag_string_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { %struct.type* }
%struct.type = type { i32 }
%struct.dwarf2_cu = type { i64, %struct.objfile* }
%struct.objfile = type { i32 }
%struct.attribute = type { i32 }

@DW_AT_string_length = common dso_local global i32 0, align 4
@DW_AT_byte_size = common dso_local global i32 0, align 4
@FT_INTEGER = common dso_local global i32 0, align 4
@language_fortran = common dso_local global i64 0, align 8
@FT_CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.die_info*, %struct.dwarf2_cu*)* @read_tag_string_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_tag_string_type(%struct.die_info* %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca %struct.die_info*, align 8
  %4 = alloca %struct.dwarf2_cu*, align 8
  %5 = alloca %struct.objfile*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.type*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca %struct.type*, align 8
  %10 = alloca %struct.attribute*, align 8
  %11 = alloca i32, align 4
  store %struct.die_info* %0, %struct.die_info** %3, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %4, align 8
  %12 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %13 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %12, i32 0, i32 1
  %14 = load %struct.objfile*, %struct.objfile** %13, align 8
  store %struct.objfile* %14, %struct.objfile** %5, align 8
  %15 = load %struct.die_info*, %struct.die_info** %3, align 8
  %16 = getelementptr inbounds %struct.die_info, %struct.die_info* %15, i32 0, i32 0
  %17 = load %struct.type*, %struct.type** %16, align 8
  %18 = icmp ne %struct.type* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %70

20:                                               ; preds = %2
  %21 = load %struct.die_info*, %struct.die_info** %3, align 8
  %22 = load i32, i32* @DW_AT_string_length, align 4
  %23 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %24 = call %struct.attribute* @dwarf2_attr(%struct.die_info* %21, i32 %22, %struct.dwarf2_cu* %23)
  store %struct.attribute* %24, %struct.attribute** %10, align 8
  %25 = load %struct.attribute*, %struct.attribute** %10, align 8
  %26 = icmp ne %struct.attribute* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.attribute*, %struct.attribute** %10, align 8
  %29 = call i32 @DW_UNSND(%struct.attribute* %28)
  store i32 %29, i32* %11, align 4
  br label %42

30:                                               ; preds = %20
  %31 = load %struct.die_info*, %struct.die_info** %3, align 8
  %32 = load i32, i32* @DW_AT_byte_size, align 4
  %33 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %34 = call %struct.attribute* @dwarf2_attr(%struct.die_info* %31, i32 %32, %struct.dwarf2_cu* %33)
  store %struct.attribute* %34, %struct.attribute** %10, align 8
  %35 = load %struct.attribute*, %struct.attribute** %10, align 8
  %36 = icmp ne %struct.attribute* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.attribute*, %struct.attribute** %10, align 8
  %39 = call i32 @DW_UNSND(%struct.attribute* %38)
  store i32 %39, i32* %11, align 4
  br label %41

40:                                               ; preds = %30
  store i32 1, i32* %11, align 4
  br label %41

41:                                               ; preds = %40, %37
  br label %42

42:                                               ; preds = %41, %27
  %43 = load %struct.objfile*, %struct.objfile** %5, align 8
  %44 = load i32, i32* @FT_INTEGER, align 4
  %45 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %46 = call %struct.type* @dwarf2_fundamental_type(%struct.objfile* %43, i32 %44, %struct.dwarf2_cu* %45)
  store %struct.type* %46, %struct.type** %8, align 8
  %47 = load %struct.type*, %struct.type** %8, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call %struct.type* @create_range_type(i32* null, %struct.type* %47, i32 1, i32 %48)
  store %struct.type* %49, %struct.type** %7, align 8
  %50 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %51 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @language_fortran, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load %struct.type*, %struct.type** %7, align 8
  %57 = call %struct.type* @create_string_type(%struct.type* null, %struct.type* %56)
  store %struct.type* %57, %struct.type** %6, align 8
  br label %66

58:                                               ; preds = %42
  %59 = load %struct.objfile*, %struct.objfile** %5, align 8
  %60 = load i32, i32* @FT_CHAR, align 4
  %61 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %62 = call %struct.type* @dwarf2_fundamental_type(%struct.objfile* %59, i32 %60, %struct.dwarf2_cu* %61)
  store %struct.type* %62, %struct.type** %9, align 8
  %63 = load %struct.type*, %struct.type** %9, align 8
  %64 = load %struct.type*, %struct.type** %7, align 8
  %65 = call %struct.type* @create_string_type(%struct.type* %63, %struct.type* %64)
  store %struct.type* %65, %struct.type** %6, align 8
  br label %66

66:                                               ; preds = %58, %55
  %67 = load %struct.type*, %struct.type** %6, align 8
  %68 = load %struct.die_info*, %struct.die_info** %3, align 8
  %69 = getelementptr inbounds %struct.die_info, %struct.die_info* %68, i32 0, i32 0
  store %struct.type* %67, %struct.type** %69, align 8
  br label %70

70:                                               ; preds = %66, %19
  ret void
}

declare dso_local %struct.attribute* @dwarf2_attr(%struct.die_info*, i32, %struct.dwarf2_cu*) #1

declare dso_local i32 @DW_UNSND(%struct.attribute*) #1

declare dso_local %struct.type* @dwarf2_fundamental_type(%struct.objfile*, i32, %struct.dwarf2_cu*) #1

declare dso_local %struct.type* @create_range_type(i32*, %struct.type*, i32, i32) #1

declare dso_local %struct.type* @create_string_type(%struct.type*, %struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
