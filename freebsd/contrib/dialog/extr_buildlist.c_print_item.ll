; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buildlist.c_print_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buildlist.c_print_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8*, i8*, i32 }

@dialog_vars = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@menubox_attr = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, %struct.TYPE_6__*, i32, i32)* @print_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_item(%struct.TYPE_7__* %0, i32* %1, %struct.TYPE_6__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @dlg_get_attrs(i32* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dialog_vars, i32 0, i32 1), align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dialog_vars, i32 0, i32 0), align 8
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %21, %5
  %26 = phi i1 [ false, %5 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %14, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %31, %34
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %15, align 4
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dialog_vars, i32 0, i32 0), align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %25
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  br label %47

43:                                               ; preds = %25
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i8* [ %42, %39 ], [ %46, %43 ]
  store i8* %48, i8** %16, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @menubox_attr, align 4
  %51 = call i32 @dlg_attrset(i32* %49, i32 %50)
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @wmove(i32* %52, i32 %53, i32 0)
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %63, %47
  %56 = load i32, i32* %12, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @getmaxx(i32* %57)
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @waddch(i32* %61, i8 signext 32)
  br label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %55

66:                                               ; preds = %55
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @wmove(i32* %67, i32 %68, i32 %71)
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* @menubox_attr, align 4
  %75 = call i32 @dlg_attrset(i32* %73, i32 %74)
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %66
  %79 = load i32*, i32** %7, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @dlg_print_listitem(i32* %79, i8* %82, i32 %83, i32 %84, i32 %85)
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @waddch(i32* %87, i8 signext 32)
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %78, %66
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @wmove(i32* %91, i32 %92, i32 %95)
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @getmaxx(i32* %97)
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %98, %101
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %15, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = load i8*, i8** %16, align 8
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @dlg_print_listitem(i32* %104, i8* %105, i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %90
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @dlg_item_help(i32 %115)
  br label %117

117:                                              ; preds = %112, %90
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @dlg_attrset(i32* %118, i32 %119)
  ret void
}

declare dso_local i32 @dlg_get_attrs(i32*) #1

declare dso_local i32 @dlg_attrset(i32*, i32) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @getmaxx(i32*) #1

declare dso_local i32 @waddch(i32*, i8 signext) #1

declare dso_local i32 @dlg_print_listitem(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @dlg_item_help(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
