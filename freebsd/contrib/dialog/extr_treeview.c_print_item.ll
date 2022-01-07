; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_treeview.c_print_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_treeview.c_print_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i32* }
%struct.TYPE_6__ = type { i8*, i8*, i64, i32 }

@TRUE = common dso_local global i32 0, align 4
@dialog_vars = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@menubox_attr = common dso_local global i32 0, align 4
@check_selected_attr = common dso_local global i32 0, align 4
@check_attr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"[%c]\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"(%c)\00", align 1
@item_selected_attr = common dso_local global i32 0, align 4
@item_attr = common dso_local global i32 0, align 4
@INDENT = common dso_local global i32 0, align 4
@ACS_VLINE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_6__*, i8*, i32, i32, i32)* @print_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_item(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = call i32 @dlg_get_attrs(i32* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %16, align 4
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 @getmaxx(i32* %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %27, %30
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %17, align 4
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dialog_vars, i32 0, i32 0), align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %6
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  br label %43

39:                                               ; preds = %6
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i8* [ %38, %35 ], [ %42, %39 ]
  store i8* %44, i8** %18, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* @menubox_attr, align 4
  %47 = call i32 @dlg_attrset(i32* %45, i32 %46)
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @wmove(i32* %48, i32 %49, i32 0)
  store i32 0, i32* %15, align 4
  br label %51

51:                                               ; preds = %60, %43
  %52 = load i32, i32* %15, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @waddch(i32* %58, i8 signext 32)
  br label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %15, align 4
  br label %51

63:                                               ; preds = %51
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @wmove(i32* %64, i32 %65, i32 %68)
  %70 = load i32*, i32** %13, align 8
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i32, i32* @check_selected_attr, align 4
  br label %77

75:                                               ; preds = %63
  %76 = load i32, i32* @check_attr, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = call i32 @dlg_attrset(i32* %70, i32 %78)
  %80 = load i32*, i32** %13, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  %87 = load i8*, i8** %9, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = call i32 @wprintw(i32* %80, i8* %86, i8 signext %92)
  %94 = load i32*, i32** %13, align 8
  %95 = load i32, i32* @menubox_attr, align 4
  %96 = call i32 @dlg_attrset(i32* %94, i32 %95)
  %97 = load i32*, i32** %13, align 8
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %77
  %101 = load i32, i32* @item_selected_attr, align 4
  br label %104

102:                                              ; preds = %77
  %103 = load i32, i32* @item_attr, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  %106 = call i32 @dlg_attrset(i32* %97, i32 %105)
  store i32 0, i32* %15, align 4
  br label %107

107:                                              ; preds = %137, %104
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %140

111:                                              ; preds = %107
  %112 = load i32*, i32** %13, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @INDENT, align 4
  %118 = load i32, i32* %15, align 4
  %119 = mul nsw i32 %117, %118
  %120 = add nsw i32 %116, %119
  %121 = call i32 @wmove(i32* %112, i32 %113, i32 %120)
  %122 = load i32*, i32** %13, align 8
  %123 = load i8, i8* @ACS_VLINE, align 1
  %124 = call i32 @waddch(i32* %122, i8 signext %123)
  %125 = load i32, i32* @INDENT, align 4
  %126 = sub nsw i32 %125, 1
  store i32 %126, i32* %19, align 4
  br label %127

127:                                              ; preds = %133, %111
  %128 = load i32, i32* %19, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = load i32*, i32** %13, align 8
  %132 = call i32 @waddch(i32* %131, i8 signext 32)
  br label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %19, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %19, align 4
  br label %127

136:                                              ; preds = %127
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %15, align 4
  br label %107

140:                                              ; preds = %107
  %141 = load i32*, i32** %13, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @INDENT, align 4
  %147 = load i32, i32* %10, align 4
  %148 = mul nsw i32 %146, %147
  %149 = add nsw i32 %145, %148
  %150 = call i32 @wmove(i32* %141, i32 %142, i32 %149)
  %151 = load i32*, i32** %13, align 8
  %152 = load i8*, i8** %18, align 8
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @dlg_print_listitem(i32* %151, i8* %152, i32 %153, i32 %154, i32 %155)
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %140
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @dlg_item_help(i32 %162)
  br label %164

164:                                              ; preds = %159, %140
  %165 = load i32*, i32** %13, align 8
  %166 = load i32, i32* %14, align 4
  %167 = call i32 @dlg_attrset(i32* %165, i32 %166)
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
