; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_ioctl.c_setflags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_ioctl.c_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.ubifs_inode = type { i32, i32, i32, i32 }
%struct.ubifs_budget_req = type { i32, i32 }

@FS_APPEND_FL = common dso_local global i32 0, align 4
@FS_IMMUTABLE_FL = common dso_local global i32 0, align 4
@CAP_LINUX_IMMUTABLE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"can't modify inode %lu attributes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @setflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setflags(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubifs_inode*, align 8
  %10 = alloca %struct.ubifs_info*, align 8
  %11 = alloca %struct.ubifs_budget_req, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %12)
  store %struct.ubifs_inode* %13, %struct.ubifs_inode** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %17, align 8
  store %struct.ubifs_info* %18, %struct.ubifs_info** %10, align 8
  %19 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %11, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %11, i32 0, i32 1
  %21 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %22 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 4
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %25 = call i32 @ubifs_budget_space(%struct.ubifs_info* %24, %struct.ubifs_budget_req* %11)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %98

30:                                               ; preds = %2
  %31 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %32 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %35 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ubifs2ioctl(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = xor i32 %38, %39
  %41 = load i32, i32* @FS_APPEND_FL, align 4
  %42 = load i32, i32* @FS_IMMUTABLE_FL, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %30
  %47 = load i32, i32* @CAP_LINUX_IMMUTABLE, align 4
  %48 = call i32 @capable(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @EPERM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %87

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %30
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @ioctl2ubifs(i32 %55)
  %57 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %58 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = call i32 @ubifs_set_inode_flags(%struct.inode* %59)
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = call i32 @ubifs_current_time(%struct.inode* %61)
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %66 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %8, align 4
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = call i32 @mark_inode_dirty_sync(%struct.inode* %68)
  %70 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %71 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %70, i32 0, i32 1
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %54
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %77 = call i32 @ubifs_release_budget(%struct.ubifs_info* %76, %struct.ubifs_budget_req* %11)
  br label %78

78:                                               ; preds = %75, %54
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = call i64 @IS_SYNC(%struct.inode* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load %struct.inode*, %struct.inode** %4, align 8
  %84 = call i32 @write_inode_now(%struct.inode* %83, i32 1)
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %3, align 4
  br label %98

87:                                               ; preds = %50
  %88 = load %struct.inode*, %struct.inode** %4, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @ubifs_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %93 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %92, i32 0, i32 1
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %96 = call i32 @ubifs_release_budget(%struct.ubifs_info* %95, %struct.ubifs_budget_req* %11)
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %87, %85, %28
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubifs2ioctl(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @ioctl2ubifs(i32) #1

declare dso_local i32 @ubifs_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @ubifs_current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty_sync(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @write_inode_now(%struct.inode*, i32) #1

declare dso_local i32 @ubifs_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
