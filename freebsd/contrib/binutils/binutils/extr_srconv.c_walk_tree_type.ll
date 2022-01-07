; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_srconv.c_walk_tree_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_srconv.c_walk_tree_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_sfile = type { i32 }
%struct.coff_symbol = type { %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.coff_type = type { i32 }
%struct.IT_dty = type { i32, i32 }

@coff_function_type = common dso_local global i64 0, align 8
@file = common dso_local global i32 0, align 4
@BLOCK_TYPE_FUNCTION = common dso_local global i32 0, align 4
@BLOCK_TYPE_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coff_sfile*, %struct.coff_symbol*, %struct.coff_type*, i32)* @walk_tree_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_tree_type(%struct.coff_sfile* %0, %struct.coff_symbol* %1, %struct.coff_type* %2, i32 %3) #0 {
  %5 = alloca %struct.coff_sfile*, align 8
  %6 = alloca %struct.coff_symbol*, align 8
  %7 = alloca %struct.coff_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.IT_dty, align 4
  %10 = alloca %struct.IT_dty, align 4
  store %struct.coff_sfile* %0, %struct.coff_sfile** %5, align 8
  store %struct.coff_symbol* %1, %struct.coff_symbol** %6, align 8
  store %struct.coff_type* %2, %struct.coff_type** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %12 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @coff_function_type, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %108

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.IT_dty, %struct.IT_dty* %9, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.IT_dty, %struct.IT_dty* %9, i32 0, i32 1
  store i32 4097, i32* %20, align 4
  %21 = load i32, i32* @file, align 4
  %22 = call i32 @sysroff_swap_dty_out(i32 %21, %struct.IT_dty* %9)
  %23 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  %24 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %25 = load %struct.coff_type*, %struct.coff_type** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @walk_tree_type_1(%struct.coff_sfile* %23, %struct.coff_symbol* %24, %struct.coff_type* %25, i32 %26)
  %28 = getelementptr inbounds %struct.IT_dty, %struct.IT_dty* %9, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load i32, i32* @file, align 4
  %30 = call i32 @sysroff_swap_dty_out(i32 %29, %struct.IT_dty* %9)
  %31 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  %32 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %33 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %38 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @BLOCK_TYPE_FUNCTION, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @wr_dps_start(%struct.coff_sfile* %31, i32 %36, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  %48 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %49 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %54 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @BLOCK_TYPE_BLOCK, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @wr_dps_start(%struct.coff_sfile* %47, i32 %52, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %64 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  %69 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %70 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  %78 = load i32, i32* @BLOCK_TYPE_BLOCK, align 4
  %79 = call i32 @walk_tree_scope(i32 %67, %struct.coff_sfile* %68, i32 %75, i32 %77, i32 %78)
  %80 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %81 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %80, i32 0, i32 1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %86 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @BLOCK_TYPE_BLOCK, align 4
  %93 = call i32 @wr_dps_end(i32 %84, i32 %91, i32 %92)
  %94 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %95 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %94, i32 0, i32 1
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %100 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %99, i32 0, i32 0
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @BLOCK_TYPE_FUNCTION, align 4
  %107 = call i32 @wr_dps_end(i32 %98, i32 %105, i32 %106)
  br label %121

108:                                              ; preds = %4
  %109 = getelementptr inbounds %struct.IT_dty, %struct.IT_dty* %10, i32 0, i32 0
  store i32 0, i32* %109, align 4
  %110 = getelementptr inbounds %struct.IT_dty, %struct.IT_dty* %10, i32 0, i32 1
  store i32 4097, i32* %110, align 4
  %111 = load i32, i32* @file, align 4
  %112 = call i32 @sysroff_swap_dty_out(i32 %111, %struct.IT_dty* %10)
  %113 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  %114 = load %struct.coff_symbol*, %struct.coff_symbol** %6, align 8
  %115 = load %struct.coff_type*, %struct.coff_type** %7, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @walk_tree_type_1(%struct.coff_sfile* %113, %struct.coff_symbol* %114, %struct.coff_type* %115, i32 %116)
  %118 = getelementptr inbounds %struct.IT_dty, %struct.IT_dty* %10, i32 0, i32 0
  store i32 1, i32* %118, align 4
  %119 = load i32, i32* @file, align 4
  %120 = call i32 @sysroff_swap_dty_out(i32 %119, %struct.IT_dty* %10)
  br label %121

121:                                              ; preds = %108, %18
  ret void
}

declare dso_local i32 @sysroff_swap_dty_out(i32, %struct.IT_dty*) #1

declare dso_local i32 @walk_tree_type_1(%struct.coff_sfile*, %struct.coff_symbol*, %struct.coff_type*, i32) #1

declare dso_local i32 @wr_dps_start(%struct.coff_sfile*, i32, i32, i32, i32) #1

declare dso_local i32 @walk_tree_scope(i32, %struct.coff_sfile*, i32, i32, i32) #1

declare dso_local i32 @wr_dps_end(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
