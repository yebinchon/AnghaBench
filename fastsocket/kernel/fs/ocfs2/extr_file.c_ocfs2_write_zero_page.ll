; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_write_zero_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_write_zero_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__*, %struct.address_space* }
%struct.TYPE_2__ = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @ocfs2_write_zero_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_write_zero_page(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 1
  %13 = load %struct.address_space*, %struct.address_space** %12, align 8
  store %struct.address_space* %13, %struct.address_space** %5, align 8
  store i32* null, i32** %9, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %16 = sub nsw i32 %15, 1
  %17 = and i32 %14, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %18, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %7, align 8
  %35 = load %struct.address_space*, %struct.address_space** %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call %struct.page* @grab_cache_page(%struct.address_space* %35, i64 %36)
  store %struct.page* %37, %struct.page** %6, align 8
  %38 = load %struct.page*, %struct.page** %6, align 8
  %39 = icmp ne %struct.page* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @mlog_errno(i32 %43)
  br label %100

45:                                               ; preds = %30
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = load %struct.page*, %struct.page** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @ocfs2_prepare_write_nolock(%struct.inode* %46, %struct.page* %47, i32 %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @mlog_errno(i32 %54)
  br label %95

56:                                               ; preds = %45
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = call i64 @ocfs2_should_order_data(%struct.inode* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load %struct.inode*, %struct.inode** %3, align 8
  %62 = load %struct.page*, %struct.page** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32* @ocfs2_start_walk_page_trans(%struct.inode* %61, %struct.page* %62, i32 %63, i32 %64)
  store i32* %65, i32** %9, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = call i64 @IS_ERR(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @PTR_ERR(i32* %70)
  store i32 %71, i32* %10, align 4
  store i32* null, i32** %9, align 8
  br label %95

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %56
  %74 = load %struct.page*, %struct.page** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @block_commit_write(%struct.page* %74, i32 %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @mlog_errno(i32 %81)
  br label %84

83:                                               ; preds = %73
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %83, %80
  %85 = load i32*, i32** %9, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load %struct.inode*, %struct.inode** %3, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = call i32 @OCFS2_SB(%struct.TYPE_2__* %90)
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @ocfs2_commit_trans(i32 %91, i32* %92)
  br label %94

94:                                               ; preds = %87, %84
  br label %95

95:                                               ; preds = %94, %69, %53
  %96 = load %struct.page*, %struct.page** %6, align 8
  %97 = call i32 @unlock_page(%struct.page* %96)
  %98 = load %struct.page*, %struct.page** %6, align 8
  %99 = call i32 @page_cache_release(%struct.page* %98)
  br label %100

100:                                              ; preds = %95, %40
  %101 = load i32, i32* %10, align 4
  ret i32 %101
}

declare dso_local %struct.page* @grab_cache_page(%struct.address_space*, i64) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_prepare_write_nolock(%struct.inode*, %struct.page*, i32, i32) #1

declare dso_local i64 @ocfs2_should_order_data(%struct.inode*) #1

declare dso_local i32* @ocfs2_start_walk_page_trans(%struct.inode*, %struct.page*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @block_commit_write(%struct.page*, i32, i32) #1

declare dso_local i32 @ocfs2_commit_trans(i32, i32*) #1

declare dso_local i32 @OCFS2_SB(%struct.TYPE_2__*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
