; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_sys.c_freeze_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_sys.c_freeze_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"freeze %d error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.gfs2_sbd*, i8*, i64)* @freeze_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @freeze_store(%struct.gfs2_sbd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  store i64 %11, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @simple_strtol(i8* %12, i32* null, i32 0)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %15 = call i32 @capable(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* @EACCES, align 8
  %19 = sub i64 0, %18
  store i64 %19, i64* %4, align 8
  br label %41

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %28 [
    i32 0, label %22
    i32 1, label %25
  ]

22:                                               ; preds = %20
  %23 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %24 = call i32 @gfs2_unfreeze_fs(%struct.gfs2_sbd* %23)
  br label %31

25:                                               ; preds = %20
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %27 = call i32 @gfs2_freeze_fs(%struct.gfs2_sbd* %26)
  store i32 %27, i32* %9, align 4
  br label %31

28:                                               ; preds = %20
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %8, align 8
  br label %31

31:                                               ; preds = %28, %25, %22
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @fs_warn(%struct.gfs2_sbd* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i64, i64* %8, align 8
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %39, %17
  %42 = load i64, i64* %4, align 8
  ret i64 %42
}

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @gfs2_unfreeze_fs(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_freeze_fs(%struct.gfs2_sbd*) #1

declare dso_local i32 @fs_warn(%struct.gfs2_sbd*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
