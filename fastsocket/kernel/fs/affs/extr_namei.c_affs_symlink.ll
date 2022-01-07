; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_namei.c_affs_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_namei.c_affs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32, %struct.TYPE_6__, i32*, %struct.super_block* }
%struct.TYPE_6__ = type { i32* }
%struct.super_block = type { i32 }
%struct.dentry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.buffer_head = type { i32 }
%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"AFFS: symlink(%lu,\22%.*s\22 -> \22%s\22)\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@affs_symlink_inode_operations = common dso_local global i32 0, align 4
@affs_symlink_aops = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ST_SOFTLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @affs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 5
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  store %struct.super_block* %19, %struct.super_block** %8, align 8
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load %struct.dentry*, %struct.dentry** %6, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27, i32 %31, i8* %32)
  %34 = load %struct.super_block*, %struct.super_block** %8, align 8
  %35 = call %struct.TYPE_7__* @AFFS_SB(%struct.super_block* %34)
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = sub i64 %39, 1
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %13, align 4
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = call %struct.inode* @affs_new_inode(%struct.inode* %42)
  store %struct.inode* %43, %struct.inode** %10, align 8
  %44 = load %struct.inode*, %struct.inode** %10, align 8
  %45 = icmp ne %struct.inode* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %3
  %47 = load i32, i32* @ENOSPC, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %218

49:                                               ; preds = %3
  %50 = load %struct.inode*, %struct.inode** %10, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 4
  store i32* @affs_symlink_inode_operations, i32** %51, align 8
  %52 = load %struct.inode*, %struct.inode** %10, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32* @affs_symlink_aops, i32** %54, align 8
  %55 = load i32, i32* @S_IFLNK, align 4
  %56 = or i32 %55, 511
  %57 = load %struct.inode*, %struct.inode** %10, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.inode*, %struct.inode** %10, align 8
  %60 = call i32 @mode_to_prot(%struct.inode* %59)
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %14, align 4
  %63 = load %struct.super_block*, %struct.super_block** %8, align 8
  %64 = load %struct.inode*, %struct.inode** %10, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call %struct.buffer_head* @affs_bread(%struct.super_block* %63, i32 %66)
  store %struct.buffer_head* %67, %struct.buffer_head** %9, align 8
  %68 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %69 = icmp ne %struct.buffer_head* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %49
  br label %210

71:                                               ; preds = %49
  store i32 0, i32* %12, align 4
  %72 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %73 = call %struct.TYPE_8__* @AFFS_HEAD(%struct.buffer_head* %72)
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** %11, align 8
  store i8 47, i8* %16, align 1
  %77 = load i8*, i8** %7, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 47
  br i1 %80, label %81, label %114

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %87, %81
  %83 = load i8*, i8** %7, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 47
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %7, align 8
  br label %82

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %101, %90
  %92 = load %struct.super_block*, %struct.super_block** %8, align 8
  %93 = call %struct.TYPE_7__* @AFFS_SB(%struct.super_block* %92)
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = icmp ne i8 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %91
  %102 = load %struct.super_block*, %struct.super_block** %8, align 8
  %103 = call %struct.TYPE_7__* @AFFS_SB(%struct.super_block* %102)
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = load i8*, i8** %11, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %11, align 8
  store i8 %110, i8* %111, align 1
  br label %91

113:                                              ; preds = %91
  br label %114

114:                                              ; preds = %113, %71
  br label %115

115:                                              ; preds = %191, %114
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load i8*, i8** %7, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %7, align 8
  %122 = load i8, i8* %120, align 1
  store i8 %122, i8* %15, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 0
  br label %125

125:                                              ; preds = %119, %115
  %126 = phi i1 [ false, %115 ], [ %124, %119 ]
  br i1 %126, label %127, label %192

127:                                              ; preds = %125
  %128 = load i8, i8* %15, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 46
  br i1 %130, label %131, label %153

131:                                              ; preds = %127
  %132 = load i8, i8* %16, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 47
  br i1 %134, label %135, label %153

