; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_add_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_add_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.inode = type { i32, i32, i64 }
%struct.btrfs_key = type { i64, i64 }
%struct.btrfs_root = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.btrfs_root* }

@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_INODE_ITEM_KEY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_add_link(%struct.btrfs_trans_handle* %0, %struct.inode* %1, %struct.inode* %2, i8* %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_trans_handle*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.btrfs_key, align 8
  %18 = alloca %struct.btrfs_root*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store %struct.inode* %2, %struct.inode** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %27, align 8
  store %struct.btrfs_root* %28, %struct.btrfs_root** %18, align 8
  %29 = load %struct.inode*, %struct.inode** %11, align 8
  %30 = call i64 @btrfs_ino(%struct.inode* %29)
  store i64 %30, i64* %19, align 8
  %31 = load %struct.inode*, %struct.inode** %10, align 8
  %32 = call i64 @btrfs_ino(%struct.inode* %31)
  store i64 %32, i64* %20, align 8
  %33 = load i64, i64* %19, align 8
  %34 = load i64, i64* @BTRFS_FIRST_FREE_OBJECTID, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %7
  %40 = load %struct.inode*, %struct.inode** %11, align 8
  %41 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %42, align 8
  %44 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %43, i32 0, i32 0
  %45 = call i32 @memcpy(%struct.btrfs_key* %17, %struct.TYPE_5__* %44, i32 16)
  br label %52

46:                                               ; preds = %7
  %47 = load i64, i64* %19, align 8
  %48 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  %49 = load i32, i32* @BTRFS_INODE_ITEM_KEY, align 4
  %50 = call i32 @btrfs_set_key_type(%struct.btrfs_key* %17, i32 %49)
  %51 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 1
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %46, %39
  %53 = load i64, i64* %19, align 8
  %54 = load i64, i64* @BTRFS_FIRST_FREE_OBJECTID, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %52
  %60 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %61 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  %62 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  %69 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i64, i64* %20, align 8
  %73 = load i64, i64* %15, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @btrfs_add_root_ref(%struct.btrfs_trans_handle* %60, i32 %65, i64 %67, i32 %71, i64 %72, i64 %73, i8* %74, i32 %75)
  store i32 %76, i32* %16, align 4
  br label %90

77:                                               ; preds = %52
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %82 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load i64, i64* %19, align 8
  %86 = load i64, i64* %20, align 8
  %87 = load i64, i64* %15, align 8
  %88 = call i32 @btrfs_insert_inode_ref(%struct.btrfs_trans_handle* %81, %struct.btrfs_root* %82, i8* %83, i32 %84, i64 %85, i64 %86, i64 %87)
  store i32 %88, i32* %16, align 4
  br label %89

89:                                               ; preds = %80, %77
  br label %90

90:                                               ; preds = %89, %59
  %91 = load i32, i32* %16, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* %16, align 4
  store i32 %94, i32* %8, align 4
  br label %188

95:                                               ; preds = %90
  %96 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %97 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = load i32, i32* %13, align 4
  %100 = load %struct.inode*, %struct.inode** %10, align 8
  %101 = load %struct.inode*, %struct.inode** %11, align 8
  %102 = call i32 @btrfs_inode_type(%struct.inode* %101)
  %103 = load i64, i64* %15, align 8
  %104 = call i32 @btrfs_insert_dir_item(%struct.btrfs_trans_handle* %96, %struct.btrfs_root* %97, i8* %98, i32 %99, %struct.inode* %100, %struct.btrfs_key* %17, i32 %102, i64 %103)
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* @EEXIST, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %95
  br label %150

110:                                              ; preds = %95
  %111 = load i32, i32* %16, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %115 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  %116 = load i32, i32* %16, align 4
  %117 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %114, %struct.btrfs_root* %115, i32 %116)
  %118 = load i32, i32* %16, align 4
  store i32 %118, i32* %8, align 4
  br label %188

