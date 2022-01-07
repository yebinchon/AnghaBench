; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_find_pos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_find_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@scr_horz = common dso_local global i32 0, align 4
@position = common dso_local global i32 0, align 4
@scr_pos = common dso_local global i32 0, align 4
@curr_line = common dso_local global %struct.TYPE_2__* null, align 8
@point = common dso_local global i32* null, align 8
@ee_chinese = common dso_local global i64 0, align 8
@horiz_offset = common dso_local global i32 0, align 4
@last_col = common dso_local global i32 0, align 4
@COLS = common dso_local global i32 0, align 4
@scr_vert = common dso_local global i32 0, align 4
@text_win = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @find_pos() #0 {
  store i32 0, i32* @scr_horz, align 4
  store i32 1, i32* @position, align 4
  br label %1

1:                                                ; preds = %57, %0
  %2 = load i32, i32* @scr_horz, align 4
  %3 = load i32, i32* @scr_pos, align 4
  %4 = icmp slt i32 %2, %3
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load i32, i32* @position, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %6, %9
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  br i1 %12, label %13, label %62

13:                                               ; preds = %11
  %14 = load i32*, i32** @point, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 9
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load i32, i32* @scr_horz, align 4
  %19 = call i64 @tabshift(i32 %18)
  %20 = load i32, i32* @scr_horz, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* @scr_horz, align 4
  br label %57

24:                                               ; preds = %13
  %25 = load i32*, i32** @point, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 32
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @scr_horz, align 4
  %30 = add nsw i32 %29, 2
  store i32 %30, i32* @scr_horz, align 4
  br label %56

31:                                               ; preds = %24
  %32 = load i64, i64* @ee_chinese, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %31
  %35 = load i32*, i32** @point, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 127
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_line, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @position, align 4
  %43 = sub nsw i32 %41, %42
  %44 = icmp sge i32 %43, 2
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load i32, i32* @scr_horz, align 4
  %47 = add nsw i32 %46, 2
  store i32 %47, i32* @scr_horz, align 4
  %48 = load i32*, i32** @point, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** @point, align 8
  %50 = load i32, i32* @position, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @position, align 4
  br label %55

52:                                               ; preds = %38, %34, %31
  %53 = load i32, i32* @scr_horz, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @scr_horz, align 4
  br label %55

55:                                               ; preds = %52, %45
  br label %56

56:                                               ; preds = %55, %28
  br label %57

57:                                               ; preds = %56, %17
  %58 = load i32, i32* @position, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @position, align 4
  %60 = load i32*, i32** @point, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** @point, align 8
  br label %1

62:                                               ; preds = %11
  %63 = load i32, i32* @scr_horz, align 4
  %64 = load i32, i32* @horiz_offset, align 4
  %65 = sub nsw i32 %63, %64
  %66 = load i32, i32* @last_col, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load i32, i32* @scr_horz, align 4
  %70 = load i32, i32* @scr_horz, align 4
  %71 = srem i32 %70, 8
  %72 = sub nsw i32 %69, %71
  %73 = load i32, i32* @COLS, align 4
  %74 = sub nsw i32 %73, 8
  %75 = sub nsw i32 %72, %74
  store i32 %75, i32* @horiz_offset, align 4
  %76 = load i32, i32* @scr_vert, align 4
  %77 = load i32*, i32** @point, align 8
  %78 = call i32 @midscreen(i32 %76, i32* %77)
  br label %93

79:                                               ; preds = %62
  %80 = load i32, i32* @scr_horz, align 4
  %81 = load i32, i32* @horiz_offset, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load i32, i32* @scr_horz, align 4
  %85 = load i32, i32* @scr_horz, align 4
  %86 = srem i32 %85, 8
  %87 = sub nsw i32 %84, %86
  %88 = call i32 @max(i32 0, i32 %87)
  store i32 %88, i32* @horiz_offset, align 4
  %89 = load i32, i32* @scr_vert, align 4
  %90 = load i32*, i32** @point, align 8
  %91 = call i32 @midscreen(i32 %89, i32* %90)
  br label %92

92:                                               ; preds = %83, %79
  br label %93

93:                                               ; preds = %92, %68
  %94 = load i32, i32* @text_win, align 4
  %95 = load i32, i32* @scr_vert, align 4
  %96 = load i32, i32* @scr_horz, align 4
  %97 = load i32, i32* @horiz_offset, align 4
  %98 = sub nsw i32 %96, %97
  %99 = call i32 @wmove(i32 %94, i32 %95, i32 %98)
  ret void
}

declare dso_local i64 @tabshift(i32) #1

declare dso_local i32 @midscreen(i32, i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @wmove(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
