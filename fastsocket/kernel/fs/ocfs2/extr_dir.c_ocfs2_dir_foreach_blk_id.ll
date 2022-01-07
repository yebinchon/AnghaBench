; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dir_foreach_blk_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dir_foreach_blk_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ocfs2_inline_data }
%struct.ocfs2_inline_data = type { i64 }
%struct.ocfs2_dir_entry = type { i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unable to read inode block for dir %llu\0A\00", align 1
@DT_UNKNOWN = common dso_local global i8 0, align 1
@OCFS2_FT_MAX = common dso_local global i64 0, align 8
@ocfs2_filetype_table = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64*, i32*, i8*, i32 (i8*, i32, i32, i32, i64, i8)*, i32*)* @ocfs2_dir_foreach_blk_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dir_foreach_blk_id(%struct.inode* %0, i64* %1, i32* %2, i8* %3, i32 (i8*, i32, i32, i32, i64, i8)* %4, i32* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32 (i8*, i32, i32, i32, i64, i8)*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.ocfs2_dinode*, align 8
  %19 = alloca %struct.ocfs2_inline_data*, align 8
  %20 = alloca %struct.ocfs2_dir_entry*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8, align 1
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 (i8*, i32, i32, i32, i64, i8)* %4, i32 (i8*, i32, i32, i32, i64, i8)** %11, align 8
  store i32* %5, i32** %12, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %16, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = call i32 @ocfs2_read_inode_block(%struct.inode* %26, %struct.buffer_head** %17)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %6
  %31 = load i32, i32* @ML_ERROR, align 4
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @mlog(i32 %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %35)
  br label %197

37:                                               ; preds = %6
  %38 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %41, %struct.ocfs2_dinode** %18, align 8
  %42 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %43 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store %struct.ocfs2_inline_data* %44, %struct.ocfs2_inline_data** %19, align 8
  br label %45

45:                                               ; preds = %186, %37
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = call i32 @i_size_read(%struct.inode* %48)
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %196

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %184, %51
  %53 = load i64*, i64** %8, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %105

59:                                               ; preds = %52
  store i32 0, i32* %14, align 4
  br label %60

60:                                               ; preds = %87, %59
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = call i32 @i_size_read(%struct.inode* %62)
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %16, align 8
  %69 = icmp ult i64 %67, %68
  br label %70

70:                                               ; preds = %65, %60
  %71 = phi i1 [ false, %60 ], [ %69, %65 ]
  br i1 %71, label %72, label %96

72:                                               ; preds = %70
  %73 = load %struct.ocfs2_inline_data*, %struct.ocfs2_inline_data** %19, align 8
  %74 = getelementptr inbounds %struct.ocfs2_inline_data, %struct.ocfs2_inline_data* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = inttoptr i64 %78 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %79, %struct.ocfs2_dir_entry** %20, align 8
  %80 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %81 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @le16_to_cpu(i32 %82)
  %84 = call i64 @OCFS2_DIR_REC_LEN(i32 1)
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %72
  br label %96

87:                                               ; preds = %72
  %88 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %89 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @le16_to_cpu(i32 %90)
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %14, align 4
  br label %60

96:                                               ; preds = %86, %70
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %16, align 8
  %99 = trunc i64 %98 to i32
  %100 = load i32*, i32** %9, align 8
  store i32 %99, i32* %100, align 4
  %101 = load %struct.inode*, %struct.inode** %7, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** %8, align 8
  store i64 %103, i64* %104, align 8
  br label %105

105:                                              ; preds = %96, %52
  %106 = load %struct.ocfs2_inline_data*, %struct.ocfs2_inline_data** %19, align 8
  %107 = getelementptr inbounds %struct.ocfs2_inline_data, %struct.ocfs2_inline_data* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %108, %111
  %113 = inttoptr i64 %112 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %113, %struct.ocfs2_dir_entry** %20, align 8
  %114 = load %struct.inode*, %struct.inode** %7, align 8
  %115 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %116 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ocfs2_check_dir_entry(%struct.inode* %114, %struct.ocfs2_dir_entry* %115, %struct.buffer_head* %116, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %105
  %122 = load %struct.inode*, %struct.inode** %7, align 8
  %123 = call i32 @i_size_read(%struct.inode* %122)
  %124 = load i32*, i32** %9, align 8
  store i32 %123, i32* %124, align 4
  br label %197

125:                                              ; preds = %105
  %126 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %127 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @le16_to_cpu(i32 %128)
  %130 = load i64, i64* %16, align 8
  %131 = add i64 %130, %129
  store i64 %131, i64* %16, align 8
  %132 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %133 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @le64_to_cpu(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %186

137:                                              ; preds = %125
  %138 = load i64*, i64** %8, align 8
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %21, align 8
  %140 = load i8, i8* @DT_UNKNOWN, align 1
  store i8 %140, i8* %22, align 1
  %141 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %142 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @OCFS2_FT_MAX, align 8
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %137
  %147 = load i8*, i8** @ocfs2_filetype_table, align 8
  %148 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %149 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i8, i8* %147, i64 %150
  %152 = load i8, i8* %151, align 1
  store i8 %152, i8* %22, align 1
  br label %153

153:                                              ; preds = %146, %137
  %154 = load i32 (i8*, i32, i32, i32, i64, i8)*, i32 (i8*, i32, i32, i32, i64, i8)** %11, align 8
  %155 = load i8*, i8** %10, align 8
  %156 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %157 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %160 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %165 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @le64_to_cpu(i32 %166)
  %168 = load i8, i8* %22, align 1
  %169 = call i32 %154(i8* %155, i32 %158, i32 %161, i32 %163, i64 %167, i8 zeroext %168)
  store i32 %169, i32* %15, align 4
  %170 = load i32, i32* %15, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %153
  %173 = load i32*, i32** %12, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i32, i32* %15, align 4
  %177 = load i32*, i32** %12, align 8
  store i32 %176, i32* %177, align 4
  br label %178

178:                                              ; preds = %175, %172
  br label %196

179:                                              ; preds = %153
  %180 = load i64, i64* %21, align 8
  %181 = load i64*, i64** %8, align 8
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %180, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  br label %52

185:                                              ; preds = %179
  br label %186

186:                                              ; preds = %185, %125
  %187 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %20, align 8
  %188 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = call i64 @le16_to_cpu(i32 %189)
  %191 = load i32*, i32** %9, align 8
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %193, %190
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %191, align 4
  br label %45

196:                                              ; preds = %178, %45
  br label %197

197:                                              ; preds = %196, %121, %30
  %198 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %199 = call i32 @brelse(%struct.buffer_head* %198)
  ret i32 0
}

declare dso_local i32 @ocfs2_read_inode_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @OCFS2_DIR_REC_LEN(i32) #1

declare dso_local i32 @ocfs2_check_dir_entry(%struct.inode*, %struct.ocfs2_dir_entry*, %struct.buffer_head*, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
