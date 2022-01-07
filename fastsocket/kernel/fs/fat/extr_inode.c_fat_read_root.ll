; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_inode.c_fat_read_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_inode.c_fat_read_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i64, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32*, i32, i32, i64, i32, i32, i32, %struct.super_block* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.super_block = type { i32 }
%struct.msdos_sb_info = type { i32, i32, i32, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i64, i64, i64 }

@ATTR_DIR = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@fat_dir_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @fat_read_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_read_root(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.msdos_sb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 13
  %9 = load %struct.super_block*, %struct.super_block** %8, align 8
  store %struct.super_block* %9, %struct.super_block** %4, align 8
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %10)
  store %struct.msdos_sb_info* %11, %struct.msdos_sb_info** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call %struct.TYPE_10__* @MSDOS_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %16 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 12
  store i32 %18, i32* %20, align 8
  %21 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %22 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 11
  store i32 %24, i32* %26, align 4
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 9
  store i64 0, i64* %32, align 8
  %33 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %34 = load i32, i32* @ATTR_DIR, align 4
  %35 = load i32, i32* @S_IRWXUGO, align 4
  %36 = call i32 @fat_make_mode(%struct.msdos_sb_info* %33, i32 %34, i32 %35)
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 4
  %39 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %40 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 8
  %44 = load %struct.inode*, %struct.inode** %3, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 6
  store i32* @fat_dir_operations, i32** %45, align 8
  %46 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %47 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 32
  br i1 %49, label %50, label %64

50:                                               ; preds = %1
  %51 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %52 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.inode*, %struct.inode** %3, align 8
  %55 = call %struct.TYPE_10__* @MSDOS_I(%struct.inode* %54)
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  store i64 %53, i64* %56, align 8
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = call i32 @fat_calc_dir_size(%struct.inode* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %129

63:                                               ; preds = %50
  br label %76

64:                                               ; preds = %1
  %65 = load %struct.inode*, %struct.inode** %3, align 8
  %66 = call %struct.TYPE_10__* @MSDOS_I(%struct.inode* %65)
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %69 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = load %struct.inode*, %struct.inode** %3, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %64, %63
  %77 = load %struct.inode*, %struct.inode** %3, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %81 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %82, 1
  %84 = add nsw i32 %79, %83
  %85 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %86 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %87, 1
  %89 = xor i32 %88, -1
  %90 = and i32 %84, %89
  %91 = ashr i32 %90, 9
  %92 = load %struct.inode*, %struct.inode** %3, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.inode*, %struct.inode** %3, align 8
  %95 = call %struct.TYPE_10__* @MSDOS_I(%struct.inode* %94)
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  %97 = load %struct.inode*, %struct.inode** %3, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.inode*, %struct.inode** %3, align 8
  %101 = call %struct.TYPE_10__* @MSDOS_I(%struct.inode* %100)
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load %struct.inode*, %struct.inode** %3, align 8
  %104 = load i32, i32* @ATTR_DIR, align 4
  %105 = call i32 @fat_save_attrs(%struct.inode* %103, i32 %104)
  %106 = load %struct.inode*, %struct.inode** %3, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  store i64 0, i64* %108, align 8
  %109 = load %struct.inode*, %struct.inode** %3, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  %112 = load %struct.inode*, %struct.inode** %3, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  store i64 0, i64* %114, align 8
  %115 = load %struct.inode*, %struct.inode** %3, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  store i64 0, i64* %117, align 8
  %118 = load %struct.inode*, %struct.inode** %3, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  store i64 0, i64* %120, align 8
  %121 = load %struct.inode*, %struct.inode** %3, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  %124 = load %struct.inode*, %struct.inode** %3, align 8
  %125 = call i64 @fat_subdirs(%struct.inode* %124)
  %126 = add nsw i64 %125, 2
  %127 = load %struct.inode*, %struct.inode** %3, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 2
  store i64 %126, i64* %128, align 8
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %76, %61
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

declare dso_local %struct.TYPE_10__* @MSDOS_I(%struct.inode*) #1

declare dso_local i32 @fat_make_mode(%struct.msdos_sb_info*, i32, i32) #1

declare dso_local i32 @fat_calc_dir_size(%struct.inode*) #1

declare dso_local i32 @fat_save_attrs(%struct.inode*, i32) #1

declare dso_local i64 @fat_subdirs(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
