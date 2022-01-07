; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_clear_snapshot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_clear_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_cpfile_header = type { i32 }
%struct.nilfs_checkpoint = type { %struct.nilfs_snapshot_list }
%struct.nilfs_snapshot_list = type { i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64)* @nilfs_cpfile_clear_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_cpfile_clear_snapshot(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.nilfs_cpfile_header*, align 8
  %11 = alloca %struct.nilfs_checkpoint*, align 8
  %12 = alloca %struct.nilfs_snapshot_list*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %210

22:                                               ; preds = %2
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @down_write(i32* %25)
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode* %27, i64 %28, i32 0, %struct.buffer_head** %9)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %204

33:                                               ; preds = %22
  %34 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %35 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @KM_USER0, align 4
  %38 = call i8* @kmap_atomic(i32 %36, i32 %37)
  store i8* %38, i8** %15, align 8
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = call %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode* %39, i64 %40, %struct.buffer_head* %41, i8* %42)
  store %struct.nilfs_checkpoint* %43, %struct.nilfs_checkpoint** %11, align 8
  %44 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %45 = call i64 @nilfs_checkpoint_invalid(%struct.nilfs_checkpoint* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %33
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %16, align 4
  %50 = load i8*, i8** %15, align 8
  %51 = load i32, i32* @KM_USER0, align 4
  %52 = call i32 @kunmap_atomic(i8* %50, i32 %51)
  br label %201

53:                                               ; preds = %33
  %54 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %55 = call i32 @nilfs_checkpoint_snapshot(%struct.nilfs_checkpoint* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  store i32 0, i32* %16, align 4
  %58 = load i8*, i8** %15, align 8
  %59 = load i32, i32* @KM_USER0, align 4
  %60 = call i32 @kunmap_atomic(i8* %58, i32 %59)
  br label %201

61:                                               ; preds = %53
  %62 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %63 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %62, i32 0, i32 0
  store %struct.nilfs_snapshot_list* %63, %struct.nilfs_snapshot_list** %12, align 8
  %64 = load %struct.nilfs_snapshot_list*, %struct.nilfs_snapshot_list** %12, align 8
  %65 = getelementptr inbounds %struct.nilfs_snapshot_list, %struct.nilfs_snapshot_list* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @le64_to_cpu(i8* %66)
  store i64 %67, i64* %13, align 8
  %68 = load %struct.nilfs_snapshot_list*, %struct.nilfs_snapshot_list** %12, align 8
  %69 = getelementptr inbounds %struct.nilfs_snapshot_list, %struct.nilfs_snapshot_list* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @le64_to_cpu(i8* %70)
  store i64 %71, i64* %14, align 8
  %72 = load i8*, i8** %15, align 8
  %73 = load i32, i32* @KM_USER0, align 4
  %74 = call i32 @kunmap_atomic(i8* %72, i32 %73)
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = call i32 @nilfs_cpfile_get_header_block(%struct.inode* %75, %struct.buffer_head** %6)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %61
  br label %201

80:                                               ; preds = %61
  %81 = load i64, i64* %13, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load %struct.inode*, %struct.inode** %4, align 8
  %85 = load i64, i64* %13, align 8
  %86 = call i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode* %84, i64 %85, i32 0, %struct.buffer_head** %7)
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %198

90:                                               ; preds = %83
  br label %95

91:                                               ; preds = %80
  %92 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %92, %struct.buffer_head** %7, align 8
  %93 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %94 = call i32 @get_bh(%struct.buffer_head* %93)
  br label %95

95:                                               ; preds = %91, %90
  %96 = load i64, i64* %14, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load %struct.inode*, %struct.inode** %4, align 8
  %100 = load i64, i64* %14, align 8
  %101 = call i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode* %99, i64 %100, i32 0, %struct.buffer_head** %8)
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %195

105:                                              ; preds = %98
  br label %110

106:                                              ; preds = %95
  %107 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %107, %struct.buffer_head** %8, align 8
  %108 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %109 = call i32 @get_bh(%struct.buffer_head* %108)
  br label %110

