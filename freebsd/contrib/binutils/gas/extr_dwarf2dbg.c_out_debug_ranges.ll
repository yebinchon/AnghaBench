; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_out_debug_ranges.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_out_debug_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_seg = type { i32*, i32, i32*, %struct.line_seg* }
%struct.TYPE_3__ = type { i64, i32*, i8* }

@sizeof_address = common dso_local global i32 0, align 4
@all_segs = common dso_local global %struct.line_seg* null, align 8
@O_symbol = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @out_debug_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @out_debug_ranges(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.line_seg*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @sizeof_address, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @subseg_set(i32 %11, i32 0)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %19, %1
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = call i32 @out_byte(i32 255)
  br label %19

19:                                               ; preds = %17
  %20 = load i32, i32* %6, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %6, align 4
  br label %13

22:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %29, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = call i32 @out_byte(i32 0)
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %6, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %23

32:                                               ; preds = %23
  %33 = load %struct.line_seg*, %struct.line_seg** @all_segs, align 8
  store %struct.line_seg* %33, %struct.line_seg** %4, align 8
  br label %34

34:                                               ; preds = %81, %32
  %35 = load %struct.line_seg*, %struct.line_seg** %4, align 8
  %36 = icmp ne %struct.line_seg* %35, null
  br i1 %36, label %37, label %85

37:                                               ; preds = %34
  %38 = load %struct.line_seg*, %struct.line_seg** %4, align 8
  %39 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32* @first_frag_for_seg(i32 %40)
  store i32* %41, i32** %7, align 8
  %42 = load %struct.line_seg*, %struct.line_seg** %4, align 8
  %43 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32* @symbol_temp_new(i32 %44, i32 0, i32* %45)
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load %struct.line_seg*, %struct.line_seg** %4, align 8
  %49 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = load %struct.line_seg*, %struct.line_seg** %4, align 8
  %51 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32* @last_frag_for_seg(i32 %52)
  store i32* %53, i32** %7, align 8
  %54 = load %struct.line_seg*, %struct.line_seg** %4, align 8
  %55 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.line_seg*, %struct.line_seg** %4, align 8
  %59 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @get_frag_fix(i32* %57, i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = call i32* @symbol_temp_new(i32 %56, i32 %61, i32* %62)
  store i32* %63, i32** %9, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load %struct.line_seg*, %struct.line_seg** %4, align 8
  %66 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %65, i32 0, i32 0
  store i32* %64, i32** %66, align 8
  %67 = load i8*, i8** @O_symbol, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i8* %67, i8** %68, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32* %69, i32** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @emit_expr(%struct.TYPE_3__* %5, i32 %72)
  %74 = load i8*, i8** @O_symbol, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i8* %74, i8** %75, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32* %76, i32** %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @emit_expr(%struct.TYPE_3__* %5, i32 %79)
  br label %81

81:                                               ; preds = %37
  %82 = load %struct.line_seg*, %struct.line_seg** %4, align 8
  %83 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %82, i32 0, i32 3
  %84 = load %struct.line_seg*, %struct.line_seg** %83, align 8
  store %struct.line_seg* %84, %struct.line_seg** %4, align 8
  br label %34

85:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %92, %85
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %3, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = call i32 @out_byte(i32 0)
  br label %92

92:                                               ; preds = %90
  %93 = load i32, i32* %6, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %86

95:                                               ; preds = %86
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %102, %95
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %3, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = call i32 @out_byte(i32 0)
  br label %102

102:                                              ; preds = %100
  %103 = load i32, i32* %6, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %96

105:                                              ; preds = %96
  ret void
}

declare dso_local i32 @subseg_set(i32, i32) #1

declare dso_local i32 @out_byte(i32) #1

declare dso_local i32* @first_frag_for_seg(i32) #1

declare dso_local i32* @symbol_temp_new(i32, i32, i32*) #1

declare dso_local i32* @last_frag_for_seg(i32) #1

declare dso_local i32 @get_frag_fix(i32*, i32) #1

declare dso_local i32 @emit_expr(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
