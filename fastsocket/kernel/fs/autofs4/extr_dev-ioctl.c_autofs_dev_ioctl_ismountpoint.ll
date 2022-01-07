; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_dev-ioctl.c_autofs_dev_ioctl_ismountpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_dev-ioctl.c_autofs_dev_ioctl_ismountpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.autofs_sb_info = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.autofs_dev_ioctl = type { i32, i8*, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.path = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@test_by_type = common dso_local global i32 0, align 4
@test_by_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.autofs_sb_info*, %struct.autofs_dev_ioctl*)* @autofs_dev_ioctl_ismountpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_dev_ioctl_ismountpoint(%struct.file* %0, %struct.autofs_sb_info* %1, %struct.autofs_dev_ioctl* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.autofs_sb_info*, align 8
  %6 = alloca %struct.autofs_dev_ioctl*, align 8
  %7 = alloca %struct.path, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.autofs_sb_info* %1, %struct.autofs_sb_info** %5, align 8
  store %struct.autofs_dev_ioctl* %2, %struct.autofs_dev_ioctl** %6, align 8
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %12, align 4
  %16 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %17 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = icmp ule i64 %19, 32
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %12, align 4
  br label %127

24:                                               ; preds = %3
  %25 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %26 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
  %28 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %29 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %33 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %34 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  store i32 0, i32* %11, align 4
  %37 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %38 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load %struct.file*, %struct.file** %4, align 8
  %42 = icmp ne %struct.file* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %24
  %44 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %45 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %87

48:                                               ; preds = %43, %24
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @autofs_type_any(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %55 = call i32 @kern_path(i8* %53, i32 %54, %struct.path* %7)
  store i32 %55, i32* %12, align 4
  br label %60

56:                                               ; preds = %48
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* @test_by_type, align 4
  %59 = call i32 @find_autofs_mount(i8* %57, %struct.path* %7, i32 %58, i32* %9)
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %127

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 1
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @new_encode_dev(i32 %70)
  store i32 %71, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %72 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %64
  store i32 1, i32* %12, align 4
  %80 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 1
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %79, %64
  br label %115

87:                                               ; preds = %43
  %88 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %89 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %13, align 4
  %93 = load i8*, i8** %8, align 8
  %94 = load i32, i32* @test_by_dev, align 4
  %95 = call i32 @find_autofs_mount(i8* %93, %struct.path* %7, i32 %94, i32* %13)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  br label %127

99:                                               ; preds = %87
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @new_encode_dev(i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @have_submounts(i64 %103)
  store i32 %104, i32* %12, align 4
  %105 = call i64 @follow_down(%struct.path* %7)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 1
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %107, %99
  br label %115

115:                                              ; preds = %114, %86
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %118 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  store i32 %116, i32* %120, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %123 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  store i32 %121, i32* %125, align 4
  %126 = call i32 @path_put(%struct.path* %7)
  br label %127

127:                                              ; preds = %115, %98, %63, %21
  %128 = load i32, i32* %12, align 4
  ret i32 %128
}

declare dso_local i64 @autofs_type_any(i32) #1

declare dso_local i32 @kern_path(i8*, i32, %struct.path*) #1

declare dso_local i32 @find_autofs_mount(i8*, %struct.path*, i32, i32*) #1

declare dso_local i32 @new_encode_dev(i32) #1

declare dso_local i32 @have_submounts(i64) #1

declare dso_local i64 @follow_down(%struct.path*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
