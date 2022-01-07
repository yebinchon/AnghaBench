; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_get_line_subseg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_get_line_subseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_subseg = type { i64, i32*, i32**, %struct.line_subseg* }
%struct.line_seg = type { i64, %struct.line_subseg*, %struct.line_seg* }

@get_line_subseg.last_seg = internal global i64 0, align 8
@get_line_subseg.last_subseg = internal global i64 0, align 8
@get_line_subseg.last_line_subseg = internal global %struct.line_subseg* null, align 8
@all_segs = common dso_local global %struct.line_seg* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.line_subseg* (i64, i64)* @get_line_subseg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.line_subseg* @get_line_subseg(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.line_subseg*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.line_seg**, align 8
  %7 = alloca %struct.line_seg*, align 8
  %8 = alloca %struct.line_subseg**, align 8
  %9 = alloca %struct.line_subseg*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @get_line_subseg.last_seg, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @get_line_subseg.last_subseg, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load %struct.line_subseg*, %struct.line_subseg** @get_line_subseg.last_line_subseg, align 8
  store %struct.line_subseg* %18, %struct.line_subseg** %3, align 8
  br label %95

19:                                               ; preds = %13, %2
  store %struct.line_seg** @all_segs, %struct.line_seg*** %6, align 8
  br label %20

20:                                               ; preds = %32, %19
  %21 = load %struct.line_seg**, %struct.line_seg*** %6, align 8
  %22 = load %struct.line_seg*, %struct.line_seg** %21, align 8
  store %struct.line_seg* %22, %struct.line_seg** %7, align 8
  %23 = icmp ne %struct.line_seg* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.line_seg*, %struct.line_seg** %7, align 8
  %26 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %47

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.line_seg*, %struct.line_seg** %7, align 8
  %34 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %33, i32 0, i32 2
  store %struct.line_seg** %34, %struct.line_seg*** %6, align 8
  br label %20

35:                                               ; preds = %20
  %36 = call i64 @xmalloc(i32 24)
  %37 = inttoptr i64 %36 to %struct.line_seg*
  store %struct.line_seg* %37, %struct.line_seg** %7, align 8
  %38 = load %struct.line_seg*, %struct.line_seg** %7, align 8
  %39 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %38, i32 0, i32 2
  store %struct.line_seg* null, %struct.line_seg** %39, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load %struct.line_seg*, %struct.line_seg** %7, align 8
  %42 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.line_seg*, %struct.line_seg** %7, align 8
  %44 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %43, i32 0, i32 1
  store %struct.line_subseg* null, %struct.line_subseg** %44, align 8
  %45 = load %struct.line_seg*, %struct.line_seg** %7, align 8
  %46 = load %struct.line_seg**, %struct.line_seg*** %6, align 8
  store %struct.line_seg* %45, %struct.line_seg** %46, align 8
  br label %47

47:                                               ; preds = %35, %30
  %48 = load %struct.line_seg*, %struct.line_seg** %7, align 8
  %49 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %48, i32 0, i32 1
  store %struct.line_subseg** %49, %struct.line_subseg*** %8, align 8
  br label %50

50:                                               ; preds = %69, %47
  %51 = load %struct.line_subseg**, %struct.line_subseg*** %8, align 8
  %52 = load %struct.line_subseg*, %struct.line_subseg** %51, align 8
  store %struct.line_subseg* %52, %struct.line_subseg** %9, align 8
  %53 = icmp ne %struct.line_subseg* %52, null
  br i1 %53, label %54, label %72

54:                                               ; preds = %50
  %55 = load %struct.line_subseg*, %struct.line_subseg** %9, align 8
  %56 = getelementptr inbounds %struct.line_subseg, %struct.line_subseg* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %90

61:                                               ; preds = %54
  %62 = load %struct.line_subseg*, %struct.line_subseg** %9, align 8
  %63 = getelementptr inbounds %struct.line_subseg, %struct.line_subseg* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %72

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.line_subseg*, %struct.line_subseg** %9, align 8
  %71 = getelementptr inbounds %struct.line_subseg, %struct.line_subseg* %70, i32 0, i32 3
  store %struct.line_subseg** %71, %struct.line_subseg*** %8, align 8
  br label %50

72:                                               ; preds = %67, %50
  %73 = call i64 @xmalloc(i32 32)
  %74 = inttoptr i64 %73 to %struct.line_subseg*
  store %struct.line_subseg* %74, %struct.line_subseg** %9, align 8
  %75 = load %struct.line_subseg**, %struct.line_subseg*** %8, align 8
  %76 = load %struct.line_subseg*, %struct.line_subseg** %75, align 8
  %77 = load %struct.line_subseg*, %struct.line_subseg** %9, align 8
  %78 = getelementptr inbounds %struct.line_subseg, %struct.line_subseg* %77, i32 0, i32 3
  store %struct.line_subseg* %76, %struct.line_subseg** %78, align 8
  %79 = load i64, i64* %5, align 8
  %80 = load %struct.line_subseg*, %struct.line_subseg** %9, align 8
  %81 = getelementptr inbounds %struct.line_subseg, %struct.line_subseg* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.line_subseg*, %struct.line_subseg** %9, align 8
  %83 = getelementptr inbounds %struct.line_subseg, %struct.line_subseg* %82, i32 0, i32 1
  store i32* null, i32** %83, align 8
  %84 = load %struct.line_subseg*, %struct.line_subseg** %9, align 8
  %85 = getelementptr inbounds %struct.line_subseg, %struct.line_subseg* %84, i32 0, i32 1
  %86 = load %struct.line_subseg*, %struct.line_subseg** %9, align 8
  %87 = getelementptr inbounds %struct.line_subseg, %struct.line_subseg* %86, i32 0, i32 2
  store i32** %85, i32*** %87, align 8
  %88 = load %struct.line_subseg*, %struct.line_subseg** %9, align 8
  %89 = load %struct.line_subseg**, %struct.line_subseg*** %8, align 8
  store %struct.line_subseg* %88, %struct.line_subseg** %89, align 8
  br label %90

90:                                               ; preds = %72, %60
  %91 = load i64, i64* %4, align 8
  store i64 %91, i64* @get_line_subseg.last_seg, align 8
  %92 = load i64, i64* %5, align 8
  store i64 %92, i64* @get_line_subseg.last_subseg, align 8
  %93 = load %struct.line_subseg*, %struct.line_subseg** %9, align 8
  store %struct.line_subseg* %93, %struct.line_subseg** @get_line_subseg.last_line_subseg, align 8
  %94 = load %struct.line_subseg*, %struct.line_subseg** %9, align 8
  store %struct.line_subseg* %94, %struct.line_subseg** %3, align 8
  br label %95

95:                                               ; preds = %90, %17
  %96 = load %struct.line_subseg*, %struct.line_subseg** %3, align 8
  ret %struct.line_subseg* %96
}

declare dso_local i64 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
