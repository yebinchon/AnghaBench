; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_da_write_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_da_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@FALL_BACK_TO_NONDELALLOC = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @ext4_da_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_da_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.address_space* %1, %struct.address_space** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page* %5, %struct.page** %14, align 8
  store i8* %6, i8** %15, align 8
  %24 = load %struct.address_space*, %struct.address_space** %10, align 8
  %25 = getelementptr inbounds %struct.address_space, %struct.address_space* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %16, align 8
  store i32 0, i32* %17, align 4
  %27 = call i32* (...) @ext4_journal_current_handle()
  store i32* %27, i32** %19, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %23, align 4
  %31 = load i32, i32* %23, align 4
  %32 = load i32, i32* @FALL_BACK_TO_NONDELALLOC, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %7
  %35 = load %struct.inode*, %struct.inode** %16, align 8
  %36 = call i32 @ext4_inode_journal_mode(%struct.inode* %35)
  switch i32 %36, label %55 [
    i32 129, label %37
    i32 128, label %46
  ]

37:                                               ; preds = %34
  %38 = load %struct.file*, %struct.file** %9, align 8
  %39 = load %struct.address_space*, %struct.address_space** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.page*, %struct.page** %14, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = call i32 @ext4_ordered_write_end(%struct.file* %38, %struct.address_space* %39, i32 %40, i32 %41, i32 %42, %struct.page* %43, i8* %44)
  store i32 %45, i32* %8, align 4
  br label %154

46:                                               ; preds = %34
  %47 = load %struct.file*, %struct.file** %9, align 8
  %48 = load %struct.address_space*, %struct.address_space** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.page*, %struct.page** %14, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = call i32 @ext4_writeback_write_end(%struct.file* %47, %struct.address_space* %48, i32 %49, i32 %50, i32 %51, %struct.page* %52, i8* %53)
  store i32 %54, i32* %8, align 4
  br label %154

55:                                               ; preds = %34
  %56 = call i32 (...) @BUG()
  br label %57

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %57, %7
  %59 = load %struct.inode*, %struct.inode** %16, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @trace_ext4_da_write_end(%struct.inode* %59, i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %66 = sub nsw i32 %65, 1
  %67 = and i32 %64, %66
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %21, align 8
  %69 = load i64, i64* %21, align 8
  %70 = load i32, i32* %13, align 4
  %71 = zext i32 %70 to i64
  %72 = add i64 %69, %71
  %73 = sub i64 %72, 1
  store i64 %73, i64* %22, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %13, align 4
  %76 = add i32 %74, %75
  store i32 %76, i32* %20, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %124

79:                                               ; preds = %58
  %80 = load i32, i32* %20, align 4
  %81 = load %struct.inode*, %struct.inode** %16, align 8
  %82 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %81)
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %80, %84
  br i1 %85, label %86, label %124

86:                                               ; preds = %79
  %87 = load %struct.page*, %struct.page** %14, align 8
  %88 = load i64, i64* %22, align 8
  %89 = call i64 @ext4_da_should_update_i_disksize(%struct.page* %87, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %123

91:                                               ; preds = %86
  %92 = load %struct.inode*, %struct.inode** %16, align 8
  %93 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %92)
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = call i32 @down_write(i32* %94)
  %96 = load i32, i32* %20, align 4
  %97 = load %struct.inode*, %struct.inode** %16, align 8
  %98 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %97)
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp sgt i32 %96, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %91
  %103 = load %struct.inode*, %struct.inode** %16, align 8
  %104 = call i64 @ext4_should_order_data(%struct.inode* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32*, i32** %19, align 8
  %108 = load %struct.inode*, %struct.inode** %16, align 8
  %109 = call i32 @ext4_jbd2_file_inode(i32* %107, %struct.inode* %108)
  store i32 %109, i32* %17, align 4
  br label %110

110:                                              ; preds = %106, %102
  %111 = load i32, i32* %20, align 4
  %112 = load %struct.inode*, %struct.inode** %16, align 8
  %113 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %112)
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 4
  br label %115

115:                                              ; preds = %110, %91
  %116 = load %struct.inode*, %struct.inode** %16, align 8
  %117 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %116)
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = call i32 @up_write(i32* %118)
  %120 = load i32*, i32** %19, align 8
  %121 = load %struct.inode*, %struct.inode** %16, align 8
  %122 = call i32 @ext4_mark_inode_dirty(i32* %120, %struct.inode* %121)
  br label %123

123:                                              ; preds = %115, %86
  br label %124

124:                                              ; preds = %123, %79, %58
  %125 = load %struct.file*, %struct.file** %9, align 8
  %126 = load %struct.address_space*, %struct.address_space** %10, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.page*, %struct.page** %14, align 8
  %131 = load i8*, i8** %15, align 8
  %132 = call i32 @generic_write_end(%struct.file* %125, %struct.address_space* %126, i32 %127, i32 %128, i32 %129, %struct.page* %130, i8* %131)
  store i32 %132, i32* %18, align 4
  %133 = load i32, i32* %18, align 4
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %18, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %124
  %137 = load i32, i32* %18, align 4
  store i32 %137, i32* %17, align 4
  br label %138

138:                                              ; preds = %136, %124
  %139 = load i32*, i32** %19, align 8
  %140 = call i32 @ext4_journal_stop(i32* %139)
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %17, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %18, align 4
  store i32 %144, i32* %17, align 4
  br label %145

145:                                              ; preds = %143, %138
  %146 = load i32, i32* %17, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32, i32* %17, align 4
  br label %152

150:                                              ; preds = %145
  %151 = load i32, i32* %13, align 4
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ]
  store i32 %153, i32* %8, align 4
  br label %154

154:                                              ; preds = %152, %46, %37
  %155 = load i32, i32* %8, align 4
  ret i32 %155
}

declare dso_local i32* @ext4_journal_current_handle(...) #1

declare dso_local i32 @ext4_inode_journal_mode(%struct.inode*) #1

declare dso_local i32 @ext4_ordered_write_end(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*) #1

declare dso_local i32 @ext4_writeback_write_end(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @trace_ext4_da_write_end(%struct.inode*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i64 @ext4_da_should_update_i_disksize(%struct.page*, i64) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @ext4_should_order_data(%struct.inode*) #1

declare dso_local i32 @ext4_jbd2_file_inode(i32*, %struct.inode*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @generic_write_end(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
