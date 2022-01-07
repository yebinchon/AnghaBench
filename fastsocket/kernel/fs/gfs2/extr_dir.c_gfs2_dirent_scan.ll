; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dirent_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dirent_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_dirent = type { i32 }
%struct.inode = type { i32 }
%struct.qstr = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfs2_dirent* (%struct.inode*, i8*, i32, i32 (%struct.gfs2_dirent*, %struct.qstr*, i8*)*, %struct.qstr*, i8*)* @gfs2_dirent_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfs2_dirent* @gfs2_dirent_scan(%struct.inode* %0, i8* %1, i32 %2, i32 (%struct.gfs2_dirent*, %struct.qstr*, i8*)* %3, %struct.qstr* %4, i8* %5) #0 {
  %7 = alloca %struct.gfs2_dirent*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (%struct.gfs2_dirent*, %struct.qstr*, i8*)*, align 8
  %12 = alloca %struct.qstr*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.gfs2_dirent*, align 8
  %15 = alloca %struct.gfs2_dirent*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 (%struct.gfs2_dirent*, %struct.qstr*, i8*)* %3, i32 (%struct.gfs2_dirent*, %struct.qstr*, i8*)** %11, align 8
  store %struct.qstr* %4, %struct.qstr** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %18, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @gfs2_dirent_offset(i8* %19)
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %18, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  br label %101

24:                                               ; preds = %6
  %25 = load i32, i32* %18, align 4
  store i32 %25, i32* %16, align 4
  store %struct.gfs2_dirent* null, %struct.gfs2_dirent** %15, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %16, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr i8, i8* %26, i64 %28
  %30 = bitcast i8* %29 to %struct.gfs2_dirent*
  store %struct.gfs2_dirent* %30, %struct.gfs2_dirent** %14, align 8
  %31 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %14, align 8
  %32 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be16_to_cpu(i32 %33)
  store i32 %34, i32* %17, align 4
  %35 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %14, align 8
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @gfs2_check_dirent(%struct.gfs2_dirent* %35, i32 %36, i32 %37, i32 %38, i32 1)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %24
  br label %101

42:                                               ; preds = %24
  br label %43

43:                                               ; preds = %79, %42
  %44 = load i32 (%struct.gfs2_dirent*, %struct.qstr*, i8*)*, i32 (%struct.gfs2_dirent*, %struct.qstr*, i8*)** %11, align 8
  %45 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %14, align 8
  %46 = load %struct.qstr*, %struct.qstr** %12, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = call i32 %44(%struct.gfs2_dirent* %45, %struct.qstr* %46, i8* %47)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %80

52:                                               ; preds = %43
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* %16, align 4
  %55 = add i32 %54, %53
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %80

60:                                               ; preds = %52
  %61 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %14, align 8
  store %struct.gfs2_dirent* %61, %struct.gfs2_dirent** %15, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %16, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr i8, i8* %62, i64 %64
  %66 = bitcast i8* %65 to %struct.gfs2_dirent*
  store %struct.gfs2_dirent* %66, %struct.gfs2_dirent** %14, align 8
  %67 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %14, align 8
  %68 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @be16_to_cpu(i32 %69)
  store i32 %70, i32* %17, align 4
  %71 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %14, align 8
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i64 @gfs2_check_dirent(%struct.gfs2_dirent* %71, i32 %72, i32 %73, i32 %74, i32 0)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %60
  br label %101

78:                                               ; preds = %60
  br label %79

79:                                               ; preds = %78
  br i1 true, label %43, label %80

80:                                               ; preds = %79, %59, %51
  %81 = load i32, i32* %18, align 4
  switch i32 %81, label %94 [
    i32 0, label %82
    i32 1, label %83
    i32 2, label %85
  ]

82:                                               ; preds = %80
  store %struct.gfs2_dirent* null, %struct.gfs2_dirent** %7, align 8
  br label %108

83:                                               ; preds = %80
  %84 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %14, align 8
  store %struct.gfs2_dirent* %84, %struct.gfs2_dirent** %7, align 8
  br label %108

85:                                               ; preds = %80
  %86 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %15, align 8
  %87 = icmp ne %struct.gfs2_dirent* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %15, align 8
  br label %92

90:                                               ; preds = %85
  %91 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %14, align 8
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi %struct.gfs2_dirent* [ %89, %88 ], [ %91, %90 ]
  store %struct.gfs2_dirent* %93, %struct.gfs2_dirent** %7, align 8
  br label %108

94:                                               ; preds = %80
  %95 = load i32, i32* %18, align 4
  %96 = icmp sgt i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @BUG_ON(i32 %97)
  %99 = load i32, i32* %18, align 4
  %100 = call %struct.gfs2_dirent* @ERR_PTR(i32 %99)
  store %struct.gfs2_dirent* %100, %struct.gfs2_dirent** %7, align 8
  br label %108

101:                                              ; preds = %77, %41, %23
  %102 = load %struct.inode*, %struct.inode** %8, align 8
  %103 = call i32 @GFS2_I(%struct.inode* %102)
  %104 = call i32 @gfs2_consist_inode(i32 %103)
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  %107 = call %struct.gfs2_dirent* @ERR_PTR(i32 %106)
  store %struct.gfs2_dirent* %107, %struct.gfs2_dirent** %7, align 8
  br label %108

108:                                              ; preds = %101, %94, %92, %83, %82
  %109 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %7, align 8
  ret %struct.gfs2_dirent* %109
}

declare dso_local i32 @gfs2_dirent_offset(i8*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @gfs2_check_dirent(%struct.gfs2_dirent*, i32, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.gfs2_dirent* @ERR_PTR(i32) #1

declare dso_local i32 @gfs2_consist_inode(i32) #1

declare dso_local i32 @GFS2_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
