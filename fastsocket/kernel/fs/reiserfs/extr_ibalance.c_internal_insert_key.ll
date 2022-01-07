; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_ibalance.c_internal_insert_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_ibalance.c_internal_insert_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_info = type { %struct.buffer_head*, i32, i32, %struct.buffer_head* }
%struct.buffer_head = type { i32 }
%struct.block_head = type { i32 }
%struct.reiserfs_key = type { i32 }
%struct.disk_child = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"source(%p) or dest(%p) buffer is 0\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"source(%d) or dest(%d) key number less than 0\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"invalid position in dest (%d (key number %d)) or in src (%d (key number %d))\00", align 1
@KEY_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"no enough free space (%d) in dest buffer\00", align 1
@DC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_info*, i32, %struct.buffer_head*, i32)* @internal_insert_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @internal_insert_key(%struct.buffer_info* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca %struct.buffer_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.block_head*, align 8
  %12 = alloca %struct.reiserfs_key*, align 8
  %13 = alloca %struct.disk_child*, align 8
  store %struct.buffer_info* %0, %struct.buffer_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.buffer_info*, %struct.buffer_info** %5, align 8
  %15 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %14, i32 0, i32 3
  %16 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  store %struct.buffer_head* %16, %struct.buffer_head** %9, align 8
  %17 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %18 = icmp eq %struct.buffer_head* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %21 = icmp eq %struct.buffer_head* %20, null
  br label %22

22:                                               ; preds = %19, %4
  %23 = phi i1 [ true, %4 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %26 = ptrtoint %struct.buffer_head* %25 to i32
  %27 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %28 = call i32 (i32, i8*, i32, ...) @RFALSE(i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %26, %struct.buffer_head* %27)
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br label %34

34:                                               ; preds = %31, %22
  %35 = phi i1 [ true, %22 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (i32, i8*, i32, ...) @RFALSE(i32 %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %42 = call i32 @B_NR_ITEMS(%struct.buffer_head* %41)
  %43 = icmp sgt i32 %40, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %47 = call i32 @B_NR_ITEMS(%struct.buffer_head* %46)
  %48 = icmp sge i32 %45, %47
  br label %49

49:                                               ; preds = %44, %34
  %50 = phi i1 [ true, %34 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %54 = call i32 @B_NR_ITEMS(%struct.buffer_head* %53)
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %57 = call i32 @B_NR_ITEMS(%struct.buffer_head* %56)
  %58 = call i32 (i32, i8*, i32, ...) @RFALSE(i32 %51, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %54, i32 %55, i32 %57)
  %59 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %60 = call i32 @B_FREE_SPACE(%struct.buffer_head* %59)
  %61 = load i32, i32* @KEY_SIZE, align 4
  %62 = icmp slt i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %65 = call i32 @B_FREE_SPACE(%struct.buffer_head* %64)
  %66 = call i32 (i32, i8*, i32, ...) @RFALSE(i32 %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %68 = call %struct.block_head* @B_BLK_HEAD(%struct.buffer_head* %67)
  store %struct.block_head* %68, %struct.block_head** %11, align 8
  %69 = load %struct.block_head*, %struct.block_head** %11, align 8
  %70 = call i32 @blkh_nr_item(%struct.block_head* %69)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call %struct.reiserfs_key* @B_N_PDELIM_KEY(%struct.buffer_head* %71, i32 %72)
  store %struct.reiserfs_key* %73, %struct.reiserfs_key** %12, align 8
  %74 = load %struct.reiserfs_key*, %struct.reiserfs_key** %12, align 8
  %75 = getelementptr inbounds %struct.reiserfs_key, %struct.reiserfs_key* %74, i64 1
  %76 = load %struct.reiserfs_key*, %struct.reiserfs_key** %12, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %6, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load i32, i32* @KEY_SIZE, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i32, i32* @DC_SIZE, align 4
  %85 = mul nsw i32 %83, %84
  %86 = add nsw i32 %81, %85
  %87 = call i32 @memmove(%struct.reiserfs_key* %75, %struct.reiserfs_key* %76, i32 %86)
  %88 = load %struct.reiserfs_key*, %struct.reiserfs_key** %12, align 8
  %89 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call %struct.reiserfs_key* @B_N_PDELIM_KEY(%struct.buffer_head* %89, i32 %90)
  %92 = load i32, i32* @KEY_SIZE, align 4
  %93 = call i32 @memcpy(%struct.reiserfs_key* %88, %struct.reiserfs_key* %91, i32 %92)
  %94 = load %struct.block_head*, %struct.block_head** %11, align 8
  %95 = load %struct.block_head*, %struct.block_head** %11, align 8
  %96 = call i32 @blkh_nr_item(%struct.block_head* %95)
  %97 = add nsw i32 %96, 1
  %98 = call i32 @set_blkh_nr_item(%struct.block_head* %94, i32 %97)
  %99 = load %struct.block_head*, %struct.block_head** %11, align 8
  %100 = load %struct.block_head*, %struct.block_head** %11, align 8
  %101 = call i64 @blkh_free_space(%struct.block_head* %100)
  %102 = load i32, i32* @KEY_SIZE, align 4
  %103 = sext i32 %102 to i64
  %104 = sub nsw i64 %101, %103
  %105 = call i32 @set_blkh_free_space(%struct.block_head* %99, i64 %104)
  %106 = load %struct.buffer_info*, %struct.buffer_info** %5, align 8
  %107 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %110 = call i32 @do_balance_mark_internal_dirty(i32 %108, %struct.buffer_head* %109, i32 0)
  %111 = load %struct.buffer_info*, %struct.buffer_info** %5, align 8
  %112 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %111, i32 0, i32 0
  %113 = load %struct.buffer_head*, %struct.buffer_head** %112, align 8
  %114 = icmp ne %struct.buffer_head* %113, null
  br i1 %114, label %115, label %137

115:                                              ; preds = %49
  %116 = load %struct.buffer_info*, %struct.buffer_info** %5, align 8
  %117 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %116, i32 0, i32 0
  %118 = load %struct.buffer_head*, %struct.buffer_head** %117, align 8
  %119 = load %struct.buffer_info*, %struct.buffer_info** %5, align 8
  %120 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call %struct.disk_child* @B_N_CHILD(%struct.buffer_head* %118, i32 %121)
  store %struct.disk_child* %122, %struct.disk_child** %13, align 8
  %123 = load %struct.disk_child*, %struct.disk_child** %13, align 8
  %124 = load %struct.disk_child*, %struct.disk_child** %13, align 8
  %125 = call i64 @dc_size(%struct.disk_child* %124)
  %126 = load i32, i32* @KEY_SIZE, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %125, %127
  %129 = call i32 @put_dc_size(%struct.disk_child* %123, i64 %128)
  %130 = load %struct.buffer_info*, %struct.buffer_info** %5, align 8
  %131 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.buffer_info*, %struct.buffer_info** %5, align 8
  %134 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %133, i32 0, i32 0
  %135 = load %struct.buffer_head*, %struct.buffer_head** %134, align 8
  %136 = call i32 @do_balance_mark_internal_dirty(i32 %132, %struct.buffer_head* %135, i32 0)
  br label %137

137:                                              ; preds = %115, %49
  ret void
}

declare dso_local i32 @RFALSE(i32, i8*, i32, ...) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i32 @B_FREE_SPACE(%struct.buffer_head*) #1

declare dso_local %struct.block_head* @B_BLK_HEAD(%struct.buffer_head*) #1

declare dso_local i32 @blkh_nr_item(%struct.block_head*) #1

declare dso_local %struct.reiserfs_key* @B_N_PDELIM_KEY(%struct.buffer_head*, i32) #1

declare dso_local i32 @memmove(%struct.reiserfs_key*, %struct.reiserfs_key*, i32) #1

declare dso_local i32 @memcpy(%struct.reiserfs_key*, %struct.reiserfs_key*, i32) #1

declare dso_local i32 @set_blkh_nr_item(%struct.block_head*, i32) #1

declare dso_local i32 @set_blkh_free_space(%struct.block_head*, i64) #1

declare dso_local i64 @blkh_free_space(%struct.block_head*) #1

declare dso_local i32 @do_balance_mark_internal_dirty(i32, %struct.buffer_head*, i32) #1

declare dso_local %struct.disk_child* @B_N_CHILD(%struct.buffer_head*, i32) #1

declare dso_local i32 @put_dc_size(%struct.disk_child*, i64) #1

declare dso_local i64 @dc_size(%struct.disk_child*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
