; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buttons.c_dlg_ok_labels.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buttons.c_dlg_ok_labels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64, i32 }

@dlg_ok_labels.labels = internal global [5 x i8*] zeroinitializer, align 16
@dialog_vars = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @dlg_ok_labels() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 3), align 8
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  %5 = call i8* (...) @my_ok_label()
  %6 = load i32, i32* %1, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %1, align 4
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds [5 x i8*], [5 x i8*]* @dlg_ok_labels.labels, i64 0, i64 %8
  store i8* %5, i8** %9, align 8
  br label %10

10:                                               ; preds = %4, %0
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 2), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = call i8* (...) @my_extra_label()
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* @dlg_ok_labels.labels, i64 0, i64 %17
  store i8* %14, i8** %18, align 8
  br label %19

19:                                               ; preds = %13, %10
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 1), align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = call i8* (...) @my_cancel_label()
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds [5 x i8*], [5 x i8*]* @dlg_ok_labels.labels, i64 0, i64 %26
  store i8* %23, i8** %27, align 8
  br label %28

28:                                               ; preds = %22, %19
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = call i8* (...) @my_help_label()
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds [5 x i8*], [5 x i8*]* @dlg_ok_labels.labels, i64 0, i64 %35
  store i8* %32, i8** %36, align 8
  br label %37

37:                                               ; preds = %31, %28
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [5 x i8*], [5 x i8*]* @dlg_ok_labels.labels, i64 0, i64 %39
  store i8* null, i8** %40, align 8
  ret i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @dlg_ok_labels.labels, i64 0, i64 0)
}

declare dso_local i8* @my_ok_label(...) #1

declare dso_local i8* @my_extra_label(...) #1

declare dso_local i8* @my_cancel_label(...) #1

declare dso_local i8* @my_help_label(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
