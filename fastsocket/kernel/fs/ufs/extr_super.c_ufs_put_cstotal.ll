; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_super.c_ufs_put_cstotal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_super.c_ufs_put_cstotal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_sb_private_info = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.ufs_super_block_first = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8* }
%struct.ufs_super_block_second = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.ufs_super_block_third = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_14__ = type { i32, %struct.ufs_sb_private_info* }

@UFS_MOUNT_UFSTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@UFS_MOUNT_UFSTYPE_44BSD = common dso_local global i32 0, align 4
@UFS_FLAGS_UPDATED = common dso_local global i32 0, align 4
@UFS_MOUNT_UFSTYPE_UFS2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @ufs_put_cstotal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_put_cstotal(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ufs_sb_private_info*, align 8
  %5 = alloca %struct.ufs_super_block_first*, align 8
  %6 = alloca %struct.ufs_super_block_second*, align 8
  %7 = alloca %struct.ufs_super_block_third*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %8 = load %struct.super_block*, %struct.super_block** %2, align 8
  %9 = call %struct.TYPE_14__* @UFS_SB(%struct.super_block* %8)
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @UFS_MOUNT_UFSTYPE, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %3, align 4
  %14 = load %struct.super_block*, %struct.super_block** %2, align 8
  %15 = call %struct.TYPE_14__* @UFS_SB(%struct.super_block* %14)
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %16, align 8
  store %struct.ufs_sb_private_info* %17, %struct.ufs_sb_private_info** %4, align 8
  %18 = call i32 @UFSD(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %20 = call %struct.ufs_super_block_first* @ubh_get_usb_first(%struct.ufs_sb_private_info* %19)
  store %struct.ufs_super_block_first* %20, %struct.ufs_super_block_first** %5, align 8
  %21 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %22 = call %struct.ufs_super_block_second* @ubh_get_usb_second(%struct.ufs_sb_private_info* %21)
  store %struct.ufs_super_block_second* %22, %struct.ufs_super_block_second** %6, align 8
  %23 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %24 = call %struct.ufs_super_block_third* @ubh_get_usb_third(%struct.ufs_sb_private_info* %23)
  store %struct.ufs_super_block_third* %24, %struct.ufs_super_block_third** %7, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @UFS_MOUNT_UFSTYPE_44BSD, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %5, align 8
  %30 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @UFS_FLAGS_UPDATED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %28, %1
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @UFS_MOUNT_UFSTYPE_UFS2, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %80

39:                                               ; preds = %35, %28
  %40 = load %struct.super_block*, %struct.super_block** %2, align 8
  %41 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %42 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @cpu_to_fs64(%struct.super_block* %40, i32 %44)
  %46 = load %struct.ufs_super_block_second*, %struct.ufs_super_block_second** %6, align 8
  %47 = getelementptr inbounds %struct.ufs_super_block_second, %struct.ufs_super_block_second* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i8* %45, i8** %49, align 8
  %50 = load %struct.super_block*, %struct.super_block** %2, align 8
  %51 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %52 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @cpu_to_fs64(%struct.super_block* %50, i32 %54)
  %56 = load %struct.ufs_super_block_second*, %struct.ufs_super_block_second** %6, align 8
  %57 = getelementptr inbounds %struct.ufs_super_block_second, %struct.ufs_super_block_second* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i8* %55, i8** %59, align 8
  %60 = load %struct.super_block*, %struct.super_block** %2, align 8
  %61 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %62 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @cpu_to_fs64(%struct.super_block* %60, i32 %64)
  %66 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %7, align 8
  %67 = getelementptr inbounds %struct.ufs_super_block_third, %struct.ufs_super_block_third* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  store i8* %65, i8** %69, align 8
  %70 = load %struct.super_block*, %struct.super_block** %2, align 8
  %71 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %72 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @cpu_to_fs64(%struct.super_block* %70, i32 %74)
  %76 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %7, align 8
  %77 = getelementptr inbounds %struct.ufs_super_block_third, %struct.ufs_super_block_third* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  store i8* %75, i8** %79, align 8
  br label %117

80:                                               ; preds = %35
  %81 = load %struct.super_block*, %struct.super_block** %2, align 8
  %82 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %83 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @cpu_to_fs32(%struct.super_block* %81, i32 %85)
  %87 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %5, align 8
  %88 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  store i8* %86, i8** %89, align 8
  %90 = load %struct.super_block*, %struct.super_block** %2, align 8
  %91 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %92 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @cpu_to_fs32(%struct.super_block* %90, i32 %94)
  %96 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %5, align 8
  %97 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  store i8* %95, i8** %98, align 8
  %99 = load %struct.super_block*, %struct.super_block** %2, align 8
  %100 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %101 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @cpu_to_fs32(%struct.super_block* %99, i32 %103)
  %105 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %5, align 8
  %106 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  store i8* %104, i8** %107, align 8
  %108 = load %struct.super_block*, %struct.super_block** %2, align 8
  %109 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %110 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @cpu_to_fs32(%struct.super_block* %108, i32 %112)
  %114 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %5, align 8
  %115 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  store i8* %113, i8** %116, align 8
  br label %117

117:                                              ; preds = %80, %39
  %118 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %119 = call i32 @USPI_UBH(%struct.ufs_sb_private_info* %118)
  %120 = call i32 @ubh_mark_buffer_dirty(i32 %119)
  %121 = load %struct.super_block*, %struct.super_block** %2, align 8
  %122 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %5, align 8
  %123 = load %struct.ufs_super_block_second*, %struct.ufs_super_block_second** %6, align 8
  %124 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %7, align 8
  %125 = call i32 @ufs_print_super_stuff(%struct.super_block* %121, %struct.ufs_super_block_first* %122, %struct.ufs_super_block_second* %123, %struct.ufs_super_block_third* %124)
  %126 = call i32 @UFSD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.TYPE_14__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @UFSD(i8*) #1

declare dso_local %struct.ufs_super_block_first* @ubh_get_usb_first(%struct.ufs_sb_private_info*) #1

declare dso_local %struct.ufs_super_block_second* @ubh_get_usb_second(%struct.ufs_sb_private_info*) #1

declare dso_local %struct.ufs_super_block_third* @ubh_get_usb_third(%struct.ufs_sb_private_info*) #1

declare dso_local i8* @cpu_to_fs64(%struct.super_block*, i32) #1

declare dso_local i8* @cpu_to_fs32(%struct.super_block*, i32) #1

declare dso_local i32 @ubh_mark_buffer_dirty(i32) #1

declare dso_local i32 @USPI_UBH(%struct.ufs_sb_private_info*) #1

declare dso_local i32 @ufs_print_super_stuff(%struct.super_block*, %struct.ufs_super_block_first*, %struct.ufs_super_block_second*, %struct.ufs_super_block_third*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
