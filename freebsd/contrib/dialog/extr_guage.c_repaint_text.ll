; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_guage.c_repaint_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_guage.c_repaint_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@dialog_attr = common dso_local global i32 0, align 4
@border_attr = common dso_local global i32 0, align 4
@border2_attr = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MARGIN = common dso_local global i32 0, align 4
@gauge_attr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%3d%%\00", align 1
@A_REVERSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @repaint_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @repaint_text(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %168

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @werase(i32* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @dialog_attr, align 4
  %24 = load i32, i32* @border_attr, align 4
  %25 = load i32, i32* @border2_attr, align 4
  %26 = call i32 @dlg_draw_box2(i32* %16, i32 0, i32 0, i32 %19, i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dlg_draw_title(i32* %27, i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @dialog_attr, align 4
  %34 = call i32 @dlg_attrset(i32* %32, i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i32 @dlg_draw_helpline(i32* %35, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dlg_print_autowrap(i32* %38, i32 %41, i32 %44, i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 4
  %54 = load i32, i32* @MARGIN, align 4
  %55 = add nsw i32 2, %54
  %56 = load i32, i32* @MARGIN, align 4
  %57 = add nsw i32 2, %56
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MARGIN, align 4
  %62 = add nsw i32 2, %61
  %63 = mul nsw i32 2, %62
  %64 = sub nsw i32 %60, %63
  %65 = load i32, i32* @dialog_attr, align 4
  %66 = load i32, i32* @border_attr, align 4
  %67 = load i32, i32* @border2_attr, align 4
  %68 = call i32 @dlg_draw_box2(i32* %49, i32 %53, i32 %55, i32 %57, i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32*, i32** %3, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 3
  %74 = call i32 @wmove(i32* %69, i32 %73, i32 4)
  %75 = load i32*, i32** %3, align 8
  %76 = load i32, i32* @gauge_attr, align 4
  %77 = call i32 @dlg_attrset(i32* %75, i32 %76)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %91, %13
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @MARGIN, align 4
  %84 = add nsw i32 3, %83
  %85 = mul nsw i32 2, %84
  %86 = sub nsw i32 %82, %85
  %87 = icmp slt i32 %79, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %78
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @waddch(i32* %89, i32 32)
  br label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %78

94:                                               ; preds = %78
  %95 = load i32*, i32** %3, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 3
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sdiv i32 %102, 2
  %104 = sub nsw i32 %103, 2
  %105 = call i32 @wmove(i32* %95, i32 %99, i32 %104)
  %106 = load i32*, i32** %3, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @wprintw(i32* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @MARGIN, align 4
  %118 = add nsw i32 3, %117
  %119 = mul nsw i32 2, %118
  %120 = sub nsw i32 %116, %119
  %121 = mul nsw i32 %113, %120
  %122 = sdiv i32 %121, 100
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* @gauge_attr, align 4
  %124 = load i32, i32* @A_REVERSE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %94
  %128 = load i32*, i32** %3, align 8
  %129 = load i32, i32* @A_REVERSE, align 4
  %130 = call i32 @dlg_attroff(i32* %128, i32 %129)
  br label %135

131:                                              ; preds = %94
  %132 = load i32*, i32** %3, align 8
  %133 = load i32, i32* @A_REVERSE, align 4
  %134 = call i32 @dlg_attrset(i32* %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %127
  %136 = load i32*, i32** %3, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %139, 3
  %141 = call i32 @wmove(i32* %136, i32 %140, i32 4)
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %162, %135
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* %5, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %165

146:                                              ; preds = %142
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 @winch(i32* %147)
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* @gauge_attr, align 4
  %150 = load i32, i32* @A_REVERSE, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %146
  %154 = load i32, i32* @A_REVERSE, align 4
  %155 = xor i32 %154, -1
  %156 = load i32, i32* %6, align 4
  %157 = and i32 %156, %155
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %153, %146
  %159 = load i32*, i32** %3, align 8
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @waddch(i32* %159, i32 %160)
  br label %162

162:                                              ; preds = %158
  %163 = load i32, i32* %4, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %4, align 4
  br label %142

165:                                              ; preds = %142
  %166 = load i32*, i32** %3, align 8
  %167 = call i32 @wrefresh(i32* %166)
  br label %168

168:                                              ; preds = %165, %1
  ret void
}

declare dso_local i32 @werase(i32*) #1

declare dso_local i32 @dlg_draw_box2(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dlg_draw_title(i32*, i32) #1

declare dso_local i32 @dlg_attrset(i32*, i32) #1

declare dso_local i32 @dlg_draw_helpline(i32*, i32) #1

declare dso_local i32 @dlg_print_autowrap(i32*, i32, i32, i32) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @waddch(i32*, i32) #1

declare dso_local i32 @wprintw(i32*, i8*, i32) #1

declare dso_local i32 @dlg_attroff(i32*, i32) #1

declare dso_local i32 @winch(i32*) #1

declare dso_local i32 @wrefresh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
