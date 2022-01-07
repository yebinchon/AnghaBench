; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_ui_getc.c_dlg_add_last_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_ui_getc.c_dlg_add_last_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@dialog_vars = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@last_getc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlg_add_last_key(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [80 x i8], align 16
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @dlg_add_last_key(i32 -1)
  br label %19

13:                                               ; preds = %9
  %14 = call i64 (...) @dlg_need_separator()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 (...) @dlg_add_separator()
  br label %18

18:                                               ; preds = %16, %13
  call void @dlg_add_last_key(i32 -2)
  br label %19

19:                                               ; preds = %18, %12
  br label %31

20:                                               ; preds = %6
  %21 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %22 = load i32, i32* @last_getc, align 4
  %23 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %25 = call i32 @dlg_add_string(i8* %24)
  %26 = load i32, i32* %2, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = call i32 (...) @dlg_add_separator()
  br label %30

30:                                               ; preds = %28, %20
  br label %31

31:                                               ; preds = %30, %19
  br label %32

32:                                               ; preds = %31, %1
  ret void
}

declare dso_local i64 @dlg_need_separator(...) #1

declare dso_local i32 @dlg_add_separator(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @dlg_add_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
