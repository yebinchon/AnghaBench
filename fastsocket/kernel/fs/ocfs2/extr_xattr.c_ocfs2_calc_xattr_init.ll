; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_calc_xattr_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_calc_xattr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_security_xattr_info = type { i32, i64, i32 }
%struct.ocfs2_super = type { i32 }

@OCFS2_MOUNT_POSIX_ACL = common dso_local global i32 0, align 4
@OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENODATA = common dso_local global i32 0, align 4
@OCFS2_MIN_BLOCKSIZE = common dso_local global i64 0, align 8
@OCFS2_XATTR_FREE_IN_IBODY = common dso_local global i32 0, align 4
@OCFS2_XATTR_BLOCK_CREATE_CREDITS = common dso_local global i64 0, align 8
@OCFS2_XATTR_INLINE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_calc_xattr_init(%struct.inode* %0, %struct.buffer_head* %1, i32 %2, %struct.ocfs2_security_xattr_info* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_security_xattr_info*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ocfs2_super*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.ocfs2_security_xattr_info* %3, %struct.ocfs2_security_xattr_info** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %22 = load %struct.inode*, %struct.inode** %9, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = call %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_5__* %24)
  store %struct.ocfs2_super* %25, %struct.ocfs2_super** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %26 = load %struct.ocfs2_security_xattr_info*, %struct.ocfs2_security_xattr_info** %12, align 8
  %27 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %7
  %31 = load %struct.ocfs2_security_xattr_info*, %struct.ocfs2_security_xattr_info** %12, align 8
  %32 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @strlen(i32 %33)
  %35 = load %struct.ocfs2_security_xattr_info*, %struct.ocfs2_security_xattr_info** %12, align 8
  %36 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ocfs2_xattr_entry_real_size(i32 %34, i32 %37)
  store i32 %38, i32* %18, align 4
  br label %39

39:                                               ; preds = %30, %7
  %40 = load %struct.ocfs2_super*, %struct.ocfs2_super** %17, align 8
  %41 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @OCFS2_MOUNT_POSIX_ACL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %77

