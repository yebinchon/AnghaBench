; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buttons.c_dlg_defaultno_button.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buttons.c_dlg_defaultno_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@dialog_vars = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DLG_EXIT_CANCEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"# dlg_defaultno_button() = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlg_defaultno_button() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 1), align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %0
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %13, %7
  %9 = load i32, i32* %1, align 4
  %10 = call i64 @dlg_ok_buttoncode(i32 %9)
  %11 = load i64, i64* @DLG_EXIT_CANCEL, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  br label %8

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %16, %4, %0
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @DLG_TRACE(i8* %20)
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i64 @dlg_ok_buttoncode(i32) #1

declare dso_local i32 @DLG_TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
