; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_res_to_bin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_res_to_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @res_to_bin(i32* %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %106 [
    i32 142, label %11
    i32 139, label %11
    i32 135, label %11
    i32 133, label %11
    i32 143, label %25
    i32 141, label %33
    i32 137, label %41
    i32 140, label %49
    i32 138, label %57
    i32 136, label %65
    i32 134, label %73
    i32 131, label %81
    i32 128, label %89
    i32 130, label %97
    i32 129, label %105
    i32 132, label %105
  ]

11:                                               ; preds = %3, %3, %3, %3
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 11
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 11
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @res_to_bin_generic(i32* %12, i32 %13, i32 %18, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %114

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @res_to_bin_accelerator(i32* %26, i32 %27, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %114

33:                                               ; preds = %3
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @res_to_bin_cursor(i32* %34, i32 %35, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %114

41:                                               ; preds = %3
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @res_to_bin_group_cursor(i32* %42, i32 %43, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %114

49:                                               ; preds = %3
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @res_to_bin_dialog(i32* %50, i32 %51, i32 %55)
  store i32 %56, i32* %4, align 4
  br label %114

57:                                               ; preds = %3
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @res_to_bin_fontdir(i32* %58, i32 %59, i32 %63)
  store i32 %64, i32* %4, align 4
  br label %114

65:                                               ; preds = %3
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @res_to_bin_group_icon(i32* %66, i32 %67, i32 %71)
  store i32 %72, i32* %4, align 4
  br label %114

73:                                               ; preds = %3
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @res_to_bin_menu(i32* %74, i32 %75, i32 %79)
  store i32 %80, i32* %4, align 4
  br label %114

81:                                               ; preds = %3
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @res_to_bin_stringtable(i32* %82, i32 %83, i32 %87)
  store i32 %88, i32* %4, align 4
  br label %114

89:                                               ; preds = %3
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @res_to_bin_versioninfo(i32* %90, i32 %91, i32 %95)
  store i32 %96, i32* %4, align 4
  br label %114

97:                                               ; preds = %3
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @res_to_bin_toolbar(i32* %98, i32 %99, i32 %103)
  store i32 %104, i32* %4, align 4
  br label %114

105:                                              ; preds = %3, %3
  br label %106

106:                                              ; preds = %3, %105
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @res_to_bin_rcdata(i32* %107, i32 %108, i32 %112)
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %106, %97, %89, %81, %73, %65, %57, %49, %41, %33, %25, %11
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @res_to_bin_generic(i32*, i32, i32, i32) #1

declare dso_local i32 @res_to_bin_accelerator(i32*, i32, i32) #1

declare dso_local i32 @res_to_bin_cursor(i32*, i32, i32) #1

declare dso_local i32 @res_to_bin_group_cursor(i32*, i32, i32) #1

declare dso_local i32 @res_to_bin_dialog(i32*, i32, i32) #1

declare dso_local i32 @res_to_bin_fontdir(i32*, i32, i32) #1

declare dso_local i32 @res_to_bin_group_icon(i32*, i32, i32) #1

declare dso_local i32 @res_to_bin_menu(i32*, i32, i32) #1

declare dso_local i32 @res_to_bin_stringtable(i32*, i32, i32) #1

declare dso_local i32 @res_to_bin_versioninfo(i32*, i32, i32) #1

declare dso_local i32 @res_to_bin_toolbar(i32*, i32, i32) #1

declare dso_local i32 @res_to_bin_rcdata(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
