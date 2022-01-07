; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_report_mount_progress.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_report_mount_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@report_mount_progress.last_progress_time = internal global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Mounting ZFS filesystems\00", align 1
@MOUNT_TIME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"(%d/%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @report_mount_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_mount_progress(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [32 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = call i64 @time(i32* null)
  store i64 %7, i64* %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = call i32 @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @set_progress_header(i32 %11)
  br label %25

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load i64, i64* @report_mount_progress.last_progress_time, align 8
  %19 = load i64, i64* @MOUNT_TIME, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i64, i64* %5, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %40

24:                                               ; preds = %17, %13
  br label %25

25:                                               ; preds = %24, %10
  %26 = load i64, i64* %5, align 8
  store i64 %26, i64* @report_mount_progress.last_progress_time, align 8
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @sprintf(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %36 = call i32 @finish_progress(i8* %35)
  br label %40

37:                                               ; preds = %25
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %39 = call i32 @update_progress(i8* %38)
  br label %40

40:                                               ; preds = %23, %37, %34
  ret void
}

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @set_progress_header(i32) #1

declare dso_local i32 @gettext(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @finish_progress(i8*) #1

declare dso_local i32 @update_progress(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
