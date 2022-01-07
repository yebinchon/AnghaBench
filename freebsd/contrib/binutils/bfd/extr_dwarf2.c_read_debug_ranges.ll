; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_read_debug_ranges.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_read_debug_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comp_unit = type { i32*, %struct.dwarf2_debug* }
%struct.dwarf2_debug = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c".debug_ranges\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Dwarf Error: Can't find .debug_ranges section.\00", align 1
@bfd_error_bad_value = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comp_unit*)* @read_debug_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_debug_ranges(%struct.comp_unit* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comp_unit*, align 8
  %4 = alloca %struct.dwarf2_debug*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store %struct.comp_unit* %0, %struct.comp_unit** %3, align 8
  %7 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %8 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %7, i32 0, i32 1
  %9 = load %struct.dwarf2_debug*, %struct.dwarf2_debug** %8, align 8
  store %struct.dwarf2_debug* %9, %struct.dwarf2_debug** %4, align 8
  %10 = load %struct.dwarf2_debug*, %struct.dwarf2_debug** %4, align 8
  %11 = getelementptr inbounds %struct.dwarf2_debug, %struct.dwarf2_debug* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %49, label %14

14:                                               ; preds = %1
  %15 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %16 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call %struct.TYPE_4__* @bfd_get_section_by_name(i32* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %6, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %14
  %23 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @_bfd_error_handler(i32 %23)
  %25 = load i32, i32* @bfd_error_bad_value, align 4
  %26 = call i32 @bfd_set_error(i32 %25)
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %2, align 4
  br label %51

28:                                               ; preds = %14
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dwarf2_debug*, %struct.dwarf2_debug** %4, align 8
  %33 = getelementptr inbounds %struct.dwarf2_debug, %struct.dwarf2_debug* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = load %struct.dwarf2_debug*, %struct.dwarf2_debug** %4, align 8
  %37 = getelementptr inbounds %struct.dwarf2_debug, %struct.dwarf2_debug* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bfd_simple_get_relocated_section_contents(i32* %34, %struct.TYPE_4__* %35, i32* null, i32 %38)
  %40 = load %struct.dwarf2_debug*, %struct.dwarf2_debug** %4, align 8
  %41 = getelementptr inbounds %struct.dwarf2_debug, %struct.dwarf2_debug* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.dwarf2_debug*, %struct.dwarf2_debug** %4, align 8
  %43 = getelementptr inbounds %struct.dwarf2_debug, %struct.dwarf2_debug* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %28
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %2, align 4
  br label %51

48:                                               ; preds = %28
  br label %49

49:                                               ; preds = %48, %1
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %46, %22
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_4__* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i32 @_bfd_error_handler(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @bfd_simple_get_relocated_section_contents(i32*, %struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
