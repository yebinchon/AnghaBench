; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_upgrade_list_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_upgrade_list_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@ZFS_PROP_VERSION = common dso_local global i32 0, align 4
@ZPL_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [119 x i8] c"The following filesystems are formatted using a newer software version and\0Acannot be accessed on the current system.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [229 x i8] c"The following filesystems are out of date, and can be upgraded.  After being\0Aupgraded, these filesystems (and any 'zfs send' streams generated from\0Asubsequent snapshots) will no longer be accessible by older software versions.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"VER  FILESYSTEM\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"---  ------------\0A\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"%2u   %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @upgrade_list_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upgrade_list_callback(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @ZFS_PROP_VERSION, align 4
  %12 = call i32 @zfs_prop_get_int(i32* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @ZPL_VERSION, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %30, label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @ZPL_VERSION, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %26, %17
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i8* @gettext(i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str, i64 0, i64 0))
  store i8* %36, i8** %7, align 8
  br label %39

37:                                               ; preds = %30
  %38 = call i8* @gettext(i8* getelementptr inbounds ([229 x i8], [229 x i8]* @.str.1, i64 0, i64 0))
  store i8* %38, i8** %7, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @puts(i8* %45)
  %47 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i32 (i8*, ...) @printf(i8* %47)
  %49 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %50 = call i32 (i8*, ...) @printf(i8* %49)
  %51 = load i64, i64* @B_TRUE, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %44, %39
  %55 = load i32, i32* %6, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = call i8* @zfs_get_name(i32* %56)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %55, i8* %57)
  br label %59

59:                                               ; preds = %54, %26, %21
  ret i32 0
}

declare dso_local i32 @zfs_prop_get_int(i32*, i32) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @zfs_get_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
