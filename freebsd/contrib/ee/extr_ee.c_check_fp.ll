; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_check_fp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_check_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_5__* }
%struct.stat = type { i32 }

@TRUE = common dso_local global i8* null, align 8
@clear_com_win = common dso_local global i8* null, align 8
@scr_vert = common dso_local global i64 0, align 8
@tmp_vert = common dso_local global i64 0, align 8
@scr_horz = common dso_local global i64 0, align 8
@tmp_horz = common dso_local global i64 0, align 8
@curr_line = common dso_local global %struct.TYPE_6__* null, align 8
@tmp_line = common dso_local global %struct.TYPE_6__* null, align 8
@input_file = common dso_local global i8* null, align 8
@top_of_stack = common dso_local global %struct.TYPE_5__* null, align 8
@tmp_file = common dso_local global i8* null, align 8
@in_file_name = common dso_local global i8* null, align 8
@com_win = common dso_local global i32 0, align 4
@file_is_dir_msg = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@get_fd = common dso_local global i32 0, align 4
@new_file_msg = common dso_local global i32 0, align 4
@cant_open_msg = common dso_local global i32 0, align 4
@text_win = common dso_local global i32 0, align 4
@horiz_offset = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@recv_file = common dso_local global i8* null, align 8
@first_line = common dso_local global %struct.TYPE_6__* null, align 8
@point = common dso_local global i32 0, align 4
@start_at_line = common dso_local global i32* null, align 8
@text_changes = common dso_local global i8* null, align 8
@file_read_fin_msg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_fp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.stat, align 4
  %4 = load i8*, i8** @TRUE, align 8
  store i8* %4, i8** @clear_com_win, align 8
  %5 = load i64, i64* @scr_vert, align 8
  store i64 %5, i64* @tmp_vert, align 8
  %6 = load i64, i64* @scr_horz, align 8
  store i64 %6, i64* @tmp_horz, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curr_line, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** @tmp_line, align 8
  %8 = load i8*, i8** @input_file, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @top_of_stack, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** @tmp_file, align 8
  store i8* %13, i8** @in_file_name, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @top_of_stack, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** @top_of_stack, align 8
  br label %17

17:                                               ; preds = %10, %0
  %18 = load i8*, i8** @tmp_file, align 8
  %19 = call i32 @stat(i8* %18, %struct.stat* %3)
  store i32 %19, i32* %2, align 4
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, -4096
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %45

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 32768
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i32, i32* @com_win, align 4
  %35 = load i32, i32* @file_is_dir_msg, align 4
  %36 = load i8*, i8** @tmp_file, align 8
  %37 = call i32 @wprintw(i32 %34, i32 %35, i8* %36)
  %38 = load i32, i32* @com_win, align 4
  %39 = call i32 @wrefresh(i32 %38)
  %40 = load i8*, i8** @input_file, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = call i32 @quit(i32 0)
  br label %144

44:                                               ; preds = %33
  br label %144

45:                                               ; preds = %29, %25, %17
  %46 = load i8*, i8** @tmp_file, align 8
  %47 = load i32, i32* @O_RDONLY, align 4
  %48 = call i32 @open(i8* %46, i32 %47)
  store i32 %48, i32* @get_fd, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %80

50:                                               ; preds = %45
  %51 = load i32, i32* @com_win, align 4
  %52 = call i32 @wmove(i32 %51, i64 0, i64 0)
  %53 = load i32, i32* @com_win, align 4
  %54 = call i32 @wclrtoeol(i32 %53)
  %55 = load i8*, i8** @input_file, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i32, i32* @com_win, align 4
  %59 = load i32, i32* @new_file_msg, align 4
  %60 = load i8*, i8** @tmp_file, align 8
  %61 = call i32 @wprintw(i32 %58, i32 %59, i8* %60)
  br label %67

