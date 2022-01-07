; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_file.c_ubifs_invalidatepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_file.c_ubifs_invalidatepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i64)* @ubifs_invalidatepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubifs_invalidatepage(%struct.page* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ubifs_info*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = getelementptr inbounds %struct.page, %struct.page* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %15, align 8
  store %struct.ubifs_info* %16, %struct.ubifs_info** %6, align 8
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = call i32 @PagePrivate(%struct.page* %17)
  %19 = call i32 @ubifs_assert(i32 %18)
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %41

23:                                               ; preds = %2
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = call i64 @PageChecked(%struct.page* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %29 = call i32 @release_new_page_budget(%struct.ubifs_info* %28)
  br label %33

30:                                               ; preds = %23
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %32 = call i32 @release_existing_page_budget(%struct.ubifs_info* %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %35 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %34, i32 0, i32 0
  %36 = call i32 @atomic_long_dec(i32* %35)
  %37 = load %struct.page*, %struct.page** %3, align 8
  %38 = call i32 @ClearPagePrivate(%struct.page* %37)
  %39 = load %struct.page*, %struct.page** %3, align 8
  %40 = call i32 @ClearPageChecked(%struct.page* %39)
  br label %41

41:                                               ; preds = %33, %22
  ret void
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i64 @PageChecked(%struct.page*) #1

declare dso_local i32 @release_new_page_budget(%struct.ubifs_info*) #1

declare dso_local i32 @release_existing_page_budget(%struct.ubifs_info*) #1

declare dso_local i32 @atomic_long_dec(i32*) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

declare dso_local i32 @ClearPageChecked(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
