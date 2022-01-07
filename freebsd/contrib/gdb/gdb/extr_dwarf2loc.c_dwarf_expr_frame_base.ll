; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2loc.c_dwarf_expr_frame_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2loc.c_dwarf_expr_frame_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.dwarf_expr_baton = type { i32 }
%struct.dwarf2_loclist_baton = type { i32 }
%struct.dwarf2_locexpr_baton = type { i64, i8* }

@dwarf2_loclist_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Could not find the frame base for \22%s\22.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**, i64*)* @dwarf_expr_frame_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwarf_expr_frame_base(i8* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca %struct.dwarf_expr_baton*, align 8
  %9 = alloca %struct.dwarf2_loclist_baton*, align 8
  %10 = alloca %struct.dwarf2_locexpr_baton*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.dwarf_expr_baton*
  store %struct.dwarf_expr_baton* %12, %struct.dwarf_expr_baton** %8, align 8
  %13 = load %struct.dwarf_expr_baton*, %struct.dwarf_expr_baton** %8, align 8
  %14 = getelementptr inbounds %struct.dwarf_expr_baton, %struct.dwarf_expr_baton* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.symbol* @get_frame_function(i32 %15)
  store %struct.symbol* %16, %struct.symbol** %7, align 8
  %17 = load %struct.symbol*, %struct.symbol** %7, align 8
  %18 = call i32* @SYMBOL_OPS(%struct.symbol* %17)
  %19 = icmp eq i32* %18, @dwarf2_loclist_funcs
  br i1 %19, label %20, label %32

20:                                               ; preds = %3
  %21 = load %struct.symbol*, %struct.symbol** %7, align 8
  %22 = call i8* @SYMBOL_LOCATION_BATON(%struct.symbol* %21)
  %23 = bitcast i8* %22 to %struct.dwarf2_loclist_baton*
  store %struct.dwarf2_loclist_baton* %23, %struct.dwarf2_loclist_baton** %9, align 8
  %24 = load %struct.dwarf2_loclist_baton*, %struct.dwarf2_loclist_baton** %9, align 8
  %25 = load i64*, i64** %6, align 8
  %26 = load %struct.dwarf_expr_baton*, %struct.dwarf_expr_baton** %8, align 8
  %27 = getelementptr inbounds %struct.dwarf_expr_baton, %struct.dwarf_expr_baton* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @get_frame_pc(i32 %28)
  %30 = call i8* @find_location_expression(%struct.dwarf2_loclist_baton* %24, i64* %25, i32 %29)
  %31 = load i8**, i8*** %5, align 8
  store i8* %30, i8** %31, align 8
  br label %44

32:                                               ; preds = %3
  %33 = load %struct.symbol*, %struct.symbol** %7, align 8
  %34 = call i8* @SYMBOL_LOCATION_BATON(%struct.symbol* %33)
  %35 = bitcast i8* %34 to %struct.dwarf2_locexpr_baton*
  store %struct.dwarf2_locexpr_baton* %35, %struct.dwarf2_locexpr_baton** %10, align 8
  %36 = load %struct.dwarf2_locexpr_baton*, %struct.dwarf2_locexpr_baton** %10, align 8
  %37 = getelementptr inbounds %struct.dwarf2_locexpr_baton, %struct.dwarf2_locexpr_baton* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %6, align 8
  store i64 %38, i64* %39, align 8
  %40 = load %struct.dwarf2_locexpr_baton*, %struct.dwarf2_locexpr_baton** %10, align 8
  %41 = getelementptr inbounds %struct.dwarf2_locexpr_baton, %struct.dwarf2_locexpr_baton* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i8**, i8*** %5, align 8
  store i8* %42, i8** %43, align 8
  br label %44

44:                                               ; preds = %32, %20
  %45 = load i8**, i8*** %5, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load %struct.symbol*, %struct.symbol** %7, align 8
  %50 = call i32 @SYMBOL_NATURAL_NAME(%struct.symbol* %49)
  %51 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  ret void
}

declare dso_local %struct.symbol* @get_frame_function(i32) #1

declare dso_local i32* @SYMBOL_OPS(%struct.symbol*) #1

declare dso_local i8* @SYMBOL_LOCATION_BATON(%struct.symbol*) #1

declare dso_local i8* @find_location_expression(%struct.dwarf2_loclist_baton*, i64*, i32) #1

declare dso_local i32 @get_frame_pc(i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @SYMBOL_NATURAL_NAME(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
