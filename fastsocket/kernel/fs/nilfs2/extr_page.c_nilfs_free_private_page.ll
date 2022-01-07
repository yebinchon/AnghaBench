; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_page.c_nilfs_free_private_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_page.c_nilfs_free_private_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"failed to free page\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_free_private_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %3 = load %struct.page*, %struct.page** %2, align 8
  %4 = call i32 @PageLocked(%struct.page* %3)
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load %struct.page*, %struct.page** %2, align 8
  %10 = getelementptr inbounds %struct.page, %struct.page* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.page*, %struct.page** %2, align 8
  %14 = call i64 @page_has_buffers(%struct.page* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.page*, %struct.page** %2, align 8
  %18 = call i32 @try_to_free_buffers(%struct.page* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load %struct.page*, %struct.page** %2, align 8
  %22 = call i32 @NILFS_PAGE_BUG(%struct.page* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %16, %1
  %24 = load %struct.page*, %struct.page** %2, align 8
  %25 = call i32 @unlock_page(%struct.page* %24)
  %26 = load %struct.page*, %struct.page** %2, align 8
  %27 = call i32 @__free_page(%struct.page* %26)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i64 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @try_to_free_buffers(%struct.page*) #1

declare dso_local i32 @NILFS_PAGE_BUG(%struct.page*, i8*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
