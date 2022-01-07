; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_invalidatepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_invalidatepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32, %struct.buffer_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i64)* @reiserfs_invalidatepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reiserfs_invalidatepage(%struct.page* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = getelementptr inbounds %struct.page, %struct.page* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = call i32 @PageLocked(%struct.page* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i64, i64* %4, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.page*, %struct.page** %3, align 8
  %27 = call i32 @ClearPageChecked(%struct.page* %26)
  br label %28

28:                                               ; preds = %25, %2
  %29 = load %struct.page*, %struct.page** %3, align 8
  %30 = call i32 @page_has_buffers(%struct.page* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %77

33:                                               ; preds = %28
  %34 = load %struct.page*, %struct.page** %3, align 8
  %35 = call %struct.buffer_head* @page_buffers(%struct.page* %34)
  store %struct.buffer_head* %35, %struct.buffer_head** %5, align 8
  %36 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  store %struct.buffer_head* %36, %struct.buffer_head** %6, align 8
  br label %37

37:                                               ; preds = %63, %33
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %40 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add i32 %38, %41
  store i32 %42, i32* %11, align 4
  %43 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 1
  %45 = load %struct.buffer_head*, %struct.buffer_head** %44, align 8
  store %struct.buffer_head* %45, %struct.buffer_head** %7, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = icmp ule i64 %46, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %37
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %53 = call i64 @invalidatepage_can_drop(%struct.inode* %51, %struct.buffer_head* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %57 = call i32 @reiserfs_unmap_buffer(%struct.buffer_head* %56)
  br label %59

58:                                               ; preds = %50
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %58, %55
  br label %60

60:                                               ; preds = %59, %37
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %9, align 4
  %62 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %62, %struct.buffer_head** %6, align 8
  br label %63

63:                                               ; preds = %60
  %64 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %66 = icmp ne %struct.buffer_head* %64, %65
  br i1 %66, label %37, label %67

67:                                               ; preds = %63
  %68 = load i64, i64* %4, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.page*, %struct.page** %3, align 8
  %75 = call i32 @try_to_release_page(%struct.page* %74, i32 0)
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %73, %70, %67
  br label %77

77:                                               ; preds = %76, %32
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @ClearPageChecked(%struct.page*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i64 @invalidatepage_can_drop(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @reiserfs_unmap_buffer(%struct.buffer_head*) #1

declare dso_local i32 @try_to_release_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
