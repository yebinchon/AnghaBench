; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_alloc_branch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_alloc_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.buffer_head*, i8**, i8* }
%struct.buffer_head = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"call get_create_access\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"marking uptodate\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"call ext3_journal_dirty_metadata\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"call journal_forget\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i32, i32*, i32, i32*, %struct.TYPE_4__*)* @ext3_alloc_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_alloc_branch(i32* %0, %struct.inode* %1, i32 %2, i32* %3, i32 %4, i32* %5, %struct.TYPE_4__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.buffer_head*, align 8
  %21 = alloca i32, align 4
  %22 = alloca [4 x i32], align 16
  %23 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %15, align 8
  %24 = load %struct.inode*, %struct.inode** %10, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load %struct.inode*, %struct.inode** %10, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 0
  %36 = call i32 @ext3_alloc_blocks(i32* %29, %struct.inode* %30, i32 %31, i32 %32, i32 %34, i32* %35, i32* %19)
  store i32 %36, i32* %21, align 4
  %37 = load i32, i32* %19, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %7
  %40 = load i32, i32* %19, align 4
  store i32 %40, i32* %8, align 4
  br label %228

41:                                               ; preds = %7
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 0
  %43 = load i32, i32* %42, align 16
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i8* %44, i8** %47, align 8
  store i32 1, i32* %18, align 4
  br label %48

48:                                               ; preds = %171, %41
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %174

52:                                               ; preds = %48
  %53 = load %struct.inode*, %struct.inode** %10, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %18, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.buffer_head* @sb_getblk(%struct.TYPE_5__* %55, i32 %60)
  store %struct.buffer_head* %61, %struct.buffer_head** %20, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store %struct.buffer_head* %62, %struct.buffer_head** %67, align 8
  %68 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %69 = call i32 @lock_buffer(%struct.buffer_head* %68)
  %70 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %71 = call i32 @BUFFER_TRACE(%struct.buffer_head* %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %72 = load i32*, i32** %9, align 8
  %73 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %74 = call i32 @ext3_journal_get_create_access(i32* %72, %struct.buffer_head* %73)
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* %19, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %52
  %78 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %79 = call i32 @unlock_buffer(%struct.buffer_head* %78)
  %80 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %81 = call i32 @brelse(%struct.buffer_head* %80)
  br label %178

82:                                               ; preds = %52
  %83 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %84 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %16, align 4
  %87 = call i32 @memset(i64 %85, i32 0, i32 %86)
  %88 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %89 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i8**
  %92 = load i32*, i32** %14, align 8
  %93 = load i32, i32* %18, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %91, i64 %97
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %100 = load i32, i32* %18, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i8** %98, i8*** %103, align 8
  %104 = load i32, i32* %18, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @cpu_to_le32(i32 %107)
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %110 = load i32, i32* %18, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  store i8* %108, i8** %113, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %115 = load i32, i32* %18, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %121 = load i32, i32* %18, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i8**, i8*** %124, align 8
  store i8* %119, i8** %125, align 8
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %155

129:                                              ; preds = %82
  %130 = load i32, i32* %18, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %131
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %23, align 4
  store i32 1, i32* %17, align 4
  br label %134

134:                                              ; preds = %151, %129
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %21, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %154

138:                                              ; preds = %134
  %139 = load i32, i32* %23, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %23, align 4
  %141 = call i8* @cpu_to_le32(i32 %140)
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %143 = load i32, i32* %18, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i8**, i8*** %146, align 8
  %148 = load i32, i32* %17, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  store i8* %141, i8** %150, align 8
  br label %151

151:                                              ; preds = %138
  %152 = load i32, i32* %17, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %17, align 4
  br label %134

154:                                              ; preds = %134
  br label %155

155:                                              ; preds = %154, %82
  %156 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %157 = call i32 @BUFFER_TRACE(%struct.buffer_head* %156, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %158 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %159 = call i32 @set_buffer_uptodate(%struct.buffer_head* %158)
  %160 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %161 = call i32 @unlock_buffer(%struct.buffer_head* %160)
  %162 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %163 = call i32 @BUFFER_TRACE(%struct.buffer_head* %162, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %164 = load i32*, i32** %9, align 8
  %165 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %166 = call i32 @ext3_journal_dirty_metadata(i32* %164, %struct.buffer_head* %165)
  store i32 %166, i32* %19, align 4
  %167 = load i32, i32* %19, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %155
  br label %178

170:                                              ; preds = %155
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %18, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %18, align 4
  br label %48

174:                                              ; preds = %48
  %175 = load i32, i32* %21, align 4
  %176 = load i32*, i32** %12, align 8
  store i32 %175, i32* %176, align 4
  %177 = load i32, i32* %19, align 4
  store i32 %177, i32* %8, align 4
  br label %228

178:                                              ; preds = %169, %77
  store i32 1, i32* %17, align 4
  br label %179

179:                                              ; preds = %199, %178
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* %18, align 4
  %182 = icmp sle i32 %180, %181
  br i1 %182, label %183, label %202

183:                                              ; preds = %179
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %185 = load i32, i32* %17, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load %struct.buffer_head*, %struct.buffer_head** %188, align 8
  %190 = call i32 @BUFFER_TRACE(%struct.buffer_head* %189, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %191 = load i32*, i32** %9, align 8
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %193 = load i32, i32* %17, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load %struct.buffer_head*, %struct.buffer_head** %196, align 8
  %198 = call i32 @ext3_journal_forget(i32* %191, %struct.buffer_head* %197)
  br label %199

199:                                              ; preds = %183
  %200 = load i32, i32* %17, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %17, align 4
  br label %179

202:                                              ; preds = %179
  store i32 0, i32* %17, align 4
  br label %203

203:                                              ; preds = %215, %202
  %204 = load i32, i32* %17, align 4
  %205 = load i32, i32* %11, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %218

207:                                              ; preds = %203
  %208 = load i32*, i32** %9, align 8
  %209 = load %struct.inode*, %struct.inode** %10, align 8
  %210 = load i32, i32* %17, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @ext3_free_blocks(i32* %208, %struct.inode* %209, i32 %213, i32 1)
  br label %215

215:                                              ; preds = %207
  %216 = load i32, i32* %17, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %17, align 4
  br label %203

218:                                              ; preds = %203
  %219 = load i32*, i32** %9, align 8
  %220 = load %struct.inode*, %struct.inode** %10, align 8
  %221 = load i32, i32* %17, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %21, align 4
  %226 = call i32 @ext3_free_blocks(i32* %219, %struct.inode* %220, i32 %224, i32 %225)
  %227 = load i32, i32* %19, align 4
  store i32 %227, i32* %8, align 4
  br label %228

228:                                              ; preds = %218, %174, %39
  %229 = load i32, i32* %8, align 4
  ret i32 %229
}

declare dso_local i32 @ext3_alloc_blocks(i32*, %struct.inode*, i32, i32, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext3_journal_get_create_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ext3_journal_dirty_metadata(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext3_journal_forget(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext3_free_blocks(i32*, %struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
