; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_p9mode2unixmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_p9mode2unixmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v9fs_session_info = type { i64 }

@P9_DMDIR = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@P9_DMSYMLINK = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@P9_DMSOCKET = common dso_local global i32 0, align 4
@S_IFSOCK = common dso_local global i32 0, align 4
@P9_DMNAMEDPIPE = common dso_local global i32 0, align 4
@S_IFIFO = common dso_local global i32 0, align 4
@P9_DMDEVICE = common dso_local global i32 0, align 4
@S_IFBLK = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@P9_DMSETUID = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@P9_DMSETGID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@P9_DMSETVTX = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v9fs_session_info*, i32)* @p9mode2unixmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9mode2unixmode(%struct.v9fs_session_info* %0, i32 %1) #0 {
  %3 = alloca %struct.v9fs_session_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.v9fs_session_info* %0, %struct.v9fs_session_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, 511
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @P9_DMDIR, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @P9_DMDIR, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @S_IFDIR, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %92

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @P9_DMSYMLINK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %3, align 8
  %24 = call i64 @v9fs_extended(%struct.v9fs_session_info* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @S_IFLNK, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %91

30:                                               ; preds = %22, %17
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @P9_DMSOCKET, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %3, align 8
  %37 = call i64 @v9fs_extended(%struct.v9fs_session_info* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %3, align 8
  %41 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @S_IFSOCK, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %90

48:                                               ; preds = %39, %35, %30
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @P9_DMNAMEDPIPE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %3, align 8
  %55 = call i64 @v9fs_extended(%struct.v9fs_session_info* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %3, align 8
  %59 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @S_IFIFO, align 4
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  br label %89

66:                                               ; preds = %57, %53, %48
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @P9_DMDEVICE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %3, align 8
  %73 = call i64 @v9fs_extended(%struct.v9fs_session_info* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %3, align 8
  %77 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* @S_IFBLK, align 4
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  br label %88

84:                                               ; preds = %75, %71, %66
  %85 = load i32, i32* @S_IFREG, align 4
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %84, %80
  br label %89

89:                                               ; preds = %88, %62
  br label %90

90:                                               ; preds = %89, %44
  br label %91

91:                                               ; preds = %90, %26
  br label %92

92:                                               ; preds = %91, %13
  %93 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %3, align 8
  %94 = call i64 @v9fs_extended(%struct.v9fs_session_info* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %127

96:                                               ; preds = %92
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @P9_DMSETUID, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* @P9_DMSETUID, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i32, i32* @S_ISUID, align 4
  %104 = load i32, i32* %5, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %102, %96
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @P9_DMSETGID, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* @P9_DMSETGID, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i32, i32* @S_ISGID, align 4
  %114 = load i32, i32* %5, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %112, %106
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @P9_DMSETVTX, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* @P9_DMSETVTX, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i32, i32* @S_ISVTX, align 4
  %124 = load i32, i32* %5, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %122, %116
  br label %127

127:                                              ; preds = %126, %92
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i64 @v9fs_extended(%struct.v9fs_session_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
