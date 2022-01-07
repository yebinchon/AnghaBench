; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_amigaffs.c_affs_insert_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_amigaffs.c_affs_insert_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_3__ = type { i8*, i8*, i32* }
%struct.TYPE_4__ = type { i8** }

@.str = private unnamed_addr constant [35 x i8] c"AFFS: insert_hash(dir=%u, ino=%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @affs_insert_hash(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 4
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %6, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %15 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.super_block*, %struct.super_block** %6, align 8
  %18 = load %struct.super_block*, %struct.super_block** %6, align 8
  %19 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %20 = call %struct.TYPE_3__* @AFFS_TAIL(%struct.super_block* %18, %struct.buffer_head* %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load %struct.super_block*, %struct.super_block** %6, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %26 = call %struct.TYPE_3__* @AFFS_TAIL(%struct.super_block* %24, %struct.buffer_head* %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @affs_hash_name(%struct.super_block* %17, i32* %23, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %35)
  %37 = load %struct.super_block*, %struct.super_block** %6, align 8
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call %struct.buffer_head* @affs_bread(%struct.super_block* %37, i64 %40)
  store %struct.buffer_head* %41, %struct.buffer_head** %7, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %43 = icmp ne %struct.buffer_head* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %2
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %138

47:                                               ; preds = %2
  %48 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %49 = call %struct.TYPE_4__* @AFFS_HEAD(%struct.buffer_head* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @be32_to_cpu(i8* %55)
  store i64 %56, i64* %9, align 8
  br label %57

57:                                               ; preds = %71, %47
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %57
  %61 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %62 = call i32 @affs_brelse(%struct.buffer_head* %61)
  %63 = load %struct.super_block*, %struct.super_block** %6, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call %struct.buffer_head* @affs_bread(%struct.super_block* %63, i64 %64)
  store %struct.buffer_head* %65, %struct.buffer_head** %7, align 8
  %66 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %67 = icmp ne %struct.buffer_head* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %138

71:                                               ; preds = %60
  %72 = load %struct.super_block*, %struct.super_block** %6, align 8
  %73 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %74 = call %struct.TYPE_3__* @AFFS_TAIL(%struct.super_block* %72, %struct.buffer_head* %73)
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @be32_to_cpu(i8* %76)
  store i64 %77, i64* %9, align 8
  br label %57

78:                                               ; preds = %57
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i8* @cpu_to_be32(i64 %81)
  %83 = load %struct.super_block*, %struct.super_block** %6, align 8
  %84 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %85 = call %struct.TYPE_3__* @AFFS_TAIL(%struct.super_block* %83, %struct.buffer_head* %84)
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i8* %82, i8** %86, align 8
  %87 = load %struct.super_block*, %struct.super_block** %6, align 8
  %88 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %89 = call %struct.TYPE_3__* @AFFS_TAIL(%struct.super_block* %87, %struct.buffer_head* %88)
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i8* null, i8** %90, align 8
  %91 = load %struct.super_block*, %struct.super_block** %6, align 8
  %92 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %93 = call i32 @affs_fix_checksum(%struct.super_block* %91, %struct.buffer_head* %92)
  %94 = load %struct.inode*, %struct.inode** %4, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %98 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %96, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %78
  %102 = load i64, i64* %8, align 8
  %103 = call i8* @cpu_to_be32(i64 %102)
  %104 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %105 = call %struct.TYPE_4__* @AFFS_HEAD(%struct.buffer_head* %104)
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i8**, i8*** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  store i8* %103, i8** %110, align 8
  br label %118

111:                                              ; preds = %78
  %112 = load i64, i64* %8, align 8
  %113 = call i8* @cpu_to_be32(i64 %112)
  %114 = load %struct.super_block*, %struct.super_block** %6, align 8
  %115 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %116 = call %struct.TYPE_3__* @AFFS_TAIL(%struct.super_block* %114, %struct.buffer_head* %115)
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  store i8* %113, i8** %117, align 8
  br label %118

118:                                              ; preds = %111, %101
  %119 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %120 = load i64, i64* %8, align 8
  %121 = call i32 @affs_adjust_checksum(%struct.buffer_head* %119, i64 %120)
  %122 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %123 = load %struct.inode*, %struct.inode** %4, align 8
  %124 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %122, %struct.inode* %123)
  %125 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %126 = call i32 @affs_brelse(%struct.buffer_head* %125)
  %127 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %128 = load %struct.inode*, %struct.inode** %4, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  %130 = load %struct.inode*, %struct.inode** %4, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 3
  store i32 %127, i32* %131, align 8
  %132 = load %struct.inode*, %struct.inode** %4, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 8
  %136 = load %struct.inode*, %struct.inode** %4, align 8
  %137 = call i32 @mark_inode_dirty(%struct.inode* %136)
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %118, %68, %44
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @affs_hash_name(%struct.super_block*, i32*, i32) #1

declare dso_local %struct.TYPE_3__* @AFFS_TAIL(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local %struct.buffer_head* @affs_bread(%struct.super_block*, i64) #1

declare dso_local i64 @be32_to_cpu(i8*) #1

declare dso_local %struct.TYPE_4__* @AFFS_HEAD(%struct.buffer_head*) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @affs_fix_checksum(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @affs_adjust_checksum(%struct.buffer_head*, i64) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
