; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_language.c_show_language_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_language.c_show_language_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@language_unknown = common dso_local global i32 0, align 4
@language_mode = common dso_local global i64 0, align 8
@language_mode_manual = common dso_local global i64 0, align 8
@current_language = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@lang_frame_mismatch_warn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @show_language_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_language_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @get_frame_language()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @language_unknown, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load i64, i64* @language_mode, align 8
  %12 = load i64, i64* @language_mode_manual, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @lang_frame_mismatch_warn, align 4
  %22 = call i32 @printf_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %14, %10, %2
  ret void
}

declare dso_local i32 @get_frame_language(...) #1

declare dso_local i32 @printf_filtered(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
