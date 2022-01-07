; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_probe_point_search_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_probe_point_search_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf_callback_param = type { i32, %struct.probe_finder* }
%struct.probe_finder = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.perf_probe_point }
%struct.perf_probe_point = type { i64, i64, i64, i64, i32 }

@DW_TAG_subprogram = common dso_local global i64 0, align 8
@DW_AT_declaration = common dso_local global i32 0, align 4
@DWARF_CB_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to get entry address of %s.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@DWARF_CB_ABORT = common dso_local global i32 0, align 4
@probe_point_inline_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @probe_point_search_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_point_search_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dwarf_callback_param*, align 8
  %7 = alloca %struct.probe_finder*, align 8
  %8 = alloca %struct.perf_probe_point*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.dwarf_callback_param*
  store %struct.dwarf_callback_param* %11, %struct.dwarf_callback_param** %6, align 8
  %12 = load %struct.dwarf_callback_param*, %struct.dwarf_callback_param** %6, align 8
  %13 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %12, i32 0, i32 1
  %14 = load %struct.probe_finder*, %struct.probe_finder** %13, align 8
  store %struct.probe_finder* %14, %struct.probe_finder** %7, align 8
  %15 = load %struct.probe_finder*, %struct.probe_finder** %7, align 8
  %16 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.perf_probe_point* %18, %struct.perf_probe_point** %8, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @dwarf_tag(i32* %19)
  %21 = load i64, i64* @DW_TAG_subprogram, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.perf_probe_point*, %struct.perf_probe_point** %8, align 8
  %26 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @die_compare_name(i32* %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @DW_AT_declaration, align 4
  %33 = call i64 @dwarf_attr(i32* %31, i32 %32, i32* %9)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30, %23, %2
  %36 = load i32, i32* @DWARF_CB_OK, align 4
  store i32 %36, i32* %3, align 4
  br label %136

37:                                               ; preds = %30
  %38 = load %struct.perf_probe_point*, %struct.perf_probe_point** %8, align 8
  %39 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.perf_probe_point*, %struct.perf_probe_point** %8, align 8
  %44 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @dwarf_decl_file(i32* %46)
  %48 = call i64 @strtailcmp(i64 %45, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @DWARF_CB_OK, align 4
  store i32 %51, i32* %3, align 4
  br label %136

52:                                               ; preds = %42, %37
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @dwarf_decl_file(i32* %53)
  %55 = load %struct.probe_finder*, %struct.probe_finder** %7, align 8
  %56 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.perf_probe_point*, %struct.perf_probe_point** %8, align 8
  %58 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %52
  %62 = load i32*, i32** %4, align 8
  %63 = load %struct.probe_finder*, %struct.probe_finder** %7, align 8
  %64 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %63, i32 0, i32 1
  %65 = call i32 @dwarf_decl_line(i32* %62, i32* %64)
  %66 = load %struct.perf_probe_point*, %struct.perf_probe_point** %8, align 8
  %67 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.probe_finder*, %struct.probe_finder** %7, align 8
  %70 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %68
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %70, align 4
  %75 = load %struct.probe_finder*, %struct.probe_finder** %7, align 8
  %76 = call i32 @find_probe_point_by_line(%struct.probe_finder* %75)
  %77 = load %struct.dwarf_callback_param*, %struct.dwarf_callback_param** %6, align 8
  %78 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  br label %134

79:                                               ; preds = %52
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @dwarf_func_inline(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %125, label %83

83:                                               ; preds = %79
  %84 = load %struct.perf_probe_point*, %struct.perf_probe_point** %8, align 8
  %85 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i32*, i32** %4, align 8
  %90 = load %struct.probe_finder*, %struct.probe_finder** %7, align 8
  %91 = call i32 @find_probe_point_lazy(i32* %89, %struct.probe_finder* %90)
  %92 = load %struct.dwarf_callback_param*, %struct.dwarf_callback_param** %6, align 8
  %93 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %124

94:                                               ; preds = %83
  %95 = load i32*, i32** %4, align 8
  %96 = load %struct.probe_finder*, %struct.probe_finder** %7, align 8
  %97 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %96, i32 0, i32 0
  %98 = call i64 @dwarf_entrypc(i32* %95, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %94
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @dwarf_diename(i32* %101)
  %103 = call i32 @pr_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @ENOENT, align 4
  %105 = sub nsw i32 0, %104
  %106 = load %struct.dwarf_callback_param*, %struct.dwarf_callback_param** %6, align 8
  %107 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @DWARF_CB_ABORT, align 4
  store i32 %108, i32* %3, align 4
  br label %136

109:                                              ; preds = %94
  %110 = load %struct.perf_probe_point*, %struct.perf_probe_point** %8, align 8
  %111 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.probe_finder*, %struct.probe_finder** %7, align 8
  %114 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %112
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 8
  %119 = load i32*, i32** %4, align 8
  %120 = load %struct.probe_finder*, %struct.probe_finder** %7, align 8
  %121 = call i32 @call_probe_finder(i32* %119, %struct.probe_finder* %120)
  %122 = load %struct.dwarf_callback_param*, %struct.dwarf_callback_param** %6, align 8
  %123 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %109, %88
  br label %133

125:                                              ; preds = %79
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* @probe_point_inline_cb, align 4
  %128 = load %struct.probe_finder*, %struct.probe_finder** %7, align 8
  %129 = bitcast %struct.probe_finder* %128 to i8*
  %130 = call i32 @die_walk_instances(i32* %126, i32 %127, i8* %129)
  %131 = load %struct.dwarf_callback_param*, %struct.dwarf_callback_param** %6, align 8
  %132 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %125, %124
  br label %134

134:                                              ; preds = %133, %61
  %135 = load i32, i32* @DWARF_CB_ABORT, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %134, %100, %50, %35
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i64 @dwarf_tag(i32*) #1

declare dso_local i32 @die_compare_name(i32*, i32) #1

declare dso_local i64 @dwarf_attr(i32*, i32, i32*) #1

declare dso_local i64 @strtailcmp(i64, i32) #1

declare dso_local i32 @dwarf_decl_file(i32*) #1

declare dso_local i32 @dwarf_decl_line(i32*, i32*) #1

declare dso_local i32 @find_probe_point_by_line(%struct.probe_finder*) #1

declare dso_local i32 @dwarf_func_inline(i32*) #1

declare dso_local i32 @find_probe_point_lazy(i32*, %struct.probe_finder*) #1

declare dso_local i64 @dwarf_entrypc(i32*, i32*) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @dwarf_diename(i32*) #1

declare dso_local i32 @call_probe_finder(i32*, %struct.probe_finder*) #1

declare dso_local i32 @die_walk_instances(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
