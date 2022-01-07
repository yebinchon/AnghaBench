; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_xattr.c_ext2_xattr_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_xattr.c_ext2_xattr_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i8*, i32, i32 }
%struct.ext2_xattr_entry = type { i32, i32, i32 }
%struct.xattr_handler = type { i64 (%struct.inode.0*, i8*, i64, i32, i32)* }
%struct.inode.0 = type opaque
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"buffer=%p, buffer_size=%ld\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"reading block %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"b_count=%d, refcount=%d\00", align 1
@EXT2_XATTR_MAGIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"ext2_xattr_list\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"inode %ld: bad block %d\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"cache insert failed\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i64)* @ext2_xattr_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_xattr_list(%struct.inode* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.ext2_xattr_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ext2_xattr_entry*, align 8
  %13 = alloca %struct.xattr_handler*, align 8
  %14 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %10, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 (%struct.inode*, i8*, ...) @ea_idebug(%struct.inode* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %17, i64 %18)
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call %struct.TYPE_4__* @EXT2_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @down_read(i32* %22)
  store i32 0, i32* %11, align 4
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = call %struct.TYPE_4__* @EXT2_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  br label %179

30:                                               ; preds = %3
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = call %struct.TYPE_4__* @EXT2_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (%struct.inode*, i8*, ...) @ea_idebug(%struct.inode* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = call %struct.TYPE_4__* @EXT2_I(%struct.inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.buffer_head* @sb_bread(i32 %39, i32 %43)
  store %struct.buffer_head* %44, %struct.buffer_head** %7, align 8
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %11, align 4
  %47 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %48 = icmp ne %struct.buffer_head* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %30
  br label %179

50:                                               ; preds = %30
  %51 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %53 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %52, i32 0, i32 2
  %54 = call i32 @atomic_read(i32* %53)
  %55 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %56 = call %struct.TYPE_3__* @HDR(%struct.buffer_head* %55)
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @le32_to_cpu(i32 %58)
  %60 = call i32 @ea_bdebug(%struct.buffer_head* %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %59)
  %61 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  store i8* %68, i8** %9, align 8
  %69 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %70 = call %struct.TYPE_3__* @HDR(%struct.buffer_head* %69)
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @EXT2_XATTR_MAGIC, align 4
  %74 = call i64 @cpu_to_le32(i32 %73)
  %75 = icmp ne i64 %72, %74
  br i1 %75, label %83, label %76

76:                                               ; preds = %50
  %77 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %78 = call %struct.TYPE_3__* @HDR(%struct.buffer_head* %77)
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @cpu_to_le32(i32 1)
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %76, %50
  br label %84

84:                                               ; preds = %113, %83
  %85 = load %struct.inode*, %struct.inode** %4, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.inode*, %struct.inode** %4, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.inode*, %struct.inode** %4, align 8
  %92 = call %struct.TYPE_4__* @EXT2_I(%struct.inode* %91)
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ext2_error(i32 %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %90, i32 %94)
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %11, align 4
  br label %179

98:                                               ; preds = %76
  %99 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %100 = call %struct.ext2_xattr_entry* @FIRST_ENTRY(%struct.buffer_head* %99)
  store %struct.ext2_xattr_entry* %100, %struct.ext2_xattr_entry** %8, align 8
  br label %101

101:                                              ; preds = %114, %98
  %102 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %8, align 8
  %103 = call i32 @IS_LAST_ENTRY(%struct.ext2_xattr_entry* %102)
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %8, align 8
  %108 = call %struct.ext2_xattr_entry* @EXT2_XATTR_NEXT(%struct.ext2_xattr_entry* %107)
  store %struct.ext2_xattr_entry* %108, %struct.ext2_xattr_entry** %12, align 8
  %109 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %12, align 8
  %110 = bitcast %struct.ext2_xattr_entry* %109 to i8*
  %111 = load i8*, i8** %9, align 8
  %112 = icmp uge i8* %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %84

114:                                              ; preds = %106
  %115 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %12, align 8
  store %struct.ext2_xattr_entry* %115, %struct.ext2_xattr_entry** %8, align 8
  br label %101

116:                                              ; preds = %101
  %117 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %118 = call i64 @ext2_xattr_cache_insert(%struct.buffer_head* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load %struct.inode*, %struct.inode** %4, align 8
  %122 = call i32 (%struct.inode*, i8*, ...) @ea_idebug(%struct.inode* %121, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %116
  %124 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %125 = call %struct.ext2_xattr_entry* @FIRST_ENTRY(%struct.buffer_head* %124)
  store %struct.ext2_xattr_entry* %125, %struct.ext2_xattr_entry** %8, align 8
  br label %126

126:                                              ; preds = %171, %123
  %127 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %8, align 8
  %128 = call i32 @IS_LAST_ENTRY(%struct.ext2_xattr_entry* %127)
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  br i1 %130, label %131, label %174

131:                                              ; preds = %126
  %132 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %8, align 8
  %133 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call %struct.xattr_handler* @ext2_xattr_handler(i32 %134)
  store %struct.xattr_handler* %135, %struct.xattr_handler** %13, align 8
  %136 = load %struct.xattr_handler*, %struct.xattr_handler** %13, align 8
  %137 = icmp ne %struct.xattr_handler* %136, null
  br i1 %137, label %138, label %170

138:                                              ; preds = %131
  %139 = load %struct.xattr_handler*, %struct.xattr_handler** %13, align 8
  %140 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %139, i32 0, i32 0
  %141 = load i64 (%struct.inode.0*, i8*, i64, i32, i32)*, i64 (%struct.inode.0*, i8*, i64, i32, i32)** %140, align 8
  %142 = load %struct.inode*, %struct.inode** %4, align 8
  %143 = bitcast %struct.inode* %142 to %struct.inode.0*
  %144 = load i8*, i8** %5, align 8
  %145 = load i64, i64* %10, align 8
  %146 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %8, align 8
  %147 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %8, align 8
  %150 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i64 %141(%struct.inode.0* %143, i8* %144, i64 %145, i32 %148, i32 %151)
  store i64 %152, i64* %14, align 8
  %153 = load i8*, i8** %5, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %166

155:                                              ; preds = %138
  %156 = load i64, i64* %14, align 8
  %157 = load i64, i64* %10, align 8
  %158 = icmp ugt i64 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load i32, i32* @ERANGE, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %11, align 4
  br label %179

162:                                              ; preds = %155
  %163 = load i64, i64* %14, align 8
  %164 = load i8*, i8** %5, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 %163
  store i8* %165, i8** %5, align 8
  br label %166

166:                                              ; preds = %162, %138
  %167 = load i64, i64* %14, align 8
  %168 = load i64, i64* %10, align 8
  %169 = sub i64 %168, %167
  store i64 %169, i64* %10, align 8
  br label %170

170:                                              ; preds = %166, %131
  br label %171

171:                                              ; preds = %170
  %172 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %8, align 8
  %173 = call %struct.ext2_xattr_entry* @EXT2_XATTR_NEXT(%struct.ext2_xattr_entry* %172)
  store %struct.ext2_xattr_entry* %173, %struct.ext2_xattr_entry** %8, align 8
  br label %126

174:                                              ; preds = %126
  %175 = load i64, i64* %6, align 8
  %176 = load i64, i64* %10, align 8
  %177 = sub i64 %175, %176
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %11, align 4
  br label %179

179:                                              ; preds = %174, %159, %84, %49, %29
  %180 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %181 = call i32 @brelse(%struct.buffer_head* %180)
  %182 = load %struct.inode*, %struct.inode** %4, align 8
  %183 = call %struct.TYPE_4__* @EXT2_I(%struct.inode* %182)
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = call i32 @up_read(i32* %184)
  %186 = load i32, i32* %11, align 4
  ret i32 %186
}

declare dso_local i32 @ea_idebug(%struct.inode*, i8*, ...) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_4__* @EXT2_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @sb_bread(i32, i32) #1

declare dso_local i32 @ea_bdebug(%struct.buffer_head*, i8*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_3__* @HDR(%struct.buffer_head*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @ext2_error(i32, i8*, i8*, i32, i32) #1

declare dso_local %struct.ext2_xattr_entry* @FIRST_ENTRY(%struct.buffer_head*) #1

declare dso_local i32 @IS_LAST_ENTRY(%struct.ext2_xattr_entry*) #1

declare dso_local %struct.ext2_xattr_entry* @EXT2_XATTR_NEXT(%struct.ext2_xattr_entry*) #1

declare dso_local i64 @ext2_xattr_cache_insert(%struct.buffer_head*) #1

declare dso_local %struct.xattr_handler* @ext2_xattr_handler(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
