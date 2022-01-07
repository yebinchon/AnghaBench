; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_build_path_to_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_build_path_to_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_sb_info = type { i32, i32, i32 }
%struct.cifs_tcon = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SMB_SHARE_IS_IN_DFS = common dso_local global i32 0, align 4
@MAX_TREE_SIZE = common dso_local global i64 0, align 8
@CIFS_MOUNT_POSIX_PATHS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cifs_build_path_to_root(%struct.cifs_sb_info* %0, %struct.cifs_tcon* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cifs_sb_info*, align 8
  %5 = alloca %struct.cifs_tcon*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.cifs_sb_info* %0, %struct.cifs_sb_info** %4, align 8
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %5, align 8
  %10 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %11 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  store i8* null, i8** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kmalloc(i32 1, i32 %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %22, align 1
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i8*, i8** %8, align 8
  store i8* %24, i8** %3, align 8
  br label %108

25:                                               ; preds = %2
  %26 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %27 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SMB_SHARE_IS_IN_DFS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %34 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* @MAX_TREE_SIZE, align 8
  %37 = add nsw i64 %36, 1
  %38 = call i32 @strnlen(i32 %35, i64 %37)
  store i32 %38, i32* %7, align 4
  br label %40

39:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %32
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %41, %42
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @kmalloc(i32 %44, i32 %45)
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i8*, i8** %8, align 8
  store i8* %50, i8** %3, align 8
  br label %108

51:                                               ; preds = %40
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %91

54:                                               ; preds = %51
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %57 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @strncpy(i8* %55, i32 %58, i32 %59)
  %61 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %62 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CIFS_MOUNT_POSIX_PATHS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %54
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %86, %67
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %68
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 92
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  store i8 47, i8* %84, align 1
  br label %85

85:                                               ; preds = %80, %72
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %68

89:                                               ; preds = %68
  br label %90

90:                                               ; preds = %89, %54
  br label %91

91:                                               ; preds = %90, %51
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %97 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @strncpy(i8* %95, i32 %98, i32 %99)
  %101 = load i8*, i8** %8, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %101, i64 %105
  store i8 0, i8* %106, align 1
  %107 = load i8*, i8** %8, align 8
  store i8* %107, i8** %3, align 8
  br label %108

108:                                              ; preds = %91, %49, %23
  %109 = load i8*, i8** %3, align 8
  ret i8* %109
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @strnlen(i32, i64) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
