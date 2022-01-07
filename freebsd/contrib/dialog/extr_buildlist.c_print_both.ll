; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buildlist.c_print_both.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buildlist.c_print_both.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i64, i32* }

@.str = private unnamed_addr constant [17 x i8] c"! print_both %d\0A\00", align 1
@KEY_MAX = common dso_local global i32 0, align 4
@menubox_border2_attr = common dso_local global i32 0, align 4
@menubox_border_attr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @print_both to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_both(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = call i32* @wgetparent(i32* %19)
  store i32* %20, i32** %8, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @TRACE(i8* %23)
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @getyx(i32* %25, i32 %26, i32 %27)
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %102, %2
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %105

32:                                               ; preds = %29
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %9, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %10, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @index2row(%struct.TYPE_7__* %42, i32 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @index2row(%struct.TYPE_7__* %48, i32 -1, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @getmaxy(i32* %52)
  %54 = add nsw i32 %51, %53
  store i32 %54, i32* %13, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @print_1_list(%struct.TYPE_7__* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @KEY_MAX, align 4
  %61 = mul nsw i32 %59, %60
  %62 = call i32 @dlg_mouse_setcode(i32 %61)
  %63 = load i32*, i32** %8, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i64 @MIN(i32 %70, i32 %71)
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = call i64 @getmaxx(i32* %85)
  %87 = add nsw i64 %84, %86
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @getmaxy(i32* %94)
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %93, %96
  %98 = add nsw i64 %97, 1
  %99 = load i32, i32* @menubox_border2_attr, align 4
  %100 = load i32, i32* @menubox_border_attr, align 4
  %101 = call i32 @dlg_draw_scrollbar(i32* %63, i64 %67, i64 %69, i64 %72, i64 %74, i64 %81, i64 %87, i64 %90, i64 %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %32
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %29

105:                                              ; preds = %29
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @wmove(i32* %106, i32 %107, i32 %108)
  %110 = call i32 @dlg_mouse_setcode(i32 0)
  ret void
}

declare dso_local i32* @wgetparent(i32*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @getyx(i32*, i32, i32) #1

declare dso_local i32 @index2row(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @getmaxy(i32*) #1

declare dso_local i32 @print_1_list(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dlg_mouse_setcode(i32) #1

declare dso_local i32 @dlg_draw_scrollbar(i32*, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32) #1

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i64 @getmaxx(i32*) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