135:                                              ; preds = %131
  %136 = load i8*, i8** %7, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 46
  br i1 %139, label %140, label %153

140:                                              ; preds = %135
  %141 = load i8*, i8** %7, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 47
  br i1 %145, label %146, label %153

146:                                              ; preds = %140
  %147 = load i8*, i8** %11, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %11, align 8
  store i8 47, i8* %147, align 1
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %12, align 4
  %151 = load i8*, i8** %7, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 2
  store i8* %152, i8** %7, align 8
  store i8 47, i8* %16, align 1
  br label %177

153:                                              ; preds = %140, %135, %131, %127
  %154 = load i8, i8* %15, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 46
  br i1 %156, label %157, label %169

157:                                              ; preds = %153
  %158 = load i8, i8* %16, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 47
  br i1 %160, label %161, label %169

161:                                              ; preds = %157
  %162 = load i8*, i8** %7, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 47
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load i8*, i8** %7, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %7, align 8
  store i8 47, i8* %16, align 1
  br label %176

169:                                              ; preds = %161, %157, %153
  %170 = load i8, i8* %15, align 1
  %171 = load i8*, i8** %11, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %11, align 8
  store i8 %170, i8* %171, align 1
  %173 = load i8, i8* %15, align 1
  store i8 %173, i8* %16, align 1
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %12, align 4
  br label %176

176:                                              ; preds = %169, %166
  br label %177

177:                                              ; preds = %176, %146
  %178 = load i8, i8* %16, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 47
  br i1 %180, label %181, label %191

181:                                              ; preds = %177
  br label %182

182:                                              ; preds = %187, %181
  %183 = load i8*, i8** %7, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 47
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load i8*, i8** %7, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %7, align 8
  br label %182

190:                                              ; preds = %182
  br label %191

191:                                              ; preds = %190, %177
  br label %115

192:                                              ; preds = %125
  %193 = load i8*, i8** %11, align 8
  store i8 0, i8* %193, align 1
  %194 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %195 = load %struct.inode*, %struct.inode** %10, align 8
  %196 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %194, %struct.inode* %195)
  %197 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %198 = call i32 @affs_brelse(%struct.buffer_head* %197)
  %199 = load %struct.inode*, %struct.inode** %10, align 8
  %200 = call i32 @mark_inode_dirty(%struct.inode* %199)
  %201 = load %struct.inode*, %struct.inode** %5, align 8
  %202 = load %struct.inode*, %struct.inode** %10, align 8
  %203 = load %struct.dentry*, %struct.dentry** %6, align 8
  %204 = load i32, i32* @ST_SOFTLINK, align 4
  %205 = call i32 @affs_add_entry(%struct.inode* %201, %struct.inode* %202, %struct.dentry* %203, i32 %204)
  store i32 %205, i32* %14, align 4
  %206 = load i32, i32* %14, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %192
  br label %210

209:                                              ; preds = %192
  store i32 0, i32* %4, align 4
  br label %218

210:                                              ; preds = %208, %70
  %211 = load %struct.inode*, %struct.inode** %10, align 8
  %212 = getelementptr inbounds %struct.inode, %struct.inode* %211, i32 0, i32 1
  store i64 0, i64* %212, align 8
  %213 = load %struct.inode*, %struct.inode** %10, align 8
  %214 = call i32 @mark_inode_dirty(%struct.inode* %213)
  %215 = load %struct.inode*, %struct.inode** %10, align 8
  %216 = call i32 @iput(%struct.inode* %215)
  %217 = load i32, i32* %14, align 4
  store i32 %217, i32* %4, align 4
  br label %218

218:                                              ; preds = %210, %209, %46
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_7__* @AFFS_SB(%struct.super_block*) #1

declare dso_local %struct.inode* @affs_new_inode(%struct.inode*) #1

declare dso_local i32 @mode_to_prot(%struct.inode*) #1

declare dso_local %struct.buffer_head* @affs_bread(%struct.super_block*, i32) #1

declare dso_local %struct.TYPE_8__* @AFFS_HEAD(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @affs_add_entry(%struct.inode*, %struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
