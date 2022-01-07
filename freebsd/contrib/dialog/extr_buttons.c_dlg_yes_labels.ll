; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buttons.c_dlg_yes_labels.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buttons.c_dlg_yes_labels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@dialog_vars = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@dlg_yes_labels.labels = internal global [4 x i8*] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @dlg_yes_labels() #0 {
  %1 = alloca i8**, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 1), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i8** (...) @dlg_ok_labels()
  store i8** %6, i8*** %1, align 8
  br label %30

7:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  %8 = call i8* (...) @my_yes_label()
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %2, align 4
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds [4 x i8*], [4 x i8*]* @dlg_yes_labels.labels, i64 0, i64 %11
  store i8* %8, i8** %12, align 8
  %13 = call i8* (...) @my_no_label()
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds [4 x i8*], [4 x i8*]* @dlg_yes_labels.labels, i64 0, i64 %16
  store i8* %13, i8** %17, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %7
  %21 = call i8* (...) @my_help_label()
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %2, align 4
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds [4 x i8*], [4 x i8*]* @dlg_yes_labels.labels, i64 0, i64 %24
  store i8* %21, i8** %25, align 8
  br label %26

26:                                               ; preds = %20, %7
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i8*], [4 x i8*]* @dlg_yes_labels.labels, i64 0, i64 %28
  store i8* null, i8** %29, align 8
  store i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @dlg_yes_labels.labels, i64 0, i64 0), i8*** %1, align 8
  br label %30

30:                                               ; preds = %26, %5
  %31 = load i8**, i8*** %1, align 8
  ret i8** %31
}

declare dso_local i8** @dlg_ok_labels(...) #1

declare dso_local i8* @my_yes_label(...) #1

declare dso_local i8* @my_no_label(...) #1

declare dso_local i8* @my_help_label(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
