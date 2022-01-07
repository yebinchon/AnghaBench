; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_inode.c_nilfs_new_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_inode.c_nilfs_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.nilfs_sb_info = type { i32, i32, i32, i32 }
%struct.nilfs_inode_info = type { i32, i32, i64, i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@__GFP_FS = common dso_local global i32 0, align 4
@NILFS_I_NEW = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@NILFS_I_BMAP = common dso_local global i32 0, align 4
@NILFS_IMMUTABLE_FL = common dso_local global i32 0, align 4
@NILFS_APPEND_FL = common dso_local global i32 0, align 4
@NILFS_DIRSYNC_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @nilfs_new_inode(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.nilfs_sb_info*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.nilfs_inode_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 10
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %6, align 8
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = call %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block* %15)
  store %struct.nilfs_sb_info* %16, %struct.nilfs_sb_info** %7, align 8
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.super_block*, %struct.super_block** %6, align 8
  %20 = call %struct.inode* @new_inode(%struct.super_block* %19)
  store %struct.inode* %20, %struct.inode** %8, align 8
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = icmp ne %struct.inode* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %199

28:                                               ; preds = %2
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.inode*, %struct.inode** %8, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mapping_gfp_mask(i32 %34)
  %36 = load i32, i32* @__GFP_FS, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = call i32 @mapping_set_gfp_mask(i32 %31, i32 %38)
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %40)
  store %struct.nilfs_inode_info* %41, %struct.nilfs_inode_info** %9, align 8
  %42 = load i32, i32* @NILFS_I_NEW, align 4
  %43 = shl i32 1, %42
  %44 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %9, align 8
  %45 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %7, align 8
  %47 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %9, align 8
  %50 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %49, i32 0, i32 5
  %51 = call i32 @nilfs_ifile_create_inode(i32 %48, i32* %11, i32* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %28
  br label %194

56:                                               ; preds = %28
  %57 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %7, align 8
  %58 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %57, i32 0, i32 2
  %59 = call i32 @atomic_inc(i32* %58)
  %60 = call i32 (...) @current_fsuid()
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 8
  store i32 %60, i32* %62, align 4
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @S_ISGID, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %56
  %70 = load %struct.inode*, %struct.inode** %4, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.inode*, %struct.inode** %8, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 7
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i64 @S_ISDIR(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = load i32, i32* @S_ISGID, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %78, %69
  br label %87

83:                                               ; preds = %56
  %84 = call i32 (...) @current_fsgid()
  %85 = load %struct.inode*, %struct.inode** %8, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 7
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %83, %82
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.inode*, %struct.inode** %8, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.inode*, %struct.inode** %8, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @CURRENT_TIME, align 4
  %95 = load %struct.inode*, %struct.inode** %8, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = load %struct.inode*, %struct.inode** %8, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 4
  store i32 %94, i32* %98, align 4
  %99 = load %struct.inode*, %struct.inode** %8, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 5
  store i32 %94, i32* %100, align 8
  %101 = load i32, i32* %5, align 4
  %102 = call i64 @S_ISREG(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %87
  %105 = load i32, i32* %5, align 4
  %106 = call i64 @S_ISDIR(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %5, align 4
  %110 = call i64 @S_ISLNK(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %108, %104, %87
  %113 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %9, align 8
  %114 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @nilfs_bmap_read(i32 %115, i32* null)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %189

120:                                              ; preds = %112
  %121 = load i32, i32* @NILFS_I_BMAP, align 4
  %122 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %9, align 8
  %123 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %122, i32 0, i32 0
  %124 = call i32 @set_bit(i32 %121, i32* %123)
  br label %125

125:                                              ; preds = %120, %108
  %126 = load %struct.inode*, %struct.inode** %4, align 8
  %127 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %126)
  %128 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %9, align 8
  %131 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i64 @S_ISLNK(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %125
  %136 = load i32, i32* @NILFS_IMMUTABLE_FL, align 4
  %137 = load i32, i32* @NILFS_APPEND_FL, align 4
  %138 = or i32 %136, %137
  %139 = xor i32 %138, -1
  %140 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %9, align 8
  %141 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %135, %125
  %145 = load i32, i32* %5, align 4
  %146 = call i64 @S_ISDIR(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* @NILFS_DIRSYNC_FL, align 4
  %150 = xor i32 %149, -1
  %151 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %9, align 8
  %152 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %148, %144
  %156 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %9, align 8
  %157 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %156, i32 0, i32 3
  store i64 0, i64* %157, align 8
  %158 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %9, align 8
  %159 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %158, i32 0, i32 2
  store i64 0, i64* %159, align 8
  %160 = load %struct.inode*, %struct.inode** %8, align 8
  %161 = call i32 @nilfs_set_inode_flags(%struct.inode* %160)
  %162 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %7, align 8
  %163 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %162, i32 0, i32 0
  %164 = call i32 @spin_lock(i32* %163)
  %165 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %7, align 8
  %166 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  %169 = sext i32 %167 to i64
  %170 = load %struct.inode*, %struct.inode** %8, align 8
  %171 = getelementptr inbounds %struct.inode, %struct.inode* %170, i32 0, i32 2
  store i64 %169, i64* %171, align 8
  %172 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %7, align 8
  %173 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %172, i32 0, i32 0
  %174 = call i32 @spin_unlock(i32* %173)
  %175 = load %struct.inode*, %struct.inode** %8, align 8
  %176 = call i32 @insert_inode_hash(%struct.inode* %175)
  %177 = load %struct.inode*, %struct.inode** %8, align 8
  %178 = load %struct.inode*, %struct.inode** %4, align 8
  %179 = call i32 @nilfs_init_acl(%struct.inode* %177, %struct.inode* %178)
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = call i64 @unlikely(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %155
  br label %188

184:                                              ; preds = %155
  %185 = load %struct.inode*, %struct.inode** %8, align 8
  %186 = call i32 @mark_inode_dirty(%struct.inode* %185)
  %187 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %187, %struct.inode** %3, align 8
  br label %202

188:                                              ; preds = %183
  br label %189

189:                                              ; preds = %188, %119
  %190 = load %struct.inode*, %struct.inode** %8, align 8
  %191 = getelementptr inbounds %struct.inode, %struct.inode* %190, i32 0, i32 1
  store i64 0, i64* %191, align 8
  %192 = load %struct.inode*, %struct.inode** %8, align 8
  %193 = call i32 @iput(%struct.inode* %192)
  br label %199

194:                                              ; preds = %55
  %195 = load %struct.inode*, %struct.inode** %8, align 8
  %196 = call i32 @make_bad_inode(%struct.inode* %195)
  %197 = load %struct.inode*, %struct.inode** %8, align 8
  %198 = call i32 @iput(%struct.inode* %197)
  br label %199

199:                                              ; preds = %194, %189, %27
  %200 = load i32, i32* %10, align 4
  %201 = call %struct.inode* @ERR_PTR(i32 %200)
  store %struct.inode* %201, %struct.inode** %3, align 8
  br label %202

202:                                              ; preds = %199, %184
  %203 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %203
}

declare dso_local %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block*) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mapping_set_gfp_mask(i32, i32) #1

declare dso_local i32 @mapping_gfp_mask(i32) #1

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i32 @nilfs_ifile_create_inode(i32, i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @nilfs_bmap_read(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nilfs_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @nilfs_init_acl(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
