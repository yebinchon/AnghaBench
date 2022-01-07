; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_host.c_do_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_host.c_do_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"amfs_host: mounting fs %s on %s\0A\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"No mount point for %s - skipping\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i32*)* @do_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_mount(i32* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.stat, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @dlog(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %12)
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @mkdirs(i8* %14, i32 365)
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @stat(i8* %16, %struct.stat* %10)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @S_IFMT, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @S_IFDIR, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %19, %4
  %27 = load i32, i32* @XLOG_ERROR, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @plog(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @ENOENT, align 4
  store i32 %30, i32* %5, align 4
  br label %37

31:                                               ; preds = %19
  %32 = load i32*, i32** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @mount_nfs_fh(i32* %32, i8* %33, i8* %34, i32* %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %31, %26
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @dlog(i8*, i8*, i8*) #1

declare dso_local i32 @mkdirs(i8*, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @plog(i32, i8*, i8*) #1

declare dso_local i32 @mount_nfs_fh(i32*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
