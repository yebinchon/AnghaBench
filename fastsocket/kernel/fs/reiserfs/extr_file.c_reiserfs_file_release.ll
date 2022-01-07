; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_file.c_reiserfs_file_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_file.c_reiserfs_file_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32 }
%struct.file = type { i32 }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.TYPE_2__ = type { i32, i64, i32 }

@i_pack_on_close_mask = common dso_local global i32 0, align 4
@i_ever_mapped = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"clm-9001\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"pinning inode %lu because the preallocation can't be freed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @reiserfs_file_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_file_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.reiserfs_transaction_handle, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @S_ISREG(i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 2
  %19 = call i32 @atomic_read(i32* %18)
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %33, label %21

21:                                               ; preds = %2
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @i_pack_on_close_mask, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = call i64 @tail_has_to_be_packed(%struct.inode* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29, %21, %2
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %141

40:                                               ; preds = %33, %29
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @i_ever_mapped, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %40
  %56 = load i32, i32* @i_pack_on_close_mask, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %57
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %55, %40
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @reiserfs_write_lock(i32 %66)
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %6, i32 %70, i32 1)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %63
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %8, align 4
  %76 = load %struct.inode*, %struct.inode** %4, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @journal_join_abort(%struct.reiserfs_transaction_handle* %6, i32 %78, i32 1)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %74
  %83 = load %struct.inode*, %struct.inode** %4, align 8
  %84 = call i32 @igrab(%struct.inode* %83)
  %85 = load %struct.inode*, %struct.inode** %4, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.inode*, %struct.inode** %4, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @reiserfs_warning(i32 %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %128

92:                                               ; preds = %74
  br label %93

93:                                               ; preds = %92, %63
  %94 = load %struct.inode*, %struct.inode** %4, align 8
  %95 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %94)
  %96 = load %struct.inode*, %struct.inode** %4, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %6, i32 %98, i32 1)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %93
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %102, %93
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %127, label %107

107:                                              ; preds = %104
  %108 = load %struct.inode*, %struct.inode** %4, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 2
  %110 = call i32 @atomic_read(i32* %109)
  %111 = icmp sle i32 %110, 1
  br i1 %111, label %112, label %127

112:                                              ; preds = %107
  %113 = load %struct.inode*, %struct.inode** %4, align 8
  %114 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %113)
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @i_pack_on_close_mask, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %112
  %121 = load %struct.inode*, %struct.inode** %4, align 8
  %122 = call i64 @tail_has_to_be_packed(%struct.inode* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load %struct.inode*, %struct.inode** %4, align 8
  %126 = call i32 @reiserfs_truncate_file(%struct.inode* %125, i32 0)
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %124, %120, %112, %107, %104
  br label %128

128:                                              ; preds = %127, %82
  %129 = load %struct.inode*, %struct.inode** %4, align 8
  %130 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %129)
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  %132 = call i32 @mutex_unlock(i32* %131)
  %133 = load %struct.inode*, %struct.inode** %4, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 1
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load %struct.inode*, %struct.inode** %4, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @reiserfs_write_unlock(i32 %138)
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %128, %39
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.TYPE_2__* @REISERFS_I(%struct.inode*) #1

declare dso_local i64 @tail_has_to_be_packed(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reiserfs_write_lock(i32) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @journal_join_abort(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @reiserfs_warning(i32, i8*, i8*, i32) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @reiserfs_truncate_file(%struct.inode*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @reiserfs_write_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