46:                                               ; preds = %39
  %47 = load %struct.inode*, %struct.inode** %9, align 8
  %48 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %49 = load i32, i32* @OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT, align 4
  %50 = call i32 @ocfs2_xattr_get_nolock(%struct.inode* %47, %struct.buffer_head* %48, i32 %49, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store i32 %50, i32* %20, align 4
  %51 = load i32, i32* %20, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load i32, i32* %20, align 4
  %55 = call i32 @ocfs2_xattr_entry_real_size(i32 0, i32 %54)
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i64 @S_ISDIR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* %19, align 4
  %61 = shl i32 %60, 1
  store i32 %61, i32* %19, align 4
  br label %62

62:                                               ; preds = %59, %53
  br label %76

63:                                               ; preds = %46
  %64 = load i32, i32* %20, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i32, i32* %20, align 4
  %68 = load i32, i32* @ENODATA, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp ne i32 %67, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @mlog_errno(i32 %72)
  %74 = load i32, i32* %16, align 4
  store i32 %74, i32* %8, align 4
  br label %217

75:                                               ; preds = %66, %63
  br label %76

76:                                               ; preds = %75, %62
  br label %77

77:                                               ; preds = %76, %39
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %19, align 4
  %80 = add nsw i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %16, align 4
  store i32 %83, i32* %8, align 4
  br label %217

84:                                               ; preds = %77
  %85 = load %struct.inode*, %struct.inode** %9, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @OCFS2_MIN_BLOCKSIZE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %106, label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %11, align 4
  %94 = call i64 @S_ISDIR(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load %struct.ocfs2_super*, %struct.ocfs2_super** %17, align 8
  %98 = call i64 @ocfs2_supports_inline_data(%struct.ocfs2_super* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %96, %92
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* %19, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* @OCFS2_XATTR_FREE_IN_IBODY, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %100, %96, %84
  %107 = load i32*, i32** %15, align 8
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  %110 = load i32*, i32** %15, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i64, i64* @OCFS2_XATTR_BLOCK_CREATE_CREDITS, align 8
  %112 = load i32*, i32** %14, align 8
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %111
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %112, align 4
  br label %117

117:                                              ; preds = %106, %100
  %118 = load %struct.inode*, %struct.inode** %9, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 0
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @OCFS2_MIN_BLOCKSIZE, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %145

125:                                              ; preds = %117
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %19, align 4
  %128 = add nsw i32 %126, %127
  %129 = load %struct.inode*, %struct.inode** %9, align 8
  %130 = call i32 @OCFS2_XATTR_FREE_IN_BLOCK(%struct.inode* %129)
  %131 = icmp sgt i32 %128, %130
  br i1 %131, label %132, label %145

132:                                              ; preds = %125
  %133 = load i32*, i32** %13, align 8
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  %136 = load %struct.inode*, %struct.inode** %9, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 0
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = call i64 @ocfs2_blocks_per_xattr_bucket(%struct.TYPE_5__* %138)
  %140 = load i32*, i32** %14, align 8
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %139
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %140, align 4
  br label %145

145:                                              ; preds = %132, %125, %117
  %146 = load %struct.ocfs2_security_xattr_info*, %struct.ocfs2_security_xattr_info** %12, align 8
  %147 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %178

150:                                              ; preds = %145
  %151 = load %struct.ocfs2_security_xattr_info*, %struct.ocfs2_security_xattr_info** %12, align 8
  %152 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @OCFS2_XATTR_INLINE_SIZE, align 4
  %155 = icmp sgt i32 %153, %154
  br i1 %155, label %156, label %178

156:                                              ; preds = %150
  %157 = load %struct.inode*, %struct.inode** %9, align 8
  %158 = getelementptr inbounds %struct.inode, %struct.inode* %157, i32 0, i32 0
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = load %struct.ocfs2_security_xattr_info*, %struct.ocfs2_security_xattr_info** %12, align 8
  %161 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @ocfs2_clusters_for_bytes(%struct.TYPE_5__* %159, i32 %162)
  store i32 %163, i32* %21, align 4
  %164 = load %struct.inode*, %struct.inode** %9, align 8
  %165 = getelementptr inbounds %struct.inode, %struct.inode* %164, i32 0, i32 0
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = load i32, i32* %21, align 4
  %168 = call i64 @ocfs2_clusters_to_blocks(%struct.TYPE_5__* %166, i32 %167)
  %169 = load i32*, i32** %14, align 8
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %171, %168
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %169, align 4
  %174 = load i32, i32* %21, align 4
  %175 = load i32*, i32** %13, align 8
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, %174
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %156, %150, %145
  %179 = load %struct.ocfs2_super*, %struct.ocfs2_super** %17, align 8
  %180 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @OCFS2_MOUNT_POSIX_ACL, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %215

185:                                              ; preds = %178
  %186 = load i32, i32* %20, align 4
  %187 = load i32, i32* @OCFS2_XATTR_INLINE_SIZE, align 4
  %188 = icmp sgt i32 %186, %187
  br i1 %188, label %189, label %215

189:                                              ; preds = %185
  %190 = load i32, i32* %11, align 4
  %191 = call i64 @S_ISDIR(i32 %190)
  %192 = icmp ne i64 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i32 2, i32 1
  %195 = load %struct.inode*, %struct.inode** %9, align 8
  %196 = getelementptr inbounds %struct.inode, %struct.inode* %195, i32 0, i32 0
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %196, align 8
  %198 = load i32, i32* %20, align 4
  %199 = call i32 @ocfs2_clusters_for_bytes(%struct.TYPE_5__* %197, i32 %198)
  %200 = mul nsw i32 %194, %199
  store i32 %200, i32* %21, align 4
  %201 = load %struct.inode*, %struct.inode** %9, align 8
  %202 = getelementptr inbounds %struct.inode, %struct.inode* %201, i32 0, i32 0
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %202, align 8
  %204 = load i32, i32* %21, align 4
  %205 = call i64 @ocfs2_clusters_to_blocks(%struct.TYPE_5__* %203, i32 %204)
  %206 = load i32*, i32** %14, align 8
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %208, %205
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %206, align 4
  %211 = load i32, i32* %21, align 4
  %212 = load i32*, i32** %13, align 8
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, %211
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %189, %185, %178
  %216 = load i32, i32* %16, align 4
  store i32 %216, i32* %8, align 4
  br label %217

217:                                              ; preds = %215, %82, %71
  %218 = load i32, i32* %8, align 4
  ret i32 %218
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_5__*) #1

declare dso_local i32 @ocfs2_xattr_entry_real_size(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @ocfs2_xattr_get_nolock(%struct.inode*, %struct.buffer_head*, i32, i8*, i32*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_supports_inline_data(%struct.ocfs2_super*) #1

declare dso_local i32 @OCFS2_XATTR_FREE_IN_BLOCK(%struct.inode*) #1

declare dso_local i64 @ocfs2_blocks_per_xattr_bucket(%struct.TYPE_5__*) #1

declare dso_local i32 @ocfs2_clusters_for_bytes(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @ocfs2_clusters_to_blocks(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
