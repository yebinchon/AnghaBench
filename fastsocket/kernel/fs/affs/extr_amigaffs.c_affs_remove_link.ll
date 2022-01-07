; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_amigaffs.c_affs_remove_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_amigaffs.c_affs_remove_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i64, %struct.inode* }
%struct.inode = type { i64, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"AFFS: remove_link(key=%ld)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @affs_remove_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @affs_remove_link(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %12 = load %struct.dentry*, %struct.dentry** %2, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 1
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %4, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 2
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %5, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %10, align 4
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.buffer_head* @affs_bread(%struct.super_block* %24, i64 %27)
  store %struct.buffer_head* %28, %struct.buffer_head** %6, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %30 = icmp ne %struct.buffer_head* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  br label %190

32:                                               ; preds = %1
  %33 = load %struct.dentry*, %struct.dentry** %2, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %8, align 8
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %114

41:                                               ; preds = %32
  %42 = load %struct.super_block*, %struct.super_block** %5, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %44 = call %struct.TYPE_2__* @AFFS_TAIL(%struct.super_block* %42, %struct.buffer_head* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @be32_to_cpu(i32 %46)
  store i64 %47, i64* %8, align 8
  %48 = load %struct.super_block*, %struct.super_block** %5, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call %struct.buffer_head* @affs_bread(%struct.super_block* %48, i64 %49)
  store %struct.buffer_head* %50, %struct.buffer_head** %7, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %52 = icmp ne %struct.buffer_head* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  br label %190

54:                                               ; preds = %41
  %55 = load %struct.super_block*, %struct.super_block** %5, align 8
  %56 = load %struct.super_block*, %struct.super_block** %5, align 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %58 = call %struct.TYPE_2__* @AFFS_TAIL(%struct.super_block* %56, %struct.buffer_head* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @be32_to_cpu(i32 %60)
  %62 = call %struct.inode* @affs_iget(%struct.super_block* %55, i64 %61)
  store %struct.inode* %62, %struct.inode** %3, align 8
  %63 = load %struct.inode*, %struct.inode** %3, align 8
  %64 = call i64 @IS_ERR(%struct.inode* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load %struct.inode*, %struct.inode** %3, align 8
  %68 = call i32 @PTR_ERR(%struct.inode* %67)
  store i32 %68, i32* %10, align 4
  br label %190

69:                                               ; preds = %54
  %70 = load %struct.inode*, %struct.inode** %3, align 8
  %71 = call i32 @affs_lock_dir(%struct.inode* %70)
  %72 = load %struct.dentry*, %struct.dentry** %2, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @affs_fix_dcache(%struct.dentry* %72, i64 %73)
  %75 = load %struct.inode*, %struct.inode** %3, align 8
  %76 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %77 = call i32 @affs_remove_hash(%struct.inode* %75, %struct.buffer_head* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %69
  %81 = load %struct.inode*, %struct.inode** %3, align 8
  %82 = call i32 @affs_unlock_dir(%struct.inode* %81)
  br label %190

83:                                               ; preds = %69
  %84 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %85 = load %struct.inode*, %struct.inode** %4, align 8
  %86 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %84, %struct.inode* %85)
  %87 = load %struct.super_block*, %struct.super_block** %5, align 8
  %88 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %89 = call %struct.TYPE_2__* @AFFS_TAIL(%struct.super_block* %87, %struct.buffer_head* %88)
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.super_block*, %struct.super_block** %5, align 8
  %93 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %94 = call %struct.TYPE_2__* @AFFS_TAIL(%struct.super_block* %92, %struct.buffer_head* %93)
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @memcpy(i32 %91, i32 %96, i32 32)
  %98 = load %struct.inode*, %struct.inode** %3, align 8
  %99 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %100 = call i32 @affs_insert_hash(%struct.inode* %98, %struct.buffer_head* %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %83
  %104 = load %struct.inode*, %struct.inode** %3, align 8
  %105 = call i32 @affs_unlock_dir(%struct.inode* %104)
  br label %190

106:                                              ; preds = %83
  %107 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %108 = load %struct.inode*, %struct.inode** %4, align 8
  %109 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %107, %struct.inode* %108)
  %110 = load %struct.inode*, %struct.inode** %3, align 8
  %111 = call i32 @affs_unlock_dir(%struct.inode* %110)
  %112 = load %struct.inode*, %struct.inode** %3, align 8
  %113 = call i32 @iput(%struct.inode* %112)
  br label %122

114:                                              ; preds = %32
  %115 = load %struct.super_block*, %struct.super_block** %5, align 8
  %116 = load i64, i64* %8, align 8
  %117 = call %struct.buffer_head* @affs_bread(%struct.super_block* %115, i64 %116)
  store %struct.buffer_head* %117, %struct.buffer_head** %7, align 8
  %118 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %119 = icmp ne %struct.buffer_head* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %114
  br label %190

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121, %106
  br label %123

123:                                              ; preds = %186, %122
  %124 = load %struct.super_block*, %struct.super_block** %5, align 8
  %125 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %126 = call %struct.TYPE_2__* @AFFS_TAIL(%struct.super_block* %124, %struct.buffer_head* %125)
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @be32_to_cpu(i32 %128)
  store i64 %129, i64* %9, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %187

131:                                              ; preds = %123
  %132 = load i64, i64* %9, align 8
  %133 = load i64, i64* %8, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %177

135:                                              ; preds = %131
  %136 = load %struct.super_block*, %struct.super_block** %5, align 8
  %137 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %138 = call %struct.TYPE_2__* @AFFS_TAIL(%struct.super_block* %136, %struct.buffer_head* %137)
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load %struct.super_block*, %struct.super_block** %5, align 8
  %143 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %144 = call %struct.TYPE_2__* @AFFS_TAIL(%struct.super_block* %142, %struct.buffer_head* %143)
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  store i32 %141, i32* %145, align 4
  %146 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %147 = load i32, i32* %11, align 4
  %148 = call i64 @be32_to_cpu(i32 %147)
  %149 = load i64, i64* %8, align 8
  %150 = sub nsw i64 %148, %149
  %151 = call i32 @affs_adjust_checksum(%struct.buffer_head* %146, i64 %150)
  %152 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %153 = load %struct.inode*, %struct.inode** %4, align 8
  %154 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %152, %struct.inode* %153)
  store i32 0, i32* %10, align 4
  %155 = load %struct.super_block*, %struct.super_block** %5, align 8
  %156 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %157 = call %struct.TYPE_2__* @AFFS_TAIL(%struct.super_block* %155, %struct.buffer_head* %156)
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @be32_to_cpu(i32 %159)
  switch i64 %160, label %162 [
    i64 129, label %161
    i64 128, label %161
  ]

161:                                              ; preds = %135, %135
  br label %173

162:                                              ; preds = %135
  %163 = load %struct.super_block*, %struct.super_block** %5, align 8
  %164 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %165 = call %struct.TYPE_2__* @AFFS_TAIL(%struct.super_block* %163, %struct.buffer_head* %164)
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %162
  %170 = load %struct.inode*, %struct.inode** %4, align 8
  %171 = getelementptr inbounds %struct.inode, %struct.inode* %170, i32 0, i32 1
  store i32 1, i32* %171, align 8
  br label %172

172:                                              ; preds = %169, %162
  br label %173

173:                                              ; preds = %172, %161
  %174 = load %struct.super_block*, %struct.super_block** %5, align 8
  %175 = load i64, i64* %8, align 8
  %176 = call i32 @affs_free_block(%struct.super_block* %174, i64 %175)
  br label %190

177:                                              ; preds = %131
  %178 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %179 = call i32 @affs_brelse(%struct.buffer_head* %178)
  %180 = load %struct.super_block*, %struct.super_block** %5, align 8
  %181 = load i64, i64* %9, align 8
  %182 = call %struct.buffer_head* @affs_bread(%struct.super_block* %180, i64 %181)
  store %struct.buffer_head* %182, %struct.buffer_head** %6, align 8
  %183 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %184 = icmp ne %struct.buffer_head* %183, null
  br i1 %184, label %186, label %185

185:                                              ; preds = %177
  br label %190

186:                                              ; preds = %177
  br label %123

187:                                              ; preds = %123
  %188 = load i32, i32* @ENOENT, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %10, align 4
  br label %190

190:                                              ; preds = %187, %185, %173, %120, %103, %80, %66, %53, %31
  %191 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %192 = call i32 @affs_brelse(%struct.buffer_head* %191)
  %193 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %194 = call i32 @affs_brelse(%struct.buffer_head* %193)
  %195 = load i32, i32* %10, align 4
  ret i32 %195
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local %struct.buffer_head* @affs_bread(%struct.super_block*, i64) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @AFFS_TAIL(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local %struct.inode* @affs_iget(%struct.super_block*, i64) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @affs_lock_dir(%struct.inode*) #1

declare dso_local i32 @affs_fix_dcache(%struct.dentry*, i64) #1

declare dso_local i32 @affs_remove_hash(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @affs_unlock_dir(%struct.inode*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @affs_insert_hash(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @affs_adjust_checksum(%struct.buffer_head*, i64) #1

declare dso_local i32 @affs_free_block(%struct.super_block*, i64) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
