; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_inode.c_hpfs_write_inode_nolock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_inode.c_hpfs_write_inode_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.hpfs_inode_info = type { i32, i64 }
%struct.buffer_head = type { i32 }
%struct.fnode = type { i64 }
%struct.quad_buffer_head = type { i32 }
%struct.hpfs_dirent = type { i32, i64, i64, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"\01\01\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"directory %08lx doesn't have '.' entry\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_write_inode_nolock(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.hpfs_inode_info*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.fnode*, align 8
  %6 = alloca %struct.quad_buffer_head, align 4
  %7 = alloca %struct.hpfs_dirent*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %8)
  store %struct.hpfs_inode_info* %9, %struct.hpfs_inode_info** %3, align 8
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_8__* @hpfs_sb(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %12, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %225

21:                                               ; preds = %1
  %22 = load %struct.inode*, %struct.inode** %2, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.inode*, %struct.inode** %2, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.fnode* @hpfs_map_fnode(i32 %24, i64 %27, %struct.buffer_head** %4)
  store %struct.fnode* %28, %struct.fnode** %5, align 8
  %29 = icmp ne %struct.fnode* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  br label %225

31:                                               ; preds = %21
  %32 = load %struct.inode*, %struct.inode** %2, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.inode*, %struct.inode** %2, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.TYPE_8__* @hpfs_sb(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %34, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %31
  %43 = load %struct.inode*, %struct.inode** %2, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load %struct.inode*, %struct.inode** %2, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.inode*, %struct.inode** %2, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.fnode*, %struct.fnode** %5, align 8
  %55 = call %struct.hpfs_dirent* @map_fnode_dirent(i32 %50, i64 %53, %struct.fnode* %54, %struct.quad_buffer_head* %6)
  store %struct.hpfs_dirent* %55, %struct.hpfs_dirent** %7, align 8
  %56 = icmp ne %struct.hpfs_dirent* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %59 = call i32 @brelse(%struct.buffer_head* %58)
  br label %225

60:                                               ; preds = %47
  br label %62

61:                                               ; preds = %42, %31
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %7, align 8
  br label %62

62:                                               ; preds = %61, %60
  %63 = load %struct.inode*, %struct.inode** %2, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @S_ISREG(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %62
  %69 = load %struct.inode*, %struct.inode** %2, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.fnode*, %struct.fnode** %5, align 8
  %73 = getelementptr inbounds %struct.fnode, %struct.fnode* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %75 = icmp ne %struct.hpfs_dirent* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = load %struct.inode*, %struct.inode** %2, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 6
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %81 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %76, %68
  br label %99

83:                                               ; preds = %62
  %84 = load %struct.inode*, %struct.inode** %2, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @S_ISDIR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %83
  %90 = load %struct.fnode*, %struct.fnode** %5, align 8
  %91 = getelementptr inbounds %struct.fnode, %struct.fnode* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %93 = icmp ne %struct.hpfs_dirent* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %96 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %94, %89
  br label %98

98:                                               ; preds = %97, %83
  br label %99

99:                                               ; preds = %98, %82
  %100 = load %struct.inode*, %struct.inode** %2, align 8
  %101 = load %struct.fnode*, %struct.fnode** %5, align 8
  %102 = call i32 @hpfs_write_inode_ea(%struct.inode* %100, %struct.fnode* %101)
  %103 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %104 = icmp ne %struct.hpfs_dirent* %103, null
  br i1 %104, label %105, label %152

105:                                              ; preds = %99
  %106 = load %struct.inode*, %struct.inode** %2, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.inode*, %struct.inode** %2, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @gmt_to_local(i32 %108, i32 %112)
  %114 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %115 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %114, i32 0, i32 5
  store i8* %113, i8** %115, align 8
  %116 = load %struct.inode*, %struct.inode** %2, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.inode*, %struct.inode** %2, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @gmt_to_local(i32 %118, i32 %122)
  %124 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %125 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %124, i32 0, i32 4
  store i8* %123, i8** %125, align 8
  %126 = load %struct.inode*, %struct.inode** %2, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.inode*, %struct.inode** %2, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i8* @gmt_to_local(i32 %128, i32 %132)
  %134 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %135 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %134, i32 0, i32 3
  store i8* %133, i8** %135, align 8
  %136 = load %struct.inode*, %struct.inode** %2, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = and i32 %138, 146
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %144 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %3, align 8
  %146 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %149 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %148, i32 0, i32 2
  store i64 %147, i64* %149, align 8
  %150 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %6)
  %151 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %6)
  br label %152

152:                                              ; preds = %105, %99
  %153 = load %struct.inode*, %struct.inode** %2, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @S_ISDIR(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %220

158:                                              ; preds = %152
  %159 = load %struct.inode*, %struct.inode** %2, align 8
  %160 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %3, align 8
  %161 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call %struct.hpfs_dirent* @map_dirent(%struct.inode* %159, i32 %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, i32* null, %struct.quad_buffer_head* %6)
  store %struct.hpfs_dirent* %163, %struct.hpfs_dirent** %7, align 8
  %164 = icmp ne %struct.hpfs_dirent* %163, null
  br i1 %164, label %165, label %211

165:                                              ; preds = %158
  %166 = load %struct.inode*, %struct.inode** %2, align 8
  %167 = getelementptr inbounds %struct.inode, %struct.inode* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.inode*, %struct.inode** %2, align 8
  %170 = getelementptr inbounds %struct.inode, %struct.inode* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i8* @gmt_to_local(i32 %168, i32 %172)
  %174 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %175 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %174, i32 0, i32 5
  store i8* %173, i8** %175, align 8
  %176 = load %struct.inode*, %struct.inode** %2, align 8
  %177 = getelementptr inbounds %struct.inode, %struct.inode* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.inode*, %struct.inode** %2, align 8
  %180 = getelementptr inbounds %struct.inode, %struct.inode* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i8* @gmt_to_local(i32 %178, i32 %182)
  %184 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %185 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %184, i32 0, i32 4
  store i8* %183, i8** %185, align 8
  %186 = load %struct.inode*, %struct.inode** %2, align 8
  %187 = getelementptr inbounds %struct.inode, %struct.inode* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.inode*, %struct.inode** %2, align 8
  %190 = getelementptr inbounds %struct.inode, %struct.inode* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i8* @gmt_to_local(i32 %188, i32 %192)
  %194 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %195 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %194, i32 0, i32 3
  store i8* %193, i8** %195, align 8
  %196 = load %struct.inode*, %struct.inode** %2, align 8
  %197 = getelementptr inbounds %struct.inode, %struct.inode* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = and i32 %198, 146
  %200 = icmp ne i32 %199, 0
  %201 = xor i1 %200, true
  %202 = zext i1 %201 to i32
  %203 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %204 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %206 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %205, i32 0, i32 2
  store i64 0, i64* %206, align 8
  %207 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %208 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %207, i32 0, i32 1
  store i64 0, i64* %208, align 8
  %209 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %6)
  %210 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %6)
  br label %219

