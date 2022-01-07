; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_xattr.c_NULL.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_xattr.c_NULL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.jffs2_inode_info = type { %struct.jffs2_inode_cache* }
%struct.jffs2_inode_cache = type { %struct.jffs2_xattr_ref* }
%struct.jffs2_xattr_ref = type { %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_datum*, %struct.jffs2_inode_cache* }
%struct.jffs2_xattr_datum = type { i32, i32, i32 }
%struct.jffs2_sb_info = type { i32 }
%struct.xattr_handler = type { i64 (%struct.inode.0*, i8*, i64, i32, i32)* }
%struct.inode.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @jffs2_listxattr(%struct.dentry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.jffs2_inode_info*, align 8
  %10 = alloca %struct.jffs2_sb_info*, align 8
  %11 = alloca %struct.jffs2_inode_cache*, align 8
  %12 = alloca %struct.jffs2_xattr_ref*, align 8
  %13 = alloca %struct.jffs2_xattr_ref**, align 8
  %14 = alloca %struct.jffs2_xattr_datum*, align 8
  %15 = alloca %struct.xattr_handler*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %8, align 8
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode* %22)
  store %struct.jffs2_inode_info* %23, %struct.jffs2_inode_info** %9, align 8
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32 %26)
  store %struct.jffs2_sb_info* %27, %struct.jffs2_sb_info** %10, align 8
  %28 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %9, align 8
  %29 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %28, i32 0, i32 0
  %30 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %29, align 8
  store %struct.jffs2_inode_cache* %30, %struct.jffs2_inode_cache** %11, align 8
  store i32 0, i32* %18, align 4
  %31 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %32 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %11, align 8
  %33 = call i64 @check_xattr_ref_inode(%struct.jffs2_sb_info* %31, %struct.jffs2_inode_cache* %32)
  store i64 %33, i64* %17, align 8
  %34 = load i64, i64* %17, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i64, i64* %17, align 8
  store i64 %39, i64* %4, align 8
  br label %177

40:                                               ; preds = %3
  %41 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %42 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %41, i32 0, i32 0
  %43 = call i32 @down_read(i32* %42)
  br label %44

44:                                               ; preds = %87, %71, %40
  store i64 0, i64* %16, align 8
  %45 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %11, align 8
  %46 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %45, i32 0, i32 0
  %47 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %46, align 8
  store %struct.jffs2_xattr_ref* %47, %struct.jffs2_xattr_ref** %12, align 8
  %48 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %11, align 8
  %49 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %48, i32 0, i32 0
  store %struct.jffs2_xattr_ref** %49, %struct.jffs2_xattr_ref*** %13, align 8
  br label %50

50:                                               ; preds = %156, %44
  %51 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %12, align 8
  %52 = icmp ne %struct.jffs2_xattr_ref* %51, null
  br i1 %52, label %53, label %162

53:                                               ; preds = %50
  %54 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %12, align 8
  %55 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %54, i32 0, i32 2
  %56 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %55, align 8
  %57 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %11, align 8
  %58 = icmp ne %struct.jffs2_inode_cache* %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  %61 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %12, align 8
  %62 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %61, i32 0, i32 1
  %63 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %62, align 8
  store %struct.jffs2_xattr_datum* %63, %struct.jffs2_xattr_datum** %14, align 8
  %64 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %14, align 8
  %65 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %105, label %68

68:                                               ; preds = %53
  %69 = load i32, i32* %18, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %68
  store i32 1, i32* %18, align 4
  %72 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %73 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %72, i32 0, i32 0
  %74 = call i32 @up_read(i32* %73)
  %75 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %76 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %75, i32 0, i32 0
  %77 = call i32 @down_write(i32* %76)
  br label %44

78:                                               ; preds = %68
  %79 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %80 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %14, align 8
  %81 = call i64 @load_xattr_datum(%struct.jffs2_sb_info* %79, %struct.jffs2_xattr_datum* %80)
  store i64 %81, i64* %17, align 8
  %82 = load i64, i64* %17, align 8
  %83 = icmp sgt i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %78
  %88 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %12, align 8
  %89 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %88, i32 0, i32 0
  %90 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %89, align 8
  %91 = load %struct.jffs2_xattr_ref**, %struct.jffs2_xattr_ref*** %13, align 8
  store %struct.jffs2_xattr_ref* %90, %struct.jffs2_xattr_ref** %91, align 8
  %92 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %93 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %12, align 8
  %94 = call i32 @delete_xattr_ref(%struct.jffs2_sb_info* %92, %struct.jffs2_xattr_ref* %93)
  br label %44