119:                                              ; preds = %110
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.inode*, %struct.inode** %10, align 8
  %122 = load %struct.inode*, %struct.inode** %10, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = mul nsw i32 %125, 2
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %124, %127
  %129 = call i32 @btrfs_i_size_write(%struct.inode* %121, i64 %128)
  %130 = load %struct.inode*, %struct.inode** %10, align 8
  %131 = call i32 @inode_inc_iversion(%struct.inode* %130)
  %132 = load i32, i32* @CURRENT_TIME, align 4
  %133 = load %struct.inode*, %struct.inode** %10, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.inode*, %struct.inode** %10, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 1
  store i32 %132, i32* %136, align 4
  %137 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %138 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  %139 = load %struct.inode*, %struct.inode** %10, align 8
  %140 = call i32 @btrfs_update_inode(%struct.btrfs_trans_handle* %137, %struct.btrfs_root* %138, %struct.inode* %139)
  store i32 %140, i32* %16, align 4
  %141 = load i32, i32* %16, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %120
  %144 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %145 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  %146 = load i32, i32* %16, align 4
  %147 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %144, %struct.btrfs_root* %145, i32 %146)
  br label %148

148:                                              ; preds = %143, %120
  %149 = load i32, i32* %16, align 4
  store i32 %149, i32* %8, align 4
  br label %188

150:                                              ; preds = %109
  %151 = load i64, i64* %19, align 8
  %152 = load i64, i64* @BTRFS_FIRST_FREE_OBJECTID, align 8
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i64 @unlikely(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %174

157:                                              ; preds = %150
  %158 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %159 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  %160 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %159, i32 0, i32 1
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  %167 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i64, i64* %20, align 8
  %171 = load i8*, i8** %12, align 8
  %172 = load i32, i32* %13, align 4
  %173 = call i32 @btrfs_del_root_ref(%struct.btrfs_trans_handle* %158, i32 %163, i64 %165, i32 %169, i64 %170, i64* %21, i8* %171, i32 %172)
  store i32 %173, i32* %22, align 4
  br label %186

174:                                              ; preds = %150
  %175 = load i32, i32* %14, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %174
  %178 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %179 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  %180 = load i8*, i8** %12, align 8
  %181 = load i32, i32* %13, align 4
  %182 = load i64, i64* %19, align 8
  %183 = load i64, i64* %20, align 8
  %184 = call i32 @btrfs_del_inode_ref(%struct.btrfs_trans_handle* %178, %struct.btrfs_root* %179, i8* %180, i32 %181, i64 %182, i64 %183, i64* %23)
  store i32 %184, i32* %24, align 4
  br label %185

185:                                              ; preds = %177, %174
  br label %186

186:                                              ; preds = %185, %157
  %187 = load i32, i32* %16, align 4
  store i32 %187, i32* %8, align 4
  br label %188

188:                                              ; preds = %186, %148, %113, %93
  %189 = load i32, i32* %8, align 4
  ret i32 %189
}

declare dso_local %struct.TYPE_6__* @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @btrfs_ino(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(%struct.btrfs_key*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @btrfs_set_key_type(%struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_add_root_ref(%struct.btrfs_trans_handle*, i32, i64, i32, i64, i64, i8*, i32) #1

declare dso_local i32 @btrfs_insert_inode_ref(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i8*, i32, i64, i64, i64) #1

declare dso_local i32 @btrfs_insert_dir_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i8*, i32, %struct.inode*, %struct.btrfs_key*, i32, i64) #1

declare dso_local i32 @btrfs_inode_type(%struct.inode*) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @inode_inc_iversion(%struct.inode*) #1

declare dso_local i32 @btrfs_update_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @btrfs_del_root_ref(%struct.btrfs_trans_handle*, i32, i64, i32, i64, i64*, i8*, i32) #1

declare dso_local i32 @btrfs_del_inode_ref(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i8*, i32, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
