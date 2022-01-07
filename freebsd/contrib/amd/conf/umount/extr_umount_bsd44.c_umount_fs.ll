; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/conf/umount/extr_umount_bsd44.c_umount_fs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/conf/umount/extr_umount_bsd44.c_umount_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@XLOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unmount: %s is not mounted\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s: unmount: %m\00", align 1
@AMU_UMOUNT_FORCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @umount_fs(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %21, %3
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @unmount(i8* %9, i32 0)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i32, i32* @errno, align 4
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %13, %8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %24 [
    i32 132, label %17
    i32 129, label %17
    i32 130, label %17
    i32 133, label %21
  ]

17:                                               ; preds = %15, %15, %15
  %18 = load i32, i32* @XLOG_WARNING, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @plog(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %19)
  store i32 0, i32* %7, align 4
  br label %27

21:                                               ; preds = %15
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @dlog(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %8

24:                                               ; preds = %15
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @dlog(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %17
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i32 @unmount(i8*, i32) #1

declare dso_local i32 @plog(i32, i8*, i8*) #1

declare dso_local i32 @dlog(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
