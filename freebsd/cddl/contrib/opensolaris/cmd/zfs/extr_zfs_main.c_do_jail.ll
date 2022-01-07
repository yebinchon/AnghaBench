; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_do_jail.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_do_jail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"missing argument(s)\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"invalid jail id or name\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32)* @do_jail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_jail(i32 %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* @stderr, align 4
  %15 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @fprintf(i32 %14, i8* %15)
  %17 = load i32, i32* @B_FALSE, align 4
  %18 = call i32 @usage(i32 %17)
  br label %19

19:                                               ; preds = %13, %3
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 3
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, i32* @stderr, align 4
  %24 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @fprintf(i32 %23, i8* %24)
  %26 = load i32, i32* @B_FALSE, align 4
  %27 = call i32 @usage(i32 %26)
  br label %28

28:                                               ; preds = %22, %19
  %29 = load i8**, i8*** %6, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @jail_getid(i8* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load i32, i32* @stderr, align 4
  %37 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 @fprintf(i32 %36, i8* %37)
  %39 = load i32, i32* @B_FALSE, align 4
  %40 = call i32 @usage(i32 %39)
  br label %41

41:                                               ; preds = %35, %28
  %42 = load i32, i32* @g_zfs, align 4
  %43 = load i8**, i8*** %6, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 2
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %47 = call i32* @zfs_open(i32 %42, i8* %45, i32 %46)
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %61

51:                                               ; preds = %41
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @zfs_jail(i32* %52, i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %10, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @zfs_close(i32* %58)
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %51, %50
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @jail_getid(i8*) #1

declare dso_local i32* @zfs_open(i32, i8*, i32) #1

declare dso_local i64 @zfs_jail(i32*, i32, i32) #1

declare dso_local i32 @zfs_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