95:                                               ; preds = %78
  %96 = load i64, i64* %17, align 8
  %97 = icmp slt i64 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %164

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104, %53
  %106 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %14, align 8
  %107 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call %struct.xattr_handler* @xprefix_to_handler(i32 %108)
  store %struct.xattr_handler* %109, %struct.xattr_handler** %15, align 8
  %110 = load %struct.xattr_handler*, %struct.xattr_handler** %15, align 8
  %111 = icmp ne %struct.xattr_handler* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %105
  br label %156

113:                                              ; preds = %105
  %114 = load i8*, i8** %6, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %135

116:                                              ; preds = %113
  %117 = load %struct.xattr_handler*, %struct.xattr_handler** %15, align 8
  %118 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %117, i32 0, i32 0
  %119 = load i64 (%struct.inode.0*, i8*, i64, i32, i32)*, i64 (%struct.inode.0*, i8*, i64, i32, i32)** %118, align 8
  %120 = load %struct.inode*, %struct.inode** %8, align 8
  %121 = bitcast %struct.inode* %120 to %struct.inode.0*
  %122 = load i8*, i8** %6, align 8
  %123 = load i64, i64* %16, align 8
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  %125 = load i64, i64* %7, align 8
  %126 = load i64, i64* %16, align 8
  %127 = sub i64 %125, %126
  %128 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %14, align 8
  %129 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %14, align 8
  %132 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i64 %119(%struct.inode.0* %121, i8* %124, i64 %127, i32 %130, i32 %133)
  store i64 %134, i64* %17, align 8
  br label %148

135:                                              ; preds = %113
  %136 = load %struct.xattr_handler*, %struct.xattr_handler** %15, align 8
  %137 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %136, i32 0, i32 0
  %138 = load i64 (%struct.inode.0*, i8*, i64, i32, i32)*, i64 (%struct.inode.0*, i8*, i64, i32, i32)** %137, align 8
  %139 = load %struct.inode*, %struct.inode** %8, align 8
  %140 = bitcast %struct.inode* %139 to %struct.inode.0*
  %141 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %14, align 8
  %142 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %14, align 8
  %145 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i64 %138(%struct.inode.0* %140, i8* null, i64 0, i32 %143, i32 %146)
  store i64 %147, i64* %17, align 8
  br label %148

148:                                              ; preds = %135, %116
  %149 = load i64, i64* %17, align 8
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  br label %164

152:                                              ; preds = %148
  %153 = load i64, i64* %17, align 8
  %154 = load i64, i64* %16, align 8
  %155 = add nsw i64 %154, %153
  store i64 %155, i64* %16, align 8
  br label %156

156:                                              ; preds = %152, %112
  %157 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %12, align 8
  %158 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %157, i32 0, i32 0
  store %struct.jffs2_xattr_ref** %158, %struct.jffs2_xattr_ref*** %13, align 8
  %159 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %12, align 8
  %160 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %159, i32 0, i32 0
  %161 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %160, align 8
  store %struct.jffs2_xattr_ref* %161, %struct.jffs2_xattr_ref** %12, align 8
  br label %50

162:                                              ; preds = %50
  %163 = load i64, i64* %16, align 8
  store i64 %163, i64* %17, align 8
  br label %164

164:                                              ; preds = %162, %151, %101
  %165 = load i32, i32* %18, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %164
  %168 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %169 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %168, i32 0, i32 0
  %170 = call i32 @up_read(i32* %169)
  br label %175

171:                                              ; preds = %164
  %172 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %173 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %172, i32 0, i32 0
  %174 = call i32 @up_write(i32* %173)
  br label %175

175:                                              ; preds = %171, %167
  %176 = load i64, i64* %17, align 8
  store i64 %176, i64* %4, align 8
  br label %177

177:                                              ; preds = %175, %38
  %178 = load i64, i64* %4, align 8
  ret i64 %178
}

declare dso_local %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode*) #1

declare dso_local %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32) #1

declare dso_local i64 @check_xattr_ref_inode(%struct.jffs2_sb_info*, %struct.jffs2_inode_cache*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @load_xattr_datum(%struct.jffs2_sb_info*, %struct.jffs2_xattr_datum*) #1

declare dso_local i32 @delete_xattr_ref(%struct.jffs2_sb_info*, %struct.jffs2_xattr_ref*) #1

declare dso_local %struct.xattr_handler* @xprefix_to_handler(i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
