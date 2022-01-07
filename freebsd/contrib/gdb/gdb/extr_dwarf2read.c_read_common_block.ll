; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_common_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_common_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { i64, %struct.die_info* }
%struct.dwarf2_cu = type { i32 }
%struct.attribute = type { i64 }
%struct.symbol = type { i32 }

@DW_AT_location = common dso_local global i32 0, align 4
@DW_FORM_data4 = common dso_local global i64 0, align 8
@DW_FORM_data8 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"DW_AT_location\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"common block member\00", align 1
@DW_AT_data_member_location = common dso_local global i32 0, align 4
@global_symbols = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.die_info*, %struct.dwarf2_cu*)* @read_common_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_common_block(%struct.die_info* %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca %struct.die_info*, align 8
  %4 = alloca %struct.dwarf2_cu*, align 8
  %5 = alloca %struct.die_info*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.die_info* %0, %struct.die_info** %3, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %4, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.die_info*, %struct.die_info** %3, align 8
  %11 = load i32, i32* @DW_AT_location, align 4
  %12 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %13 = call %struct.attribute* @dwarf2_attr(%struct.die_info* %10, i32 %11, %struct.dwarf2_cu* %12)
  store %struct.attribute* %13, %struct.attribute** %6, align 8
  %14 = load %struct.attribute*, %struct.attribute** %6, align 8
  %15 = icmp ne %struct.attribute* %14, null
  br i1 %15, label %16, label %43

16:                                               ; preds = %2
  %17 = load %struct.attribute*, %struct.attribute** %6, align 8
  %18 = call i64 @attr_form_is_block(%struct.attribute* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.attribute*, %struct.attribute** %6, align 8
  %22 = call i32 @DW_BLOCK(%struct.attribute* %21)
  %23 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %24 = call i64 @decode_locdesc(i32 %22, %struct.dwarf2_cu* %23)
  store i64 %24, i64* %8, align 8
  br label %42

25:                                               ; preds = %16
  %26 = load %struct.attribute*, %struct.attribute** %6, align 8
  %27 = getelementptr inbounds %struct.attribute, %struct.attribute* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DW_FORM_data4, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.attribute*, %struct.attribute** %6, align 8
  %33 = getelementptr inbounds %struct.attribute, %struct.attribute* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DW_FORM_data8, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31, %25
  %38 = call i32 (...) @dwarf2_complex_location_expr_complaint()
  br label %41

39:                                               ; preds = %31
  %40 = call i32 @dwarf2_invalid_attrib_class_complaint(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %41, %20
  br label %43

43:                                               ; preds = %42, %2
  %44 = load %struct.die_info*, %struct.die_info** %3, align 8
  %45 = getelementptr inbounds %struct.die_info, %struct.die_info* %44, i32 0, i32 1
  %46 = load %struct.die_info*, %struct.die_info** %45, align 8
  %47 = icmp ne %struct.die_info* %46, null
  br i1 %47, label %48, label %85

48:                                               ; preds = %43
  %49 = load %struct.die_info*, %struct.die_info** %3, align 8
  %50 = getelementptr inbounds %struct.die_info, %struct.die_info* %49, i32 0, i32 1
  %51 = load %struct.die_info*, %struct.die_info** %50, align 8
  store %struct.die_info* %51, %struct.die_info** %5, align 8
  br label %52

52:                                               ; preds = %81, %48
  %53 = load %struct.die_info*, %struct.die_info** %5, align 8
  %54 = icmp ne %struct.die_info* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.die_info*, %struct.die_info** %5, align 8
  %57 = getelementptr inbounds %struct.die_info, %struct.die_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %55, %52
  %61 = phi i1 [ false, %52 ], [ %59, %55 ]
  br i1 %61, label %62, label %84

62:                                               ; preds = %60
  %63 = load %struct.die_info*, %struct.die_info** %5, align 8
  %64 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %65 = call %struct.symbol* @new_symbol(%struct.die_info* %63, i32* null, %struct.dwarf2_cu* %64)
  store %struct.symbol* %65, %struct.symbol** %7, align 8
  %66 = load %struct.die_info*, %struct.die_info** %5, align 8
  %67 = load i32, i32* @DW_AT_data_member_location, align 4
  %68 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %69 = call %struct.attribute* @dwarf2_attr(%struct.die_info* %66, i32 %67, %struct.dwarf2_cu* %68)
  store %struct.attribute* %69, %struct.attribute** %6, align 8
  %70 = load %struct.attribute*, %struct.attribute** %6, align 8
  %71 = icmp ne %struct.attribute* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %62
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.attribute*, %struct.attribute** %6, align 8
  %75 = call i32 @DW_BLOCK(%struct.attribute* %74)
  %76 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %77 = call i64 @decode_locdesc(i32 %75, %struct.dwarf2_cu* %76)
  %78 = add nsw i64 %73, %77
  store i64 %78, i64* %9, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @add_symbol_to_list(i64 %79, i32* @global_symbols)
  br label %81

81:                                               ; preds = %72, %62
  %82 = load %struct.die_info*, %struct.die_info** %5, align 8
  %83 = call %struct.die_info* @sibling_die(%struct.die_info* %82)
  store %struct.die_info* %83, %struct.die_info** %5, align 8
  br label %52

84:                                               ; preds = %60
  br label %85

85:                                               ; preds = %84, %43
  ret void
}

declare dso_local %struct.attribute* @dwarf2_attr(%struct.die_info*, i32, %struct.dwarf2_cu*) #1

declare dso_local i64 @attr_form_is_block(%struct.attribute*) #1

declare dso_local i64 @decode_locdesc(i32, %struct.dwarf2_cu*) #1

declare dso_local i32 @DW_BLOCK(%struct.attribute*) #1

declare dso_local i32 @dwarf2_complex_location_expr_complaint(...) #1

declare dso_local i32 @dwarf2_invalid_attrib_class_complaint(i8*, i8*) #1

declare dso_local %struct.symbol* @new_symbol(%struct.die_info*, i32*, %struct.dwarf2_cu*) #1

declare dso_local i32 @add_symbol_to_list(i64, i32*) #1

declare dso_local %struct.die_info* @sibling_die(%struct.die_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
