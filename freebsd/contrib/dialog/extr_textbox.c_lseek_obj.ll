; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_textbox.c_lseek_obj.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_textbox.c_lseek_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Cannot get file position\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Cannot seek to end of file\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Cannot set file position to %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i64, i32)* @lseek_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lseek_obj(%struct.TYPE_3__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %5, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @lseek(i32 %10, i32 %12, i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = icmp eq i64 %14, -1
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %18 [
    i32 130, label %19
    i32 129, label %21
    i32 128, label %23
  ]

18:                                               ; preds = %16
  br label %19

19:                                               ; preds = %16, %18
  %20 = call i32 (i8*, ...) @dlg_exiterr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %26

21:                                               ; preds = %16
  %22 = call i32 (i8*, ...) @dlg_exiterr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %26

23:                                               ; preds = %16
  %24 = load i64, i64* %5, align 8
  %25 = call i32 (i8*, ...) @dlg_exiterr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %23, %21, %19
  br label %27

27:                                               ; preds = %26, %3
  %28 = load i64, i64* %7, align 8
  ret i64 %28
}

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @dlg_exiterr(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
