; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_arrows.c_dlg_draw_helpline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_arrows.c_dlg_draw_helpline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@dialog_vars = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@A_NORMAL = common dso_local global i32 0, align 4
@ON_LEFT = common dso_local global i32 0, align 4
@ON_RIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlg_draw_helpline(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %83

15:                                               ; preds = %2
  %16 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %83

20:                                               ; preds = %15
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @getmaxy(i32* %21)
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %83

25:                                               ; preds = %20
  %26 = load i32, i32* @A_NORMAL, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 8
  %28 = call i32 @dlg_count_columns(i64* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @ON_LEFT, align 4
  %33 = load i32, i32* @ON_RIGHT, align 4
  %34 = add nsw i32 %32, %33
  br label %36

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i32 [ %34, %31 ], [ 0, %35 ]
  store i32 %37, i32* %10, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @getmaxx(i32* %38)
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 %39, %40
  %42 = sub nsw i32 %41, 2
  store i32 %42, i32* %11, align 4
  %43 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 8
  %44 = call i32 @dlg_count_real_columns(i64* %43)
  %45 = add nsw i32 %44, 2
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %82

49:                                               ; preds = %36
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @getyx(i32* %50, i32 %51, i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @ON_LEFT, align 4
  br label %59

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  store i32 %60, i32* %10, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sdiv i32 %66, 2
  %68 = add nsw i32 %63, %67
  %69 = call i32 @wmove(i32* %61, i32 %62, i32 %68)
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @waddch(i32* %70, i8 signext 91)
  %72 = load i32*, i32** %3, align 8
  %73 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @dlg_print_text(i32* %72, i64* %73, i32 %74, i32* %8)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @waddch(i32* %76, i8 signext 93)
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @wmove(i32* %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %59, %36
  br label %83

83:                                               ; preds = %82, %20, %15, %2
  ret void
}

declare dso_local i32 @getmaxy(i32*) #1

declare dso_local i32 @dlg_count_columns(i64*) #1

declare dso_local i32 @getmaxx(i32*) #1

declare dso_local i32 @dlg_count_real_columns(i64*) #1

declare dso_local i32 @getyx(i32*, i32, i32) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @waddch(i32*, i8 signext) #1

declare dso_local i32 @dlg_print_text(i32*, i64*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