110:                                              ; preds = %106, %105
  %111 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %112 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @KM_USER0, align 4
  %115 = call i8* @kmap_atomic(i32 %113, i32 %114)
  store i8* %115, i8** %15, align 8
  %116 = load %struct.inode*, %struct.inode** %4, align 8
  %117 = load i64, i64* %13, align 8
  %118 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %119 = load i8*, i8** %15, align 8
  %120 = call %struct.nilfs_snapshot_list* @nilfs_cpfile_block_get_snapshot_list(%struct.inode* %116, i64 %117, %struct.buffer_head* %118, i8* %119)
  store %struct.nilfs_snapshot_list* %120, %struct.nilfs_snapshot_list** %12, align 8
  %121 = load i64, i64* %14, align 8
  %122 = call i8* @cpu_to_le64(i64 %121)
  %123 = load %struct.nilfs_snapshot_list*, %struct.nilfs_snapshot_list** %12, align 8
  %124 = getelementptr inbounds %struct.nilfs_snapshot_list, %struct.nilfs_snapshot_list* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  %125 = load i8*, i8** %15, align 8
  %126 = load i32, i32* @KM_USER0, align 4
  %127 = call i32 @kunmap_atomic(i8* %125, i32 %126)
  %128 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %129 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @KM_USER0, align 4
  %132 = call i8* @kmap_atomic(i32 %130, i32 %131)
  store i8* %132, i8** %15, align 8
  %133 = load %struct.inode*, %struct.inode** %4, align 8
  %134 = load i64, i64* %14, align 8
  %135 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %136 = load i8*, i8** %15, align 8
  %137 = call %struct.nilfs_snapshot_list* @nilfs_cpfile_block_get_snapshot_list(%struct.inode* %133, i64 %134, %struct.buffer_head* %135, i8* %136)
  store %struct.nilfs_snapshot_list* %137, %struct.nilfs_snapshot_list** %12, align 8
  %138 = load i64, i64* %13, align 8
  %139 = call i8* @cpu_to_le64(i64 %138)
  %140 = load %struct.nilfs_snapshot_list*, %struct.nilfs_snapshot_list** %12, align 8
  %141 = getelementptr inbounds %struct.nilfs_snapshot_list, %struct.nilfs_snapshot_list* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  %142 = load i8*, i8** %15, align 8
  %143 = load i32, i32* @KM_USER0, align 4
  %144 = call i32 @kunmap_atomic(i8* %142, i32 %143)
  %145 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %146 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @KM_USER0, align 4
  %149 = call i8* @kmap_atomic(i32 %147, i32 %148)
  store i8* %149, i8** %15, align 8
  %150 = load %struct.inode*, %struct.inode** %4, align 8
  %151 = load i64, i64* %5, align 8
  %152 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %153 = load i8*, i8** %15, align 8
  %154 = call %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode* %150, i64 %151, %struct.buffer_head* %152, i8* %153)
  store %struct.nilfs_checkpoint* %154, %struct.nilfs_checkpoint** %11, align 8
  %155 = call i8* @cpu_to_le64(i64 0)
  %156 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %157 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.nilfs_snapshot_list, %struct.nilfs_snapshot_list* %157, i32 0, i32 1
  store i8* %155, i8** %158, align 8
  %159 = call i8* @cpu_to_le64(i64 0)
  %160 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %161 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.nilfs_snapshot_list, %struct.nilfs_snapshot_list* %161, i32 0, i32 0
  store i8* %159, i8** %162, align 8
  %163 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %164 = call i32 @nilfs_checkpoint_clear_snapshot(%struct.nilfs_checkpoint* %163)
  %165 = load i8*, i8** %15, align 8
  %166 = load i32, i32* @KM_USER0, align 4
  %167 = call i32 @kunmap_atomic(i8* %165, i32 %166)
  %168 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %169 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @KM_USER0, align 4
  %172 = call i8* @kmap_atomic(i32 %170, i32 %171)
  store i8* %172, i8** %15, align 8
  %173 = load %struct.inode*, %struct.inode** %4, align 8
  %174 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %175 = load i8*, i8** %15, align 8
  %176 = call %struct.nilfs_cpfile_header* @nilfs_cpfile_block_get_header(%struct.inode* %173, %struct.buffer_head* %174, i8* %175)
  store %struct.nilfs_cpfile_header* %176, %struct.nilfs_cpfile_header** %10, align 8
  %177 = load %struct.nilfs_cpfile_header*, %struct.nilfs_cpfile_header** %10, align 8
  %178 = getelementptr inbounds %struct.nilfs_cpfile_header, %struct.nilfs_cpfile_header* %177, i32 0, i32 0
  %179 = call i32 @le64_add_cpu(i32* %178, i32 -1)
  %180 = load i8*, i8** %15, align 8
  %181 = load i32, i32* @KM_USER0, align 4
  %182 = call i32 @kunmap_atomic(i8* %180, i32 %181)
  %183 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %184 = call i32 @nilfs_mdt_mark_buffer_dirty(%struct.buffer_head* %183)
  %185 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %186 = call i32 @nilfs_mdt_mark_buffer_dirty(%struct.buffer_head* %185)
  %187 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %188 = call i32 @nilfs_mdt_mark_buffer_dirty(%struct.buffer_head* %187)
  %189 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %190 = call i32 @nilfs_mdt_mark_buffer_dirty(%struct.buffer_head* %189)
  %191 = load %struct.inode*, %struct.inode** %4, align 8
  %192 = call i32 @nilfs_mdt_mark_dirty(%struct.inode* %191)
  %193 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %194 = call i32 @brelse(%struct.buffer_head* %193)
  br label %195

195:                                              ; preds = %110, %104
  %196 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %197 = call i32 @brelse(%struct.buffer_head* %196)
  br label %198

198:                                              ; preds = %195, %89
  %199 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %200 = call i32 @brelse(%struct.buffer_head* %199)
  br label %201

201:                                              ; preds = %198, %79, %57, %47
  %202 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %203 = call i32 @brelse(%struct.buffer_head* %202)
  br label %204

204:                                              ; preds = %201, %32
  %205 = load %struct.inode*, %struct.inode** %4, align 8
  %206 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %205)
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = call i32 @up_write(i32* %207)
  %209 = load i32, i32* %16, align 4
  store i32 %209, i32* %3, align 4
  br label %210

210:                                              ; preds = %204, %19
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode*, i64, i32, %struct.buffer_head**) #1

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode*, i64, %struct.buffer_head*, i8*) #1

declare dso_local i64 @nilfs_checkpoint_invalid(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @nilfs_checkpoint_snapshot(%struct.nilfs_checkpoint*) #1

declare dso_local i64 @le64_to_cpu(i8*) #1

declare dso_local i32 @nilfs_cpfile_get_header_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local %struct.nilfs_snapshot_list* @nilfs_cpfile_block_get_snapshot_list(%struct.inode*, i64, %struct.buffer_head*, i8*) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @nilfs_checkpoint_clear_snapshot(%struct.nilfs_checkpoint*) #1

declare dso_local %struct.nilfs_cpfile_header* @nilfs_cpfile_block_get_header(%struct.inode*, %struct.buffer_head*, i8*) #1

declare dso_local i32 @le64_add_cpu(i32*, i32) #1

declare dso_local i32 @nilfs_mdt_mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_mdt_mark_dirty(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
