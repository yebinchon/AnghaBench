; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_calendar.c_init_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_calendar.c_init_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i64, i32*, i32 }

@TRUE = common dso_local global i32 0, align 4
@MON_WIDE = common dso_local global i64 0, align 8
@KEY_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, i32, i32, i32, i32, i32, i32)* @init_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_object(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %20 = load i32*, i32** %12, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 6
  store i32* %20, i32** %22, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %14, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %15, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %16, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %17, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %18, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @derwin(i32* %43, i32 %46, i32 %49, i32 %52, i32 %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 5
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %9
  store i32 -1, i32* %10, align 4
  br label %104

64:                                               ; preds = %9
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @TRUE, align 4
  %69 = call i32 @keypad(i64 %67, i32 %68)
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @getbegx(i32* %70)
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @getbegy(i32* %72)
  %74 = call i32 @dlg_mouse_setbase(i32 %71, i32 %73)
  %75 = load i32, i32* %19, align 4
  %76 = icmp eq i32 %75, 68
  br i1 %76, label %77, label %96

77:                                               ; preds = %64
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* @MON_WIDE, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i32, i32* %16, align 4
  %85 = sub nsw i32 %84, 1
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* @MON_WIDE, align 8
  %89 = sub nsw i64 %87, %88
  %90 = load i64, i64* @KEY_MAX, align 8
  %91 = load i32, i32* %18, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = load i64, i64* @MON_WIDE, align 8
  %95 = call i32 @dlg_mouse_mkbigregion(i32 %79, i64 %83, i32 %85, i64 %89, i64 %93, i32 1, i64 %94, i32 3)
  br label %103

96:                                               ; preds = %64
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %19, align 4
  %102 = call i32 @dlg_mouse_mkregion(i32 %97, i32 %98, i32 %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %96, %77
  store i32 0, i32* %10, align 4
  br label %104

104:                                              ; preds = %103, %63
  %105 = load i32, i32* %10, align 4
  ret i32 %105
}

declare dso_local i64 @derwin(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @keypad(i64, i32) #1

declare dso_local i32 @dlg_mouse_setbase(i32, i32) #1

declare dso_local i32 @getbegx(i32*) #1

declare dso_local i32 @getbegy(i32*) #1

declare dso_local i32 @dlg_mouse_mkbigregion(i32, i64, i32, i64, i64, i32, i64, i32) #1

declare dso_local i32 @dlg_mouse_mkregion(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
