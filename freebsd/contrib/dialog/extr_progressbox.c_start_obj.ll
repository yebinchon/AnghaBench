; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_progressbox.c_start_obj.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_progressbox.c_start_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@MIN_HIGH = common dso_local global i32 0, align 4
@MIN_WIDE = common dso_local global i32 0, align 4
@MARGIN = common dso_local global i32 0, align 4
@dialog_attr = common dso_local global i32 0, align 4
@border_attr = common dso_local global i32 0, align 4
@border2_attr = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ACS_HLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*, i8*)* @start_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_obj(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @dlg_strclone(i8* %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @dlg_tab_correct_str(i8* %19)
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 4
  %29 = load i32, i32* @MIN_HIGH, align 4
  %30 = load i32, i32* @MIN_WIDE, align 4
  %31 = call i32 @dlg_auto_size(i8* %21, i8* %24, i32* %26, i64* %28, i32 %29, i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @dlg_print_size(i32 %34, i64 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @dlg_ctl_size(i32 %41, i64 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @dlg_box_x_ordinate(i64 %48)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dlg_box_y_ordinate(i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MARGIN, align 4
  %58 = mul nsw i32 2, %57
  %59 = sub nsw i32 %56, %58
  store i32 %59, i32* %9, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @dlg_new_window(i32 %62, i64 %65, i32 %66, i32 %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @dialog_attr, align 4
  %83 = load i32, i32* @border_attr, align 4
  %84 = load i32, i32* @border2_attr, align 4
  %85 = call i32 @dlg_draw_box2(i32 %75, i32 0, i32 0, i32 %78, i64 %81, i32 %82, i32 %83, i32 %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 @dlg_draw_title(i32 %89, i8* %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @FALSE, align 4
  %97 = call i32 @dlg_draw_helpline(i32 %95, i32 %96)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %172

105:                                              ; preds = %3
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @dialog_attr, align 4
  %111 = call i32 @dlg_attrset(i32 %109, i32 %110)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @dlg_print_autowrap(i32 %115, i8* %118, i32 %121, i64 %124)
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @getyx(i32 %129, i32 %130, i32 %131)
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @MARGIN, align 4
  %142 = call i32 @wmove(i32 %139, i32 %140, i32 %141)
  store i32 0, i32* %10, align 4
  br label %143

143:                                              ; preds = %162, %105
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @getmaxx(i32 %148)
  %150 = load i32, i32* @MARGIN, align 4
  %151 = mul nsw i32 2, %150
  %152 = sub nsw i32 %149, %151
  %153 = icmp slt i32 %144, %152
  br i1 %153, label %154, label %165

154:                                              ; preds = %143
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @ACS_HLINE, align 4
  %160 = call i32 @dlg_boxchar(i32 %159)
  %161 = call i32 @waddch(i32 %158, i32 %160)
  br label %162

162:                                              ; preds = %154
  %163 = load i32, i32* %10, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %10, align 4
  br label %143

165:                                              ; preds = %143
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* %9, align 4
  %171 = sub nsw i32 %170, %169
  store i32 %171, i32* %9, align 4
  br label %172

172:                                              ; preds = %165, %3
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %9, align 4
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* @MARGIN, align 4
  %182 = mul nsw i32 2, %181
  %183 = sext i32 %182 to i64
  %184 = sub nsw i64 %180, %183
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* @MARGIN, align 4
  %187 = add nsw i32 %185, %186
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* @MARGIN, align 4
  %190 = add nsw i32 %188, %189
  %191 = call i32 @dlg_sub_window(i32 %176, i32 %177, i64 %184, i32 %187, i32 %190)
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 4
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @wrefresh(i32 %197)
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @getmaxy(i32 %205)
  %207 = load i32, i32* @MARGIN, align 4
  %208 = add nsw i32 %207, 1
  %209 = call i32 @wmove(i32 %202, i32 %206, i32 %208)
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @wnoutrefresh(i32 %213)
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @getmaxy(i32 %220)
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @getmaxx(i32 %224)
  %226 = load i32, i32* @dialog_attr, align 4
  %227 = call i32 @dlg_attr_clear(i32 %217, i32 %221, i32 %225, i32 %226)
  ret void
}

declare dso_local i8* @dlg_strclone(i8*) #1

declare dso_local i32 @dlg_tab_correct_str(i8*) #1

declare dso_local i32 @dlg_auto_size(i8*, i8*, i32*, i64*, i32, i32) #1

declare dso_local i32 @dlg_print_size(i32, i64) #1

declare dso_local i32 @dlg_ctl_size(i32, i64) #1

declare dso_local i32 @dlg_box_x_ordinate(i64) #1

declare dso_local i32 @dlg_box_y_ordinate(i32) #1

declare dso_local i32 @dlg_new_window(i32, i64, i32, i32) #1

declare dso_local i32 @dlg_draw_box2(i32, i32, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @dlg_draw_title(i32, i8*) #1

declare dso_local i32 @dlg_draw_helpline(i32, i32) #1

declare dso_local i32 @dlg_attrset(i32, i32) #1

declare dso_local i32 @dlg_print_autowrap(i32, i8*, i32, i64) #1

declare dso_local i32 @getyx(i32, i32, i32) #1

declare dso_local i32 @wmove(i32, i32, i32) #1

declare dso_local i32 @getmaxx(i32) #1

declare dso_local i32 @waddch(i32, i32) #1

declare dso_local i32 @dlg_boxchar(i32) #1

declare dso_local i32 @dlg_sub_window(i32, i32, i64, i32, i32) #1

declare dso_local i32 @wrefresh(i32) #1

declare dso_local i32 @getmaxy(i32) #1

declare dso_local i32 @wnoutrefresh(i32) #1

declare dso_local i32 @dlg_attr_clear(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
