; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_checklist.c_print_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_checklist.c_print_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i32 }
%struct.TYPE_6__ = type { i8*, i8*, i64, i32 }

@dialog_vars = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@menubox_attr = common dso_local global i32 0, align 4
@check_selected_attr = common dso_local global i32 0, align 4
@check_attr = common dso_local global i32 0, align 4
@FLAG_CHECK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"[%c]\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"(%c)\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, %struct.TYPE_6__*, i8*, i32, i32)* @print_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_item(%struct.TYPE_7__* %0, i32* %1, %struct.TYPE_6__* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @dlg_get_attrs(i32* %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dialog_vars, i32 0, i32 1), align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %6
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dialog_vars, i32 0, i32 0), align 8
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %23, %6
  %28 = phi i1 [ false, %6 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %16, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @getmaxx(i32* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %32, %35
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %17, align 4
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dialog_vars, i32 0, i32 0), align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  br label %48

44:                                               ; preds = %27
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i8* [ %43, %40 ], [ %47, %44 ]
  store i8* %49, i8** %18, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* @menubox_attr, align 4
  %52 = call i32 @dlg_attrset(i32* %50, i32 %51)
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @wmove(i32* %53, i32 %54, i32 0)
  store i32 0, i32* %14, align 4
  br label %56

56:                                               ; preds = %65, %48
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @waddch(i32* %63, i8 signext 32)
  br label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %14, align 4
  br label %56

68:                                               ; preds = %56
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @wmove(i32* %69, i32 %70, i32 %73)
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* @check_selected_attr, align 4
  br label %82

80:                                               ; preds = %68
  %81 = load i32, i32* @check_attr, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = call i32 @dlg_attrset(i32* %75, i32 %83)
  %85 = load i32*, i32** %8, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @FLAG_CHECK, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  %93 = load i8*, i8** %10, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = call i32 @wprintw(i32* %85, i8* %92, i8 signext %98)
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* @menubox_attr, align 4
  %102 = call i32 @dlg_attrset(i32* %100, i32 %101)
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @waddch(i32* %103, i8 signext 32)
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %82
  %108 = load i32*, i32** %8, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @dlg_print_listitem(i32* %108, i8* %111, i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* @FALSE, align 4
  store i32 %116, i32* %16, align 4
  br label %117

117:                                              ; preds = %107, %82
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @wmove(i32* %118, i32 %119, i32 %122)
  %124 = load i32*, i32** %8, align 8
  %125 = load i8*, i8** %18, align 8
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @dlg_print_listitem(i32* %124, i8* %125, i32 %126, i32 %127, i32 %128)
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %117
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @dlg_item_help(i32 %135)
  br label %137

137:                                              ; preds = %132, %117
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @dlg_attrset(i32* %138, i32 %139)
  ret void
}

declare dso_local i32 @dlg_get_attrs(i32*) #1

declare dso_local i32 @getmaxx(i32*) #1

declare dso_local i32 @dlg_attrset(i32*, i32) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @waddch(i32*, i8 signext) #1

declare dso_local i32 @wprintw(i32*, i8*, i8 signext) #1

declare dso_local i32 @dlg_print_listitem(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @dlg_item_help(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
