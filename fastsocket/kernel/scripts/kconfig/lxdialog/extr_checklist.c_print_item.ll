; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/lxdialog/extr_checklist.c_print_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/lxdialog/extr_checklist.c_print_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@dlg = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@list_width = common dso_local global i32 0, align 4
@check_x = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"(%c)\00", align 1
@item_x = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @print_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_item(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dlg, i32 0, i32 6, i32 0), align 4
  %10 = call i32 @wattrset(i32* %8, i32 %9)
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @wmove(i32* %11, i32 %12, i64 0)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %21, %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @list_width, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @waddch(i32* %19, i8 signext 32)
  br label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %14

24:                                               ; preds = %14
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i64, i64* @check_x, align 8
  %28 = call i32 @wmove(i32* %25, i32 %26, i64 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dlg, i32 0, i32 5, i32 0), align 4
  br label %36

34:                                               ; preds = %24
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dlg, i32 0, i32 4, i32 0), align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = call i32 @wattrset(i32* %29, i32 %37)
  %39 = call i64 @item_is_tag(i8 signext 58)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  %42 = load i32*, i32** %4, align 8
  %43 = call i64 @item_is_tag(i8 signext 88)
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 88, i32 32
  %47 = trunc i32 %46 to i8
  %48 = call i32 @wprintw(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 signext %47)
  br label %49

49:                                               ; preds = %41, %36
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dlg, i32 0, i32 3, i32 0), align 4
  br label %57

55:                                               ; preds = %49
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dlg, i32 0, i32 2, i32 0), align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = call i32 @wattrset(i32* %50, i32 %58)
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @item_x, align 4
  %63 = call i32* (...) @item_str()
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mvwaddch(i32* %60, i32 %61, i32 %62, i32 %65)
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %57
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dlg, i32 0, i32 1, i32 0), align 4
  br label %74

72:                                               ; preds = %57
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dlg, i32 0, i32 0, i32 0), align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  %76 = call i32 @wattrset(i32* %67, i32 %75)
  %77 = load i32*, i32** %4, align 8
  %78 = call i32* (...) @item_str()
  %79 = bitcast i32* %78 to i8*
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = call i32 @waddstr(i32* %77, i8* %80)
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %74
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load i64, i64* @check_x, align 8
  %88 = add nsw i64 %87, 1
  %89 = call i32 @wmove(i32* %85, i32 %86, i64 %88)
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @wrefresh(i32* %90)
  br label %92

92:                                               ; preds = %84, %74
  ret void
}

declare dso_local i32 @wattrset(i32*, i32) #1

declare dso_local i32 @wmove(i32*, i32, i64) #1

declare dso_local i32 @waddch(i32*, i8 signext) #1

declare dso_local i64 @item_is_tag(i8 signext) #1

declare dso_local i32 @wprintw(i32*, i8*, i8 signext) #1

declare dso_local i32 @mvwaddch(i32*, i32, i32, i32) #1

declare dso_local i32* @item_str(...) #1

declare dso_local i32 @waddstr(i32*, i8*) #1

declare dso_local i32 @wrefresh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
