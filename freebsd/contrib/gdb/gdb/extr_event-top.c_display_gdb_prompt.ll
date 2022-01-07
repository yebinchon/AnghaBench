; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_event-top.c_display_gdb_prompt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_event-top.c_display_gdb_prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@target_executing = common dso_local global i64 0, align 8
@sync_execution = common dso_local global i64 0, align 8
@async_command_editing_p = common dso_local global i64 0, align 8
@input_handler = common dso_local global i32 0, align 4
@gdb_stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display_gdb_prompt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = call i8* (...) @get_prompt()
  store i8* %5, i8** %4, align 8
  %6 = call i32 (...) @current_interp_display_prompt_p()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %60

9:                                                ; preds = %1
  %10 = load i64, i64* @target_executing, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i64, i64* @sync_execution, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (...) @rl_callback_handler_remove()
  br label %60

17:                                               ; preds = %12, %9
  %18 = load i8*, i8** %2, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %42, label %20

20:                                               ; preds = %17
  %21 = call i8* @PREFIX(i32 0)
  %22 = call i32 @strlen(i8* %21)
  %23 = call i8* @SUFFIX(i32 0)
  %24 = call i32 @strlen(i8* %23)
  %25 = add nsw i32 %22, %24
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = add nsw i32 %25, %27
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @alloca(i32 %30)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %2, align 8
  %33 = load i8*, i8** %2, align 8
  %34 = call i8* @PREFIX(i32 0)
  %35 = call i32 @strcpy(i8* %33, i8* %34)
  %36 = load i8*, i8** %2, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @strcat(i8* %36, i8* %37)
  %39 = load i8*, i8** %2, align 8
  %40 = call i8* @SUFFIX(i32 0)
  %41 = call i32 @strcat(i8* %39, i8* %40)
  br label %42

42:                                               ; preds = %20, %17
  %43 = load i64, i64* @async_command_editing_p, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = call i32 (...) @rl_callback_handler_remove()
  %47 = load i8*, i8** %2, align 8
  %48 = load i32, i32* @input_handler, align 4
  %49 = call i32 @rl_callback_handler_install(i8* %47, i32 %48)
  br label %60

50:                                               ; preds = %42
  %51 = load i8*, i8** %2, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i8*, i8** %2, align 8
  %55 = load i32, i32* @gdb_stdout, align 4
  %56 = call i32 @fputs_unfiltered(i8* %54, i32 %55)
  %57 = load i32, i32* @gdb_stdout, align 4
  %58 = call i32 @gdb_flush(i32 %57)
  br label %59

59:                                               ; preds = %53, %50
  br label %60

60:                                               ; preds = %8, %15, %59, %45
  ret void
}

declare dso_local i8* @get_prompt(...) #1

declare dso_local i32 @current_interp_display_prompt_p(...) #1

declare dso_local i32 @rl_callback_handler_remove(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @PREFIX(i32) #1

declare dso_local i8* @SUFFIX(i32) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @rl_callback_handler_install(i8*, i32) #1

declare dso_local i32 @fputs_unfiltered(i8*, i32) #1

declare dso_local i32 @gdb_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
