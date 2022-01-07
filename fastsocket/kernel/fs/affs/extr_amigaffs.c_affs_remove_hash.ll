; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_amigaffs.c_affs_remove_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_amigaffs.c_affs_remove_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_3__ = type { i8*, i64, i32* }
%struct.TYPE_4__ = type { i8** }

@.str = private unnamed_addr constant [47 x i8] c"AFFS: remove_hash(dir=%d, ino=%d, hashval=%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @affs_remove_hash(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 4
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %6, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.super_block*, %struct.super_block** %6, align 8
  %20 = load %struct.super_block*, %struct.super_block** %6, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %22 = call %struct.TYPE_3__* @AFFS_TAIL(%struct.super_block* %20, %struct.buffer_head* %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load %struct.super_block*, %struct.super_block** %6, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %28 = call %struct.TYPE_3__* @AFFS_TAIL(%struct.super_block* %26, %struct.buffer_head* %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @affs_hash_name(%struct.super_block* %19, i32* %25, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %37, i32 %38)
  %40 = load %struct.super_block*, %struct.super_block** %6, align 8
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call %struct.buffer_head* @affs_bread(%struct.super_block* %40, i64 %43)
  store %struct.buffer_head* %44, %struct.buffer_head** %7, align 8
  %45 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %46 = icmp ne %struct.buffer_head* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %2
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %144

50:                                               ; preds = %2
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %12, align 4
  %53 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %54 = call %struct.TYPE_4__* @AFFS_HEAD(%struct.buffer_head* %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i8**, i8*** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @be32_to_cpu(i8* %60)
  store i64 %61, i64* %9, align 8
  br label %62

62:                                               ; preds = %122, %50
  %63 = load i64, i64* %9, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %129

65:                                               ; preds = %62
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %111

69:                                               ; preds = %65
  %70 = load %struct.super_block*, %struct.super_block** %6, align 8
  %71 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %72 = call %struct.TYPE_3__* @AFFS_TAIL(%struct.super_block* %70, %struct.buffer_head* %71)
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %10, align 8
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %79 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %69
  %83 = load i8*, i8** %10, align 8
  %84 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %85 = call %struct.TYPE_4__* @AFFS_HEAD(%struct.buffer_head* %84)
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i8**, i8*** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  store i8* %83, i8** %90, align 8
  br label %97

91:                                               ; preds = %69
  %92 = load i8*, i8** %10, align 8
  %93 = load %struct.super_block*, %struct.super_block** %6, align 8
  %94 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %95 = call %struct.TYPE_3__* @AFFS_TAIL(%struct.super_block* %93, %struct.buffer_head* %94)
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i8* %92, i8** %96, align 8
  br label %97

97:                                               ; preds = %91, %82
  %98 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = call i64 @be32_to_cpu(i8* %99)
  %101 = load i64, i64* %9, align 8
  %102 = sub nsw i64 %100, %101
  %103 = call i32 @affs_adjust_checksum(%struct.buffer_head* %98, i64 %102)
  %104 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %105 = load %struct.inode*, %struct.inode** %4, align 8
  %106 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %104, %struct.inode* %105)
  %107 = load %struct.super_block*, %struct.super_block** %6, align 8
  %108 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %109 = call %struct.TYPE_3__* @AFFS_TAIL(%struct.super_block* %107, %struct.buffer_head* %108)
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  store i64 0, i64* %110, align 8
  store i32 0, i32* %12, align 4
  br label %129

111:                                              ; preds = %65
  %112 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %113 = call i32 @affs_brelse(%struct.buffer_head* %112)
  %114 = load %struct.super_block*, %struct.super_block** %6, align 8
  %115 = load i64, i64* %9, align 8
  %116 = call %struct.buffer_head* @affs_bread(%struct.super_block* %114, i64 %115)
  store %struct.buffer_head* %116, %struct.buffer_head** %7, align 8
  %117 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %118 = icmp ne %struct.buffer_head* %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %111
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %144

122:                                              ; preds = %111
  %123 = load %struct.super_block*, %struct.super_block** %6, align 8
  %124 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %125 = call %struct.TYPE_3__* @AFFS_TAIL(%struct.super_block* %123, %struct.buffer_head* %124)
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i64 @be32_to_cpu(i8* %127)
  store i64 %128, i64* %9, align 8
  br label %62

129:                                              ; preds = %97, %62
  %130 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %131 = call i32 @affs_brelse(%struct.buffer_head* %130)
  %132 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %133 = load %struct.inode*, %struct.inode** %4, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  %135 = load %struct.inode*, %struct.inode** %4, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 3
  store i32 %132, i32* %136, align 8
  %137 = load %struct.inode*, %struct.inode** %4, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  %141 = load %struct.inode*, %struct.inode** %4, align 8
  %142 = call i32 @mark_inode_dirty(%struct.inode* %141)
  %143 = load i32, i32* %12, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %129, %119, %47
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @affs_hash_name(%struct.super_block*, i32*, i32) #1

declare dso_local %struct.TYPE_3__* @AFFS_TAIL(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, i32) #1

declare dso_local %struct.buffer_head* @affs_bread(%struct.super_block*, i64) #1

declare dso_local i64 @be32_to_cpu(i8*) #1

declare dso_local %struct.TYPE_4__* @AFFS_HEAD(%struct.buffer_head*) #1

declare dso_local i32 @affs_adjust_checksum(%struct.buffer_head*, i64) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
