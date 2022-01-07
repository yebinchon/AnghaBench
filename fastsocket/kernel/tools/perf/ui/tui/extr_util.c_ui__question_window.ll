; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/tui/extr_util.c_ui__question_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/tui/extr_util.c_ui__question_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SLtt_Screen_Rows = common dso_local global i32 0, align 4
@SLtt_Screen_Cols = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui__question_window(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %13, align 8
  br label %17

17:                                               ; preds = %4, %45
  %18 = load i8*, i8** %13, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 10)
  store i8* %19, i8** %14, align 8
  %20 = load i8*, i8** %14, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i8*, i8** %13, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 0)
  store i8* %24, i8** %14, align 8
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i8*, i8** %14, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %35, %25
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %12, align 4
  %40 = load i8*, i8** %14, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %48

45:                                               ; preds = %37
  %46 = load i8*, i8** %14, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8* %47, i8** %13, align 8
  br label %17

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 2
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 4
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* @SLtt_Screen_Rows, align 4
  %54 = sdiv i32 %53, 2
  %55 = load i32, i32* %12, align 4
  %56 = sdiv i32 %55, 2
  %57 = sub nsw i32 %54, %56
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* @SLtt_Screen_Cols, align 4
  %59 = sdiv i32 %58, 2
  %60 = load i32, i32* %11, align 4
  %61 = sdiv i32 %60, 2
  %62 = sub nsw i32 %59, %61
  store i32 %62, i32* %9, align 4
  %63 = call i32 @SLsmg_set_color(i32 0)
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @SLsmg_draw_box(i32 %64, i32 %65, i32 %67, i32 %68)
  %70 = load i8*, i8** %5, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %48
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  %76 = call i32 @SLsmg_gotorc(i32 %73, i32 %75)
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @SLsmg_write_string(i8* %77)
  br label %79

79:                                               ; preds = %72, %48
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @SLsmg_gotorc(i32 %81, i32 %82)
  %84 = load i32, i32* %12, align 4
  %85 = sub nsw i32 %84, 2
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %11, align 4
  %87 = sub nsw i32 %86, 2
  store i32 %87, i32* %11, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @SLsmg_write_wrapped_string(i8* %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 1)
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %94, %95
  %97 = sub nsw i32 %96, 2
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @SLsmg_gotorc(i32 %97, i32 %98)
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @SLsmg_write_nstring(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %102, %103
  %105 = sub nsw i32 %104, 1
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @SLsmg_gotorc(i32 %105, i32 %106)
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @SLsmg_write_nstring(i8* %108, i32 %109)
  %111 = call i32 (...) @SLsmg_refresh()
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @ui__getch(i32 %112)
  ret i32 %113
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @SLsmg_set_color(i32) #1

declare dso_local i32 @SLsmg_draw_box(i32, i32, i32, i32) #1

declare dso_local i32 @SLsmg_gotorc(i32, i32) #1

declare dso_local i32 @SLsmg_write_string(i8*) #1

declare dso_local i32 @SLsmg_write_wrapped_string(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SLsmg_write_nstring(i8*, i32) #1

declare dso_local i32 @SLsmg_refresh(...) #1

declare dso_local i32 @ui__getch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
