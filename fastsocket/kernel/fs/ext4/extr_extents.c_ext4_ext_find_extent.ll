; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_find_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_find_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i16, i32*, i32, i32*, %struct.ext4_extent_header*, %struct.buffer_head* }
%struct.ext4_extent_header = type { i32, i32 }
%struct.buffer_head = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"depth %d: num %d, max %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"ppos %d > depth %d\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ext4_ext_path* @ext4_ext_find_extent(%struct.inode* %0, i32 %1, %struct.ext4_ext_path* %2) #0 {
  %4 = alloca %struct.ext4_ext_path*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext4_ext_path*, align 8
  %8 = alloca %struct.ext4_extent_header*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ext4_ext_path* %2, %struct.ext4_ext_path** %7, align 8
  store i16 0, i16* %12, align 2
  store i16 0, i16* %13, align 2
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call %struct.ext4_extent_header* @ext_inode_hdr(%struct.inode* %14)
  store %struct.ext4_extent_header* %15, %struct.ext4_extent_header** %8, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call signext i16 @ext_depth(%struct.inode* %16)
  store i16 %17, i16* %10, align 2
  %18 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %19 = icmp ne %struct.ext4_ext_path* %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %3
  %21 = load i16, i16* %10, align 2
  %22 = sext i16 %21 to i32
  %23 = add nsw i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = mul i64 48, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @GFP_NOFS, align 4
  %28 = call %struct.ext4_ext_path* @kzalloc(i32 %26, i32 %27)
  store %struct.ext4_ext_path* %28, %struct.ext4_ext_path** %7, align 8
  %29 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %30 = icmp ne %struct.ext4_ext_path* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.ext4_ext_path* @ERR_PTR(i32 %33)
  store %struct.ext4_ext_path* %34, %struct.ext4_ext_path** %4, align 8
  br label %224

35:                                               ; preds = %20
  store i16 1, i16* %13, align 2
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %38 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %39 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %38, i64 0
  %40 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %39, i32 0, i32 4
  store %struct.ext4_extent_header* %37, %struct.ext4_extent_header** %40, align 8
  %41 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %42 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %41, i64 0
  %43 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %42, i32 0, i32 5
  store %struct.buffer_head* null, %struct.buffer_head** %43, align 8
  %44 = load i16, i16* %10, align 2
  store i16 %44, i16* %11, align 2
  br label %45

45:                                               ; preds = %161, %36
  %46 = load i16, i16* %11, align 2
  %47 = icmp ne i16 %46, 0
  br i1 %47, label %48, label %162

48:                                               ; preds = %45
  %49 = load i16, i16* %12, align 2
  %50 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %51 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %55 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le16_to_cpu(i32 %56)
  %58 = call i32 @ext_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i16 signext %49, i32 %53, i32 %57)
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %61 = load i16, i16* %12, align 2
  %62 = sext i16 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %60, i64 %63
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @ext4_ext_binsearch_idx(%struct.inode* %59, %struct.ext4_ext_path* %64, i32 %65)
  %67 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %68 = load i16, i16* %12, align 2
  %69 = sext i16 %68 to i64
  %70 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %67, i64 %69
  %71 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @ext4_idx_pblock(i32* %72)
  %74 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %75 = load i16, i16* %12, align 2
  %76 = sext i16 %75 to i64
  %77 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %74, i64 %76
  %78 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %77, i32 0, i32 2
  store i32 %73, i32* %78, align 8
  %79 = load i16, i16* %11, align 2
  %80 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %81 = load i16, i16* %12, align 2
  %82 = sext i16 %81 to i64
  %83 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %80, i64 %82
  %84 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %83, i32 0, i32 0
  store i16 %79, i16* %84, align 8
  %85 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %86 = load i16, i16* %12, align 2
  %87 = sext i16 %86 to i64
  %88 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %85, i64 %87
  %89 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %88, i32 0, i32 1
  store i32* null, i32** %89, align 8
  %90 = load %struct.inode*, %struct.inode** %5, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %94 = load i16, i16* %12, align 2
  %95 = sext i16 %94 to i64
  %96 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %93, i64 %95
  %97 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call %struct.buffer_head* @sb_getblk(i32 %92, i32 %98)
  store %struct.buffer_head* %99, %struct.buffer_head** %9, align 8
  %100 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %101 = icmp ne %struct.buffer_head* %100, null
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %48
  br label %212

