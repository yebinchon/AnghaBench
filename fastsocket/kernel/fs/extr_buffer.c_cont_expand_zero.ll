; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_cont_expand_zero.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_cont_expand_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.page = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_MASK = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@AOP_FLAG_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32*)* @cont_expand_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cont_expand_zero(%struct.file* %0, %struct.address_space* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.address_space* %1, %struct.address_space** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %20 = load %struct.address_space*, %struct.address_space** %6, align 8
  %21 = getelementptr inbounds %struct.address_space, %struct.address_space* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %9, align 8
  %23 = load %struct.inode*, %struct.inode** %9, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 1, %25
  store i32 %26, i32* %10, align 4
  store i32 0, i32* %19, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %29 = lshr i32 %27, %28
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  store i32 %33, i32* %17, align 4
  br label %34

34:                                               ; preds = %89, %4
  %35 = load i32, i32* %13, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %39 = lshr i32 %37, %38
  store i32 %39, i32* %14, align 4
  %40 = icmp ugt i32 %35, %39
  br i1 %40, label %41, label %97

41:                                               ; preds = %34
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sub i32 %47, 1
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %41
  %52 = load i32, i32* %10, align 4
  %53 = sub i32 %52, 1
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %57, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %51, %41
  %61 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %62 = load i32, i32* %16, align 4
  %63 = sub i32 %61, %62
  store i32 %63, i32* %18, align 4
  %64 = load %struct.file*, %struct.file** %5, align 8
  %65 = load %struct.address_space*, %struct.address_space** %6, align 8
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* @AOP_FLAG_UNINTERRUPTIBLE, align 4
  %69 = call i32 @pagecache_write_begin(%struct.file* %64, %struct.address_space* %65, i32 %66, i32 %67, i32 %68, %struct.page** %11, i8** %12)
  store i32 %69, i32* %19, align 4
  %70 = load i32, i32* %19, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %161

73:                                               ; preds = %60
  %74 = load %struct.page*, %struct.page** %11, align 8
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %18, align 4
  %77 = call i32 @zero_user(%struct.page* %74, i32 %75, i32 %76)
  %78 = load %struct.file*, %struct.file** %5, align 8
  %79 = load %struct.address_space*, %struct.address_space** %6, align 8
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* %18, align 4
  %83 = load %struct.page*, %struct.page** %11, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = call i32 @pagecache_write_end(%struct.file* %78, %struct.address_space* %79, i32 %80, i32 %81, i32 %82, %struct.page* %83, i8* %84)
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %19, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %73
  br label %161

89:                                               ; preds = %73
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* %18, align 4
  %92 = icmp ne i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @BUG_ON(i32 %93)
  store i32 0, i32* %19, align 4
  %95 = load %struct.address_space*, %struct.address_space** %6, align 8
  %96 = call i32 @balance_dirty_pages_ratelimited(%struct.address_space* %95)
  br label %34

97:                                               ; preds = %34
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %160

101:                                              ; preds = %97
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %104 = xor i32 %103, -1
  %105 = and i32 %102, %104
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %16, align 4
  %108 = icmp ule i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %161

110:                                              ; preds = %101
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %10, align 4
  %113 = sub i32 %112, 1
  %114 = and i32 %111, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %110
  %117 = load i32, i32* %10, align 4
  %118 = sub i32 %117, 1
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %118
  store i32 %121, i32* %119, align 4
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* %122, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %116, %110
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %16, align 4
  %128 = sub i32 %126, %127
  store i32 %128, i32* %18, align 4
  %129 = load %struct.file*, %struct.file** %5, align 8
  %130 = load %struct.address_space*, %struct.address_space** %6, align 8
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %18, align 4
  %133 = load i32, i32* @AOP_FLAG_UNINTERRUPTIBLE, align 4
  %134 = call i32 @pagecache_write_begin(%struct.file* %129, %struct.address_space* %130, i32 %131, i32 %132, i32 %133, %struct.page** %11, i8** %12)
  store i32 %134, i32* %19, align 4
  %135 = load i32, i32* %19, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %125
  br label %161

138:                                              ; preds = %125
  %139 = load %struct.page*, %struct.page** %11, align 8
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %18, align 4
  %142 = call i32 @zero_user(%struct.page* %139, i32 %140, i32 %141)
  %143 = load %struct.file*, %struct.file** %5, align 8
  %144 = load %struct.address_space*, %struct.address_space** %6, align 8
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* %18, align 4
  %148 = load %struct.page*, %struct.page** %11, align 8
  %149 = load i8*, i8** %12, align 8
  %150 = call i32 @pagecache_write_end(%struct.file* %143, %struct.address_space* %144, i32 %145, i32 %146, i32 %147, %struct.page* %148, i8* %149)
  store i32 %150, i32* %19, align 4
  %151 = load i32, i32* %19, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %138
  br label %161

154:                                              ; preds = %138
  %155 = load i32, i32* %19, align 4
  %156 = load i32, i32* %18, align 4
  %157 = icmp ne i32 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @BUG_ON(i32 %158)
  store i32 0, i32* %19, align 4
  br label %160

160:                                              ; preds = %154, %97
  br label %161

161:                                              ; preds = %160, %153, %137, %109, %88, %72
  %162 = load i32, i32* %19, align 4
  ret i32 %162
}

declare dso_local i32 @pagecache_write_begin(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #1

declare dso_local i32 @pagecache_write_end(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @balance_dirty_pages_ratelimited(%struct.address_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