62:                                               ; preds = %50
  %63 = load i32, i32* @com_win, align 4
  %64 = load i32, i32* @cant_open_msg, align 4
  %65 = load i8*, i8** @tmp_file, align 8
  %66 = call i32 @wprintw(i32 %63, i32 %64, i8* %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i32, i32* @com_win, align 4
  %69 = call i32 @wrefresh(i32 %68)
  %70 = load i32, i32* @text_win, align 4
  %71 = load i64, i64* @scr_vert, align 8
  %72 = load i64, i64* @scr_horz, align 8
  %73 = load i64, i64* @horiz_offset, align 8
  %74 = sub nsw i64 %72, %73
  %75 = call i32 @wmove(i32 %70, i64 %71, i64 %74)
  %76 = load i32, i32* @text_win, align 4
  %77 = call i32 @wrefresh(i32 %76)
  %78 = load i8*, i8** @FALSE, align 8
  store i8* %78, i8** @recv_file, align 8
  %79 = load i8*, i8** @FALSE, align 8
  store i8* %79, i8** @input_file, align 8
  br label %144

80:                                               ; preds = %45
  %81 = load i8*, i8** @tmp_file, align 8
  %82 = call i32 @get_file(i8* %81)
  br label %83

83:                                               ; preds = %80
  %84 = load i8*, i8** @FALSE, align 8
  store i8* %84, i8** @recv_file, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curr_line, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %1, align 4
  %88 = load i64, i64* @tmp_vert, align 8
  store i64 %88, i64* @scr_vert, align 8
  %89 = load i64, i64* @tmp_horz, align 8
  store i64 %89, i64* @scr_horz, align 8
  %90 = load i8*, i8** @input_file, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** @first_line, align 8
  store %struct.TYPE_6__* %93, %struct.TYPE_6__** @curr_line, align 8
  br label %96

94:                                               ; preds = %83
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tmp_line, align 8
  store %struct.TYPE_6__* %95, %struct.TYPE_6__** @curr_line, align 8
  br label %96

96:                                               ; preds = %94, %92
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curr_line, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* @point, align 4
  %100 = call i32 (...) @draw_screen()
  %101 = load i8*, i8** @input_file, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %114

103:                                              ; preds = %96
  %104 = load i8*, i8** @FALSE, align 8
  store i8* %104, i8** @input_file, align 8
  %105 = load i32*, i32** @start_at_line, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load i32*, i32** @start_at_line, align 8
  %109 = call i32 @atoi(i32* %108)
  %110 = sub nsw i32 %109, 1
  store i32 %110, i32* %1, align 4
  %111 = load i32, i32* %1, align 4
  %112 = call i32 @move_rel(i8 signext 100, i32 %111)
  store i32 0, i32* %1, align 4
  store i32* null, i32** @start_at_line, align 8
  br label %113

113:                                              ; preds = %107, %103
  br label %133

114:                                              ; preds = %96
  %115 = load i32, i32* @com_win, align 4
  %116 = call i32 @wmove(i32 %115, i64 0, i64 0)
  %117 = load i32, i32* @com_win, align 4
  %118 = call i32 @wclrtoeol(i32 %117)
  %119 = load i8*, i8** @TRUE, align 8
  store i8* %119, i8** @text_changes, align 8
  %120 = load i8*, i8** @tmp_file, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %132

122:                                              ; preds = %114
  %123 = load i8*, i8** @tmp_file, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load i32, i32* @com_win, align 4
  %129 = load i32, i32* @file_read_fin_msg, align 4
  %130 = load i8*, i8** @tmp_file, align 8
  %131 = call i32 @wprintw(i32 %128, i32 %129, i8* %130)
  br label %132

132:                                              ; preds = %127, %122, %114
  br label %133

133:                                              ; preds = %132, %113
  %134 = load i32, i32* @com_win, align 4
  %135 = call i32 @wrefresh(i32 %134)
  %136 = load i32, i32* @text_win, align 4
  %137 = load i64, i64* @scr_vert, align 8
  %138 = load i64, i64* @scr_horz, align 8
  %139 = load i64, i64* @horiz_offset, align 8
  %140 = sub nsw i64 %138, %139
  %141 = call i32 @wmove(i32 %136, i64 %137, i64 %140)
  %142 = load i32, i32* @text_win, align 4
  %143 = call i32 @wrefresh(i32 %142)
  br label %144

144:                                              ; preds = %133, %67, %44, %42
  ret void
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @wprintw(i32, i32, i8*) #1

declare dso_local i32 @wrefresh(i32) #1

declare dso_local i32 @quit(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @wmove(i32, i64, i64) #1

declare dso_local i32 @wclrtoeol(i32) #1

declare dso_local i32 @get_file(i8*) #1

declare dso_local i32 @draw_screen(...) #1

declare dso_local i32 @atoi(i32*) #1

declare dso_local i32 @move_rel(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
