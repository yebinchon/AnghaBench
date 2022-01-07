; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_file.c_do_readpage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_file.c_do_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.ubifs_data_node = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"ino %lu, pg %lu, i_size %lld, flags %#lx\00", align 1
@UBIFS_BLOCKS_PER_PAGE_SHIFT = common dso_local global i32 0, align 4
@UBIFS_BLOCK_SIZE = common dso_local global i32 0, align 4
@UBIFS_BLOCK_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@UBIFS_MAX_DATA_NODE_SZ = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@UBIFS_BLOCKS_PER_PAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"hole\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"cannot read page %lu of inode %lu, error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*)* @do_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_readpage(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubifs_data_node*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 0, i32* %5, align 4
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %10, align 8
  %20 = load %struct.inode*, %struct.inode** %10, align 8
  %21 = call i32 @i_size_read(%struct.inode* %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.inode*, %struct.inode** %10, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.page*, %struct.page** %3, align 8
  %26 = getelementptr inbounds %struct.page, %struct.page* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.page*, %struct.page** %3, align 8
  %30 = getelementptr inbounds %struct.page, %struct.page* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %28, i32 %31)
  %33 = load %struct.page*, %struct.page** %3, align 8
  %34 = call i32 @PageChecked(%struct.page* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @ubifs_assert(i32 %37)
  %39 = load %struct.page*, %struct.page** %3, align 8
  %40 = call i32 @PagePrivate(%struct.page* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @ubifs_assert(i32 %43)
  %45 = load %struct.page*, %struct.page** %3, align 8
  %46 = call i8* @kmap(%struct.page* %45)
  store i8* %46, i8** %4, align 8
  %47 = load %struct.page*, %struct.page** %3, align 8
  %48 = getelementptr inbounds %struct.page, %struct.page* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @UBIFS_BLOCKS_PER_PAGE_SHIFT, align 4
  %51 = shl i32 %49, %50
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %54 = add nsw i32 %52, %53
  %55 = sub nsw i32 %54, 1
  %56 = load i32, i32* @UBIFS_BLOCK_SHIFT, align 4
  %57 = ashr i32 %55, %56
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp uge i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %1
  %62 = load %struct.page*, %struct.page** %3, align 8
  %63 = call i32 @SetPageChecked(%struct.page* %62)
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %66 = call i32 @memset(i8* %64, i32 0, i32 %65)
  br label %173

67:                                               ; preds = %1
  %68 = load i32, i32* @UBIFS_MAX_DATA_NODE_SZ, align 4
  %69 = load i32, i32* @GFP_NOFS, align 4
  %70 = call %struct.ubifs_data_node* @kmalloc(i32 %68, i32 %69)
  store %struct.ubifs_data_node* %70, %struct.ubifs_data_node** %9, align 8
  %71 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %72 = icmp ne %struct.ubifs_data_node* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %182

76:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %76, %141
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp uge i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i32, i32* @ENOENT, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  %84 = load i8*, i8** %4, align 8
  %85 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %86 = call i32 @memset(i8* %84, i32 0, i32 %85)
  br label %135

87:                                               ; preds = %77
  %88 = load %struct.inode*, %struct.inode** %10, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %92 = call i32 @read_block(%struct.inode* %88, i8* %89, i32 %90, %struct.ubifs_data_node* %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %87
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @ENOENT, align 4
  %99 = sub nsw i32 0, %98
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %148

102:                                              ; preds = %95
  br label %134

103:                                              ; preds = %87
  %104 = load i32, i32* %7, align 4
  %105 = add i32 %104, 1
  %106 = load i32, i32* %8, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %133

108:                                              ; preds = %103
  %109 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %110 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @le32_to_cpu(i32 %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %115 = sub nsw i32 %114, 1
  %116 = and i32 %113, %115
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %108
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = load i8*, i8** %4, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr i8, i8* %124, i64 %126
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %14, align 4
  %130 = sub nsw i32 %128, %129
  %131 = call i32 @memset(i8* %127, i32 0, i32 %130)
  br label %132

132:                                              ; preds = %123, %119, %108
  br label %133

133:                                              ; preds = %132, %103
  br label %134

134:                                              ; preds = %133, %102
  br label %135

135:                                              ; preds = %134, %81
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* @UBIFS_BLOCKS_PER_PAGE, align 4
  %139 = icmp sge i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %148

141:                                              ; preds = %135
  %142 = load i32, i32* %7, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %145 = load i8*, i8** %4, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr i8, i8* %145, i64 %146
  store i8* %147, i8** %4, align 8
  br label %77

148:                                              ; preds = %140, %101
  %149 = load i32, i32* %5, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %169

151:                                              ; preds = %148
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @ENOENT, align 4
  %154 = sub nsw i32 0, %153
  %155 = icmp eq i32 %152, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load %struct.page*, %struct.page** %3, align 8
  %158 = call i32 @SetPageChecked(%struct.page* %157)
  %159 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %170

160:                                              ; preds = %151
  %161 = load %struct.page*, %struct.page** %3, align 8
  %162 = getelementptr inbounds %struct.page, %struct.page* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.inode*, %struct.inode** %10, align 8
  %165 = getelementptr inbounds %struct.inode, %struct.inode* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @ubifs_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %163, i32 %166, i32 %167)
  br label %182

169:                                              ; preds = %148
  br label %170

170:                                              ; preds = %169, %156
  %171 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %172 = call i32 @kfree(%struct.ubifs_data_node* %171)
  br label %173

173:                                              ; preds = %170, %61
  %174 = load %struct.page*, %struct.page** %3, align 8
  %175 = call i32 @SetPageUptodate(%struct.page* %174)
  %176 = load %struct.page*, %struct.page** %3, align 8
  %177 = call i32 @ClearPageError(%struct.page* %176)
  %178 = load %struct.page*, %struct.page** %3, align 8
  %179 = call i32 @flush_dcache_page(%struct.page* %178)
  %180 = load %struct.page*, %struct.page** %3, align 8
  %181 = call i32 @kunmap(%struct.page* %180)
  store i32 0, i32* %2, align 4
  br label %194

182:                                              ; preds = %160, %73
  %183 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %9, align 8
  %184 = call i32 @kfree(%struct.ubifs_data_node* %183)
  %185 = load %struct.page*, %struct.page** %3, align 8
  %186 = call i32 @ClearPageUptodate(%struct.page* %185)
  %187 = load %struct.page*, %struct.page** %3, align 8
  %188 = call i32 @SetPageError(%struct.page* %187)
  %189 = load %struct.page*, %struct.page** %3, align 8
  %190 = call i32 @flush_dcache_page(%struct.page* %189)
  %191 = load %struct.page*, %struct.page** %3, align 8
  %192 = call i32 @kunmap(%struct.page* %191)
  %193 = load i32, i32* %5, align 4
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %182, %173
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @dbg_gen(i8*, ...) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @PageChecked(%struct.page*) #1

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @SetPageChecked(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local %struct.ubifs_data_node* @kmalloc(i32, i32) #1

declare dso_local i32 @read_block(%struct.inode*, i8*, i32, %struct.ubifs_data_node*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ubifs_err(i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ubifs_data_node*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @ClearPageError(%struct.page*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
