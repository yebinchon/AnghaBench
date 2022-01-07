; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_inode2sd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_inode2sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.stat_data = type { i32 }
%struct.TYPE_8__ = type { i32 }

@SD_V2_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.inode*, i32)* @inode2sd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inode2sd(i8* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat_data*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.stat_data*
  store %struct.stat_data* %10, %struct.stat_data** %7, align 8
  %11 = load %struct.stat_data*, %struct.stat_data** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @set_sd_v2_mode(%struct.stat_data* %11, i32 %14)
  %16 = load %struct.stat_data*, %struct.stat_data** %7, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @set_sd_v2_nlink(%struct.stat_data* %16, i32 %19)
  %21 = load %struct.stat_data*, %struct.stat_data** %7, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @set_sd_v2_uid(%struct.stat_data* %21, i32 %24)
  %26 = load %struct.stat_data*, %struct.stat_data** %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @set_sd_v2_size(%struct.stat_data* %26, i32 %27)
  %29 = load %struct.stat_data*, %struct.stat_data** %7, align 8
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @set_sd_v2_gid(%struct.stat_data* %29, i32 %32)
  %34 = load %struct.stat_data*, %struct.stat_data** %7, align 8
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @set_sd_v2_mtime(%struct.stat_data* %34, i32 %38)
  %40 = load %struct.stat_data*, %struct.stat_data** %7, align 8
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @set_sd_v2_atime(%struct.stat_data* %40, i32 %44)
  %46 = load %struct.stat_data*, %struct.stat_data** %7, align 8
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @set_sd_v2_ctime(%struct.stat_data* %46, i32 %50)
  %52 = load %struct.stat_data*, %struct.stat_data** %7, align 8
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = load i32, i32* @SD_V2_SIZE, align 4
  %55 = call i32 @to_fake_used_blocks(%struct.inode* %53, i32 %54)
  %56 = call i32 @set_sd_v2_blocks(%struct.stat_data* %52, i32 %55)
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @S_ISCHR(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %3
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @S_ISBLK(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62, %3
  %69 = load %struct.stat_data*, %struct.stat_data** %7, align 8
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @new_encode_dev(i32 %72)
  %74 = call i32 @set_sd_v2_rdev(%struct.stat_data* %69, i32 %73)
  br label %81

75:                                               ; preds = %62
  %76 = load %struct.stat_data*, %struct.stat_data** %7, align 8
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @set_sd_v2_generation(%struct.stat_data* %76, i32 %79)
  br label %81

81:                                               ; preds = %75, %68
  %82 = load %struct.inode*, %struct.inode** %5, align 8
  %83 = call %struct.TYPE_8__* @REISERFS_I(%struct.inode* %82)
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %8, align 4
  %86 = load %struct.inode*, %struct.inode** %5, align 8
  %87 = call i32 @i_attrs_to_sd_attrs(%struct.inode* %86, i32* %8)
  %88 = load %struct.stat_data*, %struct.stat_data** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @set_sd_v2_attrs(%struct.stat_data* %88, i32 %89)
  ret void
}

declare dso_local i32 @set_sd_v2_mode(%struct.stat_data*, i32) #1

declare dso_local i32 @set_sd_v2_nlink(%struct.stat_data*, i32) #1

declare dso_local i32 @set_sd_v2_uid(%struct.stat_data*, i32) #1

declare dso_local i32 @set_sd_v2_size(%struct.stat_data*, i32) #1

declare dso_local i32 @set_sd_v2_gid(%struct.stat_data*, i32) #1

declare dso_local i32 @set_sd_v2_mtime(%struct.stat_data*, i32) #1

declare dso_local i32 @set_sd_v2_atime(%struct.stat_data*, i32) #1

declare dso_local i32 @set_sd_v2_ctime(%struct.stat_data*, i32) #1

declare dso_local i32 @set_sd_v2_blocks(%struct.stat_data*, i32) #1

declare dso_local i32 @to_fake_used_blocks(%struct.inode*, i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @set_sd_v2_rdev(%struct.stat_data*, i32) #1

declare dso_local i32 @new_encode_dev(i32) #1

declare dso_local i32 @set_sd_v2_generation(%struct.stat_data*, i32) #1

declare dso_local %struct.TYPE_8__* @REISERFS_I(%struct.inode*) #1

declare dso_local i32 @i_attrs_to_sd_attrs(%struct.inode*, i32*) #1

declare dso_local i32 @set_sd_v2_attrs(%struct.stat_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
