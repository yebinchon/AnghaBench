; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_out_debug_aranges.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_out_debug_aranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_seg = type { i32*, i32, i32*, %struct.line_seg* }
%struct.TYPE_3__ = type { i64, i32*, i32*, i32 }

@sizeof_address = common dso_local global i32 0, align 4
@all_segs = common dso_local global %struct.line_seg* null, align 8
@O_symbol = common dso_local global i32 0, align 4
@O_subtract = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @out_debug_aranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @out_debug_aranges(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.line_seg*, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* @sizeof_address, align 4
  store i32 %14, i32* %5, align 4
  store i32 12, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = mul i32 2, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = mul i32 2, %18
  %20 = sub i32 %19, 1
  %21 = and i32 %17, %20
  %22 = sub i32 %16, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = mul i32 2, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load %struct.line_seg*, %struct.line_seg** @all_segs, align 8
  store %struct.line_seg* %32, %struct.line_seg** %8, align 8
  br label %33

33:                                               ; preds = %41, %28
  %34 = load %struct.line_seg*, %struct.line_seg** %8, align 8
  %35 = icmp ne %struct.line_seg* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = mul i32 2, %37
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %36
  %42 = load %struct.line_seg*, %struct.line_seg** %8, align 8
  %43 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %42, i32 0, i32 3
  %44 = load %struct.line_seg*, %struct.line_seg** %43, align 8
  store %struct.line_seg* %44, %struct.line_seg** %8, align 8
  br label %33

45:                                               ; preds = %33
  %46 = load i32, i32* %5, align 4
  %47 = mul i32 2, %46
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @subseg_set(i32 %50, i32 0)
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, 4
  %54 = call i32 @out_four(i32 %53)
  %55 = call i32 @out_two(i32 2)
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @section_symbol(i32 %56)
  %58 = call i32 @TC_DWARF2_EMIT_OFFSET(i32 %57, i32 4)
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @out_byte(i32 %59)
  %61 = call i32 @out_byte(i32 0)
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %45
  %65 = load i32, i32* %5, align 4
  %66 = mul i32 2, %65
  %67 = call i64 @ffs(i32 %66)
  %68 = sub nsw i64 %67, 1
  %69 = call i32 @frag_align(i64 %68, i32 0, i32 0)
  br label %70

70:                                               ; preds = %64, %45
  %71 = load %struct.line_seg*, %struct.line_seg** @all_segs, align 8
  store %struct.line_seg* %71, %struct.line_seg** %8, align 8
  br label %72

72:                                               ; preds = %121, %70
  %73 = load %struct.line_seg*, %struct.line_seg** %8, align 8
  %74 = icmp ne %struct.line_seg* %73, null
  br i1 %74, label %75, label %125

75:                                               ; preds = %72
  %76 = load %struct.line_seg*, %struct.line_seg** %8, align 8
  %77 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32* @first_frag_for_seg(i32 %78)
  store i32* %79, i32** %11, align 8
  %80 = load %struct.line_seg*, %struct.line_seg** %8, align 8
  %81 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = call i32* @symbol_temp_new(i32 %82, i32 0, i32* %83)
  store i32* %84, i32** %12, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = load %struct.line_seg*, %struct.line_seg** %8, align 8
  %87 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %86, i32 0, i32 2
  store i32* %85, i32** %87, align 8
  %88 = load %struct.line_seg*, %struct.line_seg** %8, align 8
  %89 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32* @last_frag_for_seg(i32 %90)
  store i32* %91, i32** %11, align 8
  %92 = load %struct.line_seg*, %struct.line_seg** %8, align 8
  %93 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = load %struct.line_seg*, %struct.line_seg** %8, align 8
  %97 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @get_frag_fix(i32* %95, i32 %98)
  %100 = load i32*, i32** %11, align 8
  %101 = call i32* @symbol_temp_new(i32 %94, i32 %99, i32* %100)
  store i32* %101, i32** %13, align 8
  %102 = load i32*, i32** %13, align 8
  %103 = load %struct.line_seg*, %struct.line_seg** %8, align 8
  %104 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %103, i32 0, i32 0
  store i32* %102, i32** %104, align 8
  %105 = load i32, i32* @O_symbol, align 4
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  store i32 %105, i32* %106, align 8
  %107 = load i32*, i32** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  store i32* %107, i32** %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i64 0, i64* %109, align 8
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @emit_expr(%struct.TYPE_3__* %9, i32 %110)
  %112 = load i32, i32* @O_subtract, align 4
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  store i32 %112, i32* %113, align 8
  %114 = load i32*, i32** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  store i32* %114, i32** %115, align 8
  %116 = load i32*, i32** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32* %116, i32** %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i64 0, i64* %118, align 8
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @emit_expr(%struct.TYPE_3__* %9, i32 %119)
  br label %121

121:                                              ; preds = %75
  %122 = load %struct.line_seg*, %struct.line_seg** %8, align 8
  %123 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %122, i32 0, i32 3
  %124 = load %struct.line_seg*, %struct.line_seg** %123, align 8
  store %struct.line_seg* %124, %struct.line_seg** %8, align 8
  br label %72

125:                                              ; preds = %72
  %126 = load i32, i32* %5, align 4
  %127 = mul i32 2, %126
  %128 = call i8* @frag_more(i32 %127)
  store i8* %128, i8** %10, align 8
  %129 = load i8*, i8** %10, align 8
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @md_number_to_chars(i8* %129, i32 0, i32 %130)
  %132 = load i8*, i8** %10, align 8
  %133 = load i32, i32* %5, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @md_number_to_chars(i8* %135, i32 0, i32 %136)
  ret void
}

declare dso_local i32 @subseg_set(i32, i32) #1

declare dso_local i32 @out_four(i32) #1

declare dso_local i32 @out_two(i32) #1

declare dso_local i32 @TC_DWARF2_EMIT_OFFSET(i32, i32) #1

declare dso_local i32 @section_symbol(i32) #1

declare dso_local i32 @out_byte(i32) #1

declare dso_local i32 @frag_align(i64, i32, i32) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i32* @first_frag_for_seg(i32) #1

declare dso_local i32* @symbol_temp_new(i32, i32, i32*) #1

declare dso_local i32* @last_frag_for_seg(i32) #1

declare dso_local i32 @get_frag_fix(i32*, i32) #1

declare dso_local i32 @emit_expr(%struct.TYPE_3__*, i32) #1

declare dso_local i8* @frag_more(i32) #1

declare dso_local i32 @md_number_to_chars(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
