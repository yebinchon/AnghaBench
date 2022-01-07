; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_res_to_bin_menu.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_res_to_bin_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.bin_menu = type { i32, i32, i32 }
%struct.bin_menuex = type { i32, i32, i32 }

@BIN_MENU_SIZE = common dso_local global i64 0, align 8
@BIN_MENUEX_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_4__*)* @res_to_bin_menu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @res_to_bin_menu(i32* %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bin_menu, align 4
  %9 = alloca %struct.bin_menuex, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %11 = call i32 @extended_menu(%struct.TYPE_4__* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %52

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %14
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds %struct.bin_menu, %struct.bin_menu* %8, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @windres_put_16(i32* %18, i32 %20, i32 0)
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds %struct.bin_menu, %struct.bin_menu* %8, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @windres_put_16(i32* %22, i32 %24, i32 0)
  %26 = load i32*, i32** %4, align 8
  %27 = bitcast %struct.bin_menu* %8 to %struct.bin_menuex*
  %28 = load i32, i32* %5, align 4
  %29 = load i64, i64* @BIN_MENU_SIZE, align 8
  %30 = call i32 @set_windres_bfd_content(i32* %26, %struct.bin_menuex* %27, i32 %28, i64 %29)
  br label %51

31:                                               ; preds = %14
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds %struct.bin_menuex, %struct.bin_menuex* %9, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @windres_put_16(i32* %32, i32 %34, i32 1)
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds %struct.bin_menuex, %struct.bin_menuex* %9, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @windres_put_16(i32* %36, i32 %38, i32 4)
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds %struct.bin_menuex, %struct.bin_menuex* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @windres_put_32(i32* %40, i32 %42, i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i64, i64* @BIN_MENUEX_SIZE, align 8
  %50 = call i32 @set_windres_bfd_content(i32* %47, %struct.bin_menuex* %9, i32 %48, i64 %49)
  br label %51

51:                                               ; preds = %31, %17
  br label %52

52:                                               ; preds = %51, %3
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i64, i64* @BIN_MENUEX_SIZE, align 8
  br label %59

57:                                               ; preds = %52
  %58 = load i64, i64* @BIN_MENU_SIZE, align 8
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i64 [ %56, %55 ], [ %58, %57 ]
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %59
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @res_to_bin_menuitems(i32* %68, i32 %69, i32 %72)
  store i32 %73, i32* %5, align 4
  br label %81

74:                                               ; preds = %59
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @res_to_bin_menuexitems(i32* %75, i32 %76, i32 %79)
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %74, %67
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @extended_menu(%struct.TYPE_4__*) #1

declare dso_local i32 @windres_put_16(i32*, i32, i32) #1

declare dso_local i32 @set_windres_bfd_content(i32*, %struct.bin_menuex*, i32, i64) #1

declare dso_local i32 @windres_put_32(i32*, i32, i32) #1

declare dso_local i32 @res_to_bin_menuitems(i32*, i32, i32) #1

declare dso_local i32 @res_to_bin_menuexitems(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
