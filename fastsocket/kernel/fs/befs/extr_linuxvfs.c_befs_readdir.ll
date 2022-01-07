; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_linuxvfs.c_befs_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_linuxvfs.c_befs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.inode* }
%struct.TYPE_8__ = type { i8* }
%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@BEFS_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"---> befs_readdir() name %s, inode %ld, filp->f_pos %Ld\00", align 1
@BEFS_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"<--- befs_readdir() ERROR\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"IO error reading %s (inode %lu)\00", align 1
@EIO = common dso_local global i32 0, align 4
@BEFS_BT_END = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"<--- befs_readdir() END\00", align 1
@BEFS_BT_EMPTY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"<--- befs_readdir() Empty directory\00", align 1
@DT_UNKNOWN = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"<--- befs_readdir() filp->f_pos %Ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32 (i8*, i8*, i64, i32, i32, i8)*)* @befs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @befs_readdir(%struct.file* %0, i8* %1, i32 (i8*, i8*, i64, i32, i32, i8)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i8*, i8*, i64, i32, i32, i8)*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (i8*, i8*, i64, i32, i32, i8)* %2, i32 (i8*, i8*, i64, i32, i32, i8)** %7, align 8
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %8, align 8
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = load %struct.super_block*, %struct.super_block** %28, align 8
  store %struct.super_block* %29, %struct.super_block** %9, align 8
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = call %struct.TYPE_12__* @BEFS_I(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32* %33, i32** %10, align 8
  %34 = load i32, i32* @BEFS_NAME_LEN, align 4
  %35 = add nsw i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %15, align 8
  %38 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %16, align 8
  %39 = load %struct.file*, %struct.file** %5, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %19, align 8
  %46 = load %struct.super_block*, %struct.super_block** %9, align 8
  %47 = load i8*, i8** %19, align 8
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.file*, %struct.file** %5, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %46, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %47, i32 %50, i32 %53)
  %55 = load %struct.super_block*, %struct.super_block** %9, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load %struct.file*, %struct.file** %5, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @BEFS_NAME_LEN, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i32 @befs_btree_read(%struct.super_block* %55, i32* %56, i32 %59, i32 %61, i8* %38, i64* %13, i64* %11)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @BEFS_ERR, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %3
  %67 = load %struct.super_block*, %struct.super_block** %9, align 8
  %68 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.super_block*, %struct.super_block** %9, align 8
  %70 = load i8*, i8** %19, align 8
  %71 = load %struct.inode*, %struct.inode** %8, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @befs_error(%struct.super_block* %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %70, i32 %73)
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %146

77:                                               ; preds = %3
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @BEFS_BT_END, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load %struct.super_block*, %struct.super_block** %9, align 8
  %83 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %146

84:                                               ; preds = %77
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @BEFS_BT_EMPTY, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load %struct.super_block*, %struct.super_block** %9, align 8
  %90 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %89, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %146

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92
  %94 = load i8, i8* @DT_UNKNOWN, align 1
  store i8 %94, i8* %14, align 1
  %95 = load %struct.super_block*, %struct.super_block** %9, align 8
  %96 = call %struct.TYPE_11__* @BEFS_SB(%struct.super_block* %95)
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %125

100:                                              ; preds = %93
  %101 = load %struct.super_block*, %struct.super_block** %9, align 8
  %102 = load i64, i64* %13, align 8
  %103 = call i32 @befs_utf2nls(%struct.super_block* %101, i8* %38, i64 %102, i8** %17, i32* %18)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load %struct.super_block*, %struct.super_block** %9, align 8
  %108 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %146

110:                                              ; preds = %100
  %111 = load i32 (i8*, i8*, i64, i32, i32, i8)*, i32 (i8*, i8*, i64, i32, i32, i8)** %7, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = load i8*, i8** %17, align 8
  %114 = load i32, i32* %18, align 4
  %115 = sext i32 %114 to i64
  %116 = load %struct.file*, %struct.file** %5, align 8
  %117 = getelementptr inbounds %struct.file, %struct.file* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i64, i64* %11, align 8
  %120 = trunc i64 %119 to i32
  %121 = load i8, i8* %14, align 1
  %122 = call i32 %111(i8* %112, i8* %113, i64 %115, i32 %118, i32 %120, i8 zeroext %121)
  store i32 %122, i32* %12, align 4
  %123 = load i8*, i8** %17, align 8
  %124 = call i32 @kfree(i8* %123)
  br label %136

125:                                              ; preds = %93
  %126 = load i32 (i8*, i8*, i64, i32, i32, i8)*, i32 (i8*, i8*, i64, i32, i32, i8)** %7, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = load i64, i64* %13, align 8
  %129 = load %struct.file*, %struct.file** %5, align 8
  %130 = getelementptr inbounds %struct.file, %struct.file* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i64, i64* %11, align 8
  %133 = trunc i64 %132 to i32
  %134 = load i8, i8* %14, align 1
  %135 = call i32 %126(i8* %127, i8* %38, i64 %128, i32 %131, i32 %133, i8 zeroext %134)
  store i32 %135, i32* %12, align 4
  br label %136

136:                                              ; preds = %125, %110
  %137 = load %struct.file*, %struct.file** %5, align 8
  %138 = getelementptr inbounds %struct.file, %struct.file* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  %141 = load %struct.super_block*, %struct.super_block** %9, align 8
  %142 = load %struct.file*, %struct.file** %5, align 8
  %143 = getelementptr inbounds %struct.file, %struct.file* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %141, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %144)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %146

146:                                              ; preds = %136, %106, %88, %81, %66
  %147 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local %struct.TYPE_12__* @BEFS_I(%struct.inode*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @befs_debug(%struct.super_block*, i8*, ...) #1

declare dso_local i32 @befs_btree_read(%struct.super_block*, i32*, i32, i32, i8*, i64*, i64*) #1

declare dso_local i32 @befs_error(%struct.super_block*, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_11__* @BEFS_SB(%struct.super_block*) #1

declare dso_local i32 @befs_utf2nls(%struct.super_block*, i8*, i64, i8**, i32*) #1

declare dso_local i32 @kfree(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
