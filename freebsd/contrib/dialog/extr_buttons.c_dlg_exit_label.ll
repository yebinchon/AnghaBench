; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buttons.c_dlg_exit_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buttons.c_dlg_exit_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i64 }

@dialog_vars = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@dlg_exit_label.labels = internal global [3 x i8*] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @dlg_exit_label() #0 {
  %1 = alloca i8**, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 3), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = call i32 @dlg_save_vars(i32* %2)
  %8 = load i32, i32* @TRUE, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 2), align 4
  %9 = call i8** (...) @dlg_ok_labels()
  store i8** %9, i8*** %1, align 8
  %10 = call i32 @dlg_restore_vars(i32* %2)
  br label %42

11:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 1), align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = call i8* (...) @my_exit_label()
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds [3 x i8*], [3 x i8*]* @dlg_exit_label.labels, i64 0, i64 %18
  store i8* %15, i8** %19, align 8
  br label %20

20:                                               ; preds = %14, %11
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = call i8* (...) @my_help_label()
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds [3 x i8*], [3 x i8*]* @dlg_exit_label.labels, i64 0, i64 %27
  store i8* %24, i8** %28, align 8
  br label %29

29:                                               ; preds = %23, %20
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = call i8* (...) @my_exit_label()
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds [3 x i8*], [3 x i8*]* @dlg_exit_label.labels, i64 0, i64 %36
  store i8* %33, i8** %37, align 8
  br label %38

38:                                               ; preds = %32, %29
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [3 x i8*], [3 x i8*]* @dlg_exit_label.labels, i64 0, i64 %40
  store i8* null, i8** %41, align 8
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @dlg_exit_label.labels, i64 0, i64 0), i8*** %1, align 8
  br label %42

42:                                               ; preds = %38, %6
  %43 = load i8**, i8*** %1, align 8
  ret i8** %43
}

declare dso_local i32 @dlg_save_vars(i32*) #1

declare dso_local i8** @dlg_ok_labels(...) #1

declare dso_local i32 @dlg_restore_vars(i32*) #1

declare dso_local i8* @my_exit_label(...) #1

declare dso_local i8* @my_help_label(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
