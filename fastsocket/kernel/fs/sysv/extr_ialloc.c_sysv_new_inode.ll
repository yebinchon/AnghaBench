; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_ialloc.c_sysv_new_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_ialloc.c_sysv_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32, i32, i32, i8*, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.sysv_sb_info = type { i32, i64* }
%struct.TYPE_2__ = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @sysv_new_inode(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.sysv_sb_info*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 8
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %6, align 8
  %14 = load %struct.super_block*, %struct.super_block** %6, align 8
  %15 = call %struct.sysv_sb_info* @SYSV_SB(%struct.super_block* %14)
  store %struct.sysv_sb_info* %15, %struct.sysv_sb_info** %7, align 8
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = call %struct.inode* @new_inode(%struct.super_block* %16)
  store %struct.inode* %17, %struct.inode** %8, align 8
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = icmp ne %struct.inode* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.inode* @ERR_PTR(i32 %22)
  store %struct.inode* %23, %struct.inode** %3, align 8
  br label %140

24:                                               ; preds = %2
  %25 = load %struct.super_block*, %struct.super_block** %6, align 8
  %26 = call i32 @lock_super(%struct.super_block* %25)
  %27 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %7, align 8
  %28 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %7, align 8
  %29 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %30, align 8
  %32 = call i8* @fs16_to_cpu(%struct.sysv_sb_info* %27, i64 %31)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %24
  %37 = load %struct.super_block*, %struct.super_block** %6, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sub i32 %38, 1
  %40 = call i64* @sv_sb_fic_inode(%struct.super_block* %37, i32 %39)
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %36, %24
  %44 = load %struct.super_block*, %struct.super_block** %6, align 8
  %45 = call i32 @refill_free_cache(%struct.super_block* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = call i32 @iput(%struct.inode* %49)
  %51 = load %struct.super_block*, %struct.super_block** %6, align 8
  %52 = call i32 @unlock_super(%struct.super_block* %51)
  %53 = load i32, i32* @ENOSPC, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.inode* @ERR_PTR(i32 %54)
  store %struct.inode* %55, %struct.inode** %3, align 8
  br label %140

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %36
  %58 = load %struct.super_block*, %struct.super_block** %6, align 8
  %59 = load i32, i32* %10, align 4
  %60 = add i32 %59, -1
  store i32 %60, i32* %10, align 4
  %61 = call i64* @sv_sb_fic_inode(%struct.super_block* %58, i32 %60)
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %9, align 8
  %63 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %7, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i64 @cpu_to_fs16(%struct.sysv_sb_info* %63, i32 %64)
  %66 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %7, align 8
  %67 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  store i64 %65, i64* %68, align 8
  %69 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %7, align 8
  %70 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %7, align 8
  %71 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @fs16_add(%struct.sysv_sb_info* %69, i32 %72, i32 -1)
  %74 = load %struct.super_block*, %struct.super_block** %6, align 8
  %75 = call i32 @dirty_sb(%struct.super_block* %74)
  %76 = load %struct.inode*, %struct.inode** %4, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @S_ISGID, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %57
  %83 = load %struct.inode*, %struct.inode** %4, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.inode*, %struct.inode** %8, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i64 @S_ISDIR(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = load i32, i32* @S_ISGID, align 4
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %91, %82
  br label %100

96:                                               ; preds = %57
  %97 = call i32 (...) @current_fsgid()
  %98 = load %struct.inode*, %struct.inode** %8, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 7
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %95
  %101 = call i32 (...) @current_fsuid()
  %102 = load %struct.inode*, %struct.inode** %8, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 8
  %104 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %7, align 8
  %105 = load i64, i64* %9, align 8
  %106 = call i8* @fs16_to_cpu(%struct.sysv_sb_info* %104, i64 %105)
  %107 = load %struct.inode*, %struct.inode** %8, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 5
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %110 = load %struct.inode*, %struct.inode** %8, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load %struct.inode*, %struct.inode** %8, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 3
  store i32 %109, i32* %113, align 4
  %114 = load %struct.inode*, %struct.inode** %8, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 4
  store i32 %109, i32* %115, align 8
  %116 = load %struct.inode*, %struct.inode** %8, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 1
  store i64 0, i64* %117, align 8
  %118 = load %struct.inode*, %struct.inode** %8, align 8
  %119 = call %struct.TYPE_2__* @SYSV_I(%struct.inode* %118)
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @memset(i32 %121, i32 0, i32 4)
  %123 = load %struct.inode*, %struct.inode** %8, align 8
  %124 = call %struct.TYPE_2__* @SYSV_I(%struct.inode* %123)
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i64 0, i64* %125, align 8
  %126 = load %struct.inode*, %struct.inode** %8, align 8
  %127 = call i32 @insert_inode_hash(%struct.inode* %126)
  %128 = load %struct.inode*, %struct.inode** %8, align 8
  %129 = call i32 @mark_inode_dirty(%struct.inode* %128)
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.inode*, %struct.inode** %8, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load %struct.inode*, %struct.inode** %8, align 8
  %134 = call i32 @sysv_write_inode(%struct.inode* %133, i32 0)
  %135 = load %struct.inode*, %struct.inode** %8, align 8
  %136 = call i32 @mark_inode_dirty(%struct.inode* %135)
  %137 = load %struct.super_block*, %struct.super_block** %6, align 8
  %138 = call i32 @unlock_super(%struct.super_block* %137)
  %139 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %139, %struct.inode** %3, align 8
  br label %140

140:                                              ; preds = %100, %48, %20
  %141 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %141
}

declare dso_local %struct.sysv_sb_info* @SYSV_SB(%struct.super_block*) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @lock_super(%struct.super_block*) #1

declare dso_local i8* @fs16_to_cpu(%struct.sysv_sb_info*, i64) #1

declare dso_local i64* @sv_sb_fic_inode(%struct.super_block*, i32) #1

declare dso_local i32 @refill_free_cache(%struct.super_block*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @unlock_super(%struct.super_block*) #1

declare dso_local i64 @cpu_to_fs16(%struct.sysv_sb_info*, i32) #1

declare dso_local i32 @fs16_add(%struct.sysv_sb_info*, i32, i32) #1

declare dso_local i32 @dirty_sb(%struct.super_block*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @SYSV_I(%struct.inode*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @sysv_write_inode(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
