; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-log.c_btrfs_log_inode_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-log.c_btrfs_log_inode_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i64 }
%struct.btrfs_root = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.inode = type { %struct.super_block*, i32 }
%struct.super_block = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.TYPE_4__ = type { i64, i64, %struct.btrfs_root* }

@LOG_INODE_EXISTS = common dso_local global i32 0, align 4
@LOG_INODE_ALL = common dso_local global i32 0, align 4
@NOTREELOG = common dso_local global i32 0, align 4
@BTRFS_NO_LOG_SYNC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_log_inode_parent(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @LOG_INODE_EXISTS, align 4
  br label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @LOG_INODE_ALL, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %11, align 4
  store %struct.dentry* null, %struct.dentry** %13, align 8
  store i32 0, i32* %14, align 4
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %25 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %15, align 8
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load %struct.super_block*, %struct.super_block** %30, align 8
  store %struct.super_block* %31, %struct.super_block** %12, align 8
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %33 = load i32, i32* @NOTREELOG, align 4
  %34 = call i64 @btrfs_test_opt(%struct.btrfs_root* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  store i32 1, i32* %14, align 4
  br label %204

37:                                               ; preds = %22
  %38 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %39 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %44 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %42, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  store i32 1, i32* %14, align 4
  br label %204

50:                                               ; preds = %37
  %51 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %52)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load %struct.btrfs_root*, %struct.btrfs_root** %54, align 8
  %56 = icmp ne %struct.btrfs_root* %51, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %59 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %58, i32 0, i32 1
  %60 = call i64 @btrfs_root_refs(i32* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %50
  store i32 1, i32* %14, align 4
  br label %204

63:                                               ; preds = %57
  %64 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = load %struct.dentry*, %struct.dentry** %9, align 8
  %67 = load %struct.super_block*, %struct.super_block** %12, align 8
  %68 = load i64, i64* %15, align 8
  %69 = call i32 @check_parent_dirs_for_sync(%struct.btrfs_trans_handle* %64, %struct.inode* %65, %struct.dentry* %66, %struct.super_block* %67, i64 %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %204

73:                                               ; preds = %63
  %74 = load %struct.inode*, %struct.inode** %8, align 8
  %75 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %76 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @btrfs_inode_in_log(%struct.inode* %74, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @BTRFS_NO_LOG_SYNC, align 4
  store i32 %81, i32* %14, align 4
  br label %204

82:                                               ; preds = %73
  %83 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %84 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %85 = call i32 @start_log_trans(%struct.btrfs_trans_handle* %83, %struct.btrfs_root* %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %182

89:                                               ; preds = %82
  %90 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %91 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %92 = load %struct.inode*, %struct.inode** %8, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @btrfs_log_inode(%struct.btrfs_trans_handle* %90, %struct.btrfs_root* %91, %struct.inode* %92, i32 %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %182

98:                                               ; preds = %89
  %99 = load %struct.inode*, %struct.inode** %8, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @S_ISREG(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %98
  %105 = load %struct.inode*, %struct.inode** %8, align 8
  %106 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %105)
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %15, align 8
  %110 = icmp sle i64 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %104
  %112 = load %struct.inode*, %struct.inode** %8, align 8
  %113 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %112)
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %15, align 8
  %117 = icmp sle i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  store i32 0, i32* %14, align 4
  br label %182

119:                                              ; preds = %111, %104, %98
  %120 = load i32, i32* @LOG_INODE_EXISTS, align 4
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %119, %175
  %122 = load %struct.dentry*, %struct.dentry** %9, align 8
  %123 = icmp ne %struct.dentry* %122, null
  br i1 %123, label %124, label %137

124:                                              ; preds = %121
  %125 = load %struct.dentry*, %struct.dentry** %9, align 8
  %126 = getelementptr inbounds %struct.dentry, %struct.dentry* %125, i32 0, i32 0
  %127 = load %struct.inode*, %struct.inode** %126, align 8
  %128 = icmp ne %struct.inode* %127, null
  br i1 %128, label %129, label %137

129:                                              ; preds = %124
  %130 = load %struct.super_block*, %struct.super_block** %12, align 8
  %131 = load %struct.dentry*, %struct.dentry** %9, align 8
  %132 = getelementptr inbounds %struct.dentry, %struct.dentry* %131, i32 0, i32 0
  %133 = load %struct.inode*, %struct.inode** %132, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 0
  %135 = load %struct.super_block*, %struct.super_block** %134, align 8
  %136 = icmp ne %struct.super_block* %130, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %129, %124, %121
  br label %181

138:                                              ; preds = %129
  %139 = load %struct.dentry*, %struct.dentry** %9, align 8
  %140 = getelementptr inbounds %struct.dentry, %struct.dentry* %139, i32 0, i32 0
  %141 = load %struct.inode*, %struct.inode** %140, align 8
  store %struct.inode* %141, %struct.inode** %8, align 8
  %142 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %143 = load %struct.inode*, %struct.inode** %8, align 8
  %144 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %143)
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  %146 = load %struct.btrfs_root*, %struct.btrfs_root** %145, align 8
  %147 = icmp ne %struct.btrfs_root* %142, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %138
  br label %181

149:                                              ; preds = %138
  %150 = load %struct.inode*, %struct.inode** %8, align 8
  %151 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %150)
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %155 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %154, i32 0, i32 0
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp sgt i64 %153, %158
  br i1 %159, label %160, label %170

160:                                              ; preds = %149
  %161 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %162 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %163 = load %struct.inode*, %struct.inode** %8, align 8
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @btrfs_log_inode(%struct.btrfs_trans_handle* %161, %struct.btrfs_root* %162, %struct.inode* %163, i32 %164)
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %160
  br label %182

169:                                              ; preds = %160
  br label %170

170:                                              ; preds = %169, %149
  %171 = load %struct.dentry*, %struct.dentry** %9, align 8
  %172 = call i64 @IS_ROOT(%struct.dentry* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  br label %181

175:                                              ; preds = %170
  %176 = load %struct.dentry*, %struct.dentry** %9, align 8
  %177 = call %struct.dentry* @dget_parent(%struct.dentry* %176)
  store %struct.dentry* %177, %struct.dentry** %9, align 8
  %178 = load %struct.dentry*, %struct.dentry** %13, align 8
  %179 = call i32 @dput(%struct.dentry* %178)
  %180 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %180, %struct.dentry** %13, align 8
  br label %121

181:                                              ; preds = %174, %148, %137
  store i32 0, i32* %14, align 4
  br label %182

182:                                              ; preds = %181, %168, %118, %97, %88
  %183 = load %struct.dentry*, %struct.dentry** %13, align 8
  %184 = call i32 @dput(%struct.dentry* %183)
  %185 = load i32, i32* %14, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %201

187:                                              ; preds = %182
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* @ENOSPC, align 4
  %190 = sub nsw i32 0, %189
  %191 = icmp ne i32 %188, %190
  %192 = zext i1 %191 to i32
  %193 = call i32 @BUG_ON(i32 %192)
  %194 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %195 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %198 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %197, i32 0, i32 0
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 1
  store i64 %196, i64* %200, align 8
  store i32 1, i32* %14, align 4
  br label %201

201:                                              ; preds = %187, %182
  %202 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %203 = call i32 @btrfs_end_log_trans(%struct.btrfs_root* %202)
  br label %204

204:                                              ; preds = %201, %80, %72, %62, %49, %36
  %205 = load i32, i32* %14, align 4
  ret i32 %205
}

declare dso_local i64 @btrfs_test_opt(%struct.btrfs_root*, i32) #1

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @btrfs_root_refs(i32*) #1

declare dso_local i32 @check_parent_dirs_for_sync(%struct.btrfs_trans_handle*, %struct.inode*, %struct.dentry*, %struct.super_block*, i64) #1

declare dso_local i64 @btrfs_inode_in_log(%struct.inode*, i64) #1

declare dso_local i32 @start_log_trans(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i32 @btrfs_log_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @IS_ROOT(%struct.dentry*) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_end_log_trans(%struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
