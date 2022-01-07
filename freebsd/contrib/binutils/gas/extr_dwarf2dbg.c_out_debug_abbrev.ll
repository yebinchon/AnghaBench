; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_out_debug_abbrev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_out_debug_abbrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@DW_TAG_compile_unit = common dso_local global i32 0, align 4
@DW_CHILDREN_no = common dso_local global i32 0, align 4
@DW_AT_stmt_list = common dso_local global i32 0, align 4
@DW_FORM_data4 = common dso_local global i32 0, align 4
@all_segs = common dso_local global %struct.TYPE_2__* null, align 8
@DW_AT_low_pc = common dso_local global i32 0, align 4
@DW_FORM_addr = common dso_local global i32 0, align 4
@DW_AT_high_pc = common dso_local global i32 0, align 4
@dwarf2_format_32bit = common dso_local global i64 0, align 8
@DW_AT_ranges = common dso_local global i32 0, align 4
@DW_FORM_data8 = common dso_local global i32 0, align 4
@DW_AT_name = common dso_local global i32 0, align 4
@DW_FORM_string = common dso_local global i32 0, align 4
@DW_AT_comp_dir = common dso_local global i32 0, align 4
@DW_AT_producer = common dso_local global i32 0, align 4
@DW_AT_language = common dso_local global i32 0, align 4
@DW_FORM_data2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @out_debug_abbrev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @out_debug_abbrev(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @subseg_set(i32 %3, i32 0)
  %5 = call i32 @out_uleb128(i32 1)
  %6 = load i32, i32* @DW_TAG_compile_unit, align 4
  %7 = call i32 @out_uleb128(i32 %6)
  %8 = load i32, i32* @DW_CHILDREN_no, align 4
  %9 = call i32 @out_byte(i32 %8)
  %10 = load i32, i32* @DW_AT_stmt_list, align 4
  %11 = load i32, i32* @DW_FORM_data4, align 4
  %12 = call i32 @out_abbrev(i32 %10, i32 %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_segs, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @DW_AT_low_pc, align 4
  %19 = load i32, i32* @DW_FORM_addr, align 4
  %20 = call i32 @out_abbrev(i32 %18, i32 %19)
  %21 = load i32, i32* @DW_AT_high_pc, align 4
  %22 = load i32, i32* @DW_FORM_addr, align 4
  %23 = call i32 @out_abbrev(i32 %21, i32 %22)
  br label %37

24:                                               ; preds = %1
  %25 = call i64 (...) @DWARF2_FORMAT()
  %26 = load i64, i64* @dwarf2_format_32bit, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @DW_AT_ranges, align 4
  %30 = load i32, i32* @DW_FORM_data4, align 4
  %31 = call i32 @out_abbrev(i32 %29, i32 %30)
  br label %36

32:                                               ; preds = %24
  %33 = load i32, i32* @DW_AT_ranges, align 4
  %34 = load i32, i32* @DW_FORM_data8, align 4
  %35 = call i32 @out_abbrev(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36, %17
  %38 = load i32, i32* @DW_AT_name, align 4
  %39 = load i32, i32* @DW_FORM_string, align 4
  %40 = call i32 @out_abbrev(i32 %38, i32 %39)
  %41 = load i32, i32* @DW_AT_comp_dir, align 4
  %42 = load i32, i32* @DW_FORM_string, align 4
  %43 = call i32 @out_abbrev(i32 %41, i32 %42)
  %44 = load i32, i32* @DW_AT_producer, align 4
  %45 = load i32, i32* @DW_FORM_string, align 4
  %46 = call i32 @out_abbrev(i32 %44, i32 %45)
  %47 = load i32, i32* @DW_AT_language, align 4
  %48 = load i32, i32* @DW_FORM_data2, align 4
  %49 = call i32 @out_abbrev(i32 %47, i32 %48)
  %50 = call i32 @out_abbrev(i32 0, i32 0)
  %51 = call i32 @out_byte(i32 0)
  ret void
}

declare dso_local i32 @subseg_set(i32, i32) #1

declare dso_local i32 @out_uleb128(i32) #1

declare dso_local i32 @out_byte(i32) #1

declare dso_local i32 @out_abbrev(i32, i32) #1

declare dso_local i64 @DWARF2_FORMAT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
