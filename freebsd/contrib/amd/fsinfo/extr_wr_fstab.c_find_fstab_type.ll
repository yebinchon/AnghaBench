; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/fsinfo/extr_wr_fstab.c_find_fstab_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/fsinfo/extr_wr_fstab.c_find_fstab_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.os_fstab_type = type { i64 }
%struct.TYPE_3__ = type { i8*, i32 }

@HF_OS = common dso_local global i32 0, align 4
@GENERIC_OS_NAME = common dso_local global i8* null, align 8
@os_tabs = common dso_local global %struct.os_fstab_type* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.os_fstab_type* (%struct.TYPE_3__*)* @find_fstab_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.os_fstab_type* @find_fstab_type(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.os_fstab_type*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store %struct.os_fstab_type* null, %struct.os_fstab_type** %3, align 8
  store i8* null, i8** %4, align 8
  br label %5

5:                                                ; preds = %42, %1
  %6 = load i8*, i8** %4, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @HF_OS, align 4
  %13 = call i64 @ISSET(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %4, align 8
  br label %21

19:                                               ; preds = %8
  %20 = load i8*, i8** @GENERIC_OS_NAME, align 8
  store i8* %20, i8** %4, align 8
  br label %21

21:                                               ; preds = %19, %15
  br label %22

22:                                               ; preds = %21, %5
  %23 = load %struct.os_fstab_type*, %struct.os_fstab_type** @os_tabs, align 8
  store %struct.os_fstab_type* %23, %struct.os_fstab_type** %3, align 8
  br label %24

24:                                               ; preds = %39, %22
  %25 = load %struct.os_fstab_type*, %struct.os_fstab_type** %3, align 8
  %26 = getelementptr inbounds %struct.os_fstab_type, %struct.os_fstab_type* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  %31 = load %struct.os_fstab_type*, %struct.os_fstab_type** %3, align 8
  %32 = getelementptr inbounds %struct.os_fstab_type, %struct.os_fstab_type* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @STREQ(i8* %30, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load %struct.os_fstab_type*, %struct.os_fstab_type** %3, align 8
  ret %struct.os_fstab_type* %37

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.os_fstab_type*, %struct.os_fstab_type** %3, align 8
  %41 = getelementptr inbounds %struct.os_fstab_type, %struct.os_fstab_type* %40, i32 1
  store %struct.os_fstab_type* %41, %struct.os_fstab_type** %3, align 8
  br label %24

42:                                               ; preds = %24
  %43 = load i8*, i8** @GENERIC_OS_NAME, align 8
  store i8* %43, i8** %4, align 8
  br label %5
}

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i64 @STREQ(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
