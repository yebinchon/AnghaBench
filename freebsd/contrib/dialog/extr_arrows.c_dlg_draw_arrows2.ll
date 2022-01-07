; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_arrows.c_dlg_draw_arrows2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_arrows.c_dlg_draw_arrows2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@stdscr = common dso_local global i64 0, align 8
@dialog_vars = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MARGIN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@uarrow_attr = common dso_local global i32 0, align 4
@ACS_UARROW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"(-)\00", align 1
@ACS_HLINE = common dso_local global i32 0, align 4
@ON_LEFT = common dso_local global i32 0, align 4
@KEY_PPAGE = common dso_local global i32 0, align 4
@darrow_attr = common dso_local global i32 0, align 4
@ACS_DARROW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"(+)\00", align 1
@KEY_NPAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlg_draw_arrows2(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @dlg_get_attrs(i32* %25)
  store i32 %26, i32* %17, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @getmaxx(i32* %27)
  store i32 %28, i32* %20, align 4
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %21, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = call i64 @wgetparent(i32* %30)
  %32 = load i64, i64* @stdscr, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %22, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %19, align 4
  %37 = load i32, i32* %18, align 4
  %38 = call i32 @getyx(i32* %35, i32 %36, i32 %37)
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %8
  %42 = load i32, i32* %22, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %41
  %45 = load i32, i32* %13, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @getbegy(i32* %46)
  %48 = sub nsw i32 %45, %47
  %49 = load i32, i32* @MARGIN, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %44
  %52 = load i32, i32* %20, align 4
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 8
  %54 = call i32 @dlg_count_columns(i64 %53)
  %55 = sub nsw i32 %52, %54
  %56 = sdiv i32 %55, 2
  store i32 %56, i32* %23, align 4
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 5
  store i32 %58, i32* %24, align 4
  %59 = load i32, i32* %24, align 4
  %60 = load i32, i32* %23, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %21, align 4
  br label %64

64:                                               ; preds = %62, %51
  br label %65

65:                                               ; preds = %64, %44, %41, %8
  %66 = load i32, i32* %21, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %96

68:                                               ; preds = %65
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @wmove(i32* %69, i32 %70, i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %68
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* @uarrow_attr, align 4
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @merge_colors(i32 %77, i32 %78)
  %80 = call i32 @dlg_attrset(i32* %76, i32 %79)
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* @ACS_UARROW, align 4
  %83 = call i32 @add_acs(i32* %81, i32 %82)
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 @waddstr(i32* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %95

86:                                               ; preds = %68
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @dlg_attrset(i32* %87, i32 %88)
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* @ACS_HLINE, align 4
  %92 = call i32 @dlg_boxchar(i32 %91)
  %93 = load i32, i32* @ON_LEFT, align 4
  %94 = call i32 @whline(i32* %90, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %86, %75
  br label %96

96:                                               ; preds = %95, %65
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %12, align 4
  %99 = sub nsw i32 %98, 1
  %100 = load i32, i32* @KEY_PPAGE, align 4
  %101 = call i32 @mouse_mkbutton(i32 %97, i32 %99, i32 6, i32 %100)
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @wmove(i32* %102, i32 %103, i32 %104)
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %96
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* @darrow_attr, align 4
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @merge_colors(i32 %110, i32 %111)
  %113 = call i32 @dlg_attrset(i32* %109, i32 %112)
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* @ACS_DARROW, align 4
  %116 = call i32 @add_acs(i32* %114, i32 %115)
  %117 = load i32*, i32** %9, align 8
  %118 = call i32 @waddstr(i32* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %128

119:                                              ; preds = %96
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %16, align 4
  %122 = call i32 @dlg_attrset(i32* %120, i32 %121)
  %123 = load i32*, i32** %9, align 8
  %124 = load i32, i32* @ACS_HLINE, align 4
  %125 = call i32 @dlg_boxchar(i32 %124)
  %126 = load i32, i32* @ON_LEFT, align 4
  %127 = call i32 @whline(i32* %123, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %119, %108
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %12, align 4
  %131 = sub nsw i32 %130, 1
  %132 = load i32, i32* @KEY_NPAGE, align 4
  %133 = call i32 @mouse_mkbutton(i32 %129, i32 %131, i32 6, i32 %132)
  %134 = load i32*, i32** %9, align 8
  %135 = load i32, i32* %19, align 4
  %136 = load i32, i32* %18, align 4
  %137 = call i32 @wmove(i32* %134, i32 %135, i32 %136)
  %138 = load i32*, i32** %9, align 8
  %139 = call i32 @wrefresh(i32* %138)
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* %17, align 4
  %142 = call i32 @dlg_attrset(i32* %140, i32 %141)
  ret void
}

declare dso_local i32 @dlg_get_attrs(i32*) #1

declare dso_local i32 @getmaxx(i32*) #1

declare dso_local i64 @wgetparent(i32*) #1

declare dso_local i32 @getyx(i32*, i32, i32) #1

declare dso_local i32 @getbegy(i32*) #1

declare dso_local i32 @dlg_count_columns(i64) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @dlg_attrset(i32*, i32) #1

declare dso_local i32 @merge_colors(i32, i32) #1

declare dso_local i32 @add_acs(i32*, i32) #1

declare dso_local i32 @waddstr(i32*, i8*) #1

declare dso_local i32 @whline(i32*, i32, i32) #1

declare dso_local i32 @dlg_boxchar(i32) #1

declare dso_local i32 @mouse_mkbutton(i32, i32, i32, i32) #1

declare dso_local i32 @wrefresh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
