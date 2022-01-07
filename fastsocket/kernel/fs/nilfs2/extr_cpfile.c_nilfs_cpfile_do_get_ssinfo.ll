; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_do_get_ssinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_do_get_ssinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_cpfile_header = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nilfs_checkpoint = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nilfs_cpinfo = type { i32 }
%struct.TYPE_6__ = type { i32 }

@KM_USER0 = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, i8*, i32, i64)* @nilfs_cpfile_do_get_ssinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_cpfile_do_get_ssinfo(%struct.inode* %0, i32* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.nilfs_cpfile_header*, align 8
  %13 = alloca %struct.nilfs_checkpoint*, align 8
  %14 = alloca %struct.nilfs_cpinfo*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to %struct.nilfs_cpinfo*
  store %struct.nilfs_cpinfo* %23, %struct.nilfs_cpinfo** %14, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  store i32 0, i32* %20, align 4
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = call %struct.TYPE_6__* @NILFS_MDT(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i32 @down_read(i32* %28)
  %30 = load i32, i32* %15, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %5
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = call i32 @nilfs_cpfile_get_header_block(%struct.inode* %33, %struct.buffer_head** %11)
  store i32 %34, i32* %21, align 4
  %35 = load i32, i32* %21, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %187

38:                                               ; preds = %32
  %39 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %40 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @KM_USER0, align 4
  %43 = call i8* @kmap_atomic(i32 %41, i32 %42)
  store i8* %43, i8** %19, align 8
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %46 = load i8*, i8** %19, align 8
  %47 = call %struct.nilfs_cpfile_header* @nilfs_cpfile_block_get_header(%struct.inode* %44, %struct.buffer_head* %45, i8* %46)
  store %struct.nilfs_cpfile_header* %47, %struct.nilfs_cpfile_header** %12, align 8
  %48 = load %struct.nilfs_cpfile_header*, %struct.nilfs_cpfile_header** %12, align 8
  %49 = getelementptr inbounds %struct.nilfs_cpfile_header, %struct.nilfs_cpfile_header* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le64_to_cpu(i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i8*, i8** %19, align 8
  %54 = load i32, i32* @KM_USER0, align 4
  %55 = call i32 @kunmap_atomic(i8* %53, i32 %54)
  %56 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %57 = call i32 @brelse(%struct.buffer_head* %56)
  %58 = load i32, i32* %15, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %38
  store i32 0, i32* %21, align 4
  br label %187

61:                                               ; preds = %38
  br label %70

62:                                               ; preds = %5
  %63 = load i32, i32* %15, align 4
  %64 = icmp eq i32 %63, -1
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 0, i32* %21, align 4
  br label %187

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %61
  %71 = load %struct.inode*, %struct.inode** %6, align 8
  %72 = load i32, i32* %15, align 4
  %73 = call i64 @nilfs_cpfile_get_blkoff(%struct.inode* %71, i32 %72)
  store i64 %73, i64* %17, align 8
  %74 = load %struct.inode*, %struct.inode** %6, align 8
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode* %74, i32 %75, i32 0, %struct.buffer_head** %11)
  store i32 %76, i32* %21, align 4
  %77 = load i32, i32* %21, align 4
  %78 = icmp slt i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %70
  %83 = load i32, i32* %21, align 4
  %84 = load i32, i32* @ENOENT, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 0, i32* %21, align 4
  br label %88

88:                                               ; preds = %87, %82
  br label %187

89:                                               ; preds = %70
  %90 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %91 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @KM_USER0, align 4
  %94 = call i8* @kmap_atomic(i32 %92, i32 %93)
  store i8* %94, i8** %19, align 8
  br label %95

95:                                               ; preds = %175, %89
  %96 = load i32, i32* %20, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %10, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %178

100:                                              ; preds = %95
  %101 = load %struct.inode*, %struct.inode** %6, align 8
  %102 = load i32, i32* %15, align 4
  %103 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %104 = load i8*, i8** %19, align 8
  %105 = call %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode* %101, i32 %102, %struct.buffer_head* %103, i8* %104)
  store %struct.nilfs_checkpoint* %105, %struct.nilfs_checkpoint** %13, align 8
  store i32 -1, i32* %15, align 4
  %106 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %13, align 8
  %107 = call i64 @nilfs_checkpoint_invalid(%struct.nilfs_checkpoint* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %100
  %110 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %13, align 8
  %111 = call i32 @nilfs_checkpoint_snapshot(%struct.nilfs_checkpoint* %110)
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  br label %114

114:                                              ; preds = %109, %100
  %115 = phi i1 [ true, %100 ], [ %113, %109 ]
  %116 = zext i1 %115 to i32
  %117 = call i64 @unlikely(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %178

120:                                              ; preds = %114
  %121 = load %struct.inode*, %struct.inode** %6, align 8
  %122 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %13, align 8
  %123 = load %struct.nilfs_cpinfo*, %struct.nilfs_cpinfo** %14, align 8
  %124 = call i32 @nilfs_cpfile_checkpoint_to_cpinfo(%struct.inode* %121, %struct.nilfs_checkpoint* %122, %struct.nilfs_cpinfo* %123)
  %125 = load %struct.nilfs_cpinfo*, %struct.nilfs_cpinfo** %14, align 8
  %126 = bitcast %struct.nilfs_cpinfo* %125 to i8*
  %127 = load i32, i32* %9, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr i8, i8* %126, i64 %128
  %130 = bitcast i8* %129 to %struct.nilfs_cpinfo*
  store %struct.nilfs_cpinfo* %130, %struct.nilfs_cpinfo** %14, align 8
  %131 = load i32, i32* %20, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %20, align 4
  %133 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %13, align 8
  %134 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @le64_to_cpu(i32 %136)
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %16, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %120
  br label %178

141:                                              ; preds = %120
  %142 = load %struct.inode*, %struct.inode** %6, align 8
  %143 = load i32, i32* %16, align 4
  %144 = call i64 @nilfs_cpfile_get_blkoff(%struct.inode* %142, i32 %143)
  store i64 %144, i64* %18, align 8
  %145 = load i64, i64* %17, align 8
  %146 = load i64, i64* %18, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %175

148:                                              ; preds = %141
  %149 = load i8*, i8** %19, align 8
  %150 = load i32, i32* @KM_USER0, align 4
  %151 = call i32 @kunmap_atomic(i8* %149, i32 %150)
  %152 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %153 = call i32 @brelse(%struct.buffer_head* %152)
  %154 = load %struct.inode*, %struct.inode** %6, align 8
  %155 = load i32, i32* %16, align 4
  %156 = call i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode* %154, i32 %155, i32 0, %struct.buffer_head** %11)
  store i32 %156, i32* %21, align 4
  %157 = load i32, i32* %21, align 4
  %158 = icmp slt i32 %157, 0
  %159 = zext i1 %158 to i32
  %160 = call i64 @unlikely(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %148
  %163 = load i32, i32* %21, align 4
  %164 = load i32, i32* @ENOENT, align 4
  %165 = sub nsw i32 0, %164
  %166 = icmp eq i32 %163, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 @WARN_ON(i32 %167)
  br label %187

169:                                              ; preds = %148
  %170 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %171 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @KM_USER0, align 4
  %174 = call i8* @kmap_atomic(i32 %172, i32 %173)
  store i8* %174, i8** %19, align 8
  br label %175

175:                                              ; preds = %169, %141
  %176 = load i32, i32* %16, align 4
  store i32 %176, i32* %15, align 4
  %177 = load i64, i64* %18, align 8
  store i64 %177, i64* %17, align 8
  br label %95

178:                                              ; preds = %140, %119, %95
  %179 = load i8*, i8** %19, align 8
  %180 = load i32, i32* @KM_USER0, align 4
  %181 = call i32 @kunmap_atomic(i8* %179, i32 %180)
  %182 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %183 = call i32 @brelse(%struct.buffer_head* %182)
  %184 = load i32, i32* %15, align 4
  %185 = load i32*, i32** %7, align 8
  store i32 %184, i32* %185, align 4
  %186 = load i32, i32* %20, align 4
  store i32 %186, i32* %21, align 4
  br label %187

187:                                              ; preds = %178, %162, %88, %68, %60, %37
  %188 = load %struct.inode*, %struct.inode** %6, align 8
  %189 = call %struct.TYPE_6__* @NILFS_MDT(%struct.inode* %188)
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = call i32 @up_read(i32* %190)
  %192 = load i32, i32* %21, align 4
  ret i32 %192
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_6__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @nilfs_cpfile_get_header_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local %struct.nilfs_cpfile_header* @nilfs_cpfile_block_get_header(%struct.inode*, %struct.buffer_head*, i8*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @nilfs_cpfile_get_blkoff(%struct.inode*, i32) #1

declare dso_local i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode*, i32, i32, %struct.buffer_head**) #1

declare dso_local %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode*, i32, %struct.buffer_head*, i8*) #1

declare dso_local i64 @nilfs_checkpoint_invalid(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @nilfs_checkpoint_snapshot(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @nilfs_cpfile_checkpoint_to_cpinfo(%struct.inode*, %struct.nilfs_checkpoint*, %struct.nilfs_cpinfo*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
