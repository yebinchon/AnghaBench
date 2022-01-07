; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_root.c_autofs_root_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_root.c_autofs_root_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.autofs_dir_ent = type { i8*, i32, i32, i32 }
%struct.autofs_dirhash = type { i32 }
%struct.autofs_sb_info = type { %struct.autofs_dirhash }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@DT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32 (i8*, i8*, i32, i32, i32, i32)*)* @autofs_root_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_root_readdir(%struct.file* %0, i8* %1, i32 (i8*, i8*, i32, i32, i32, i32)* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i8*, i8*, i32, i32, i32, i32)*, align 8
  %7 = alloca %struct.autofs_dir_ent*, align 8
  %8 = alloca %struct.autofs_dirhash*, align 8
  %9 = alloca %struct.autofs_sb_info*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 (i8*, i8*, i32, i32, i32, i32)* %2, i32 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  store %struct.autofs_dir_ent* null, %struct.autofs_dir_ent** %7, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %10, align 8
  %19 = call i32 (...) @lock_kernel()
  %20 = load %struct.inode*, %struct.inode** %10, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.autofs_sb_info* @autofs_sbi(i32 %22)
  store %struct.autofs_sb_info* %23, %struct.autofs_sb_info** %9, align 8
  %24 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %9, align 8
  %25 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %24, i32 0, i32 0
  store %struct.autofs_dirhash* %25, %struct.autofs_dirhash** %8, align 8
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  switch i32 %29, label %62 [
    i32 0, label %30
    i32 1, label %46
  ]

30:                                               ; preds = %3
  %31 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.inode*, %struct.inode** %10, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DT_DIR, align 4
  %38 = call i32 %31(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 %33, i32 %36, i32 %37)
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %104

41:                                               ; preds = %30
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %12, align 4
  %44 = load %struct.file*, %struct.file** %4, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %3, %41
  %47 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.inode*, %struct.inode** %10, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DT_DIR, align 4
  %54 = call i32 %47(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, i32 %49, i32 %52, i32 %53)
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %104

57:                                               ; preds = %46
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  %60 = load %struct.file*, %struct.file** %4, align 8
  %61 = getelementptr inbounds %struct.file, %struct.file* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %3, %57
  br label %63

63:                                               ; preds = %101, %62
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %11, align 4
  %65 = load %struct.autofs_dirhash*, %struct.autofs_dirhash** %8, align 8
  %66 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %7, align 8
  %67 = call %struct.autofs_dir_ent* @autofs_hash_enum(%struct.autofs_dirhash* %65, i32* %12, %struct.autofs_dir_ent* %66)
  store %struct.autofs_dir_ent* %67, %struct.autofs_dir_ent** %7, align 8
  %68 = icmp ne %struct.autofs_dir_ent* %67, null
  br i1 %68, label %69, label %102

69:                                               ; preds = %63
  %70 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %7, align 8
  %71 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %7, align 8
  %76 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @d_mountpoint(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %101

80:                                               ; preds = %74, %69
  %81 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %7, align 8
  %84 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %7, align 8
  %87 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %7, align 8
  %91 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @DT_UNKNOWN, align 4
  %94 = call i32 %81(i8* %82, i8* %85, i32 %88, i32 %89, i32 %92, i32 %93)
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %80
  br label %104

97:                                               ; preds = %80
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.file*, %struct.file** %4, align 8
  %100 = getelementptr inbounds %struct.file, %struct.file* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %97, %74
  br label %63

102:                                              ; preds = %63
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103, %96, %56, %40
  %105 = call i32 (...) @unlock_kernel()
  ret i32 0
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.autofs_sb_info* @autofs_sbi(i32) #1

declare dso_local %struct.autofs_dir_ent* @autofs_hash_enum(%struct.autofs_dirhash*, i32*, %struct.autofs_dir_ent*) #1

declare dso_local i32 @d_mountpoint(i32) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
