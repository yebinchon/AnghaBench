; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_mpage_put_bnr_to_bhs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_mpage_put_bnr_to_bhs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage_da_data = type { %struct.inode* }
%struct.inode = type { i32, %struct.TYPE_2__*, %struct.address_space* }
%struct.TYPE_2__ = type { i64 }
%struct.address_space = type { i32 }
%struct.buffer_head = type { i32, i32, i64, %struct.buffer_head* }
%struct.pagevec = type { %struct.page** }
%struct.page = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGEVEC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpage_da_data*, i32, %struct.buffer_head*)* @mpage_put_bnr_to_bhs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpage_put_bnr_to_bhs(%struct.mpage_da_data* %0, i32 %1, %struct.buffer_head* %2) #0 {
  %4 = alloca %struct.mpage_da_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pagevec, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.page*, align 8
  store %struct.mpage_da_data* %0, %struct.mpage_da_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %6, align 8
  %20 = load %struct.mpage_da_data*, %struct.mpage_da_data** %4, align 8
  %21 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %7, align 8
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 2
  %25 = load %struct.address_space*, %struct.address_space** %24, align 8
  store %struct.address_space* %25, %struct.address_space** %8, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %27 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = ashr i32 %28, %31
  store i32 %32, i32* %9, align 4
  %33 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %37, %40
  %42 = ashr i32 %36, %41
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %43, %44
  %46 = sub nsw i32 %45, 1
  %47 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %47, %50
  %52 = ashr i32 %46, %51
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %54, %57
  %59 = shl i32 %53, %58
  store i32 %59, i32* %11, align 4
  %60 = call i32 @pagevec_init(%struct.pagevec* %16, i32 0)
  br label %61

61:                                               ; preds = %203, %3
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %205

65:                                               ; preds = %61
  %66 = load %struct.address_space*, %struct.address_space** %8, align 8
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @PAGEVEC_SIZE, align 4
  %69 = call i32 @pagevec_lookup(%struct.pagevec* %16, %struct.address_space* %66, i32 %67, i32 %68)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %205

73:                                               ; preds = %65
  store i32 0, i32* %18, align 4
  br label %74

74:                                               ; preds = %200, %73
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %203

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %16, i32 0, i32 0
  %80 = load %struct.page**, %struct.page*** %79, align 8
  %81 = load i32, i32* %18, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.page*, %struct.page** %80, i64 %82
  %84 = load %struct.page*, %struct.page** %83, align 8
  store %struct.page* %84, %struct.page** %19, align 8
  %85 = load %struct.page*, %struct.page** %19, align 8
  %86 = getelementptr inbounds %struct.page, %struct.page* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  br label %203

92:                                               ; preds = %78
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %14, align 4
  %95 = load %struct.page*, %struct.page** %19, align 8
  %96 = call i32 @PageLocked(%struct.page* %95)
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i32 @BUG_ON(i32 %99)
  %101 = load %struct.page*, %struct.page** %19, align 8
  %102 = call i32 @PageWriteback(%struct.page* %101)
  %103 = call i32 @BUG_ON(i32 %102)
  %104 = load %struct.page*, %struct.page** %19, align 8
  %105 = call i32 @page_has_buffers(%struct.page* %104)
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i32 @BUG_ON(i32 %108)
  %110 = load %struct.page*, %struct.page** %19, align 8
  %111 = call %struct.buffer_head* @page_buffers(%struct.page* %110)
  store %struct.buffer_head* %111, %struct.buffer_head** %13, align 8
  %112 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  store %struct.buffer_head* %112, %struct.buffer_head** %12, align 8
  br label %113

113:                                              ; preds = %121, %92
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %127

118:                                              ; preds = %113
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %118
  %122 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %123 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %122, i32 0, i32 3
  %124 = load %struct.buffer_head*, %struct.buffer_head** %123, align 8
  store %struct.buffer_head* %124, %struct.buffer_head** %13, align 8
  %125 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %126 = icmp ne %struct.buffer_head* %124, %125
  br i1 %126, label %113, label %127

127:                                              ; preds = %121, %117
  br label %128

128:                                              ; preds = %193, %127
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %130, %131
  %133 = icmp sge i32 %129, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %199

135:                                              ; preds = %128
  %136 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %137 = call i64 @buffer_delay(%struct.buffer_head* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %141 = call i64 @buffer_unwritten(%struct.buffer_head* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %175

143:                                              ; preds = %139, %135
  %144 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %145 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.inode*, %struct.inode** %7, align 8
  %148 = getelementptr inbounds %struct.inode, %struct.inode* %147, i32 0, i32 1
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %146, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @BUG_ON(i32 %153)
  %155 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %156 = call i64 @buffer_delay(%struct.buffer_head* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %143
  %159 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %160 = call i32 @clear_buffer_delay(%struct.buffer_head* %159)
  %161 = load i32, i32* %10, align 4
  %162 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %163 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  br label %174

164:                                              ; preds = %143
  %165 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %166 = call i32 @clear_buffer_unwritten(%struct.buffer_head* %165)
  %167 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %168 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %169, %170
  %172 = zext i1 %171 to i32
  %173 = call i32 @BUG_ON(i32 %172)
  br label %174

174:                                              ; preds = %164, %158
  br label %188

175:                                              ; preds = %139
  %176 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %177 = call i64 @buffer_mapped(%struct.buffer_head* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %175
  %180 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %181 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp ne i32 %182, %183
  %185 = zext i1 %184 to i32
  %186 = call i32 @BUG_ON(i32 %185)
  br label %187

187:                                              ; preds = %179, %175
  br label %188

188:                                              ; preds = %187, %174
  %189 = load i32, i32* %11, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %11, align 4
  %191 = load i32, i32* %10, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %10, align 4
  br label %193

193:                                              ; preds = %188
  %194 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %195 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %194, i32 0, i32 3
  %196 = load %struct.buffer_head*, %struct.buffer_head** %195, align 8
  store %struct.buffer_head* %196, %struct.buffer_head** %13, align 8
  %197 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %198 = icmp ne %struct.buffer_head* %196, %197
  br i1 %198, label %128, label %199

199:                                              ; preds = %193, %134
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %18, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %18, align 4
  br label %74

203:                                              ; preds = %91, %74
  %204 = call i32 @pagevec_release(%struct.pagevec* %16)
  br label %61

205:                                              ; preds = %72, %61
  ret void
}

declare dso_local i32 @pagevec_init(%struct.pagevec*, i32) #1

declare dso_local i32 @pagevec_lookup(%struct.pagevec*, %struct.address_space*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @PageWriteback(%struct.page*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i64 @buffer_delay(%struct.buffer_head*) #1

declare dso_local i64 @buffer_unwritten(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_delay(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_unwritten(%struct.buffer_head*) #1

declare dso_local i64 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
