; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_event-top.c_cli_command_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_event-top.c_cli_command_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@async_command_editing_p = common dso_local global i64 0, align 8
@input_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cli_command_loop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = call i8* (...) @get_prompt()
  store i8* %4, i8** %3, align 8
  %5 = load i64, i64* @async_command_editing_p, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %0
  %8 = call i8* @PREFIX(i32 0)
  %9 = call i32 @strlen(i8* %8)
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = add nsw i32 %9, %11
  %13 = call i8* @SUFFIX(i32 0)
  %14 = call i32 @strlen(i8* %13)
  %15 = add nsw i32 %12, %14
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = call i64 @xmalloc(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %2, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = call i8* @PREFIX(i32 0)
  %22 = call i32 @strcpy(i8* %20, i8* %21)
  %23 = load i8*, i8** %2, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @strcat(i8* %23, i8* %24)
  %26 = load i8*, i8** %2, align 8
  %27 = call i8* @SUFFIX(i32 0)
  %28 = call i32 @strcat(i8* %26, i8* %27)
  %29 = load i8*, i8** %2, align 8
  %30 = load i32, i32* @input_handler, align 4
  %31 = call i32 @rl_callback_handler_install(i8* %29, i32 %30)
  br label %34

32:                                               ; preds = %0
  %33 = call i32 @display_gdb_prompt(i32 0)
  br label %34

34:                                               ; preds = %32, %7
  %35 = call i32 (...) @start_event_loop()
  ret void
}

declare dso_local i8* @get_prompt(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @PREFIX(i32) #1

declare dso_local i8* @SUFFIX(i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @rl_callback_handler_install(i8*, i32) #1

declare dso_local i32 @display_gdb_prompt(i32) #1

declare dso_local i32 @start_event_loop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
