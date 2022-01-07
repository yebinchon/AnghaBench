; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_journalled_write_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_journalled_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@write_end_fn = common dso_local global i32 0, align 4
@EXT3_STATE_JDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @ext3_journalled_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_journalled_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %22 = call i32* (...) @ext3_journal_current_handle()
  store i32* %22, i32** %15, align 8
  %23 = load %struct.address_space*, %struct.address_space** %9, align 8
  %24 = getelementptr inbounds %struct.address_space, %struct.address_space* %23, i32 0, i32 0
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %26 = load %struct.inode*, %struct.inode** %16, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @trace_ext3_journalled_write_end(%struct.inode* %26, i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %33 = sub nsw i32 %32, 1
  %34 = and i32 %31, %33
  store i32 %34, i32* %20, align 4
  %35 = load i32, i32* %20, align 4
  %36 = load i32, i32* %11, align 4
  %37 = add i32 %35, %36
  store i32 %37, i32* %21, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %7
  %42 = load %struct.page*, %struct.page** %13, align 8
  %43 = call i32 @PageUptodate(%struct.page* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %45, %41
  %47 = load %struct.page*, %struct.page** %13, align 8
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* %12, align 4
  %50 = add i32 %48, %49
  %51 = load i32, i32* %21, align 4
  %52 = call i32 @page_zero_new_buffers(%struct.page* %47, i32 %50, i32 %51)
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* %12, align 4
  %55 = add i32 %53, %54
  store i32 %55, i32* %21, align 4
  br label %56

56:                                               ; preds = %46, %7
  %57 = load i32*, i32** %15, align 8
  %58 = load %struct.page*, %struct.page** %13, align 8
  %59 = call i32 @page_buffers(%struct.page* %58)
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* %21, align 4
  %62 = load i32, i32* @write_end_fn, align 4
  %63 = call i32 @walk_page_buffers(i32* %57, i32 %59, i32 %60, i32 %61, i32* %19, i32 %62)
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %19, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %56
  %67 = load %struct.page*, %struct.page** %13, align 8
  %68 = call i32 @SetPageUptodate(%struct.page* %67)
  br label %69

69:                                               ; preds = %66, %56
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %12, align 4
  %72 = add i32 %70, %71
  %73 = load %struct.inode*, %struct.inode** %16, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ugt i32 %72, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %69
  %78 = load %struct.inode*, %struct.inode** %16, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %12, align 4
  %81 = add i32 %79, %80
  %82 = call i32 @i_size_write(%struct.inode* %78, i32 %81)
  br label %83

83:                                               ; preds = %77, %69
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = add i32 %84, %85
  %87 = load %struct.inode*, %struct.inode** %16, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ugt i32 %86, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load %struct.inode*, %struct.inode** %16, align 8
  %93 = call i64 @ext3_can_truncate(%struct.inode* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32*, i32** %15, align 8
  %97 = load %struct.inode*, %struct.inode** %16, align 8
  %98 = call i32 @ext3_orphan_add(i32* %96, %struct.inode* %97)
  br label %99

99:                                               ; preds = %95, %91, %83
  %100 = load i32, i32* @EXT3_STATE_JDATA, align 4
  %101 = load %struct.inode*, %struct.inode** %16, align 8
  %102 = call %struct.TYPE_2__* @EXT3_I(%struct.inode* %101)
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %100
  store i32 %105, i32* %103, align 4
  %106 = load %struct.inode*, %struct.inode** %16, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.inode*, %struct.inode** %16, align 8
  %110 = call %struct.TYPE_2__* @EXT3_I(%struct.inode* %109)
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %108, %112
  br i1 %113, label %114, label %129

114:                                              ; preds = %99
  %115 = load %struct.inode*, %struct.inode** %16, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.inode*, %struct.inode** %16, align 8
  %119 = call %struct.TYPE_2__* @EXT3_I(%struct.inode* %118)
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 4
  %121 = load i32*, i32** %15, align 8
  %122 = load %struct.inode*, %struct.inode** %16, align 8
  %123 = call i32 @ext3_mark_inode_dirty(i32* %121, %struct.inode* %122)
  store i32 %123, i32* %18, align 4
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %114
  %127 = load i32, i32* %18, align 4
  store i32 %127, i32* %17, align 4
  br label %128

128:                                              ; preds = %126, %114
  br label %129

129:                                              ; preds = %128, %99
  %130 = load i32*, i32** %15, align 8
  %131 = call i32 @ext3_journal_stop(i32* %130)
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* %17, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %129
  %135 = load i32, i32* %18, align 4
  store i32 %135, i32* %17, align 4
  br label %136

136:                                              ; preds = %134, %129
  %137 = load %struct.page*, %struct.page** %13, align 8
  %138 = call i32 @unlock_page(%struct.page* %137)
  %139 = load %struct.page*, %struct.page** %13, align 8
  %140 = call i32 @page_cache_release(%struct.page* %139)
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %11, align 4
  %143 = add i32 %141, %142
  %144 = load %struct.inode*, %struct.inode** %16, align 8
  %145 = getelementptr inbounds %struct.inode, %struct.inode* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ugt i32 %143, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %136
  %149 = load %struct.inode*, %struct.inode** %16, align 8
  %150 = call i32 @ext3_truncate_failed_write(%struct.inode* %149)
  br label %151

151:                                              ; preds = %148, %136
  %152 = load i32, i32* %17, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i32, i32* %17, align 4
  br label %158

156:                                              ; preds = %151
  %157 = load i32, i32* %12, align 4
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i32 [ %155, %154 ], [ %157, %156 ]
  ret i32 %159
}

declare dso_local i32* @ext3_journal_current_handle(...) #1

declare dso_local i32 @trace_ext3_journalled_write_end(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @page_zero_new_buffers(%struct.page*, i32, i32) #1

declare dso_local i32 @walk_page_buffers(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @page_buffers(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i64 @ext3_can_truncate(%struct.inode*) #1

declare dso_local i32 @ext3_orphan_add(i32*, %struct.inode*) #1

declare dso_local %struct.TYPE_2__* @EXT3_I(%struct.inode*) #1

declare dso_local i32 @ext3_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext3_journal_stop(i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @ext3_truncate_failed_write(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
