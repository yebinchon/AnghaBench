; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_inode.c_affs_add_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_inode.c_affs_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.buffer_head = type { i32 }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [51 x i8] c"AFFS: add_entry(dir=%u, inode=%u, \22%*s\22, type=%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@T_SHORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @affs_add_entry(%struct.inode* %0, %struct.inode* %1, %struct.dentry* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 3
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %9, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.dentry*, %struct.dentry** %7, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.dentry*, %struct.dentry** %7, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %28, i32 %32, i32 %33)
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %13, align 4
  %37 = load %struct.super_block*, %struct.super_block** %9, align 8
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.buffer_head* @affs_bread(%struct.super_block* %37, i32 %40)
  store %struct.buffer_head* %41, %struct.buffer_head** %11, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %43 = icmp ne %struct.buffer_head* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %4
  br label %177

45:                                               ; preds = %4
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = call i32 @affs_lock_link(%struct.inode* %46)
  %48 = load i32, i32* %8, align 4
  switch i32 %48, label %71 [
    i32 128, label %49
    i32 129, label %49
  ]

49:                                               ; preds = %45, %45
  %50 = load i32, i32* @ENOSPC, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %13, align 4
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @affs_alloc_block(%struct.inode* %52, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  br label %183

60:                                               ; preds = %49
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %13, align 4
  %63 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  store %struct.buffer_head* %63, %struct.buffer_head** %10, align 8
  %64 = load %struct.super_block*, %struct.super_block** %9, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call %struct.buffer_head* @affs_getzeroblk(%struct.super_block* %64, i32 %65)
  store %struct.buffer_head* %66, %struct.buffer_head** %11, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %68 = icmp ne %struct.buffer_head* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  br label %183

70:                                               ; preds = %60
  br label %72

71:                                               ; preds = %45
  br label %72

72:                                               ; preds = %71, %70
  %73 = load i32, i32* @T_SHORT, align 4
  %74 = call i8* @cpu_to_be32(i32 %73)
  %75 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %76 = call %struct.TYPE_6__* @AFFS_HEAD(%struct.buffer_head* %75)
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  store i8* %74, i8** %77, align 8
  %78 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %79 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @cpu_to_be32(i32 %80)
  %82 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %83 = call %struct.TYPE_6__* @AFFS_HEAD(%struct.buffer_head* %82)
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i8* %81, i8** %84, align 8
  %85 = load %struct.super_block*, %struct.super_block** %9, align 8
  %86 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %87 = call %struct.TYPE_5__* @AFFS_TAIL(%struct.super_block* %85, %struct.buffer_head* %86)
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.dentry*, %struct.dentry** %7, align 8
  %91 = call i32 @affs_copy_name(i32 %89, %struct.dentry* %90)
  %92 = load i32, i32* %8, align 4
  %93 = call i8* @cpu_to_be32(i32 %92)
  %94 = load %struct.super_block*, %struct.super_block** %9, align 8
  %95 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %96 = call %struct.TYPE_5__* @AFFS_TAIL(%struct.super_block* %94, %struct.buffer_head* %95)
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  store i8* %93, i8** %97, align 8
  %98 = load %struct.inode*, %struct.inode** %5, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i8* @cpu_to_be32(i32 %100)
  %102 = load %struct.super_block*, %struct.super_block** %9, align 8
  %103 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %104 = call %struct.TYPE_5__* @AFFS_TAIL(%struct.super_block* %102, %struct.buffer_head* %103)
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  store i8* %101, i8** %105, align 8
  %106 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %107 = icmp ne %struct.buffer_head* %106, null
  br i1 %107, label %108, label %148

108:                                              ; preds = %72
  %109 = load %struct.super_block*, %struct.super_block** %9, align 8
  %110 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %111 = call %struct.TYPE_5__* @AFFS_TAIL(%struct.super_block* %109, %struct.buffer_head* %110)
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  store i8* %113, i8** %14, align 8
  %114 = load %struct.inode*, %struct.inode** %6, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i8* @cpu_to_be32(i32 %116)
  %118 = load %struct.super_block*, %struct.super_block** %9, align 8
  %119 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %120 = call %struct.TYPE_5__* @AFFS_TAIL(%struct.super_block* %118, %struct.buffer_head* %119)
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  store i8* %117, i8** %121, align 8
  %122 = load i8*, i8** %14, align 8
  %123 = load %struct.super_block*, %struct.super_block** %9, align 8
  %124 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %125 = call %struct.TYPE_5__* @AFFS_TAIL(%struct.super_block* %123, %struct.buffer_head* %124)
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  store i8* %122, i8** %126, align 8
  %127 = load i32, i32* %12, align 4
  %128 = call i8* @cpu_to_be32(i32 %127)
  %129 = load %struct.super_block*, %struct.super_block** %9, align 8
  %130 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %131 = call %struct.TYPE_5__* @AFFS_TAIL(%struct.super_block* %129, %struct.buffer_head* %130)
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  store i8* %128, i8** %132, align 8
  %133 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = load i8*, i8** %14, align 8
  %137 = call i64 @be32_to_cpu(i8* %136)
  %138 = sub nsw i64 %135, %137
  %139 = call i32 @affs_adjust_checksum(%struct.buffer_head* %133, i64 %138)
  %140 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %141 = load %struct.inode*, %struct.inode** %6, align 8
  %142 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %140, %struct.inode* %141)
  %143 = load %struct.inode*, %struct.inode** %6, align 8
  %144 = getelementptr inbounds %struct.inode, %struct.inode* %143, i32 0, i32 1
  store i32 2, i32* %144, align 4
  %145 = load %struct.inode*, %struct.inode** %6, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 2
  %147 = call i32 @atomic_inc(i32* %146)
  br label %148