211:                                              ; preds = %158
  %212 = load %struct.inode*, %struct.inode** %2, align 8
  %213 = getelementptr inbounds %struct.inode, %struct.inode* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.inode*, %struct.inode** %2, align 8
  %216 = getelementptr inbounds %struct.inode, %struct.inode* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @hpfs_error(i32 %214, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %217)
  br label %219

219:                                              ; preds = %211, %165
  br label %220

220:                                              ; preds = %219, %152
  %221 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %222 = call i32 @mark_buffer_dirty(%struct.buffer_head* %221)
  %223 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %224 = call i32 @brelse(%struct.buffer_head* %223)
  br label %225

225:                                              ; preds = %220, %57, %30, %20
  ret void
}

declare dso_local %struct.hpfs_inode_info* @hpfs_i(%struct.inode*) #1

declare dso_local %struct.TYPE_8__* @hpfs_sb(i32) #1

declare dso_local %struct.fnode* @hpfs_map_fnode(i32, i64, %struct.buffer_head**) #1

declare dso_local %struct.hpfs_dirent* @map_fnode_dirent(i32, i64, %struct.fnode*, %struct.quad_buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @hpfs_write_inode_ea(%struct.inode*, %struct.fnode*) #1

declare dso_local i8* @gmt_to_local(i32, i32) #1

declare dso_local i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local %struct.hpfs_dirent* @map_dirent(%struct.inode*, i32, i8*, i32, i32*, %struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_error(i32, i8*, i64) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
