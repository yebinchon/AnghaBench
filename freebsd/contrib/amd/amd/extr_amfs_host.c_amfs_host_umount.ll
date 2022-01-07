; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_host.c_amfs_host_umount.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_host.c_amfs_host_umount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i8* }

@MFF_ON_AUTOFS = common dso_local global i32 0, align 4
@AMU_UMOUNT_AUTOFS = common dso_local global i32 0, align 4
@mnttab_file_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"amfs_host: unmounts %s\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Tree unmount of %s failed: %m\00", align 1
@amd_state = common dso_local global i64 0, align 8
@Finishing = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*)* @amfs_host_umount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amfs_host_umount(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MFF_ON_AUTOFS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @AMU_UMOUNT_AUTOFS, align 4
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @mnttab_file_name, align 4
  %28 = call %struct.TYPE_9__* @read_mtab(i32 %26, i32 %27)
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %9, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %30

30:                                               ; preds = %33, %22
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = icmp ne %struct.TYPE_9__* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %10, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %6, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %5, align 8
  br label %30

42:                                               ; preds = %30
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %9, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %5, align 8
  br label %45

45:                                               ; preds = %103, %42
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = icmp ne %struct.TYPE_9__* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i1 [ false, %45 ], [ %51, %48 ]
  br i1 %53, label %54, label %107

54:                                               ; preds = %52
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %11, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %11, align 8
  %64 = call i64 @directory_prefix(i32 %62, i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %102

66:                                               ; preds = %54
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @dlog(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %67)
  %69 = load i8*, i8** %11, align 8
  %70 = load i32, i32* @mnttab_file_name, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @UMOUNT_FS(i8* %69, i32 %70, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %66
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @ENOENT, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %82, %78, %75
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @EBUSY, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* @errno, align 4
  %90 = load i32, i32* @XLOG_ERROR, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @plog(i32 %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %88, %84
  br label %101

98:                                               ; preds = %66
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 @rmdirs(i8* %99)
  br label %101

101:                                              ; preds = %98, %97
  br label %102

102:                                              ; preds = %101, %54
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  store %struct.TYPE_9__* %106, %struct.TYPE_9__** %5, align 8
  br label %45

107:                                              ; preds = %52
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %109 = call i32 @discard_mntlist(%struct.TYPE_9__* %108)
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %107
  %113 = load i64, i64* @amd_state, align 8
  %114 = load i64, i64* @Finishing, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = load i32*, i32** %3, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %119 = call i32 @amfs_host_mount(i32* %117, %struct.TYPE_10__* %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %116
  %123 = load i32, i32* @EBUSY, align 4
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %122, %116
  br label %125

125:                                              ; preds = %124, %112, %107
  %126 = load i32, i32* %8, align 4
  ret i32 %126
}

declare dso_local %struct.TYPE_9__* @read_mtab(i32, i32) #1

declare dso_local i64 @directory_prefix(i32, i8*) #1

declare dso_local i32 @dlog(i8*, i8*) #1

declare dso_local i32 @UMOUNT_FS(i8*, i32, i32) #1

declare dso_local i32 @plog(i32, i8*, i8*) #1

declare dso_local i32 @rmdirs(i8*) #1

declare dso_local i32 @discard_mntlist(%struct.TYPE_9__*) #1

declare dso_local i32 @amfs_host_mount(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
