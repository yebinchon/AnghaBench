; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_bin_to_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_bin_to_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@RES_TYPE_BITMAP = common dso_local global i32 0, align 4
@RES_TYPE_ICON = common dso_local global i32 0, align 4
@RES_TYPE_FONT = common dso_local global i32 0, align 4
@RES_TYPE_RCDATA = common dso_local global i32 0, align 4
@RES_TYPE_MESSAGETABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @bin_to_res(i32* %0, i32 %1, i64 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = bitcast %struct.TYPE_5__* %7 to { i32, i64 }*
  %12 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %11, i32 0, i32 0
  store i32 %1, i32* %12, align 8
  %13 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %11, i32 0, i32 1
  store i64 %2, i64* %13, align 8
  store i32* %0, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load i32*, i32** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32* @bin_to_res_userdata(i32* %18, i32* %19, i32 %20)
  store i32* %21, i32** %6, align 8
  br label %111

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %26 [
    i32 140, label %31
    i32 141, label %36
    i32 134, label %42
    i32 133, label %48
    i32 139, label %53
    i32 130, label %58
    i32 137, label %63
    i32 138, label %68
    i32 142, label %74
    i32 131, label %79
    i32 132, label %85
    i32 136, label %91
    i32 135, label %96
    i32 128, label %101
    i32 129, label %106
  ]

26:                                               ; preds = %22
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32* @bin_to_res_userdata(i32* %27, i32* %28, i32 %29)
  store i32* %30, i32** %6, align 8
  br label %111

31:                                               ; preds = %22
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32* @bin_to_res_cursor(i32* %32, i32* %33, i32 %34)
  store i32* %35, i32** %6, align 8
  br label %111

36:                                               ; preds = %22
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* @RES_TYPE_BITMAP, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32* @bin_to_res_generic(i32* %37, i32 %38, i32* %39, i32 %40)
  store i32* %41, i32** %6, align 8
  br label %111

42:                                               ; preds = %22
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* @RES_TYPE_ICON, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32* @bin_to_res_generic(i32* %43, i32 %44, i32* %45, i32 %46)
  store i32* %47, i32** %6, align 8
  br label %111

48:                                               ; preds = %22
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32* @bin_to_res_menu(i32* %49, i32* %50, i32 %51)
  store i32* %52, i32** %6, align 8
  br label %111

53:                                               ; preds = %22
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32* @bin_to_res_dialog(i32* %54, i32* %55, i32 %56)
  store i32* %57, i32** %6, align 8
  br label %111

58:                                               ; preds = %22
  %59 = load i32*, i32** %8, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32* @bin_to_res_string(i32* %59, i32* %60, i32 %61)
  store i32* %62, i32** %6, align 8
  br label %111

63:                                               ; preds = %22
  %64 = load i32*, i32** %8, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32* @bin_to_res_fontdir(i32* %64, i32* %65, i32 %66)
  store i32* %67, i32** %6, align 8
  br label %111

68:                                               ; preds = %22
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* @RES_TYPE_FONT, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32* @bin_to_res_generic(i32* %69, i32 %70, i32* %71, i32 %72)
  store i32* %73, i32** %6, align 8
  br label %111

74:                                               ; preds = %22
  %75 = load i32*, i32** %8, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32* @bin_to_res_accelerators(i32* %75, i32* %76, i32 %77)
  store i32* %78, i32** %6, align 8
  br label %111

79:                                               ; preds = %22
  %80 = load i32*, i32** %8, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @RES_TYPE_RCDATA, align 4
  %84 = call i32* @bin_to_res_rcdata(i32* %80, i32* %81, i32 %82, i32 %83)
  store i32* %84, i32** %6, align 8
  br label %111

85:                                               ; preds = %22
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* @RES_TYPE_MESSAGETABLE, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32* @bin_to_res_generic(i32* %86, i32 %87, i32* %88, i32 %89)
  store i32* %90, i32** %6, align 8
  br label %111

91:                                               ; preds = %22
  %92 = load i32*, i32** %8, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32* @bin_to_res_group_cursor(i32* %92, i32* %93, i32 %94)
  store i32* %95, i32** %6, align 8
  br label %111

96:                                               ; preds = %22
  %97 = load i32*, i32** %8, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32* @bin_to_res_group_icon(i32* %97, i32* %98, i32 %99)
  store i32* %100, i32** %6, align 8
  br label %111

101:                                              ; preds = %22
  %102 = load i32*, i32** %8, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32* @bin_to_res_version(i32* %102, i32* %103, i32 %104)
  store i32* %105, i32** %6, align 8
  br label %111

106:                                              ; preds = %22
  %107 = load i32*, i32** %8, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32* @bin_to_res_toolbar(i32* %107, i32* %108, i32 %109)
  store i32* %110, i32** %6, align 8
  br label %111

111:                                              ; preds = %106, %101, %96, %91, %85, %79, %74, %68, %63, %58, %53, %48, %42, %36, %31, %26, %17
  %112 = load i32*, i32** %6, align 8
  ret i32* %112
}

declare dso_local i32* @bin_to_res_userdata(i32*, i32*, i32) #1

declare dso_local i32* @bin_to_res_cursor(i32*, i32*, i32) #1

declare dso_local i32* @bin_to_res_generic(i32*, i32, i32*, i32) #1

declare dso_local i32* @bin_to_res_menu(i32*, i32*, i32) #1

declare dso_local i32* @bin_to_res_dialog(i32*, i32*, i32) #1

declare dso_local i32* @bin_to_res_string(i32*, i32*, i32) #1

declare dso_local i32* @bin_to_res_fontdir(i32*, i32*, i32) #1

declare dso_local i32* @bin_to_res_accelerators(i32*, i32*, i32) #1

declare dso_local i32* @bin_to_res_rcdata(i32*, i32*, i32, i32) #1

declare dso_local i32* @bin_to_res_group_cursor(i32*, i32*, i32) #1

declare dso_local i32* @bin_to_res_group_icon(i32*, i32*, i32) #1

declare dso_local i32* @bin_to_res_version(i32*, i32*, i32) #1

declare dso_local i32* @bin_to_res_toolbar(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
