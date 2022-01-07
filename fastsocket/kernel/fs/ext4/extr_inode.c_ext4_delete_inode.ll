; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_delete_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_delete_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"couldn't mark inode dirty (err %d)\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"couldn't extend journal (err %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext4_delete_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call i64 @ext4_should_order_data(%struct.inode* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = call i32 @ext4_begin_ordered_truncate(%struct.inode* %9, i32 0)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 3
  %14 = call i32 @truncate_inode_pages(i32* %13, i32 0)
  %15 = load %struct.inode*, %struct.inode** %2, align 8
  %16 = call i64 @is_bad_inode(%struct.inode* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %129

19:                                               ; preds = %11
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @sb_start_intwrite(i32 %22)
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  %25 = load %struct.inode*, %struct.inode** %2, align 8
  %26 = call i64 @blocks_for_truncate(%struct.inode* %25)
  %27 = add nsw i64 %26, 3
  %28 = call i32* @ext4_journal_start(%struct.inode* %24, i64 %27)
  store i32* %28, i32** %3, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i64 @IS_ERR(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %19
  %33 = load %struct.inode*, %struct.inode** %2, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @PTR_ERR(i32* %36)
  %38 = call i32 @ext4_std_error(i32 %35, i32 %37)
  %39 = load %struct.inode*, %struct.inode** %2, align 8
  %40 = call i32 @ext4_orphan_del(i32* null, %struct.inode* %39)
  %41 = load %struct.inode*, %struct.inode** %2, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @sb_end_intwrite(i32 %43)
  br label %129

45:                                               ; preds = %19
  %46 = load %struct.inode*, %struct.inode** %2, align 8
  %47 = call i64 @IS_SYNC(%struct.inode* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @ext4_handle_sync(i32* %50)
  br label %52

52:                                               ; preds = %49, %45
  %53 = load %struct.inode*, %struct.inode** %2, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = load %struct.inode*, %struct.inode** %2, align 8
  %57 = call i32 @ext4_mark_inode_dirty(i32* %55, %struct.inode* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load %struct.inode*, %struct.inode** %2, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @ext4_warning(i32 %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %95

66:                                               ; preds = %52
  %67 = load %struct.inode*, %struct.inode** %2, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.inode*, %struct.inode** %2, align 8
  %73 = call i32 @ext4_truncate(%struct.inode* %72)
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @ext4_handle_has_enough_credits(i32* %75, i32 3)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %103, label %78

78:                                               ; preds = %74
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @ext4_journal_extend(i32* %79, i32 3)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @ext4_journal_restart(i32* %84, i32 3)
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = load %struct.inode*, %struct.inode** %2, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @ext4_warning(i32 %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %89, %60
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @ext4_journal_stop(i32* %96)
  %98 = load %struct.inode*, %struct.inode** %2, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @sb_end_intwrite(i32 %100)
  br label %129

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %102, %74
  %104 = load i32*, i32** %3, align 8
  %105 = load %struct.inode*, %struct.inode** %2, align 8
  %106 = call i32 @ext4_orphan_del(i32* %104, %struct.inode* %105)
  %107 = call i32 (...) @get_seconds()
  %108 = load %struct.inode*, %struct.inode** %2, align 8
  %109 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %108)
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 4
  %111 = load i32*, i32** %3, align 8
  %112 = load %struct.inode*, %struct.inode** %2, align 8
  %113 = call i32 @ext4_mark_inode_dirty(i32* %111, %struct.inode* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %103
  %116 = load %struct.inode*, %struct.inode** %2, align 8
  %117 = call i32 @clear_inode(%struct.inode* %116)
  br label %122

118:                                              ; preds = %103
  %119 = load i32*, i32** %3, align 8
  %120 = load %struct.inode*, %struct.inode** %2, align 8
  %121 = call i32 @ext4_free_inode(i32* %119, %struct.inode* %120)
  br label %122

122:                                              ; preds = %118, %115
  %123 = load i32*, i32** %3, align 8
  %124 = call i32 @ext4_journal_stop(i32* %123)
  %125 = load %struct.inode*, %struct.inode** %2, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @sb_end_intwrite(i32 %127)
  br label %132

129:                                              ; preds = %95, %32, %18
  %130 = load %struct.inode*, %struct.inode** %2, align 8
  %131 = call i32 @clear_inode(%struct.inode* %130)
  br label %132

132:                                              ; preds = %129, %122
  ret void
}

declare dso_local i64 @ext4_should_order_data(%struct.inode*) #1

declare dso_local i32 @ext4_begin_ordered_truncate(%struct.inode*, i32) #1

declare dso_local i32 @truncate_inode_pages(i32*, i32) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @sb_start_intwrite(i32) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i64) #1

declare dso_local i64 @blocks_for_truncate(%struct.inode*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @ext4_std_error(i32, i32) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext4_orphan_del(i32*, %struct.inode*) #1

declare dso_local i32 @sb_end_intwrite(i32) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(i32*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_warning(i32, i8*, i32) #1

declare dso_local i32 @ext4_truncate(%struct.inode*) #1

declare dso_local i32 @ext4_handle_has_enough_credits(i32*, i32) #1

declare dso_local i32 @ext4_journal_extend(i32*, i32) #1

declare dso_local i32 @ext4_journal_restart(i32*, i32) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i32 @ext4_free_inode(i32*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
