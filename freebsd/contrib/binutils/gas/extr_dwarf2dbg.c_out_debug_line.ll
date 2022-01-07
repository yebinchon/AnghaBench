; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_out_debug_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_out_debug_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_seg = type { %struct.TYPE_4__*, i32, %struct.line_seg* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32*, i32*, i8* }

@O_subtract = common dso_local global i8* null, align 8
@dwarf2_format_32bit = common dso_local global i32 0, align 4
@dwarf2_format_64bit = common dso_local global i32 0, align 4
@dwarf2_format_64bit_irix = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"internal error: unknown dwarf2 format\00", align 1
@DWARF2_LINE_MIN_INSN_LENGTH = common dso_local global i32 0, align 4
@DWARF2_LINE_DEFAULT_IS_STMT = common dso_local global i32 0, align 4
@DWARF2_LINE_BASE = common dso_local global i32 0, align 4
@DWARF2_LINE_RANGE = common dso_local global i32 0, align 4
@DWARF2_LINE_OPCODE_BASE = common dso_local global i32 0, align 4
@all_segs = common dso_local global %struct.line_seg* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @out_debug_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @out_debug_line(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.line_seg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @subseg_set(i32 %11, i32 0)
  %13 = call i32* (...) @symbol_temp_new_now()
  store i32* %13, i32** %4, align 8
  %14 = call i32* (...) @symbol_temp_make()
  store i32* %14, i32** %5, align 8
  %15 = call i32* (...) @symbol_temp_make()
  store i32* %15, i32** %6, align 8
  %16 = load i8*, i8** @O_subtract, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 3
  store i8* %16, i8** %17, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  store i32* %18, i32** %19, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32* %20, i32** %21, align 8
  %22 = call i32 (...) @DWARF2_FORMAT()
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @dwarf2_format_32bit, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 4, i32* %10, align 4
  store i32 4, i32* %9, align 4
  br label %43

27:                                               ; preds = %1
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @dwarf2_format_64bit, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  store i32 12, i32* %9, align 4
  store i32 8, i32* %10, align 4
  %32 = call i32 @out_four(i32 -1)
  br label %42

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @dwarf2_format_64bit_irix, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 8, i32* %10, align 4
  store i32 8, i32* %9, align 4
  br label %41

38:                                               ; preds = %33
  %39 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @as_fatal(i32 %39)
  br label %41

41:                                               ; preds = %38, %37
  br label %42

42:                                               ; preds = %41, %31
  br label %43

43:                                               ; preds = %42, %26
  %44 = load i32, i32* %9, align 4
  %45 = sub nsw i32 0, %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @emit_expr(%struct.TYPE_5__* %3, i32 %47)
  %49 = call i32 @out_two(i32 2)
  %50 = load i8*, i8** @O_subtract, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 3
  store i8* %50, i8** %51, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  store i32* %52, i32** %53, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32* %54, i32** %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 2
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %57, %58
  %60 = sub nsw i32 0, %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @emit_expr(%struct.TYPE_5__* %3, i32 %62)
  %64 = load i32, i32* @DWARF2_LINE_MIN_INSN_LENGTH, align 4
  %65 = call i32 @out_byte(i32 %64)
  %66 = load i32, i32* @DWARF2_LINE_DEFAULT_IS_STMT, align 4
  %67 = call i32 @out_byte(i32 %66)
  %68 = load i32, i32* @DWARF2_LINE_BASE, align 4
  %69 = call i32 @out_byte(i32 %68)
  %70 = load i32, i32* @DWARF2_LINE_RANGE, align 4
  %71 = call i32 @out_byte(i32 %70)
  %72 = load i32, i32* @DWARF2_LINE_OPCODE_BASE, align 4
  %73 = call i32 @out_byte(i32 %72)
  %74 = call i32 @out_byte(i32 0)
  %75 = call i32 @out_byte(i32 1)
  %76 = call i32 @out_byte(i32 1)
  %77 = call i32 @out_byte(i32 1)
  %78 = call i32 @out_byte(i32 1)
  %79 = call i32 @out_byte(i32 0)
  %80 = call i32 @out_byte(i32 0)
  %81 = call i32 @out_byte(i32 0)
  %82 = call i32 @out_byte(i32 1)
  %83 = call i32 @out_byte(i32 0)
  %84 = call i32 @out_byte(i32 0)
  %85 = call i32 @out_byte(i32 1)
  %86 = call i32 (...) @out_file_list()
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @symbol_set_value_now(i32* %87)
  %89 = load %struct.line_seg*, %struct.line_seg** @all_segs, align 8
  store %struct.line_seg* %89, %struct.line_seg** %7, align 8
  br label %90

90:                                               ; preds = %103, %43
  %91 = load %struct.line_seg*, %struct.line_seg** %7, align 8
  %92 = icmp ne %struct.line_seg* %91, null
  br i1 %92, label %93, label %107

93:                                               ; preds = %90
  %94 = load %struct.line_seg*, %struct.line_seg** %7, align 8
  %95 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.line_seg*, %struct.line_seg** %7, align 8
  %98 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @process_entries(i32 %96, i32 %101)
  br label %103

103:                                              ; preds = %93
  %104 = load %struct.line_seg*, %struct.line_seg** %7, align 8
  %105 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %104, i32 0, i32 2
  %106 = load %struct.line_seg*, %struct.line_seg** %105, align 8
  store %struct.line_seg* %106, %struct.line_seg** %7, align 8
  br label %90

107:                                              ; preds = %90
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @symbol_set_value_now(i32* %108)
  ret void
}

declare dso_local i32 @subseg_set(i32, i32) #1

declare dso_local i32* @symbol_temp_new_now(...) #1

declare dso_local i32* @symbol_temp_make(...) #1

declare dso_local i32 @DWARF2_FORMAT(...) #1

declare dso_local i32 @out_four(i32) #1

declare dso_local i32 @as_fatal(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @emit_expr(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @out_two(i32) #1

declare dso_local i32 @out_byte(i32) #1

declare dso_local i32 @out_file_list(...) #1

declare dso_local i32 @symbol_set_value_now(i32*) #1

declare dso_local i32 @process_entries(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
