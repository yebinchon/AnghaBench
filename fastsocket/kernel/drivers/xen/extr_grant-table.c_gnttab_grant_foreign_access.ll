; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_grant-table.c_gnttab_grant_foreign_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_grant-table.c_gnttab_grant_foreign_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gnttab_grant_foreign_access(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call i32 @get_free_entries(i32 1)
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOSPC, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %25

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @gnttab_grant_foreign_access_ref(i32 %19, i32 %20, i64 %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %18, %15
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @get_free_entries(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gnttab_grant_foreign_access_ref(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
