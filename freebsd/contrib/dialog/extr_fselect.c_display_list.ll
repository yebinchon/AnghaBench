; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_fselect.c_display_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_fselect.c_display_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i64* }

@item_attr = common dso_local global i32 0, align 4
@item_selected_attr = common dso_local global i32 0, align 4
@menubox_border2_attr = common dso_local global i32 0, align 4
@menubox_border_attr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @display_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_list(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %169

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @getmaxy(i64 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @getmaxx(i64 %22)
  %24 = load i32, i32* @item_attr, align 4
  %25 = call i32 @dlg_attr_clear(i64 %15, i32 %19, i64 %23, i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %93, %12
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %35, %29
  %45 = phi i1 [ false, %29 ], [ %43, %35 ]
  br i1 %45, label %46, label %96

46:                                               ; preds = %44
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %47, %50
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @getmaxy(i64 %55)
  %57 = icmp sge i32 %52, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %96

59:                                               ; preds = %46
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @wmove(i64 %62, i32 %63, i32 0)
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %59
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @item_selected_attr, align 4
  %75 = call i32 @dlg_attrset(i64 %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %59
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 5
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @waddstr(i64 %79, i64 %86)
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* @item_attr, align 4
  %92 = call i32 @dlg_attrset(i64 %90, i32 %91)
  br label %93

93:                                               ; preds = %76
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %29

96:                                               ; preds = %58, %44
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @item_attr, align 4
  %101 = call i32 @dlg_attrset(i64 %99, i32 %100)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @getparyx(i64 %104, i32 %105, i32 %106)
  %108 = load i32, i32* %5, align 4
  %109 = sub nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @getmaxy(i64 %113)
  %115 = add nsw i32 %110, %114
  store i32 %115, i32* %7, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @getmaxy(i64 %132)
  %134 = add nsw i32 %129, %133
  %135 = sext i32 %134 to i64
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = load i32, i32* %4, align 4
  %141 = add nsw i32 %140, 1
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @getmaxx(i64 %146)
  %148 = add nsw i64 %143, %147
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @menubox_border2_attr, align 4
  %152 = load i32, i32* @menubox_border_attr, align 4
  %153 = call i32 @dlg_draw_scrollbar(i32 %118, i64 %122, i64 %126, i64 %135, i64 %139, i32 %141, i64 %148, i32 %149, i32 %150, i32 %151, i32 %152)
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = sub nsw i32 %159, %162
  %164 = call i32 @wmove(i64 %156, i32 %163, i32 0)
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @wnoutrefresh(i64 %167)
  br label %169

169:                                              ; preds = %96, %1
  ret void
}

declare dso_local i32 @dlg_attr_clear(i64, i32, i64, i32) #1

declare dso_local i32 @getmaxy(i64) #1

declare dso_local i64 @getmaxx(i64) #1

declare dso_local i32 @wmove(i64, i32, i32) #1

declare dso_local i32 @dlg_attrset(i64, i32) #1

declare dso_local i32 @waddstr(i64, i64) #1

declare dso_local i32 @getparyx(i64, i32, i32) #1

declare dso_local i32 @dlg_draw_scrollbar(i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @wnoutrefresh(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
