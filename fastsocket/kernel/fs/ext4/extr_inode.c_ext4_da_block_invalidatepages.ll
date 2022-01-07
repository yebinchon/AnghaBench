; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_da_block_invalidatepages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_da_block_invalidatepages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage_da_data = type { i64, i64, %struct.inode* }
%struct.inode = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { i64 }

@PAGEVEC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpage_da_data*)* @ext4_da_block_invalidatepages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_da_block_invalidatepages(%struct.mpage_da_data* %0) #0 {
  %2 = alloca %struct.mpage_da_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pagevec, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca %struct.page*, align 8
  store %struct.mpage_da_data* %0, %struct.mpage_da_data** %2, align 8
  %11 = load %struct.mpage_da_data*, %struct.mpage_da_data** %2, align 8
  %12 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %11, i32 0, i32 2
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %8, align 8
  %14 = load %struct.inode*, %struct.inode** %8, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.address_space*, %struct.address_space** %15, align 8
  store %struct.address_space* %16, %struct.address_space** %9, align 8
  %17 = load %struct.mpage_da_data*, %struct.mpage_da_data** %2, align 8
  %18 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %5, align 8
  %20 = load %struct.mpage_da_data*, %struct.mpage_da_data** %2, align 8
  %21 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %22, 1
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %73, %1
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %85

28:                                               ; preds = %24
  %29 = load %struct.address_space*, %struct.address_space** %9, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i32, i32* @PAGEVEC_SIZE, align 4
  %32 = call i32 @pagevec_lookup(%struct.pagevec* %7, %struct.address_space* %29, i64 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %85

36:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %70, %36
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %73

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %7, i32 0, i32 0
  %43 = load %struct.page**, %struct.page*** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.page*, %struct.page** %43, i64 %45
  %47 = load %struct.page*, %struct.page** %46, align 8
  store %struct.page* %47, %struct.page** %10, align 8
  %48 = load %struct.page*, %struct.page** %10, align 8
  %49 = getelementptr inbounds %struct.page, %struct.page* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %73

54:                                               ; preds = %41
  %55 = load %struct.page*, %struct.page** %10, align 8
  %56 = call i32 @PageLocked(%struct.page* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  %61 = load %struct.page*, %struct.page** %10, align 8
  %62 = call i32 @PageWriteback(%struct.page* %61)
  %63 = call i32 @BUG_ON(i32 %62)
  %64 = load %struct.page*, %struct.page** %10, align 8
  %65 = call i32 @block_invalidatepage(%struct.page* %64, i32 0)
  %66 = load %struct.page*, %struct.page** %10, align 8
  %67 = call i32 @ClearPageUptodate(%struct.page* %66)
  %68 = load %struct.page*, %struct.page** %10, align 8
  %69 = call i32 @unlock_page(%struct.page* %68)
  br label %70

70:                                               ; preds = %54
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %37

73:                                               ; preds = %53, %37
  %74 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %7, i32 0, i32 0
  %75 = load %struct.page**, %struct.page*** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.page*, %struct.page** %75, i64 %78
  %80 = load %struct.page*, %struct.page** %79, align 8
  %81 = getelementptr inbounds %struct.page, %struct.page* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %5, align 8
  %84 = call i32 @pagevec_release(%struct.pagevec* %7)
  br label %24

85:                                               ; preds = %35, %24
  ret void
}

declare dso_local i32 @pagevec_lookup(%struct.pagevec*, %struct.address_space*, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @PageWriteback(%struct.page*) #1

declare dso_local i32 @block_invalidatepage(%struct.page*, i32) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
