; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_bnode.c_hfsplus_bnode_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_bnode.c_hfsplus_bnode_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { %struct.page**, i64, %struct.hfs_btree* }
%struct.page = type { i32 }
%struct.hfs_btree = type { i32 }

@DBG_BNODE_MOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"copybytes: %u,%u,%u\0A\00", align 1
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_MASK = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_bnode_copy(%struct.hfs_bnode* %0, i32 %1, %struct.hfs_bnode* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hfs_bnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hfs_bnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hfs_btree*, align 8
  %12 = alloca %struct.page**, align 8
  %13 = alloca %struct.page**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.hfs_bnode* %0, %struct.hfs_bnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.hfs_bnode* %2, %struct.hfs_bnode** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* @DBG_BNODE_MOD, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @dprint(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  br label %195

25:                                               ; preds = %5
  %26 = load %struct.hfs_bnode*, %struct.hfs_bnode** %8, align 8
  %27 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %26, i32 0, i32 2
  %28 = load %struct.hfs_btree*, %struct.hfs_btree** %27, align 8
  store %struct.hfs_btree* %28, %struct.hfs_btree** %11, align 8
  %29 = load %struct.hfs_bnode*, %struct.hfs_bnode** %8, align 8
  %30 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %37 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load %struct.hfs_bnode*, %struct.hfs_bnode** %8, align 8
  %44 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %43, i32 0, i32 0
  %45 = load %struct.page**, %struct.page*** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %48 = ashr i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.page*, %struct.page** %45, i64 %49
  store %struct.page** %50, %struct.page*** %12, align 8
  %51 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %56 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %55, i32 0, i32 0
  %57 = load %struct.page**, %struct.page*** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %60 = ashr i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.page*, %struct.page** %57, i64 %61
  store %struct.page** %62, %struct.page*** %13, align 8
  %63 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %128

70:                                               ; preds = %25
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %73 = load i32, i32* %9, align 4
  %74 = sub nsw i32 %72, %73
  %75 = call i32 @min(i32 %71, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load %struct.page**, %struct.page*** %13, align 8
  %77 = load %struct.page*, %struct.page** %76, align 8
  %78 = call i8* @kmap(%struct.page* %77)
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr i8, i8* %78, i64 %80
  %82 = load %struct.page**, %struct.page*** %12, align 8
  %83 = load %struct.page*, %struct.page** %82, align 8
  %84 = call i8* @kmap(%struct.page* %83)
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr i8, i8* %84, i64 %86
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @memcpy(i8* %81, i8* %87, i32 %88)
  %90 = load %struct.page**, %struct.page*** %12, align 8
  %91 = load %struct.page*, %struct.page** %90, align 8
  %92 = call i32 @kunmap(%struct.page* %91)
  %93 = load %struct.page**, %struct.page*** %13, align 8
  %94 = load %struct.page*, %struct.page** %93, align 8
  %95 = call i32 @set_page_dirty(%struct.page* %94)
  %96 = load %struct.page**, %struct.page*** %13, align 8
  %97 = load %struct.page*, %struct.page** %96, align 8
  %98 = call i32 @kunmap(%struct.page* %97)
  br label %99

99:                                               ; preds = %104, %70
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %10, align 4
  %102 = sub nsw i32 %101, %100
  store i32 %102, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %99
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %107 = call i32 @min(i32 %105, i32 %106)
  store i32 %107, i32* %14, align 4
  %108 = load %struct.page**, %struct.page*** %13, align 8
  %109 = getelementptr inbounds %struct.page*, %struct.page** %108, i32 1
  store %struct.page** %109, %struct.page*** %13, align 8
  %110 = load %struct.page*, %struct.page** %109, align 8
  %111 = call i8* @kmap(%struct.page* %110)
  %112 = load %struct.page**, %struct.page*** %12, align 8
  %113 = getelementptr inbounds %struct.page*, %struct.page** %112, i32 1
  store %struct.page** %113, %struct.page*** %12, align 8
  %114 = load %struct.page*, %struct.page** %113, align 8
  %115 = call i8* @kmap(%struct.page* %114)
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @memcpy(i8* %111, i8* %115, i32 %116)
  %118 = load %struct.page**, %struct.page*** %12, align 8
  %119 = load %struct.page*, %struct.page** %118, align 8
  %120 = call i32 @kunmap(%struct.page* %119)
  %121 = load %struct.page**, %struct.page*** %13, align 8
  %122 = load %struct.page*, %struct.page** %121, align 8
  %123 = call i32 @set_page_dirty(%struct.page* %122)
  %124 = load %struct.page**, %struct.page*** %13, align 8
  %125 = load %struct.page*, %struct.page** %124, align 8
  %126 = call i32 @kunmap(%struct.page* %125)
  br label %99

127:                                              ; preds = %99
  br label %195

128:                                              ; preds = %25
  br label %129

129:                                              ; preds = %189, %128
  %130 = load %struct.page**, %struct.page*** %12, align 8
  %131 = load %struct.page*, %struct.page** %130, align 8
  %132 = call i8* @kmap(%struct.page* %131)
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr i8, i8* %132, i64 %134
  store i8* %135, i8** %15, align 8
  %136 = load %struct.page**, %struct.page*** %13, align 8
  %137 = load %struct.page*, %struct.page** %136, align 8
  %138 = call i8* @kmap(%struct.page* %137)
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr i8, i8* %138, i64 %140
  store i8* %141, i8** %16, align 8
  %142 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %143 = load i32, i32* %9, align 4
  %144 = sub nsw i32 %142, %143
  %145 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %146 = load i32, i32* %7, align 4
  %147 = sub nsw i32 %145, %146
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %129
  %150 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %151 = load i32, i32* %9, align 4
  %152 = sub nsw i32 %150, %151
  store i32 %152, i32* %14, align 4
  store i32 0, i32* %9, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %7, align 4
  br label %163

156:                                              ; preds = %129
  %157 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %158 = load i32, i32* %7, align 4
  %159 = sub nsw i32 %157, %158
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %163

163:                                              ; preds = %156, %149
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @min(i32 %164, i32 %165)
  store i32 %166, i32* %14, align 4
  %167 = load i8*, i8** %16, align 8
  %168 = load i8*, i8** %15, align 8
  %169 = load i32, i32* %14, align 4
  %170 = call i32 @memcpy(i8* %167, i8* %168, i32 %169)
  %171 = load %struct.page**, %struct.page*** %12, align 8
  %172 = load %struct.page*, %struct.page** %171, align 8
  %173 = call i32 @kunmap(%struct.page* %172)
  %174 = load %struct.page**, %struct.page*** %13, align 8
  %175 = load %struct.page*, %struct.page** %174, align 8
  %176 = call i32 @set_page_dirty(%struct.page* %175)
  %177 = load %struct.page**, %struct.page*** %13, align 8
  %178 = load %struct.page*, %struct.page** %177, align 8
  %179 = call i32 @kunmap(%struct.page* %178)
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %163
  %183 = load %struct.page**, %struct.page*** %13, align 8
  %184 = getelementptr inbounds %struct.page*, %struct.page** %183, i32 1
  store %struct.page** %184, %struct.page*** %13, align 8
  br label %188

185:                                              ; preds = %163
  %186 = load %struct.page**, %struct.page*** %12, align 8
  %187 = getelementptr inbounds %struct.page*, %struct.page** %186, i32 1
  store %struct.page** %187, %struct.page*** %12, align 8
  br label %188

188:                                              ; preds = %185, %182
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* %10, align 4
  %192 = sub nsw i32 %191, %190
  store i32 %192, i32* %10, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %129, label %194

194:                                              ; preds = %189
  br label %195

195:                                              ; preds = %24, %194, %127
  ret void
}

declare dso_local i32 @dprint(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
