; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_alloc_branch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_alloc_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.buffer_head*, i8**, i8* }
%struct.buffer_head = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"call get_create_access\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"marking uptodate\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"call ext4_handle_dirty_metadata\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"call jbd2_journal_forget\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i32, i32, i32*, i32, i32*, %struct.TYPE_4__*)* @ext4_alloc_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_alloc_branch(i32* %0, %struct.inode* %1, i32 %2, i32 %3, i32* %4, i32 %5, i32* %6, %struct.TYPE_4__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.buffer_head*, align 8
  %23 = alloca i32, align 4
  %24 = alloca [4 x i32], align 16
  %25 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store %struct.inode* %1, %struct.inode** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %17, align 8
  %26 = load %struct.inode*, %struct.inode** %11, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %18, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = load %struct.inode*, %struct.inode** %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32*, i32** %14, align 8
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %39 = call i32 @ext4_alloc_blocks(i32* %31, %struct.inode* %32, i32 %33, i32 %34, i32 %35, i32 %37, i32* %38, i32* %21)
  store i32 %39, i32* %23, align 4
  %40 = load i32, i32* %21, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %8
  %43 = load i32, i32* %21, align 4
  store i32 %43, i32* %9, align 4
  br label %230

44:                                               ; preds = %8
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %46 = load i32, i32* %45, align 16
  %47 = call i8* @cpu_to_le32(i32 %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  store i8* %47, i8** %50, align 8
  store i32 1, i32* %20, align 4
  br label %51

51:                                               ; preds = %173, %44
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %176

55:                                               ; preds = %51
  %56 = load %struct.inode*, %struct.inode** %11, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i32, i32* %20, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.buffer_head* @sb_getblk(%struct.TYPE_5__* %58, i32 %63)
  store %struct.buffer_head* %64, %struct.buffer_head** %22, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %67 = load i32, i32* %20, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store %struct.buffer_head* %65, %struct.buffer_head** %70, align 8
  %71 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %72 = call i32 @lock_buffer(%struct.buffer_head* %71)
  %73 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %74 = call i32 @BUFFER_TRACE(%struct.buffer_head* %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %75 = load i32*, i32** %10, align 8
  %76 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %77 = call i32 @ext4_journal_get_create_access(i32* %75, %struct.buffer_head* %76)
  store i32 %77, i32* %21, align 4
  %78 = load i32, i32* %21, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %55
  %81 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %82 = call i32 @unlock_buffer(%struct.buffer_head* %81)
  br label %180

83:                                               ; preds = %55
  %84 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %85 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %18, align 4
  %88 = call i32 @memset(i64 %86, i32 0, i32 %87)
  %89 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %90 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i8**
  %93 = load i32*, i32** %16, align 8
  %94 = load i32, i32* %20, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %92, i64 %98
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %101 = load i32, i32* %20, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store i8** %99, i8*** %104, align 8
  %105 = load i32, i32* %20, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @cpu_to_le32(i32 %108)
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %111 = load i32, i32* %20, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  store i8* %109, i8** %114, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %116 = load i32, i32* %20, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %122 = load i32, i32* %20, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i8**, i8*** %125, align 8
  store i8* %120, i8** %126, align 8
  %127 = load i32, i32* %20, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %156

130:                                              ; preds = %83
  %131 = load i32, i32* %20, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %25, align 4
  store i32 1, i32* %19, align 4
  br label %135

135:                                              ; preds = %152, %130
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %23, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %155

139:                                              ; preds = %135
  %140 = load i32, i32* %25, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %25, align 4
  %142 = call i8* @cpu_to_le32(i32 %141)
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %144 = load i32, i32* %20, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i8**, i8*** %147, align 8
  %149 = load i32, i32* %19, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  store i8* %142, i8** %151, align 8
  br label %152

152:                                              ; preds = %139
  %153 = load i32, i32* %19, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %19, align 4
  br label %135

155:                                              ; preds = %135
  br label %156

156:                                              ; preds = %155, %83
  %157 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %158 = call i32 @BUFFER_TRACE(%struct.buffer_head* %157, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %159 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %160 = call i32 @set_buffer_uptodate(%struct.buffer_head* %159)
  %161 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %162 = call i32 @unlock_buffer(%struct.buffer_head* %161)
  %163 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %164 = call i32 @BUFFER_TRACE(%struct.buffer_head* %163, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %165 = load i32*, i32** %10, align 8
  %166 = load %struct.inode*, %struct.inode** %11, align 8
  %167 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %168 = call i32 @ext4_handle_dirty_metadata(i32* %165, %struct.inode* %166, %struct.buffer_head* %167)
  store i32 %168, i32* %21, align 4
  %169 = load i32, i32* %21, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %156
  br label %180

172:                                              ; preds = %156
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %20, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %20, align 4
  br label %51

176:                                              ; preds = %51
  %177 = load i32, i32* %23, align 4
  %178 = load i32*, i32** %14, align 8
  store i32 %177, i32* %178, align 4
  %179 = load i32, i32* %21, align 4
  store i32 %179, i32* %9, align 4
  br label %230

180:                                              ; preds = %171, %80
  store i32 1, i32* %19, align 4
  br label %181

181:                                              ; preds = %201, %180
  %182 = load i32, i32* %19, align 4
  %183 = load i32, i32* %20, align 4
  %184 = icmp sle i32 %182, %183
  br i1 %184, label %185, label %204

185:                                              ; preds = %181
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %187 = load i32, i32* %19, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load %struct.buffer_head*, %struct.buffer_head** %190, align 8
  %192 = call i32 @BUFFER_TRACE(%struct.buffer_head* %191, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %193 = load i32*, i32** %10, align 8
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %195 = load i32, i32* %19, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load %struct.buffer_head*, %struct.buffer_head** %198, align 8
  %200 = call i32 @ext4_journal_forget(i32* %193, %struct.buffer_head* %199)
  br label %201

201:                                              ; preds = %185
  %202 = load i32, i32* %19, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %19, align 4
  br label %181

204:                                              ; preds = %181
  store i32 0, i32* %19, align 4
  br label %205

205:                                              ; preds = %217, %204
  %206 = load i32, i32* %19, align 4
  %207 = load i32, i32* %13, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %220

209:                                              ; preds = %205
  %210 = load i32*, i32** %10, align 8
  %211 = load %struct.inode*, %struct.inode** %11, align 8
  %212 = load i32, i32* %19, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @ext4_free_blocks(i32* %210, %struct.inode* %211, i32 %215, i32 1, i32 0)
  br label %217

217:                                              ; preds = %209
  %218 = load i32, i32* %19, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %19, align 4
  br label %205

220:                                              ; preds = %205
  %221 = load i32*, i32** %10, align 8
  %222 = load %struct.inode*, %struct.inode** %11, align 8
  %223 = load i32, i32* %19, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %23, align 4
  %228 = call i32 @ext4_free_blocks(i32* %221, %struct.inode* %222, i32 %226, i32 %227, i32 0)
  %229 = load i32, i32* %21, align 4
  store i32 %229, i32* %9, align 4
  br label %230

230:                                              ; preds = %220, %176, %42
  %231 = load i32, i32* %9, align 4
  ret i32 %231
}

declare dso_local i32 @ext4_alloc_blocks(i32*, %struct.inode*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_journal_get_create_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_journal_forget(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_free_blocks(i32*, %struct.inode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
