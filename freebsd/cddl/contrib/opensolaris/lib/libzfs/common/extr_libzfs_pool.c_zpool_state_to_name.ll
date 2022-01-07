; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_state_to_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_state_to_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"OFFLINE\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"REMOVED\00", align 1
@VDEV_AUX_CORRUPT_DATA = common dso_local global i32 0, align 4
@VDEV_AUX_BAD_LOG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"FAULTED\00", align 1
@VDEV_AUX_SPLIT_POOL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"SPLIT\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"UNAVAIL\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"DEGRADED\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"ONLINE\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @zpool_state_to_name(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %35 [
    i32 133, label %7
    i32 129, label %7
    i32 128, label %9
    i32 134, label %11
    i32 131, label %29
    i32 132, label %31
    i32 130, label %33
  ]

7:                                                ; preds = %2, %2
  %8 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %3, align 8
  br label %38

9:                                                ; preds = %2
  %10 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %10, i8** %3, align 8
  br label %38

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @VDEV_AUX_BAD_LOG, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %11
  %20 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %20, i8** %3, align 8
  br label %38

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @VDEV_AUX_SPLIT_POOL, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %26, i8** %3, align 8
  br label %38

27:                                               ; preds = %21
  %28 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* %28, i8** %3, align 8
  br label %38

29:                                               ; preds = %2
  %30 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %30, i8** %3, align 8
  br label %38

31:                                               ; preds = %2
  %32 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i8* %32, i8** %3, align 8
  br label %38

33:                                               ; preds = %2
  %34 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i8* %34, i8** %3, align 8
  br label %38

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %35
  %37 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i8* %37, i8** %3, align 8
  br label %38

38:                                               ; preds = %36, %33, %31, %29, %27, %25, %19, %9, %7
  %39 = load i8*, i8** %3, align 8
  ret i8* %39
}

declare dso_local i8* @gettext(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
