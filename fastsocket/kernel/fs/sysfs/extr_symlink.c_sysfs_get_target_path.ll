; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_symlink.c_sysfs_get_target_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_symlink.c_sysfs_get_target_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_dirent = type { %struct.sysfs_dirent*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"../\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysfs_dirent*, %struct.sysfs_dirent*, i8*)* @sysfs_get_target_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysfs_get_target_path(%struct.sysfs_dirent* %0, %struct.sysfs_dirent* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sysfs_dirent*, align 8
  %6 = alloca %struct.sysfs_dirent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sysfs_dirent*, align 8
  %9 = alloca %struct.sysfs_dirent*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sysfs_dirent* %0, %struct.sysfs_dirent** %5, align 8
  store %struct.sysfs_dirent* %1, %struct.sysfs_dirent** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  store %struct.sysfs_dirent* %14, %struct.sysfs_dirent** %8, align 8
  br label %15

15:                                               ; preds = %44, %3
  %16 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %17 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %16, i32 0, i32 0
  %18 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %17, align 8
  %19 = icmp ne %struct.sysfs_dirent* %18, null
  br i1 %19, label %20, label %52

20:                                               ; preds = %15
  %21 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %22 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %21, i32 0, i32 0
  %23 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %22, align 8
  store %struct.sysfs_dirent* %23, %struct.sysfs_dirent** %9, align 8
  br label %24

24:                                               ; preds = %35, %20
  %25 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %26 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %25, i32 0, i32 0
  %27 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %26, align 8
  %28 = icmp ne %struct.sysfs_dirent* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %31 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %32 = icmp ne %struct.sysfs_dirent* %30, %31
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i1 [ false, %24 ], [ %32, %29 ]
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %37 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %36, i32 0, i32 0
  %38 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %37, align 8
  store %struct.sysfs_dirent* %38, %struct.sysfs_dirent** %9, align 8
  br label %24

39:                                               ; preds = %33
  %40 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %41 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %42 = icmp eq %struct.sysfs_dirent* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %52

44:                                               ; preds = %39
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @strcpy(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 3
  store i8* %48, i8** %10, align 8
  %49 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %50 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %49, i32 0, i32 0
  %51 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %50, align 8
  store %struct.sysfs_dirent* %51, %struct.sysfs_dirent** %8, align 8
  br label %15

52:                                               ; preds = %43, %15
  %53 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  store %struct.sysfs_dirent* %53, %struct.sysfs_dirent** %9, align 8
  br label %54

54:                                               ; preds = %65, %52
  %55 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %56 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %55, i32 0, i32 0
  %57 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %56, align 8
  %58 = icmp ne %struct.sysfs_dirent* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %61 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %62 = icmp ne %struct.sysfs_dirent* %60, %61
  br label %63

63:                                               ; preds = %59, %54
  %64 = phi i1 [ false, %54 ], [ %62, %59 ]
  br i1 %64, label %65, label %76

65:                                               ; preds = %63
  %66 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %67 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @strlen(i32 %68)
  %70 = add nsw i32 %69, 1
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %11, align 4
  %73 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %74 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %73, i32 0, i32 0
  %75 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %74, align 8
  store %struct.sysfs_dirent* %75, %struct.sysfs_dirent** %9, align 8
  br label %54

76:                                               ; preds = %63
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %77, 2
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %142

82:                                               ; preds = %76
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %11, align 4
  %85 = load i8*, i8** %10, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %89, %91
  %93 = load i32, i32* @PATH_MAX, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp sgt i64 %92, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %82
  %97 = load i32, i32* @ENAMETOOLONG, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %142

99:                                               ; preds = %82
  %100 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  store %struct.sysfs_dirent* %100, %struct.sysfs_dirent** %9, align 8
  br label %101

101:                                              ; preds = %137, %99
  %102 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %103 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %102, i32 0, i32 0
  %104 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %103, align 8
  %105 = icmp ne %struct.sysfs_dirent* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %108 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %109 = icmp ne %struct.sysfs_dirent* %107, %108
  br label %110

110:                                              ; preds = %106, %101
  %111 = phi i1 [ false, %101 ], [ %109, %106 ]
  br i1 %111, label %112, label %141

112:                                              ; preds = %110
  %113 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %114 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @strlen(i32 %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %11, align 4
  %119 = sub nsw i32 %118, %117
  store i32 %119, i32* %11, align 4
  %120 = load i8*, i8** %10, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %125 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @strncpy(i8* %123, i32 %126, i32 %127)
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %112
  %132 = load i8*, i8** %10, align 8
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  store i8 47, i8* %136, align 1
  br label %137

137:                                              ; preds = %131, %112
  %138 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %139 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %138, i32 0, i32 0
  %140 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %139, align 8
  store %struct.sysfs_dirent* %140, %struct.sysfs_dirent** %9, align 8
  br label %101

141:                                              ; preds = %110
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %141, %96, %79
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
