; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_super.c_ufs_setup_cstotal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_super.c_ufs_setup_cstotal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_sb_info = type { i32, %struct.ufs_sb_private_info* }
%struct.ufs_sb_private_info = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i8* }
%struct.ufs_super_block_first = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.ufs_super_block_second = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ufs_super_block_third = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@UFS_MOUNT_UFSTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ENTER, mtype=%u\0A\00", align 1
@UFS_MOUNT_UFSTYPE_44BSD = common dso_local global i32 0, align 4
@UFS_FLAGS_UPDATED = common dso_local global i32 0, align 4
@UFS_MOUNT_UFSTYPE_UFS2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @ufs_setup_cstotal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_setup_cstotal(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.ufs_sb_info*, align 8
  %4 = alloca %struct.ufs_sb_private_info*, align 8
  %5 = alloca %struct.ufs_super_block_first*, align 8
  %6 = alloca %struct.ufs_super_block_second*, align 8
  %7 = alloca %struct.ufs_super_block_third*, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %9 = load %struct.super_block*, %struct.super_block** %2, align 8
  %10 = call %struct.ufs_sb_info* @UFS_SB(%struct.super_block* %9)
  store %struct.ufs_sb_info* %10, %struct.ufs_sb_info** %3, align 8
  %11 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %12 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %11, i32 0, i32 1
  %13 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %12, align 8
  store %struct.ufs_sb_private_info* %13, %struct.ufs_sb_private_info** %4, align 8
  %14 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %15 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @UFS_MOUNT_UFSTYPE, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %22 = call %struct.ufs_super_block_first* @ubh_get_usb_first(%struct.ufs_sb_private_info* %21)
  store %struct.ufs_super_block_first* %22, %struct.ufs_super_block_first** %5, align 8
  %23 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %24 = call %struct.ufs_super_block_second* @ubh_get_usb_second(%struct.ufs_sb_private_info* %23)
  store %struct.ufs_super_block_second* %24, %struct.ufs_super_block_second** %6, align 8
  %25 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %26 = call %struct.ufs_super_block_third* @ubh_get_usb_third(%struct.ufs_sb_private_info* %25)
  store %struct.ufs_super_block_third* %26, %struct.ufs_super_block_third** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @UFS_MOUNT_UFSTYPE_44BSD, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %5, align 8
  %32 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @UFS_FLAGS_UPDATED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %30, %1
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @UFS_MOUNT_UFSTYPE_UFS2, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %82

41:                                               ; preds = %37, %30
  %42 = load %struct.super_block*, %struct.super_block** %2, align 8
  %43 = load %struct.ufs_super_block_second*, %struct.ufs_super_block_second** %6, align 8
  %44 = getelementptr inbounds %struct.ufs_super_block_second, %struct.ufs_super_block_second* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @fs64_to_cpu(%struct.super_block* %42, i32 %47)
  %49 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %50 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 3
  store i8* %48, i8** %51, align 8
  %52 = load %struct.super_block*, %struct.super_block** %2, align 8
  %53 = load %struct.ufs_super_block_second*, %struct.ufs_super_block_second** %6, align 8
  %54 = getelementptr inbounds %struct.ufs_super_block_second, %struct.ufs_super_block_second* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @fs64_to_cpu(%struct.super_block* %52, i32 %57)
  %59 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %60 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  store i8* %58, i8** %61, align 8
  %62 = load %struct.super_block*, %struct.super_block** %2, align 8
  %63 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %7, align 8
  %64 = getelementptr inbounds %struct.ufs_super_block_third, %struct.ufs_super_block_third* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @fs64_to_cpu(%struct.super_block* %62, i32 %67)
  %69 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %70 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  store i8* %68, i8** %71, align 8
  %72 = load %struct.super_block*, %struct.super_block** %2, align 8
  %73 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %7, align 8
  %74 = getelementptr inbounds %struct.ufs_super_block_third, %struct.ufs_super_block_third* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @fs64_to_cpu(%struct.super_block* %72, i32 %77)
  %79 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %80 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  store i8* %78, i8** %81, align 8
  br label %119

82:                                               ; preds = %37
  %83 = load %struct.super_block*, %struct.super_block** %2, align 8
  %84 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %5, align 8
  %85 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @fs32_to_cpu(%struct.super_block* %83, i32 %87)
  %89 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %90 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 3
  store i8* %88, i8** %91, align 8
  %92 = load %struct.super_block*, %struct.super_block** %2, align 8
  %93 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %5, align 8
  %94 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @fs32_to_cpu(%struct.super_block* %92, i32 %96)
  %98 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %99 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  store i8* %97, i8** %100, align 8
  %101 = load %struct.super_block*, %struct.super_block** %2, align 8
  %102 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %5, align 8
  %103 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @fs32_to_cpu(%struct.super_block* %101, i32 %105)
  %107 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %108 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  store i8* %106, i8** %109, align 8
  %110 = load %struct.super_block*, %struct.super_block** %2, align 8
  %111 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %5, align 8
  %112 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @fs32_to_cpu(%struct.super_block* %110, i32 %114)
  %116 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %117 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  store i8* %115, i8** %118, align 8
  br label %119

119:                                              ; preds = %82, %41
  %120 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.ufs_sb_info* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @UFSD(i8*, ...) #1

declare dso_local %struct.ufs_super_block_first* @ubh_get_usb_first(%struct.ufs_sb_private_info*) #1

declare dso_local %struct.ufs_super_block_second* @ubh_get_usb_second(%struct.ufs_sb_private_info*) #1

declare dso_local %struct.ufs_super_block_third* @ubh_get_usb_third(%struct.ufs_sb_private_info*) #1

declare dso_local i8* @fs64_to_cpu(%struct.super_block*, i32) #1

declare dso_local i8* @fs32_to_cpu(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
