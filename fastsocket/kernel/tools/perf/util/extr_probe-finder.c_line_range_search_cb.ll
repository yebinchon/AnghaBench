; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_line_range_search_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_line_range_search_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf_callback_param = type { i32, %struct.line_finder* }
%struct.line_finder = type { i64, i64, i64, %struct.line_range* }
%struct.line_range = type { i64, i64, i64, i32, i64 }

@DWARF_CB_OK = common dso_local global i32 0, align 4
@DW_TAG_subprogram = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"fname: %s, lineno:%d\0A\00", align 1
@INT_MAX = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"New line range: %d to %d\0A\00", align 1
@line_range_inline_cb = common dso_local global i32 0, align 4
@DWARF_CB_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @line_range_search_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @line_range_search_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dwarf_callback_param*, align 8
  %7 = alloca %struct.line_finder*, align 8
  %8 = alloca %struct.line_range*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.dwarf_callback_param*
  store %struct.dwarf_callback_param* %10, %struct.dwarf_callback_param** %6, align 8
  %11 = load %struct.dwarf_callback_param*, %struct.dwarf_callback_param** %6, align 8
  %12 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %11, i32 0, i32 1
  %13 = load %struct.line_finder*, %struct.line_finder** %12, align 8
  store %struct.line_finder* %13, %struct.line_finder** %7, align 8
  %14 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %15 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %14, i32 0, i32 3
  %16 = load %struct.line_range*, %struct.line_range** %15, align 8
  store %struct.line_range* %16, %struct.line_range** %8, align 8
  %17 = load %struct.line_range*, %struct.line_range** %8, align 8
  %18 = getelementptr inbounds %struct.line_range, %struct.line_range* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load %struct.line_range*, %struct.line_range** %8, align 8
  %23 = getelementptr inbounds %struct.line_range, %struct.line_range* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @dwarf_decl_file(i32* %25)
  %27 = call i64 @strtailcmp(i64 %24, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @DWARF_CB_OK, align 4
  store i32 %30, i32* %3, align 4
  br label %134

31:                                               ; preds = %21, %2
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @dwarf_tag(i32* %32)
  %34 = load i64, i64* @DW_TAG_subprogram, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %132

36:                                               ; preds = %31
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.line_range*, %struct.line_range** %8, align 8
  %39 = getelementptr inbounds %struct.line_range, %struct.line_range* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @die_compare_name(i32* %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %132

43:                                               ; preds = %36
  %44 = load i32*, i32** %4, align 8
  %45 = call i64 @dwarf_decl_file(i32* %44)
  %46 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %47 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.line_range*, %struct.line_range** %8, align 8
  %50 = getelementptr inbounds %struct.line_range, %struct.line_range* %49, i32 0, i32 0
  %51 = call i32 @dwarf_decl_line(i32* %48, i64* %50)
  %52 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %53 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.line_range*, %struct.line_range** %8, align 8
  %56 = getelementptr inbounds %struct.line_range, %struct.line_range* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %54, i64 %57)
  %59 = load %struct.line_range*, %struct.line_range** %8, align 8
  %60 = getelementptr inbounds %struct.line_range, %struct.line_range* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.line_range*, %struct.line_range** %8, align 8
  %63 = getelementptr inbounds %struct.line_range, %struct.line_range* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %67 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %69 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %43
  %73 = load i8*, i8** @INT_MAX, align 8
  %74 = ptrtoint i8* %73 to i64
  %75 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %76 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %72, %43
  %78 = load %struct.line_range*, %struct.line_range** %8, align 8
  %79 = getelementptr inbounds %struct.line_range, %struct.line_range* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.line_range*, %struct.line_range** %8, align 8
  %82 = getelementptr inbounds %struct.line_range, %struct.line_range* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %86 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  %87 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %88 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %77
  %92 = load i8*, i8** @INT_MAX, align 8
  %93 = ptrtoint i8* %92 to i64
  %94 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %95 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %94, i32 0, i32 2
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %91, %77
  %97 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %98 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %101 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %99, i64 %102)
  %104 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %105 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.line_range*, %struct.line_range** %8, align 8
  %108 = getelementptr inbounds %struct.line_range, %struct.line_range* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %110 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.line_range*, %struct.line_range** %8, align 8
  %113 = getelementptr inbounds %struct.line_range, %struct.line_range* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  %114 = load i32*, i32** %4, align 8
  %115 = call i64 @dwarf_func_inline(i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %96
  %118 = load i32*, i32** %4, align 8
  %119 = load i32, i32* @line_range_inline_cb, align 4
  %120 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %121 = call i32 @die_walk_instances(i32* %118, i32 %119, %struct.line_finder* %120)
  %122 = load %struct.dwarf_callback_param*, %struct.dwarf_callback_param** %6, align 8
  %123 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  br label %130

124:                                              ; preds = %96
  %125 = load i32*, i32** %4, align 8
  %126 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %127 = call i32 @find_line_range_by_line(i32* %125, %struct.line_finder* %126)
  %128 = load %struct.dwarf_callback_param*, %struct.dwarf_callback_param** %6, align 8
  %129 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  br label %130

130:                                              ; preds = %124, %117
  %131 = load i32, i32* @DWARF_CB_ABORT, align 4
  store i32 %131, i32* %3, align 4
  br label %134

132:                                              ; preds = %36, %31
  %133 = load i32, i32* @DWARF_CB_OK, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %132, %130, %29
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i64 @strtailcmp(i64, i64) #1

declare dso_local i64 @dwarf_decl_file(i32*) #1

declare dso_local i64 @dwarf_tag(i32*) #1

declare dso_local i64 @die_compare_name(i32*, i32) #1

declare dso_local i32 @dwarf_decl_line(i32*, i64*) #1

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i64 @dwarf_func_inline(i32*) #1

declare dso_local i32 @die_walk_instances(i32*, i32, %struct.line_finder*) #1

declare dso_local i32 @find_line_range_by_line(i32*, %struct.line_finder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