107:                                              ; preds = %48
  %108 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %109 = call i32 @bh_uptodate_or_lock(%struct.buffer_head* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %107
  %112 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %113 = call i64 @bh_submit_read(%struct.buffer_head* %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %117 = call i32 @put_bh(%struct.buffer_head* %116)
  br label %212

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %107
  %120 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %121 = call %struct.ext4_extent_header* @ext_block_hdr(%struct.buffer_head* %120)
  store %struct.ext4_extent_header* %121, %struct.ext4_extent_header** %8, align 8
  %122 = load i16, i16* %12, align 2
  %123 = add i16 %122, 1
  store i16 %123, i16* %12, align 2
  %124 = load i16, i16* %12, align 2
  %125 = sext i16 %124 to i32
  %126 = load i16, i16* %10, align 2
  %127 = sext i16 %126 to i32
  %128 = icmp sgt i32 %125, %127
  %129 = zext i1 %128 to i32
  %130 = call i64 @unlikely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %119
  %133 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %134 = call i32 @put_bh(%struct.buffer_head* %133)
  %135 = load %struct.inode*, %struct.inode** %5, align 8
  %136 = load i16, i16* %12, align 2
  %137 = load i16, i16* %10, align 2
  %138 = call i32 @EXT4_ERROR_INODE(%struct.inode* %135, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i16 signext %136, i16 signext %137)
  br label %212

139:                                              ; preds = %119
  %140 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %141 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %142 = load i16, i16* %12, align 2
  %143 = sext i16 %142 to i64
  %144 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %141, i64 %143
  %145 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %144, i32 0, i32 5
  store %struct.buffer_head* %140, %struct.buffer_head** %145, align 8
  %146 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %147 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %148 = load i16, i16* %12, align 2
  %149 = sext i16 %148 to i64
  %150 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %147, i64 %149
  %151 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %150, i32 0, i32 4
  store %struct.ext4_extent_header* %146, %struct.ext4_extent_header** %151, align 8
  %152 = load i16, i16* %11, align 2
  %153 = add i16 %152, -1
  store i16 %153, i16* %11, align 2
  %154 = load %struct.inode*, %struct.inode** %5, align 8
  %155 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %156 = load i16, i16* %11, align 2
  %157 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %158 = call i64 @ext4_ext_check_block(%struct.inode* %154, %struct.ext4_extent_header* %155, i16 signext %156, %struct.buffer_head* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %139
  br label %212

161:                                              ; preds = %139
  br label %45

162:                                              ; preds = %45
  %163 = load i16, i16* %11, align 2
  %164 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %165 = load i16, i16* %12, align 2
  %166 = sext i16 %165 to i64
  %167 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %164, i64 %166
  %168 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %167, i32 0, i32 0
  store i16 %163, i16* %168, align 8
  %169 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %170 = load i16, i16* %12, align 2
  %171 = sext i16 %170 to i64
  %172 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %169, i64 %171
  %173 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %172, i32 0, i32 1
  store i32* null, i32** %173, align 8
  %174 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %175 = load i16, i16* %12, align 2
  %176 = sext i16 %175 to i64
  %177 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %174, i64 %176
  %178 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %177, i32 0, i32 3
  store i32* null, i32** %178, align 8
  %179 = load %struct.inode*, %struct.inode** %5, align 8
  %180 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %181 = load i16, i16* %12, align 2
  %182 = sext i16 %181 to i32
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %180, i64 %183
  %185 = load i32, i32* %6, align 4
  %186 = call i32 @ext4_ext_binsearch(%struct.inode* %179, %struct.ext4_ext_path* %184, i32 %185)
  %187 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %188 = load i16, i16* %12, align 2
  %189 = sext i16 %188 to i64
  %190 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %187, i64 %189
  %191 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %207

194:                                              ; preds = %162
  %195 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %196 = load i16, i16* %12, align 2
  %197 = sext i16 %196 to i64
  %198 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %195, i64 %197
  %199 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @ext4_ext_pblock(i32* %200)
  %202 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %203 = load i16, i16* %12, align 2
  %204 = sext i16 %203 to i64
  %205 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %202, i64 %204
  %206 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %205, i32 0, i32 2
  store i32 %201, i32* %206, align 8
  br label %207

207:                                              ; preds = %194, %162
  %208 = load %struct.inode*, %struct.inode** %5, align 8
  %209 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %210 = call i32 @ext4_ext_show_path(%struct.inode* %208, %struct.ext4_ext_path* %209)
  %211 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  store %struct.ext4_ext_path* %211, %struct.ext4_ext_path** %4, align 8
  br label %224

212:                                              ; preds = %160, %132, %115, %106
  %213 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %214 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %213)
  %215 = load i16, i16* %13, align 2
  %216 = icmp ne i16 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %219 = call i32 @kfree(%struct.ext4_ext_path* %218)
  br label %220

220:                                              ; preds = %217, %212
  %221 = load i32, i32* @EIO, align 4
  %222 = sub nsw i32 0, %221
  %223 = call %struct.ext4_ext_path* @ERR_PTR(i32 %222)
  store %struct.ext4_ext_path* %223, %struct.ext4_ext_path** %4, align 8
  br label %224

224:                                              ; preds = %220, %207, %31
  %225 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %4, align 8
  ret %struct.ext4_ext_path* %225
}

declare dso_local %struct.ext4_extent_header* @ext_inode_hdr(%struct.inode*) #1

declare dso_local signext i16 @ext_depth(%struct.inode*) #1

declare dso_local %struct.ext4_ext_path* @kzalloc(i32, i32) #1

declare dso_local %struct.ext4_ext_path* @ERR_PTR(i32) #1

declare dso_local i32 @ext_debug(i8*, i16 signext, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ext4_ext_binsearch_idx(%struct.inode*, %struct.ext4_ext_path*, i32) #1

declare dso_local i32 @ext4_idx_pblock(i32*) #1

declare dso_local %struct.buffer_head* @sb_getblk(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bh_uptodate_or_lock(%struct.buffer_head*) #1

declare dso_local i64 @bh_submit_read(%struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local %struct.ext4_extent_header* @ext_block_hdr(%struct.buffer_head*) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, i16 signext, i16 signext) #1

declare dso_local i64 @ext4_ext_check_block(%struct.inode*, %struct.ext4_extent_header*, i16 signext, %struct.buffer_head*) #1

declare dso_local i32 @ext4_ext_binsearch(%struct.inode*, %struct.ext4_ext_path*, i32) #1

declare dso_local i32 @ext4_ext_pblock(i32*) #1

declare dso_local i32 @ext4_ext_show_path(%struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
