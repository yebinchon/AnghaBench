; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_file.c_ubifs_do_bulk_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_file.c_ubifs_do_bulk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64 }
%struct.bu_info = type { i32, i32, i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.page = type { i32, %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.ubifs_inode = type { i32, i32, i32 }

@UBIFS_BLOCKS_PER_PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@__GFP_COLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ignoring error %d and skipping bulk-read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.bu_info*, %struct.page*)* @ubifs_do_bulk_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_do_bulk_read(%struct.ubifs_info* %0, %struct.bu_info* %1, %struct.page* %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.bu_info*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ubifs_inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.page*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.bu_info* %1, %struct.bu_info** %5, align 8
  store %struct.page* %2, %struct.page** %6, align 8
  %21 = load %struct.page*, %struct.page** %6, align 8
  %22 = getelementptr inbounds %struct.page, %struct.page* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  %24 = load %struct.page*, %struct.page** %6, align 8
  %25 = getelementptr inbounds %struct.page, %struct.page* %24, i32 0, i32 1
  %26 = load %struct.address_space*, %struct.address_space** %25, align 8
  store %struct.address_space* %26, %struct.address_space** %9, align 8
  %27 = load %struct.address_space*, %struct.address_space** %9, align 8
  %28 = getelementptr inbounds %struct.address_space, %struct.address_space* %27, i32 0, i32 0
  %29 = load %struct.inode*, %struct.inode** %28, align 8
  store %struct.inode* %29, %struct.inode** %10, align 8
  %30 = load %struct.inode*, %struct.inode** %10, align 8
  %31 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %30)
  store %struct.ubifs_inode* %31, %struct.ubifs_inode** %11, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %32 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %33 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 1
  store i32 %37, i32* %17, align 4
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %39 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %40 = call i32 @ubifs_tnc_get_bu_keys(%struct.ubifs_info* %38, %struct.bu_info* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %3
  br label %223

44:                                               ; preds = %3
  %45 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %46 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %51 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %53 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %56 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @UBIFS_BLOCKS_PER_PAGE_SHIFT, align 4
  %59 = ashr i32 %57, %58
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  br label %226

63:                                               ; preds = %54
  %64 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %65 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %142

68:                                               ; preds = %63
  %69 = load i32, i32* %17, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %134

71:                                               ; preds = %68
  %72 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %73 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %72, i32 0, i32 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %76 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %84 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %83, i32 0, i32 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %87 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %82, %93
  %95 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %96 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %95, i32 0, i32 4
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %94, %100
  %102 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %103 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %102, i32 0, i32 2
  store i64 %101, i64* %103, align 8
  %104 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %105 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @ubifs_assert(i32 %108)
  %110 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %111 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %114 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp sle i64 %112, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @ubifs_assert(i32 %117)
  %119 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %120 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @GFP_NOFS, align 4
  %123 = load i32, i32* @__GFP_NOWARN, align 4
  %124 = or i32 %122, %123
  %125 = call i64 @kmalloc(i64 %121, i32 %124)
  %126 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %127 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %126, i32 0, i32 3
  store i64 %125, i64* %127, align 8
  %128 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %129 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %71
  br label %226

133:                                              ; preds = %71
  br label %134

134:                                              ; preds = %133, %68
  %135 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %136 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %137 = call i32 @ubifs_tnc_bulk_read(%struct.ubifs_info* %135, %struct.bu_info* %136)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %223

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %141, %63
  %143 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %144 = load %struct.page*, %struct.page** %6, align 8
  %145 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %146 = call i32 @populate_page(%struct.ubifs_info* %143, %struct.page* %144, %struct.bu_info* %145, i32* %16)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %223

150:                                              ; preds = %142
  %151 = load %struct.page*, %struct.page** %6, align 8
  %152 = call i32 @unlock_page(%struct.page* %151)
  store i32 1, i32* %15, align 4
  %153 = load %struct.inode*, %struct.inode** %10, align 8
  %154 = call i32 @i_size_read(%struct.inode* %153)
  store i32 %154, i32* %18, align 4
  %155 = load i32, i32* %18, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  br label %213

158:                                              ; preds = %150
  %159 = load i32, i32* %18, align 4
  %160 = sub nsw i32 %159, 1
  %161 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %162 = ashr i32 %160, %161
  store i32 %162, i32* %8, align 4
  store i32 1, i32* %13, align 4
  br label %163

163:                                              ; preds = %203, %158
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %14, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %206

167:                                              ; preds = %163
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %168, %169
  store i32 %170, i32* %19, align 4
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  br label %206

175:                                              ; preds = %167
  %176 = load %struct.address_space*, %struct.address_space** %9, align 8
  %177 = load i32, i32* %19, align 4
  %178 = load i32, i32* @GFP_NOFS, align 4
  %179 = load i32, i32* @__GFP_COLD, align 4
  %180 = or i32 %178, %179
  %181 = call %struct.page* @find_or_create_page(%struct.address_space* %176, i32 %177, i32 %180)
  store %struct.page* %181, %struct.page** %20, align 8
  %182 = load %struct.page*, %struct.page** %20, align 8
  %183 = icmp ne %struct.page* %182, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %175
  br label %206

185:                                              ; preds = %175
  %186 = load %struct.page*, %struct.page** %20, align 8
  %187 = call i32 @PageUptodate(%struct.page* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %185
  %190 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %191 = load %struct.page*, %struct.page** %20, align 8
  %192 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %193 = call i32 @populate_page(%struct.ubifs_info* %190, %struct.page* %191, %struct.bu_info* %192, i32* %16)
  store i32 %193, i32* %12, align 4
  br label %194

194:                                              ; preds = %189, %185
  %195 = load %struct.page*, %struct.page** %20, align 8
  %196 = call i32 @unlock_page(%struct.page* %195)
  %197 = load %struct.page*, %struct.page** %20, align 8
  %198 = call i32 @page_cache_release(%struct.page* %197)
  %199 = load i32, i32* %12, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %194
  br label %206

202:                                              ; preds = %194
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %13, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %13, align 4
  br label %163

206:                                              ; preds = %201, %184, %174, %163
  %207 = load i32, i32* %7, align 4
  %208 = load i32, i32* %13, align 4
  %209 = add nsw i32 %207, %208
  %210 = sub nsw i32 %209, 1
  %211 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %212 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %211, i32 0, i32 2
  store i32 %210, i32* %212, align 4
  br label %213

213:                                              ; preds = %226, %223, %206, %157
  %214 = load i32, i32* %17, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %213
  %217 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %218 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @kfree(i64 %219)
  br label %221

221:                                              ; preds = %216, %213
  %222 = load i32, i32* %15, align 4
  ret i32 %222

223:                                              ; preds = %149, %140, %43
  %224 = load i32, i32* %12, align 4
  %225 = call i32 @ubifs_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %224)
  br label %213

226:                                              ; preds = %132, %62
  %227 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %228 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %227, i32 0, i32 1
  store i32 0, i32* %228, align 4
  %229 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %230 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %229, i32 0, i32 0
  store i32 0, i32* %230, align 4
  br label %213
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @ubifs_tnc_get_bu_keys(%struct.ubifs_info*, %struct.bu_info*) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i64 @kmalloc(i64, i32) #1

declare dso_local i32 @ubifs_tnc_bulk_read(%struct.ubifs_info*, %struct.bu_info*) #1

declare dso_local i32 @populate_page(%struct.ubifs_info*, %struct.page*, %struct.bu_info*, i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local %struct.page* @find_or_create_page(%struct.address_space*, i32, i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @ubifs_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
