; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_menubox.c_print_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_menubox.c_print_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i8*, i8*, i32 }

@GUTTER = common dso_local global i32 0, align 4
@dialog_vars = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@item_attr = common dso_local global i32 0, align 4
@item_selected_attr = common dso_local global i32 0, align 4
@dialog_attr = common dso_local global i32 0, align 4
@INPUT_ROWS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@menubox_attr = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, %struct.TYPE_6__*, i32, i32, i32)* @print_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_item(%struct.TYPE_7__* %0, i32* %1, %struct.TYPE_6__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
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
  %22 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @dlg_get_attrs(i32* %23)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %27, %30
  %32 = load i32, i32* @GUTTER, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %15, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %16, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @ItemToRow(i32 %40)
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dialog_vars, i32 0, i32 1), align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %6
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dialog_vars, i32 0, i32 0), align 8
  %46 = icmp ne i64 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %44, %6
  %49 = phi i1 [ false, %6 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %19, align 4
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %20, align 4
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dialog_vars, i32 0, i32 0), align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  br label %62

58:                                               ; preds = %48
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  br label %62

62:                                               ; preds = %58, %54
  %63 = phi i8* [ %57, %54 ], [ %61, %58 ]
  store i8* %63, i8** %22, align 8
  %64 = load i32, i32* %11, align 4
  switch i32 %64, label %65 [
    i32 128, label %66
    i32 129, label %68
    i32 130, label %70
  ]

65:                                               ; preds = %62
  br label %66

66:                                               ; preds = %62, %65
  %67 = load i32, i32* @item_attr, align 4
  store i32 %67, i32* %21, align 4
  br label %72

68:                                               ; preds = %62
  %69 = load i32, i32* @item_selected_attr, align 4
  store i32 %69, i32* %21, align 4
  br label %72

70:                                               ; preds = %62
  %71 = load i32, i32* @dialog_attr, align 4
  store i32 %71, i32* %21, align 4
  br label %72

72:                                               ; preds = %70, %68, %66
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %106

75:                                               ; preds = %72
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 128
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @item_selected_attr, align 4
  br label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @item_attr, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = call i32 @dlg_attrset(i32* %76, i32 %84)
  %86 = load i32, i32* %18, align 4
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %102, %83
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* @INPUT_ROWS, align 4
  %92 = add nsw i32 %90, %91
  %93 = sub nsw i32 %92, 1
  %94 = icmp slt i32 %89, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %88
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @wmove(i32* %96, i32 %97, i32 0)
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @wprintw(i32* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  br label %88

105:                                              ; preds = %88
  br label %116

106:                                              ; preds = %72
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* @menubox_attr, align 4
  %109 = call i32 @dlg_attrset(i32* %107, i32 %108)
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %18, align 4
  %112 = call i32 @wmove(i32* %110, i32 %111, i32 0)
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @wprintw(i32* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %116

116:                                              ; preds = %106, %105
  %117 = load i32, i32* %19, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %116
  %120 = load i32*, i32** %8, align 8
  %121 = load i32, i32* %18, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @wmove(i32* %120, i32 %121, i32 %124)
  %126 = load i32*, i32** %8, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %20, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @dlg_print_listitem(i32* %126, i8* %129, i32 %130, i32 %131, i32 %132)
  %134 = load i32, i32* @FALSE, align 4
  store i32 %134, i32* %20, align 4
  br label %135

135:                                              ; preds = %119, %116
  %136 = load i32*, i32** %8, align 8
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %17, align 4
  %139 = call i32 @wmove(i32* %136, i32 %137, i32 %138)
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %164

142:                                              ; preds = %135
  %143 = load i32, i32* %16, align 4
  %144 = sub nsw i32 %143, 1
  store i32 %144, i32* %16, align 4
  %145 = load i32*, i32** %8, align 8
  %146 = load i32, i32* %18, align 4
  %147 = sub nsw i32 %146, 1
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* @INPUT_ROWS, align 4
  %150 = load i32, i32* %16, align 4
  %151 = load i32, i32* %17, align 4
  %152 = sub nsw i32 %150, %151
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %152, %155
  %157 = load i32, i32* %21, align 4
  %158 = load i32, i32* %21, align 4
  %159 = call i32 @dlg_draw_box(i32* %145, i32 %147, i32 %148, i32 %149, i32 %156, i32 %157, i32 %158)
  %160 = load i32, i32* %16, align 4
  %161 = sub nsw i32 %160, 1
  store i32 %161, i32* %16, align 4
  %162 = load i32, i32* %17, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %17, align 4
  br label %164

164:                                              ; preds = %142, %135
  %165 = load i32*, i32** %8, align 8
  %166 = load i32, i32* %18, align 4
  %167 = load i32, i32* %17, align 4
  %168 = call i32 @wmove(i32* %165, i32 %166, i32 %167)
  %169 = load i32*, i32** %8, align 8
  %170 = load i8*, i8** %22, align 8
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* %17, align 4
  %173 = sub nsw i32 %171, %172
  %174 = load i32, i32* %20, align 4
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @dlg_print_listitem(i32* %169, i8* %170, i32 %173, i32 %174, i32 %175)
  %177 = load i32, i32* %11, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %164
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @dlg_item_help(i32 %182)
  br label %184

184:                                              ; preds = %179, %164
  %185 = load i32*, i32** %8, align 8
  %186 = load i32, i32* %13, align 4
  %187 = call i32 @dlg_attrset(i32* %185, i32 %186)
  ret void
}

declare dso_local i32 @dlg_get_attrs(i32*) #1

declare dso_local i32 @ItemToRow(i32) #1

declare dso_local i32 @dlg_attrset(i32*, i32) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @wprintw(i32*, i8*, i32, i8*) #1

declare dso_local i32 @dlg_print_listitem(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @dlg_draw_box(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dlg_item_help(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
