; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_dwarf2_gen_line_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_dwarf2_gen_line_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf2_line_info = type { i32, i32 }

@dwarf2_gen_line_info.line = internal global i32 -1, align 4
@dwarf2_gen_line_info.filenum = internal global i32 -1, align 4
@debug_type = common dso_local global i64 0, align 8
@DEBUG_DWARF2 = common dso_local global i64 0, align 8
@now_seg = common dso_local global i32 0, align 4
@frag_now = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwarf2_gen_line_info(i32 %0, %struct.dwarf2_line_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwarf2_line_info*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.dwarf2_line_info* %1, %struct.dwarf2_line_info** %4, align 8
  %6 = load %struct.dwarf2_line_info*, %struct.dwarf2_line_info** %4, align 8
  %7 = getelementptr inbounds %struct.dwarf2_line_info, %struct.dwarf2_line_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.dwarf2_line_info*, %struct.dwarf2_line_info** %4, align 8
  %12 = getelementptr inbounds %struct.dwarf2_line_info, %struct.dwarf2_line_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %2
  br label %47

16:                                               ; preds = %10
  %17 = load i64, i64* @debug_type, align 8
  %18 = load i64, i64* @DEBUG_DWARF2, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i32, i32* @dwarf2_gen_line_info.line, align 4
  %22 = load %struct.dwarf2_line_info*, %struct.dwarf2_line_info** %4, align 8
  %23 = getelementptr inbounds %struct.dwarf2_line_info, %struct.dwarf2_line_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load i32, i32* @dwarf2_gen_line_info.filenum, align 4
  %28 = load %struct.dwarf2_line_info*, %struct.dwarf2_line_info** %4, align 8
  %29 = getelementptr inbounds %struct.dwarf2_line_info, %struct.dwarf2_line_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %47

33:                                               ; preds = %26, %20, %16
  %34 = load %struct.dwarf2_line_info*, %struct.dwarf2_line_info** %4, align 8
  %35 = getelementptr inbounds %struct.dwarf2_line_info, %struct.dwarf2_line_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* @dwarf2_gen_line_info.line, align 4
  %37 = load %struct.dwarf2_line_info*, %struct.dwarf2_line_info** %4, align 8
  %38 = getelementptr inbounds %struct.dwarf2_line_info, %struct.dwarf2_line_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* @dwarf2_gen_line_info.filenum, align 4
  %40 = load i32, i32* @now_seg, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @frag_now, align 4
  %43 = call i32* @symbol_temp_new(i32 %40, i32 %41, i32 %42)
  store i32* %43, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.dwarf2_line_info*, %struct.dwarf2_line_info** %4, align 8
  %46 = call i32 @dwarf2_gen_line_info_1(i32* %44, %struct.dwarf2_line_info* %45)
  br label %47

47:                                               ; preds = %33, %32, %15
  ret void
}

declare dso_local i32* @symbol_temp_new(i32, i32, i32) #1

declare dso_local i32 @dwarf2_gen_line_info_1(i32*, %struct.dwarf2_line_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
