; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_super.c_btrfs_parse_early_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_super.c_btrfs_parse_early_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_devices = type { i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@BTRFS_FS_TREE_OBJECTID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8**, i32*, i32*, %struct.btrfs_fs_devices**)* @btrfs_parse_early_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_parse_early_options(i8* %0, i32 %1, i8* %2, i8** %3, i32* %4, i32* %5, %struct.btrfs_fs_devices** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.btrfs_fs_devices**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.btrfs_fs_devices** %6, %struct.btrfs_fs_devices*** %15, align 8
  %26 = load i32, i32* @MAX_OPT_ARGS, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %16, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %17, align 8
  store i32 0, i32* %22, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %123

33:                                               ; preds = %7
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kstrdup(i8* %34, i32 %35)
  store i8* %36, i8** %19, align 8
  %37 = load i8*, i8** %19, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %123

42:                                               ; preds = %33
  %43 = load i8*, i8** %19, align 8
  store i8* %43, i8** %20, align 8
  br label %44

44:                                               ; preds = %117, %51, %42
  %45 = call i8* @strsep(i8** %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %45, i8** %21, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %118

47:                                               ; preds = %44
  %48 = load i8*, i8** %21, align 8
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  br label %44

52:                                               ; preds = %47
  %53 = load i8*, i8** %21, align 8
  %54 = load i32, i32* @tokens, align 4
  %55 = call i32 @match_token(i8* %53, i32 %54, i32* %29)
  store i32 %55, i32* %25, align 4
  %56 = load i32, i32* %25, align 4
  switch i32 %56, label %116 [
    i32 130, label %57
    i32 129, label %64
    i32 128, label %80
    i32 131, label %96
  ]

57:                                               ; preds = %52
  %58 = load i8**, i8*** %12, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @kfree(i8* %59)
  %61 = getelementptr inbounds i32, i32* %29, i64 0
  %62 = call i8* @match_strdup(i32* %61)
  %63 = load i8**, i8*** %12, align 8
  store i8* %62, i8** %63, align 8
  br label %117

64:                                               ; preds = %52
  store i32 0, i32* %23, align 4
  %65 = getelementptr inbounds i32, i32* %29, i64 0
  %66 = call i32 @match_int(i32* %65, i32* %23)
  store i32 %66, i32* %22, align 4
  %67 = load i32, i32* %22, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %23, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @BTRFS_FS_TREE_OBJECTID, align 4
  %74 = load i32*, i32** %13, align 8
  store i32 %73, i32* %74, align 4
  br label %78

75:                                               ; preds = %69
  %76 = load i32, i32* %23, align 4
  %77 = load i32*, i32** %13, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %72
  br label %79

79:                                               ; preds = %78, %64
  br label %117

80:                                               ; preds = %52
  store i32 0, i32* %23, align 4
  %81 = getelementptr inbounds i32, i32* %29, i64 0
  %82 = call i32 @match_int(i32* %81, i32* %23)
  store i32 %82, i32* %22, align 4
  %83 = load i32, i32* %22, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %23, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @BTRFS_FS_TREE_OBJECTID, align 4
  %90 = load i32*, i32** %14, align 8
  store i32 %89, i32* %90, align 4
  br label %94

91:                                               ; preds = %85
  %92 = load i32, i32* %23, align 4
  %93 = load i32*, i32** %14, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94, %80
  br label %117

96:                                               ; preds = %52
  %97 = getelementptr inbounds i32, i32* %29, i64 0
  %98 = call i8* @match_strdup(i32* %97)
  store i8* %98, i8** %18, align 8
  %99 = load i8*, i8** %18, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %22, align 4
  br label %119

104:                                              ; preds = %96
  %105 = load i8*, i8** %18, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i8*, i8** %11, align 8
  %108 = load %struct.btrfs_fs_devices**, %struct.btrfs_fs_devices*** %15, align 8
  %109 = call i32 @btrfs_scan_one_device(i8* %105, i32 %106, i8* %107, %struct.btrfs_fs_devices** %108)
  store i32 %109, i32* %22, align 4
  %110 = load i8*, i8** %18, align 8
  %111 = call i32 @kfree(i8* %110)
  %112 = load i32, i32* %22, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %119

115:                                              ; preds = %104
  br label %117

116:                                              ; preds = %52
  br label %117

117:                                              ; preds = %116, %115, %95, %79, %57
  br label %44

118:                                              ; preds = %44
  br label %119

119:                                              ; preds = %118, %114, %101
  %120 = load i8*, i8** %20, align 8
  %121 = call i32 @kfree(i8* %120)
  %122 = load i32, i32* %22, align 4
  store i32 %122, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %123

123:                                              ; preds = %119, %39, %32
  %124 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %8, align 4
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kstrdup(i8*, i32) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i8* @match_strdup(i32*) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i32 @btrfs_scan_one_device(i8*, i32, i8*, %struct.btrfs_fs_devices**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
