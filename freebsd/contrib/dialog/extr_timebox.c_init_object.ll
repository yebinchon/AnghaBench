; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_timebox.c_init_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_timebox.c_init_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i64, i32* }

@TRUE = common dso_local global i32 0, align 4
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
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %12, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 7
  store i32* %21, i32** %23, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %14, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %16, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %17, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %18, align 4
  %40 = load i32, i32* %17, align 4
  %41 = srem i32 %39, %40
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 7
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @derwin(i32* %46, i32 %49, i32 %52, i32 %55, i32 %58)
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 6
  store i64 %59, i64* %61, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %9
  store i32 -1, i32* %10, align 4
  br label %84

67:                                               ; preds = %9
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 6
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @TRUE, align 4
  %72 = call i32 @keypad(i64 %70, i32 %71)
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @getbegx(i32* %73)
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @getbegy(i32* %75)
  %77 = call i32 @dlg_mouse_setbase(i32 %74, i32 %76)
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %19, align 4
  %83 = call i32 @dlg_mouse_mkregion(i32 %78, i32 %79, i32 %80, i32 %81, i32 %82)
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %67, %66
  %85 = load i32, i32* %10, align 4
  ret i32 %85
}

declare dso_local i64 @derwin(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @keypad(i64, i32) #1

declare dso_local i32 @dlg_mouse_setbase(i32, i32) #1

declare dso_local i32 @getbegx(i32*) #1

declare dso_local i32 @getbegy(i32*) #1

declare dso_local i32 @dlg_mouse_mkregion(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
