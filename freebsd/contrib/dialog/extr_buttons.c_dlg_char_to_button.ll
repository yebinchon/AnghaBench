; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buttons.c_dlg_char_to_button.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buttons.c_dlg_char_to_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DLG_EXIT_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlg_char_to_button(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = load i32, i32* @DLG_EXIT_UNKNOWN, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i8**, i8*** %4, align 8
  %10 = icmp ne i8** %9, null
  br i1 %10, label %11, label %46

11:                                               ; preds = %2
  %12 = load i8**, i8*** %4, align 8
  %13 = call i32* @get_hotkeys(i8** %12)
  store i32* %13, i32** %6, align 8
  %14 = call i32 (...) @dlg_last_getc()
  %15 = call i64 @dlg_toupper(i32 %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %3, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %45

19:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %39, %19
  %21 = load i8**, i8*** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %28, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = call i32 (...) @dlg_flush_getc()
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %5, align 4
  br label %42

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %20

42:                                               ; preds = %35, %20
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @free(i32* %43)
  br label %45

45:                                               ; preds = %42, %11
  br label %46

46:                                               ; preds = %45, %2
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32* @get_hotkeys(i8**) #1

declare dso_local i64 @dlg_toupper(i32) #1

declare dso_local i32 @dlg_last_getc(...) #1

declare dso_local i32 @dlg_flush_getc(...) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
