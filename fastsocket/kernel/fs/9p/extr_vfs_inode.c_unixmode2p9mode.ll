; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_unixmode2p9mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_unixmode2p9mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v9fs_session_info = type { i64 }

@P9_DMDIR = common dso_local global i32 0, align 4
@P9_DMSYMLINK = common dso_local global i32 0, align 4
@P9_DMSOCKET = common dso_local global i32 0, align 4
@P9_DMNAMEDPIPE = common dso_local global i32 0, align 4
@P9_DMDEVICE = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@P9_DMSETUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@P9_DMSETGID = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@P9_DMSETVTX = common dso_local global i32 0, align 4
@P9_DMLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v9fs_session_info*, i32)* @unixmode2p9mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unixmode2p9mode(%struct.v9fs_session_info* %0, i32 %1) #0 {
  %3 = alloca %struct.v9fs_session_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.v9fs_session_info* %0, %struct.v9fs_session_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, 511
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @S_ISDIR(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @P9_DMDIR, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %3, align 8
  %17 = call i64 @v9fs_extended(%struct.v9fs_session_info* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %105

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @S_ISLNK(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @P9_DMSYMLINK, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %3, align 8
  %29 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %65

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @S_ISSOCK(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* @P9_DMSOCKET, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @S_ISFIFO(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @P9_DMNAMEDPIPE, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* %4, align 4
  %50 = call i64 @S_ISBLK(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @P9_DMDEVICE, align 4
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @S_ISCHR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* @P9_DMDEVICE, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %60, %56
  br label %65

65:                                               ; preds = %64, %27
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @S_ISUID, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @S_ISUID, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* @P9_DMSETUID, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %65
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @S_ISGID, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @S_ISGID, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i32, i32* @P9_DMSETGID, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %81, %75
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @S_ISVTX, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @S_ISVTX, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load i32, i32* @P9_DMSETVTX, align 4
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %91, %85
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @P9_DMLINK, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32, i32* @P9_DMLINK, align 4
  %102 = load i32, i32* %5, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %100, %95
  br label %105

105:                                              ; preds = %104, %15
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @v9fs_extended(%struct.v9fs_session_info*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
