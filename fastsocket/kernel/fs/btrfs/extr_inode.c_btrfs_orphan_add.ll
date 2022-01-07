; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_orphan_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_orphan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.inode = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_5__, %struct.TYPE_4__*, i32, i32, i32, %struct.btrfs_block_rsv* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.btrfs_root* }
%struct.btrfs_block_rsv = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.btrfs_root* }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_INODE_HAS_ORPHAN_ITEM = common dso_local global i32 0, align 4
@BTRFS_INODE_ORPHAN_META_RESERVED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_orphan_add(%struct.btrfs_trans_handle* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_block_rsv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  store %struct.btrfs_root* %14, %struct.btrfs_root** %6, align 8
  store %struct.btrfs_block_rsv* null, %struct.btrfs_block_rsv** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %16 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %15, i32 0, i32 5
  %17 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %16, align 8
  %18 = icmp ne %struct.btrfs_block_rsv* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %2
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %21 = call %struct.btrfs_block_rsv* @btrfs_alloc_block_rsv(%struct.btrfs_root* %20)
  store %struct.btrfs_block_rsv* %21, %struct.btrfs_block_rsv** %7, align 8
  %22 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %23 = icmp ne %struct.btrfs_block_rsv* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %137

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %30 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %29, i32 0, i32 2
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %33 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %32, i32 0, i32 5
  %34 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %33, align 8
  %35 = icmp ne %struct.btrfs_block_rsv* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %38 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %39 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %38, i32 0, i32 5
  store %struct.btrfs_block_rsv* %37, %struct.btrfs_block_rsv** %39, align 8
  br label %48

40:                                               ; preds = %28
  %41 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %42 = icmp ne %struct.btrfs_block_rsv* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %45 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %46 = call i32 @btrfs_free_block_rsv(%struct.btrfs_root* %44, %struct.btrfs_block_rsv* %45)
  store %struct.btrfs_block_rsv* null, %struct.btrfs_block_rsv** %7, align 8
  br label %47

47:                                               ; preds = %43, %40
  br label %48

48:                                               ; preds = %47, %36
  %49 = load i32, i32* @BTRFS_INODE_HAS_ORPHAN_ITEM, align 4
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = call i32 @test_and_set_bit(i32 %49, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  store i32 1, i32* %9, align 4
  %56 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %57 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %56, i32 0, i32 3
  %58 = call i32 @atomic_dec(i32* %57)
  br label %59

59:                                               ; preds = %55, %48
  %60 = load i32, i32* @BTRFS_INODE_ORPHAN_META_RESERVED, align 4
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = call i32 @test_and_set_bit(i32 %60, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  store i32 1, i32* %8, align 4
  br label %67

67:                                               ; preds = %66, %59
  %68 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %69 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %68, i32 0, i32 2
  %70 = call i32 @spin_unlock(i32* %69)
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %75 = load %struct.inode*, %struct.inode** %5, align 8
  %76 = call i32 @btrfs_orphan_reserve_metadata(%struct.btrfs_trans_handle* %74, %struct.inode* %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @BUG_ON(i32 %77)
  br label %79

79:                                               ; preds = %73, %67
  %80 = load i32, i32* %9, align 4
  %81 = icmp sge i32 %80, 1
  br i1 %81, label %82, label %107

82:                                               ; preds = %79
  %83 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %84 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %85 = load %struct.inode*, %struct.inode** %5, align 8
  %86 = call i32 @btrfs_ino(%struct.inode* %85)
  %87 = call i32 @btrfs_insert_orphan_item(%struct.btrfs_trans_handle* %83, %struct.btrfs_root* %84, i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %82
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @EEXIST, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp ne i32 %91, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %90
  %96 = load i32, i32* @BTRFS_INODE_HAS_ORPHAN_ITEM, align 4
  %97 = load %struct.inode*, %struct.inode** %5, align 8
  %98 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %97)
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = call i32 @clear_bit(i32 %96, i32* %99)
  %101 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %102 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %101, %struct.btrfs_root* %102, i32 %103)
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %3, align 4
  br label %137

106:                                              ; preds = %90, %82
  store i32 0, i32* %10, align 4
  br label %107

107:                                              ; preds = %106, %79
  %108 = load i32, i32* %9, align 4
  %109 = icmp sge i32 %108, 2
  br i1 %109, label %110, label %136

110:                                              ; preds = %107
  %111 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %112 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %113 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load %struct.btrfs_root*, %struct.btrfs_root** %115, align 8
  %117 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %118 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @btrfs_insert_orphan_item(%struct.btrfs_trans_handle* %111, %struct.btrfs_root* %116, i32 %120)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %110
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @EEXIST, align 4
  %127 = sub nsw i32 0, %126
  %128 = icmp ne i32 %125, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %131 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %130, %struct.btrfs_root* %131, i32 %132)
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %3, align 4
  br label %137

135:                                              ; preds = %124, %110
  br label %136

136:                                              ; preds = %135, %107
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %129, %95, %24
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.TYPE_6__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.btrfs_block_rsv* @btrfs_alloc_block_rsv(%struct.btrfs_root*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @btrfs_free_block_rsv(%struct.btrfs_root*, %struct.btrfs_block_rsv*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_orphan_reserve_metadata(%struct.btrfs_trans_handle*, %struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_insert_orphan_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_ino(%struct.inode*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
