; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_migrate.c_fallback_migrate_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_migrate.c_fallback_migrate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.page = type { i32 }

@MIGRATE_SYNC = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)* @fallback_migrate_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fallback_migrate_page(%struct.address_space* %0, %struct.page* %1, %struct.page* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.page*, %struct.page** %8, align 8
  %11 = call i64 @PageDirty(%struct.page* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @MIGRATE_SYNC, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %42

20:                                               ; preds = %13
  %21 = load %struct.address_space*, %struct.address_space** %6, align 8
  %22 = load %struct.page*, %struct.page** %8, align 8
  %23 = call i32 @writeout(%struct.address_space* %21, %struct.page* %22)
  store i32 %23, i32* %5, align 4
  br label %42

24:                                               ; preds = %4
  %25 = load %struct.page*, %struct.page** %8, align 8
  %26 = call i64 @page_has_private(%struct.page* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load %struct.page*, %struct.page** %8, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @try_to_release_page(%struct.page* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %42

36:                                               ; preds = %28, %24
  %37 = load %struct.address_space*, %struct.address_space** %6, align 8
  %38 = load %struct.page*, %struct.page** %7, align 8
  %39 = load %struct.page*, %struct.page** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @do_migrate_page(%struct.address_space* %37, %struct.page* %38, %struct.page* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %36, %33, %20, %17
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i32 @writeout(%struct.address_space*, %struct.page*) #1

declare dso_local i64 @page_has_private(%struct.page*) #1

declare dso_local i32 @try_to_release_page(%struct.page*, i32) #1

declare dso_local i32 @do_migrate_page(%struct.address_space*, %struct.page*, %struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
