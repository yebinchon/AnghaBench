; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_update_stat_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_update_stat_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.treepath = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.item_head = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"vs-13065\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"key %k, found item %h\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.treepath*, %struct.inode*, i32)* @update_stat_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_stat_data(%struct.treepath* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca %struct.treepath*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.item_head*, align 8
  store %struct.treepath* %0, %struct.treepath** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.treepath*, %struct.treepath** %4, align 8
  %10 = call %struct.buffer_head* @PATH_PLAST_BUFFER(%struct.treepath* %9)
  store %struct.buffer_head* %10, %struct.buffer_head** %7, align 8
  %11 = load %struct.treepath*, %struct.treepath** %4, align 8
  %12 = call %struct.item_head* @PATH_PITEM_HEAD(%struct.treepath* %11)
  store %struct.item_head* %12, %struct.item_head** %8, align 8
  %13 = load %struct.item_head*, %struct.item_head** %8, align 8
  %14 = call i32 @is_statdata_le_ih(%struct.item_head* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call i32 @INODE_PKEY(%struct.inode* %20)
  %22 = load %struct.item_head*, %struct.item_head** %8, align 8
  %23 = call i32 @reiserfs_panic(i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %21, %struct.item_head* %22)
  br label %24

24:                                               ; preds = %16, %3
  %25 = load %struct.item_head*, %struct.item_head** %8, align 8
  %26 = call i64 @stat_data_v1(%struct.item_head* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %30 = load %struct.item_head*, %struct.item_head** %8, align 8
  %31 = call i32 @B_I_PITEM(%struct.buffer_head* %29, %struct.item_head* %30)
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @inode2sd_v1(i32 %31, %struct.inode* %32, i32 %33)
  br label %42

35:                                               ; preds = %24
  %36 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %37 = load %struct.item_head*, %struct.item_head** %8, align 8
  %38 = call i32 @B_I_PITEM(%struct.buffer_head* %36, %struct.item_head* %37)
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @inode2sd(i32 %38, %struct.inode* %39, i32 %40)
  br label %42

42:                                               ; preds = %35, %28
  ret void
}

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(%struct.treepath*) #1

declare dso_local %struct.item_head* @PATH_PITEM_HEAD(%struct.treepath*) #1

declare dso_local i32 @is_statdata_le_ih(%struct.item_head*) #1

declare dso_local i32 @reiserfs_panic(i32, i8*, i8*, i32, %struct.item_head*) #1

declare dso_local i32 @INODE_PKEY(%struct.inode*) #1

declare dso_local i64 @stat_data_v1(%struct.item_head*) #1

declare dso_local i32 @inode2sd_v1(i32, %struct.inode*, i32) #1

declare dso_local i32 @B_I_PITEM(%struct.buffer_head*, %struct.item_head*) #1

declare dso_local i32 @inode2sd(i32, %struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
