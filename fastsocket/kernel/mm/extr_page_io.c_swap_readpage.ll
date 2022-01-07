; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_io.c_swap_readpage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_io.c_swap_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.bio = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@end_swap_bio_read = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PSWPIN = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swap_readpage(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.page*, %struct.page** %2, align 8
  %6 = call i32 @PageLocked(%struct.page* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @VM_BUG_ON(i32 %9)
  %11 = load %struct.page*, %struct.page** %2, align 8
  %12 = call i32 @PageUptodate(%struct.page* %11)
  %13 = call i32 @VM_BUG_ON(i32 %12)
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load %struct.page*, %struct.page** %2, align 8
  %16 = load i32, i32* @end_swap_bio_read, align 4
  %17 = call %struct.bio* @get_swap_bio(i32 %14, %struct.page* %15, i32 %16)
  store %struct.bio* %17, %struct.bio** %3, align 8
  %18 = load %struct.bio*, %struct.bio** %3, align 8
  %19 = icmp eq %struct.bio* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.page*, %struct.page** %2, align 8
  %22 = call i32 @unlock_page(%struct.page* %21)
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %31

25:                                               ; preds = %1
  %26 = load i32, i32* @PSWPIN, align 4
  %27 = call i32 @count_vm_event(i32 %26)
  %28 = load i32, i32* @READ, align 4
  %29 = load %struct.bio*, %struct.bio** %3, align 8
  %30 = call i32 @submit_bio(i32 %28, %struct.bio* %29)
  br label %31

31:                                               ; preds = %25, %20
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local %struct.bio* @get_swap_bio(i32, %struct.page*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @submit_bio(i32, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
