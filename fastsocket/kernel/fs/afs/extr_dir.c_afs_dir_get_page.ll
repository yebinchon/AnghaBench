; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_dir.c_afs_dir_get_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_dir.c_afs_dir_get_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.inode = type { i32, i32 }
%struct.key = type { i32 }
%struct.file = type { %struct.key* }

@.str = private unnamed_addr constant [10 x i8] c"{%lu},%lu\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" = -EIO\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.inode*, i64, %struct.key*)* @afs_dir_get_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @afs_dir_get_page(%struct.inode* %0, i64 %1, %struct.key* %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.file, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.key* %2, %struct.key** %7, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.key*, %struct.key** %7, align 8
  store %struct.key* %11, %struct.key** %10, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @_enter(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %15)
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %6, align 8
  %21 = call %struct.page* @read_mapping_page(i32 %19, i64 %20, %struct.file* %9)
  store %struct.page* %21, %struct.page** %8, align 8
  %22 = load %struct.page*, %struct.page** %8, align 8
  %23 = call i32 @IS_ERR(%struct.page* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %3
  %26 = load %struct.page*, %struct.page** %8, align 8
  %27 = call i32 @kmap(%struct.page* %26)
  %28 = load %struct.page*, %struct.page** %8, align 8
  %29 = call i32 @PageChecked(%struct.page* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = load %struct.page*, %struct.page** %8, align 8
  %34 = call i32 @afs_dir_check_page(%struct.inode* %32, %struct.page* %33)
  br label %35

35:                                               ; preds = %31, %25
  %36 = load %struct.page*, %struct.page** %8, align 8
  %37 = call i64 @PageError(%struct.page* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %43

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %3
  %42 = load %struct.page*, %struct.page** %8, align 8
  store %struct.page* %42, %struct.page** %4, align 8
  br label %50

43:                                               ; preds = %39
  %44 = load %struct.page*, %struct.page** %8, align 8
  %45 = call i32 @afs_dir_put_page(%struct.page* %44)
  %46 = call i32 @_leave(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.page* @ERR_PTR(i32 %48)
  store %struct.page* %49, %struct.page** %4, align 8
  br label %50

50:                                               ; preds = %43, %41
  %51 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %51
}

declare dso_local i32 @_enter(i8*, i32, i64) #1

declare dso_local %struct.page* @read_mapping_page(i32, i64, %struct.file*) #1

declare dso_local i32 @IS_ERR(%struct.page*) #1

declare dso_local i32 @kmap(%struct.page*) #1

declare dso_local i32 @PageChecked(%struct.page*) #1

declare dso_local i32 @afs_dir_check_page(%struct.inode*, %struct.page*) #1

declare dso_local i64 @PageError(%struct.page*) #1

declare dso_local i32 @afs_dir_put_page(%struct.page*) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
