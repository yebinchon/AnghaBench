; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_set_raw_breakpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_set_raw_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.breakpoint = type { i32, i32, %struct.breakpoint*, i64, i32*, i32*, i64, i32*, i32*, i32, i32*, i64, i64, i32, i32, i32, i32, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.symtab_and_line = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@current_language = common dso_local global %struct.TYPE_5__* null, align 8
@input_radix = common dso_local global i32 0, align 4
@bp_enabled = common dso_local global i32 0, align 4
@null_frame_id = common dso_local global i32 0, align 4
@breakpoint_chain = common dso_local global %struct.breakpoint* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.breakpoint* @set_raw_breakpoint(%struct.symtab_and_line* byval(%struct.symtab_and_line) align 8 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.breakpoint*, align 8
  %5 = alloca %struct.breakpoint*, align 8
  store i32 %1, i32* %3, align 4
  %6 = call i64 @xmalloc(i32 128)
  %7 = inttoptr i64 %6 to %struct.breakpoint*
  store %struct.breakpoint* %7, %struct.breakpoint** %4, align 8
  %8 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %9 = call i32 @memset(%struct.breakpoint* %8, i32 0, i32 128)
  %10 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.TYPE_6__* @allocate_bp_location(%struct.breakpoint* %10, i32 %11)
  %13 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %14 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %13, i32 0, i32 17
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %14, align 8
  %15 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %0, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %18 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %17, i32 0, i32 17
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i32 %16, i32* %20, align 4
  %21 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %22 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %21, i32 0, i32 17
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @adjust_breakpoint_address(i32 %25)
  %27 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %28 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %27, i32 0, i32 17
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  store i32 %26, i32* %30, align 4
  %31 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %0, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp eq %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %36 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %35, i32 0, i32 18
  store i32* null, i32** %36, align 8
  br label %50

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %0, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %0, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strlen(i32 %45)
  %47 = call i32* @savestring(i32 %41, i32 %46)
  %48 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %49 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %48, i32 0, i32 18
  store i32* %47, i32** %49, align 8
  br label %50

50:                                               ; preds = %37, %34
  %51 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %0, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %54 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %53, i32 0, i32 17
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %59 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_language, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %64 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %63, i32 0, i32 16
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @input_radix, align 4
  %66 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %67 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %66, i32 0, i32 15
  store i32 %65, i32* %67, align 8
  %68 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %69 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %68, i32 0, i32 1
  store i32 -1, i32* %69, align 4
  %70 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %0, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %73 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %72, i32 0, i32 14
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @bp_enabled, align 4
  %75 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %76 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %75, i32 0, i32 13
  store i32 %74, i32* %76, align 8
  %77 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %78 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %77, i32 0, i32 2
  store %struct.breakpoint* null, %struct.breakpoint** %78, align 8
  %79 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %80 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %79, i32 0, i32 12
  store i64 0, i64* %80, align 8
  %81 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %82 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %81, i32 0, i32 11
  store i64 0, i64* %82, align 8
  %83 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %84 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %83, i32 0, i32 10
  store i32* null, i32** %84, align 8
  %85 = load i32, i32* @null_frame_id, align 4
  %86 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %87 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %86, i32 0, i32 9
  store i32 %85, i32* %87, align 8
  %88 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %89 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %88, i32 0, i32 8
  store i32* null, i32** %89, align 8
  %90 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %91 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %90, i32 0, i32 7
  store i32* null, i32** %91, align 8
  %92 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %93 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %92, i32 0, i32 6
  store i64 0, i64* %93, align 8
  %94 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %95 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %94, i32 0, i32 5
  store i32* null, i32** %95, align 8
  %96 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %97 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %96, i32 0, i32 4
  store i32* null, i32** %97, align 8
  %98 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %99 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %98, i32 0, i32 3
  store i64 0, i64* %99, align 8
  %100 = load %struct.breakpoint*, %struct.breakpoint** @breakpoint_chain, align 8
  store %struct.breakpoint* %100, %struct.breakpoint** %5, align 8
  %101 = load %struct.breakpoint*, %struct.breakpoint** %5, align 8
  %102 = icmp eq %struct.breakpoint* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %50
  %104 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  store %struct.breakpoint* %104, %struct.breakpoint** @breakpoint_chain, align 8
  br label %119

105:                                              ; preds = %50
  br label %106

106:                                              ; preds = %111, %105
  %107 = load %struct.breakpoint*, %struct.breakpoint** %5, align 8
  %108 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %107, i32 0, i32 2
  %109 = load %struct.breakpoint*, %struct.breakpoint** %108, align 8
  %110 = icmp ne %struct.breakpoint* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.breakpoint*, %struct.breakpoint** %5, align 8
  %113 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %112, i32 0, i32 2
  %114 = load %struct.breakpoint*, %struct.breakpoint** %113, align 8
  store %struct.breakpoint* %114, %struct.breakpoint** %5, align 8
  br label %106

115:                                              ; preds = %106
  %116 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %117 = load %struct.breakpoint*, %struct.breakpoint** %5, align 8
  %118 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %117, i32 0, i32 2
  store %struct.breakpoint* %116, %struct.breakpoint** %118, align 8
  br label %119

119:                                              ; preds = %115, %103
  %120 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %121 = call i32 @check_duplicates(%struct.breakpoint* %120)
  %122 = call i32 (...) @breakpoints_changed()
  %123 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  ret %struct.breakpoint* %123
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.breakpoint*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @allocate_bp_location(%struct.breakpoint*, i32) #1

declare dso_local i32 @adjust_breakpoint_address(i32) #1

declare dso_local i32* @savestring(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @check_duplicates(%struct.breakpoint*) #1

declare dso_local i32 @breakpoints_changed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
