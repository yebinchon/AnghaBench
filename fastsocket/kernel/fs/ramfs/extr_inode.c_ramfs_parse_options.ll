; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ramfs/extr_inode.c_ramfs_parse_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ramfs/extr_inode.c_ramfs_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ramfs_mount_opts = type { i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@RAMFS_DEFAULT_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ramfs_mount_opts*)* @ramfs_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ramfs_parse_options(i8* %0, %struct.ramfs_mount_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ramfs_mount_opts*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ramfs_mount_opts* %1, %struct.ramfs_mount_opts** %5, align 8
  %12 = load i32, i32* @MAX_OPT_ARGS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @RAMFS_DEFAULT_MODE, align 4
  %17 = load %struct.ramfs_mount_opts*, %struct.ramfs_mount_opts** %5, align 8
  %18 = getelementptr inbounds %struct.ramfs_mount_opts, %struct.ramfs_mount_opts* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %45, %26, %2
  %20 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %19
  %23 = load i8*, i8** %10, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  br label %19

27:                                               ; preds = %22
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* @tokens, align 4
  %30 = call i32 @match_token(i8* %28, i32 %29, i32* %15)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  switch i32 %31, label %45 [
    i32 128, label %32
  ]

32:                                               ; preds = %27
  %33 = getelementptr inbounds i32, i32* %15, i64 0
  %34 = call i32 @match_octal(i32* %33, i32* %8)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %47

39:                                               ; preds = %32
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @S_IALLUGO, align 4
  %42 = and i32 %40, %41
  %43 = load %struct.ramfs_mount_opts*, %struct.ramfs_mount_opts** %5, align 8
  %44 = getelementptr inbounds %struct.ramfs_mount_opts, %struct.ramfs_mount_opts* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %27, %39
  br label %19

46:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %47

47:                                               ; preds = %46, %36
  %48 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_octal(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
