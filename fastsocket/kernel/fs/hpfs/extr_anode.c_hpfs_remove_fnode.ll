; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_anode.c_hpfs_remove_fnode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_anode.c_hpfs_remove_fnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.fnode = type { i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.extended_attribute = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_remove_fnode(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.fnode*, align 8
  %7 = alloca %struct.extended_attribute*, align 8
  %8 = alloca %struct.extended_attribute*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.super_block*, %struct.super_block** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.fnode* @hpfs_map_fnode(%struct.super_block* %9, i32 %10, %struct.buffer_head** %5)
  store %struct.fnode* %11, %struct.fnode** %6, align 8
  %12 = icmp ne %struct.fnode* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %79

14:                                               ; preds = %2
  %15 = load %struct.fnode*, %struct.fnode** %6, align 8
  %16 = getelementptr inbounds %struct.fnode, %struct.fnode* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.super_block*, %struct.super_block** %3, align 8
  %21 = load %struct.fnode*, %struct.fnode** %6, align 8
  %22 = getelementptr inbounds %struct.fnode, %struct.fnode* %21, i32 0, i32 4
  %23 = call i32 @hpfs_remove_btree(%struct.super_block* %20, i32* %22)
  br label %34

24:                                               ; preds = %14
  %25 = load %struct.super_block*, %struct.super_block** %3, align 8
  %26 = load %struct.fnode*, %struct.fnode** %6, align 8
  %27 = getelementptr inbounds %struct.fnode, %struct.fnode* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @hpfs_remove_dtree(%struct.super_block* %25, i32 %32)
  br label %34

34:                                               ; preds = %24, %19
  %35 = load %struct.fnode*, %struct.fnode** %6, align 8
  %36 = call %struct.extended_attribute* @fnode_end_ea(%struct.fnode* %35)
  store %struct.extended_attribute* %36, %struct.extended_attribute** %8, align 8
  %37 = load %struct.fnode*, %struct.fnode** %6, align 8
  %38 = call %struct.extended_attribute* @fnode_ea(%struct.fnode* %37)
  store %struct.extended_attribute* %38, %struct.extended_attribute** %7, align 8
  br label %39

39:                                               ; preds = %59, %34
  %40 = load %struct.extended_attribute*, %struct.extended_attribute** %7, align 8
  %41 = load %struct.extended_attribute*, %struct.extended_attribute** %8, align 8
  %42 = icmp ult %struct.extended_attribute* %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = load %struct.extended_attribute*, %struct.extended_attribute** %7, align 8
  %45 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.super_block*, %struct.super_block** %3, align 8
  %50 = load %struct.extended_attribute*, %struct.extended_attribute** %7, align 8
  %51 = call i32 @ea_sec(%struct.extended_attribute* %50)
  %52 = load %struct.extended_attribute*, %struct.extended_attribute** %7, align 8
  %53 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.extended_attribute*, %struct.extended_attribute** %7, align 8
  %56 = call i32 @ea_len(%struct.extended_attribute* %55)
  %57 = call i32 @hpfs_ea_remove(%struct.super_block* %49, i32 %51, i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %48, %43
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.extended_attribute*, %struct.extended_attribute** %7, align 8
  %61 = call %struct.extended_attribute* @next_ea(%struct.extended_attribute* %60)
  store %struct.extended_attribute* %61, %struct.extended_attribute** %7, align 8
  br label %39

62:                                               ; preds = %39
  %63 = load %struct.super_block*, %struct.super_block** %3, align 8
  %64 = load %struct.fnode*, %struct.fnode** %6, align 8
  %65 = getelementptr inbounds %struct.fnode, %struct.fnode* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.fnode*, %struct.fnode** %6, align 8
  %68 = getelementptr inbounds %struct.fnode, %struct.fnode* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.fnode*, %struct.fnode** %6, align 8
  %71 = getelementptr inbounds %struct.fnode, %struct.fnode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @hpfs_ea_ext_remove(%struct.super_block* %63, i32 %66, i32 %69, i32 %72)
  %74 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %75 = call i32 @brelse(%struct.buffer_head* %74)
  %76 = load %struct.super_block*, %struct.super_block** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @hpfs_free_sectors(%struct.super_block* %76, i32 %77, i32 1)
  br label %79

79:                                               ; preds = %62, %13
  ret void
}

declare dso_local %struct.fnode* @hpfs_map_fnode(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @hpfs_remove_btree(%struct.super_block*, i32*) #1

declare dso_local i32 @hpfs_remove_dtree(%struct.super_block*, i32) #1

declare dso_local %struct.extended_attribute* @fnode_end_ea(%struct.fnode*) #1

declare dso_local %struct.extended_attribute* @fnode_ea(%struct.fnode*) #1

declare dso_local i32 @hpfs_ea_remove(%struct.super_block*, i32, i32, i32) #1

declare dso_local i32 @ea_sec(%struct.extended_attribute*) #1

declare dso_local i32 @ea_len(%struct.extended_attribute*) #1

declare dso_local %struct.extended_attribute* @next_ea(%struct.extended_attribute*) #1

declare dso_local i32 @hpfs_ea_ext_remove(%struct.super_block*, i32, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @hpfs_free_sectors(%struct.super_block*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
