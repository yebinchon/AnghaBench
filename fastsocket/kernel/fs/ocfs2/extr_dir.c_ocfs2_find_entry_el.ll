; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_find_entry_el.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_find_entry_el.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.ocfs2_dir_entry = type { i32 }
%struct.TYPE_2__ = type { i64, i64 }

@NAMEI_RA_SIZE = common dso_local global i32 0, align 4
@OCFS2_BH_READAHEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"reading directory %llu, offset %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (i8*, i32, %struct.inode*, %struct.ocfs2_dir_entry**)* @ocfs2_find_entry_el to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @ocfs2_find_entry_el(i8* %0, i32 %1, %struct.inode* %2, %struct.ocfs2_dir_entry** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ocfs2_dir_entry**, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.ocfs2_dir_entry** %3, %struct.ocfs2_dir_entry*** %8, align 8
  %23 = load i32, i32* @NAMEI_RA_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %10, align 8
  %26 = alloca %struct.buffer_head*, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %27 = call i32 (...) @mlog_entry_void()
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load %struct.super_block*, %struct.super_block** %29, align 8
  store %struct.super_block* %30, %struct.super_block** %9, align 8
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = call i32 @i_size_read(%struct.inode* %31)
  %33 = load %struct.super_block*, %struct.super_block** %9, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %32, %35
  store i32 %36, i32* %20, align 4
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %14, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load i32, i32* %20, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp uge i64 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %4
  store i64 0, i64* %14, align 8
  br label %46

46:                                               ; preds = %45, %4
  %47 = load i64, i64* %14, align 8
  store i64 %47, i64* %15, align 8
  br label %48

48:                                               ; preds = %174, %46
  br label %49

49:                                               ; preds = %157, %48
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %91

53:                                               ; preds = %49
  store i32 0, i32* %18, align 4
  %54 = load i64, i64* %15, align 8
  store i64 %54, i64* %16, align 8
  store i32 0, i32* %17, align 4
  br label %55

55:                                               ; preds = %87, %53
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* @NAMEI_RA_SIZE, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %90

59:                                               ; preds = %55
  %60 = load i64, i64* %16, align 8
  %61 = load i32, i32* %20, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp uge i64 %60, %62
  br i1 %63, label %71, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %19, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i64, i64* %15, align 8
  %69 = load i64, i64* %14, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67, %59
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %26, i64 %73
  store %struct.buffer_head* null, %struct.buffer_head** %74, align 8
  br label %90

75:                                               ; preds = %67, %64
  %76 = load i32, i32* %19, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %19, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %78 = load %struct.inode*, %struct.inode** %7, align 8
  %79 = load i64, i64* %16, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %16, align 8
  %81 = load i32, i32* @OCFS2_BH_READAHEAD, align 4
  %82 = call i32 @ocfs2_read_dir_block(%struct.inode* %78, i64 %79, %struct.buffer_head** %12, i32 %81)
  store i32 %82, i32* %22, align 4
  %83 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %84 = load i32, i32* %17, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %26, i64 %85
  store %struct.buffer_head* %83, %struct.buffer_head** %86, align 8
  br label %87

87:                                               ; preds = %75
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %17, align 4
  br label %55

90:                                               ; preds = %71, %55
  br label %91

91:                                               ; preds = %90, %49
  %92 = load i32, i32* %18, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %18, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %26, i64 %94
  %96 = load %struct.buffer_head*, %struct.buffer_head** %95, align 8
  store %struct.buffer_head* %96, %struct.buffer_head** %12, align 8
  %97 = icmp eq %struct.buffer_head* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %149

99:                                               ; preds = %91
  %100 = load %struct.inode*, %struct.inode** %7, align 8
  %101 = load i64, i64* %15, align 8
  %102 = call i32 @ocfs2_read_dir_block(%struct.inode* %100, i64 %101, %struct.buffer_head** %12, i32 0)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load %struct.inode*, %struct.inode** %7, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 0
  %107 = load %struct.super_block*, %struct.super_block** %106, align 8
  %108 = load %struct.inode*, %struct.inode** %7, align 8
  %109 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %108)
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %15, align 8
  %113 = call i32 @ocfs2_error(%struct.super_block* %107, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %111, i64 %112)
  br label %149