148:                                              ; preds = %108, %72
  %149 = load %struct.super_block*, %struct.super_block** %9, align 8
  %150 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %151 = call i32 @affs_fix_checksum(%struct.super_block* %149, %struct.buffer_head* %150)
  %152 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %153 = load %struct.inode*, %struct.inode** %6, align 8
  %154 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %152, %struct.inode* %153)
  %155 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %156 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = inttoptr i64 %158 to i8*
  %160 = load %struct.dentry*, %struct.dentry** %7, align 8
  %161 = getelementptr inbounds %struct.dentry, %struct.dentry* %160, i32 0, i32 0
  store i8* %159, i8** %161, align 8
  %162 = load %struct.inode*, %struct.inode** %5, align 8
  %163 = call i32 @affs_lock_dir(%struct.inode* %162)
  %164 = load %struct.inode*, %struct.inode** %5, align 8
  %165 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %166 = call i32 @affs_insert_hash(%struct.inode* %164, %struct.buffer_head* %165)
  store i32 %166, i32* %13, align 4
  %167 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %168 = load %struct.inode*, %struct.inode** %6, align 8
  %169 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %167, %struct.inode* %168)
  %170 = load %struct.inode*, %struct.inode** %5, align 8
  %171 = call i32 @affs_unlock_dir(%struct.inode* %170)
  %172 = load %struct.inode*, %struct.inode** %6, align 8
  %173 = call i32 @affs_unlock_link(%struct.inode* %172)
  %174 = load %struct.dentry*, %struct.dentry** %7, align 8
  %175 = load %struct.inode*, %struct.inode** %6, align 8
  %176 = call i32 @d_instantiate(%struct.dentry* %174, %struct.inode* %175)
  br label %177

177:                                              ; preds = %190, %148, %44
  %178 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %179 = call i32 @affs_brelse(%struct.buffer_head* %178)
  %180 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %181 = call i32 @affs_brelse(%struct.buffer_head* %180)
  %182 = load i32, i32* %13, align 4
  ret i32 %182

183:                                              ; preds = %69, %59
  %184 = load i32, i32* %12, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = load %struct.super_block*, %struct.super_block** %9, align 8
  %188 = load i32, i32* %12, align 4
  %189 = call i32 @affs_free_block(%struct.super_block* %187, i32 %188)
  br label %190

190:                                              ; preds = %186, %183
  %191 = load %struct.inode*, %struct.inode** %6, align 8
  %192 = call i32 @affs_unlock_link(%struct.inode* %191)
  br label %177
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.buffer_head* @affs_bread(%struct.super_block*, i32) #1

declare dso_local i32 @affs_lock_link(%struct.inode*) #1

declare dso_local i32 @affs_alloc_block(%struct.inode*, i32) #1

declare dso_local %struct.buffer_head* @affs_getzeroblk(%struct.super_block*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local %struct.TYPE_6__* @AFFS_HEAD(%struct.buffer_head*) #1

declare dso_local i32 @affs_copy_name(i32, %struct.dentry*) #1

declare dso_local %struct.TYPE_5__* @AFFS_TAIL(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @affs_adjust_checksum(%struct.buffer_head*, i64) #1

declare dso_local i64 @be32_to_cpu(i8*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @affs_fix_checksum(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @affs_lock_dir(%struct.inode*) #1

declare dso_local i32 @affs_insert_hash(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @affs_unlock_dir(%struct.inode*) #1

declare dso_local i32 @affs_unlock_link(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

declare dso_local i32 @affs_free_block(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
