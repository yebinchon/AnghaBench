; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_mconf.c_conf_save.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_mconf.c_conf_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@save_config_text = common dso_local global i32 0, align 4
@filename = common dso_local global i32 0, align 4
@dialog_input_result = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [54 x i8] c"Can't create file!  Probably a nonexistent directory.\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Save Alternate Configuration\00", align 1
@save_config_help = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @conf_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conf_save() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %0, %29
  %3 = call i32 (...) @dialog_clear()
  %4 = load i32, i32* @save_config_text, align 4
  %5 = load i32, i32* @filename, align 4
  %6 = call i32 @dialog_inputbox(i32* null, i32 %4, i32 11, i32 55, i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  switch i32 %7, label %29 [
    i32 0, label %8
    i32 1, label %24
    i32 128, label %28
  ]

8:                                                ; preds = %2
  %9 = load i32*, i32** @dialog_input_result, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %30

14:                                               ; preds = %8
  %15 = load i32*, i32** @dialog_input_result, align 8
  %16 = call i32 @conf_write(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i32*, i32** @dialog_input_result, align 8
  %20 = call i32 @set_config_filename(i32* %19)
  br label %30

21:                                               ; preds = %14
  %22 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @show_textbox(i32* null, i32 %22, i32 5, i32 60)
  br label %29

24:                                               ; preds = %2
  %25 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @save_config_help, align 4
  %27 = call i32 @show_helptext(i32 %25, i32 %26)
  br label %29

28:                                               ; preds = %2
  br label %30

29:                                               ; preds = %2, %24, %21
  br label %2

30:                                               ; preds = %28, %18, %13
  ret void
}

declare dso_local i32 @dialog_clear(...) #1

declare dso_local i32 @dialog_inputbox(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @conf_write(i32*) #1

declare dso_local i32 @set_config_filename(i32*) #1

declare dso_local i32 @show_textbox(i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @show_helptext(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
