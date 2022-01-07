; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_dir.c_pohmelfs_add_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_dir.c_pohmelfs_add_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pohmelfs_sb = type { i32 }
%struct.pohmelfs_inode = type { i32, i32 }
%struct.qstr = type { i8*, i32, i64 }
%struct.pohmelfs_name = type { i32, i32, i32, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pohmelfs_sb*, %struct.pohmelfs_inode*, %struct.pohmelfs_inode*, %struct.qstr*, i32, i32)* @pohmelfs_add_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pohmelfs_add_dir(%struct.pohmelfs_sb* %0, %struct.pohmelfs_inode* %1, %struct.pohmelfs_inode* %2, %struct.qstr* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pohmelfs_sb*, align 8
  %9 = alloca %struct.pohmelfs_inode*, align 8
  %10 = alloca %struct.pohmelfs_inode*, align 8
  %11 = alloca %struct.qstr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.pohmelfs_name*, align 8
  store %struct.pohmelfs_sb* %0, %struct.pohmelfs_sb** %8, align 8
  store %struct.pohmelfs_inode* %1, %struct.pohmelfs_inode** %9, align 8
  store %struct.pohmelfs_inode* %2, %struct.pohmelfs_inode** %10, align 8
  store %struct.qstr* %3, %struct.qstr** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %14, align 4
  %18 = load %struct.qstr*, %struct.qstr** %11, align 8
  %19 = getelementptr inbounds %struct.qstr, %struct.qstr* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = call %struct.pohmelfs_name* @pohmelfs_name_alloc(i64 %21)
  store %struct.pohmelfs_name* %22, %struct.pohmelfs_name** %15, align 8
  %23 = load %struct.pohmelfs_name*, %struct.pohmelfs_name** %15, align 8
  %24 = icmp ne %struct.pohmelfs_name* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %6
  br label %76

26:                                               ; preds = %6
  %27 = load %struct.pohmelfs_inode*, %struct.pohmelfs_inode** %10, align 8
  %28 = getelementptr inbounds %struct.pohmelfs_inode, %struct.pohmelfs_inode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pohmelfs_name*, %struct.pohmelfs_name** %15, align 8
  %31 = getelementptr inbounds %struct.pohmelfs_name, %struct.pohmelfs_name* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.pohmelfs_name*, %struct.pohmelfs_name** %15, align 8
  %34 = getelementptr inbounds %struct.pohmelfs_name, %struct.pohmelfs_name* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.qstr*, %struct.qstr** %11, align 8
  %36 = getelementptr inbounds %struct.qstr, %struct.qstr* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.pohmelfs_name*, %struct.pohmelfs_name** %15, align 8
  %39 = getelementptr inbounds %struct.pohmelfs_name, %struct.pohmelfs_name* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  %40 = load %struct.qstr*, %struct.qstr** %11, align 8
  %41 = getelementptr inbounds %struct.qstr, %struct.qstr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.pohmelfs_name*, %struct.pohmelfs_name** %15, align 8
  %44 = getelementptr inbounds %struct.pohmelfs_name, %struct.pohmelfs_name* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.pohmelfs_name*, %struct.pohmelfs_name** %15, align 8
  %46 = getelementptr inbounds %struct.pohmelfs_name, %struct.pohmelfs_name* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.qstr*, %struct.qstr** %11, align 8
  %49 = getelementptr inbounds %struct.qstr, %struct.qstr* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @sprintf(i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %50)
  %52 = load %struct.pohmelfs_inode*, %struct.pohmelfs_inode** %9, align 8
  %53 = getelementptr inbounds %struct.pohmelfs_inode, %struct.pohmelfs_inode* %52, i32 0, i32 0
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.pohmelfs_inode*, %struct.pohmelfs_inode** %9, align 8
  %56 = load %struct.pohmelfs_name*, %struct.pohmelfs_name** %15, align 8
  %57 = call i32 @pohmelfs_insert_name(%struct.pohmelfs_inode* %55, %struct.pohmelfs_name* %56)
  store i32 %57, i32* %14, align 4
  %58 = load %struct.pohmelfs_inode*, %struct.pohmelfs_inode** %9, align 8
  %59 = getelementptr inbounds %struct.pohmelfs_inode, %struct.pohmelfs_inode* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %26
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @EEXIST, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %73

69:                                               ; preds = %63
  %70 = load %struct.pohmelfs_name*, %struct.pohmelfs_name** %15, align 8
  %71 = call i32 @kfree(%struct.pohmelfs_name* %70)
  br label %72

72:                                               ; preds = %69, %26
  store i32 0, i32* %7, align 4
  br label %78

73:                                               ; preds = %68
  %74 = load %struct.pohmelfs_name*, %struct.pohmelfs_name** %15, align 8
  %75 = call i32 @kfree(%struct.pohmelfs_name* %74)
  br label %76

76:                                               ; preds = %73, %25
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %72
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local %struct.pohmelfs_name* @pohmelfs_name_alloc(i64) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pohmelfs_insert_name(%struct.pohmelfs_inode*, %struct.pohmelfs_name*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.pohmelfs_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
