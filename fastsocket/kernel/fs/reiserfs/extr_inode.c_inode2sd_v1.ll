; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_inode2sd_v1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_inode2sd_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.stat_data_v1 = type { i32 }
%struct.TYPE_8__ = type { i32 }

@SD_V1_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.inode*, i32)* @inode2sd_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inode2sd_v1(i8* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat_data_v1*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.stat_data_v1*
  store %struct.stat_data_v1* %9, %struct.stat_data_v1** %7, align 8
  %10 = load %struct.stat_data_v1*, %struct.stat_data_v1** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @set_sd_v1_mode(%struct.stat_data_v1* %10, i32 %13)
  %15 = load %struct.stat_data_v1*, %struct.stat_data_v1** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @set_sd_v1_uid(%struct.stat_data_v1* %15, i32 %18)
  %20 = load %struct.stat_data_v1*, %struct.stat_data_v1** %7, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @set_sd_v1_gid(%struct.stat_data_v1* %20, i32 %23)
  %25 = load %struct.stat_data_v1*, %struct.stat_data_v1** %7, align 8
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @set_sd_v1_nlink(%struct.stat_data_v1* %25, i32 %28)
  %30 = load %struct.stat_data_v1*, %struct.stat_data_v1** %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @set_sd_v1_size(%struct.stat_data_v1* %30, i32 %31)
  %33 = load %struct.stat_data_v1*, %struct.stat_data_v1** %7, align 8
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @set_sd_v1_atime(%struct.stat_data_v1* %33, i32 %37)
  %39 = load %struct.stat_data_v1*, %struct.stat_data_v1** %7, align 8
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @set_sd_v1_ctime(%struct.stat_data_v1* %39, i32 %43)
  %45 = load %struct.stat_data_v1*, %struct.stat_data_v1** %7, align 8
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @set_sd_v1_mtime(%struct.stat_data_v1* %45, i32 %49)
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @S_ISCHR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %3
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @S_ISBLK(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56, %3
  %63 = load %struct.stat_data_v1*, %struct.stat_data_v1** %7, align 8
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @new_encode_dev(i32 %66)
  %68 = call i32 @set_sd_v1_rdev(%struct.stat_data_v1* %63, i32 %67)
  br label %75

69:                                               ; preds = %56
  %70 = load %struct.stat_data_v1*, %struct.stat_data_v1** %7, align 8
  %71 = load %struct.inode*, %struct.inode** %5, align 8
  %72 = load i32, i32* @SD_V1_SIZE, align 4
  %73 = call i32 @to_fake_used_blocks(%struct.inode* %71, i32 %72)
  %74 = call i32 @set_sd_v1_blocks(%struct.stat_data_v1* %70, i32 %73)
  br label %75

75:                                               ; preds = %69, %62
  %76 = load %struct.stat_data_v1*, %struct.stat_data_v1** %7, align 8
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = call %struct.TYPE_8__* @REISERFS_I(%struct.inode* %77)
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @set_sd_v1_first_direct_byte(%struct.stat_data_v1* %76, i32 %80)
  ret void
}

declare dso_local i32 @set_sd_v1_mode(%struct.stat_data_v1*, i32) #1

declare dso_local i32 @set_sd_v1_uid(%struct.stat_data_v1*, i32) #1

declare dso_local i32 @set_sd_v1_gid(%struct.stat_data_v1*, i32) #1

declare dso_local i32 @set_sd_v1_nlink(%struct.stat_data_v1*, i32) #1

declare dso_local i32 @set_sd_v1_size(%struct.stat_data_v1*, i32) #1

declare dso_local i32 @set_sd_v1_atime(%struct.stat_data_v1*, i32) #1

declare dso_local i32 @set_sd_v1_ctime(%struct.stat_data_v1*, i32) #1

declare dso_local i32 @set_sd_v1_mtime(%struct.stat_data_v1*, i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @set_sd_v1_rdev(%struct.stat_data_v1*, i32) #1

declare dso_local i32 @new_encode_dev(i32) #1

declare dso_local i32 @set_sd_v1_blocks(%struct.stat_data_v1*, i32) #1

declare dso_local i32 @to_fake_used_blocks(%struct.inode*, i32) #1

declare dso_local i32 @set_sd_v1_first_direct_byte(%struct.stat_data_v1*, i32) #1

declare dso_local %struct.TYPE_8__* @REISERFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
