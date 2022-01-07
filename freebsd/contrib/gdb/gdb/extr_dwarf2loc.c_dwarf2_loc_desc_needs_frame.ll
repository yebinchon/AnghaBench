; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2loc.c_dwarf2_loc_desc_needs_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2loc.c_dwarf2_loc_desc_needs_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.needs_frame_baton = type { i64 }
%struct.dwarf_expr_context = type { i32, i64, %struct.TYPE_2__*, i32, i32, i32, i32, %struct.needs_frame_baton* }
%struct.TYPE_2__ = type { i64 }

@needs_frame_read_reg = common dso_local global i32 0, align 4
@needs_frame_read_mem = common dso_local global i32 0, align 4
@needs_frame_frame_base = common dso_local global i32 0, align 4
@needs_frame_tls_address = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i16)* @dwarf2_loc_desc_needs_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwarf2_loc_desc_needs_frame(i8* %0, i16 zeroext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.needs_frame_baton, align 8
  %6 = alloca %struct.dwarf_expr_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i16 %1, i16* %4, align 2
  %9 = getelementptr inbounds %struct.needs_frame_baton, %struct.needs_frame_baton* %5, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = call %struct.dwarf_expr_context* (...) @new_dwarf_expr_context()
  store %struct.dwarf_expr_context* %10, %struct.dwarf_expr_context** %6, align 8
  %11 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %6, align 8
  %12 = getelementptr inbounds %struct.dwarf_expr_context, %struct.dwarf_expr_context* %11, i32 0, i32 7
  store %struct.needs_frame_baton* %5, %struct.needs_frame_baton** %12, align 8
  %13 = load i32, i32* @needs_frame_read_reg, align 4
  %14 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %6, align 8
  %15 = getelementptr inbounds %struct.dwarf_expr_context, %struct.dwarf_expr_context* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @needs_frame_read_mem, align 4
  %17 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %6, align 8
  %18 = getelementptr inbounds %struct.dwarf_expr_context, %struct.dwarf_expr_context* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @needs_frame_frame_base, align 4
  %20 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %6, align 8
  %21 = getelementptr inbounds %struct.dwarf_expr_context, %struct.dwarf_expr_context* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @needs_frame_tls_address, align 4
  %23 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %6, align 8
  %24 = getelementptr inbounds %struct.dwarf_expr_context, %struct.dwarf_expr_context* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %6, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = load i16, i16* %4, align 2
  %28 = call i32 @dwarf_expr_eval(%struct.dwarf_expr_context* %25, i8* %26, i16 zeroext %27)
  %29 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %6, align 8
  %30 = getelementptr inbounds %struct.dwarf_expr_context, %struct.dwarf_expr_context* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %7, align 4
  %32 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %6, align 8
  %33 = getelementptr inbounds %struct.dwarf_expr_context, %struct.dwarf_expr_context* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %56, %36
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %6, align 8
  %41 = getelementptr inbounds %struct.dwarf_expr_context, %struct.dwarf_expr_context* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %37
  %45 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %6, align 8
  %46 = getelementptr inbounds %struct.dwarf_expr_context, %struct.dwarf_expr_context* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32 1, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %44
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %37

59:                                               ; preds = %37
  br label %60

60:                                               ; preds = %59, %2
  %61 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %6, align 8
  %62 = call i32 @free_dwarf_expr_context(%struct.dwarf_expr_context* %61)
  %63 = getelementptr inbounds %struct.needs_frame_baton, %struct.needs_frame_baton* %5, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br label %69

69:                                               ; preds = %66, %60
  %70 = phi i1 [ true, %60 ], [ %68, %66 ]
  %71 = zext i1 %70 to i32
  ret i32 %71
}

declare dso_local %struct.dwarf_expr_context* @new_dwarf_expr_context(...) #1

declare dso_local i32 @dwarf_expr_eval(%struct.dwarf_expr_context*, i8*, i16 zeroext) #1

declare dso_local i32 @free_dwarf_expr_context(%struct.dwarf_expr_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
