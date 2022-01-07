; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_sys.c_statfs_sync_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_sys.c_statfs_sync_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.gfs2_sbd*, i8*, i64)* @statfs_sync_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @statfs_sync_store(%struct.gfs2_sbd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %9 = call i32 @capable(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* @EACCES, align 8
  %13 = sub i64 0, %12
  store i64 %13, i64* %4, align 8
  br label %27

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @simple_strtol(i8* %15, i32* null, i32 0)
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %4, align 8
  br label %27

21:                                               ; preds = %14
  %22 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %23 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @gfs2_statfs_sync(i32 %24, i32 0)
  %26 = load i64, i64* %7, align 8
  store i64 %26, i64* %4, align 8
  br label %27

27:                                               ; preds = %21, %18, %11
  %28 = load i64, i64* %4, align 8
  ret i64 %28
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @gfs2_statfs_sync(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
