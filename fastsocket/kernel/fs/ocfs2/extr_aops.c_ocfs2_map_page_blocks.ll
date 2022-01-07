; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_map_page_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_map_page_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.inode = type { i32, i32 }
%struct.buffer_head = type { %struct.buffer_head*, i32, i32, i32 }

@READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_map_page_blocks(%struct.page* %0, i32* %1, %struct.inode* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca [2 x %struct.buffer_head*], align 16
  %18 = alloca %struct.buffer_head**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.inode* %2, %struct.inode** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %22 = getelementptr inbounds [2 x %struct.buffer_head*], [2 x %struct.buffer_head*]* %17, i64 0, i64 0
  store %struct.buffer_head** %22, %struct.buffer_head*** %18, align 8
  %23 = load %struct.inode*, %struct.inode** %10, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 1, %25
  store i32 %26, i32* %21, align 4
  %27 = load %struct.page*, %struct.page** %8, align 8
  %28 = call i32 @page_has_buffers(%struct.page* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %6
  %31 = load %struct.page*, %struct.page** %8, align 8
  %32 = load i32, i32* %21, align 4
  %33 = call i32 @create_empty_buffers(%struct.page* %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %30, %6
  %35 = load %struct.page*, %struct.page** %8, align 8
  %36 = call %struct.buffer_head* @page_buffers(%struct.page* %35)
  store %struct.buffer_head* %36, %struct.buffer_head** %15, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  store %struct.buffer_head* %37, %struct.buffer_head** %16, align 8
  store i32 0, i32* %20, align 4
  br label %38

38:                                               ; preds = %144, %34
  %39 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %41 = icmp ne %struct.buffer_head* %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %20, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i1 [ true, %38 ], [ %45, %42 ]
  br i1 %47, label %48, label %151

48:                                               ; preds = %46
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* %21, align 4
  %51 = add i32 %49, %50
  store i32 %51, i32* %19, align 4
  %52 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %53 = call i32 @clear_buffer_new(%struct.buffer_head* %52)
  %54 = load i32, i32* %20, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp uge i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ule i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %57, %48
  %62 = load %struct.page*, %struct.page** %8, align 8
  %63 = call i64 @PageUptodate(%struct.page* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %67 = call i32 @set_buffer_uptodate(%struct.buffer_head* %66)
  br label %68

68:                                               ; preds = %65, %61
  br label %144

69:                                               ; preds = %57
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %74 = call i32 @set_buffer_new(%struct.buffer_head* %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %77 = call i32 @buffer_mapped(%struct.buffer_head* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %75
  %80 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %81 = load %struct.inode*, %struct.inode** %10, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @map_bh(%struct.buffer_head* %80, i32 %83, i32 %85)
  %87 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %88 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %91 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @unmap_underlying_metadata(i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %79, %75
  %95 = load %struct.page*, %struct.page** %8, align 8
  %96 = call i64 @PageUptodate(%struct.page* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %100 = call i32 @buffer_uptodate(%struct.buffer_head* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %104 = call i32 @set_buffer_uptodate(%struct.buffer_head* %103)
  br label %105

105:                                              ; preds = %102, %98
  br label %139

106:                                              ; preds = %94
  %107 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %108 = call i32 @buffer_uptodate(%struct.buffer_head* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %138, label %110

110:                                              ; preds = %106
  %111 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %112 = call i32 @buffer_delay(%struct.buffer_head* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %138, label %114

114:                                              ; preds = %110
  %115 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %116 = call i32 @buffer_new(%struct.buffer_head* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %138, label %118

118:                                              ; preds = %114
  %119 = load %struct.inode*, %struct.inode** %10, align 8
  %120 = load %struct.page*, %struct.page** %8, align 8
  %121 = load i32, i32* %20, align 4
  %122 = call i64 @ocfs2_should_read_blk(%struct.inode* %119, %struct.page* %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %118
  %125 = load i32, i32* %20, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp ult i32 %125, %126
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp ugt i32 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %128, %124
  %133 = load i32, i32* @READ, align 4
  %134 = call i32 @ll_rw_block(i32 %133, i32 1, %struct.buffer_head** %16)
  %135 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %136 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %137 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %136, i32 1
  store %struct.buffer_head** %137, %struct.buffer_head*** %18, align 8
  store %struct.buffer_head* %135, %struct.buffer_head** %136, align 8
  br label %138

138:                                              ; preds = %132, %128, %118, %114, %110, %106
  br label %139

139:                                              ; preds = %138, %105
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  %143 = load i32*, i32** %9, align 8
  store i32 %142, i32* %143, align 4
  br label %144

144:                                              ; preds = %139, %68
  %145 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %146 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %145, i32 0, i32 0
  %147 = load %struct.buffer_head*, %struct.buffer_head** %146, align 8
  store %struct.buffer_head* %147, %struct.buffer_head** %16, align 8
  %148 = load i32, i32* %21, align 4
  %149 = load i32, i32* %20, align 4
  %150 = add i32 %149, %148
  store i32 %150, i32* %20, align 4
  br label %38

151:                                              ; preds = %46
  br label %152

152:                                              ; preds = %168, %151
  %153 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %154 = getelementptr inbounds [2 x %struct.buffer_head*], [2 x %struct.buffer_head*]* %17, i64 0, i64 0
  %155 = icmp ugt %struct.buffer_head** %153, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %152
  %157 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %158 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %157, i32 -1
  store %struct.buffer_head** %158, %struct.buffer_head*** %18, align 8
  %159 = load %struct.buffer_head*, %struct.buffer_head** %158, align 8
  %160 = call i32 @wait_on_buffer(%struct.buffer_head* %159)
  %161 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %162 = load %struct.buffer_head*, %struct.buffer_head** %161, align 8
  %163 = call i32 @buffer_uptodate(%struct.buffer_head* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %156
  %166 = load i32, i32* @EIO, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %14, align 4
  br label %168

168:                                              ; preds = %165, %156
  br label %152

169:                                              ; preds = %152
  %170 = load i32, i32* %14, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %13, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %172, %169
  %176 = load i32, i32* %14, align 4
  store i32 %176, i32* %7, align 4
  br label %214

177:                                              ; preds = %172
  %178 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  store %struct.buffer_head* %178, %struct.buffer_head** %16, align 8
  store i32 0, i32* %20, align 4
  br label %179

179:                                              ; preds = %208, %177
  %180 = load i32, i32* %20, align 4
  %181 = load i32, i32* %21, align 4
  %182 = add i32 %180, %181
  store i32 %182, i32* %19, align 4
  %183 = load i32, i32* %19, align 4
  %184 = load i32, i32* %11, align 4
  %185 = icmp ule i32 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  br label %203

187:                                              ; preds = %179
  %188 = load i32, i32* %20, align 4
  %189 = load i32, i32* %12, align 4
  %190 = icmp uge i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  br label %212

192:                                              ; preds = %187
  %193 = load %struct.page*, %struct.page** %8, align 8
  %194 = load i32, i32* %20, align 4
  %195 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %196 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @zero_user(%struct.page* %193, i32 %194, i32 %197)
  %199 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %200 = call i32 @set_buffer_uptodate(%struct.buffer_head* %199)
  %201 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %202 = call i32 @mark_buffer_dirty(%struct.buffer_head* %201)
  br label %203

203:                                              ; preds = %192, %186
  %204 = load i32, i32* %19, align 4
  store i32 %204, i32* %20, align 4
  %205 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %206 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %205, i32 0, i32 0
  %207 = load %struct.buffer_head*, %struct.buffer_head** %206, align 8
  store %struct.buffer_head* %207, %struct.buffer_head** %16, align 8
  br label %208

208:                                              ; preds = %203
  %209 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %210 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %211 = icmp ne %struct.buffer_head* %209, %210
  br i1 %211, label %179, label %212

212:                                              ; preds = %208, %191
  %213 = load i32, i32* %14, align 4
  store i32 %213, i32* %7, align 4
  br label %214

214:                                              ; preds = %212, %175
  %215 = load i32, i32* %7, align 4
  ret i32 %215
}

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @create_empty_buffers(%struct.page*, i32, i32) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @clear_buffer_new(%struct.buffer_head*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, i32, i32) #1

declare dso_local i32 @unmap_underlying_metadata(i32, i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @buffer_delay(%struct.buffer_head*) #1

declare dso_local i32 @buffer_new(%struct.buffer_head*) #1

declare dso_local i64 @ocfs2_should_read_blk(%struct.inode*, %struct.page*, i32) #1

declare dso_local i32 @ll_rw_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