114:                                              ; preds = %99
  %115 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %116 = load %struct.inode*, %struct.inode** %7, align 8
  %117 = load i8*, i8** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load i64, i64* %15, align 8
  %120 = load %struct.super_block*, %struct.super_block** %9, align 8
  %121 = getelementptr inbounds %struct.super_block, %struct.super_block* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = zext i32 %122 to i64
  %124 = shl i64 %119, %123
  %125 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %126 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.super_block*, %struct.super_block** %9, align 8
  %129 = getelementptr inbounds %struct.super_block, %struct.super_block* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ocfs2_dir_entry**, %struct.ocfs2_dir_entry*** %8, align 8
  %132 = call i32 @ocfs2_search_dirblock(%struct.buffer_head* %115, %struct.inode* %116, i8* %117, i32 %118, i64 %124, i32 %127, i32 %130, %struct.ocfs2_dir_entry** %131)
  store i32 %132, i32* %21, align 4
  %133 = load i32, i32* %21, align 4
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %141

135:                                              ; preds = %114
  %136 = load i64, i64* %15, align 8
  %137 = load %struct.inode*, %struct.inode** %7, align 8
  %138 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %137)
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  store i64 %136, i64* %139, align 8
  %140 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %140, %struct.buffer_head** %13, align 8
  br label %176

141:                                              ; preds = %114
  %142 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %143 = call i32 @brelse(%struct.buffer_head* %142)
  %144 = load i32, i32* %21, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %176

147:                                              ; preds = %141
  br label %148

148:                                              ; preds = %147
  br label %149

149:                                              ; preds = %148, %104, %98
  %150 = load i64, i64* %15, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %15, align 8
  %152 = load i32, i32* %20, align 4
  %153 = sext i32 %152 to i64
  %154 = icmp uge i64 %151, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %149
  store i64 0, i64* %15, align 8
  br label %156

156:                                              ; preds = %155, %149
  br label %157

157:                                              ; preds = %156
  %158 = load i64, i64* %15, align 8
  %159 = load i64, i64* %14, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %49, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* %20, align 4
  %163 = sext i32 %162 to i64
  store i64 %163, i64* %15, align 8
  %164 = load %struct.inode*, %struct.inode** %7, align 8
  %165 = call i32 @i_size_read(%struct.inode* %164)
  %166 = load %struct.super_block*, %struct.super_block** %9, align 8
  %167 = getelementptr inbounds %struct.super_block, %struct.super_block* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = ashr i32 %165, %168
  store i32 %169, i32* %20, align 4
  %170 = load i64, i64* %15, align 8
  %171 = load i32, i32* %20, align 4
  %172 = sext i32 %171 to i64
  %173 = icmp ult i64 %170, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %161
  store i64 0, i64* %14, align 8
  br label %48

175:                                              ; preds = %161
  br label %176

176:                                              ; preds = %175, %146, %135
  br label %177

177:                                              ; preds = %187, %176
  %178 = load i32, i32* %18, align 4
  %179 = load i32, i32* %17, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %190

181:                                              ; preds = %177
  %182 = load i32, i32* %18, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %26, i64 %183
  %185 = load %struct.buffer_head*, %struct.buffer_head** %184, align 8
  %186 = call i32 @brelse(%struct.buffer_head* %185)
  br label %187

187:                                              ; preds = %181
  %188 = load i32, i32* %18, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %18, align 4
  br label %177

190:                                              ; preds = %177
  %191 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %192 = call i32 @mlog_exit_ptr(%struct.buffer_head* %191)
  %193 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %194 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %194)
  ret %struct.buffer_head* %193
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlog_entry_void(...) #2

declare dso_local i32 @i_size_read(%struct.inode*) #2

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #2

declare dso_local i32 @ocfs2_read_dir_block(%struct.inode*, i64, %struct.buffer_head**, i32) #2

declare dso_local i32 @ocfs2_error(%struct.super_block*, i8*, i64, i64) #2

declare dso_local i32 @ocfs2_search_dirblock(%struct.buffer_head*, %struct.inode*, i8*, i32, i64, i32, i32, %struct.ocfs2_dir_entry**) #2

declare dso_local i32 @brelse(%struct.buffer_head*) #2

declare dso_local i32 @mlog_exit_ptr(%struct.buffer_head*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
