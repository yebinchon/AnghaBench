; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_online.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"et\00", align 1
@ZFS_ONLINE_EXPAND = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"missing pool name\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"missing device name\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@VDEV_STATE_HEALTHY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [60 x i8] c"warning: device '%s' onlined, but remains in faulted state\0A\00", align 1
@VDEV_STATE_FAULTED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [47 x i8] c"use 'zpool clear' to restore a faulted device\0A\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"use 'zpool replace' to replace devices that are no longer present\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_online(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %31, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %31 [
    i32 101, label %20
    i32 116, label %24
    i32 63, label %24
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @ZFS_ONLINE_EXPAND, align 4
  %22 = load i32, i32* %12, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %12, align 4
  br label %31

24:                                               ; preds = %18, %18
  %25 = load i32, i32* @stderr, align 4
  %26 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @optopt, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* %26, i32 %27)
  %29 = load i32, i32* @B_FALSE, align 4
  %30 = call i32 @usage(i32 %29)
  br label %31

31:                                               ; preds = %24, %18, %20
  br label %13

32:                                               ; preds = %13
  %33 = load i64, i64* @optind, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %4, align 4
  %38 = load i64, i64* @optind, align 8
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 %38
  store i8** %40, i8*** %5, align 8
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %43, label %49

43:                                               ; preds = %32
  %44 = load i32, i32* @stderr, align 4
  %45 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* %45)
  %47 = load i32, i32* @B_FALSE, align 4
  %48 = call i32 @usage(i32 %47)
  br label %49

49:                                               ; preds = %43, %32
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* @stderr, align 4
  %54 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* %54)
  %56 = load i32, i32* @B_FALSE, align 4
  %57 = call i32 @usage(i32 %56)
  br label %58

58:                                               ; preds = %52, %49
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %8, align 8
  %62 = load i32, i32* @g_zfs, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = call i32* @zpool_open(i32 %62, i8* %63)
  store i32* %64, i32** %9, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %114

67:                                               ; preds = %58
  store i32 1, i32* %7, align 4
  br label %68

68:                                               ; preds = %107, %67
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %110

72:                                               ; preds = %68
  %73 = load i32*, i32** %9, align 8
  %74 = load i8**, i8*** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i64 @zpool_vdev_online(i32* %73, i8* %78, i32 %79, i64* %11)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %72
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* @VDEV_STATE_HEALTHY, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %82
  %87 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  %88 = load i8**, i8*** %5, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 (i8*, ...) @printf(i8* %87, i8* %92)
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* @VDEV_STATE_FAULTED, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %86
  %98 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %99 = call i32 (i8*, ...) @printf(i8* %98)
  br label %103

100:                                              ; preds = %86
  %101 = call i8* @gettext(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0))
  %102 = call i32 (i8*, ...) @printf(i8* %101)
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103, %82
  br label %106

105:                                              ; preds = %72
  store i32 1, i32* %10, align 4
  br label %106

106:                                              ; preds = %105, %104
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %68

110:                                              ; preds = %68
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @zpool_close(i32* %111)
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %110, %66
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32* @zpool_open(i32, i8*) #1

declare dso_local i64 @zpool_vdev_online(i32*, i8*, i32, i64*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @zpool_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
