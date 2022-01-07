; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c___lock_page_or_retry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c___lock_page_or_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.mm_struct = type { i32 }

@FAULT_FLAG_ALLOW_RETRY = common dso_local global i32 0, align 4
@FAULT_FLAG_KILLABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__lock_page_or_retry(%struct.page* %0, %struct.mm_struct* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @FAULT_FLAG_ALLOW_RETRY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %15 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %14, i32 0, i32 0
  %16 = call i32 @up_read(i32* %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @FAULT_FLAG_KILLABLE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load %struct.page*, %struct.page** %5, align 8
  %23 = call i32 @wait_on_page_locked_killable(%struct.page* %22)
  br label %27

24:                                               ; preds = %13
  %25 = load %struct.page*, %struct.page** %5, align 8
  %26 = call i32 @wait_on_page_locked(%struct.page* %25)
  br label %27

27:                                               ; preds = %24, %21
  store i32 0, i32* %4, align 4
  br label %47

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @FAULT_FLAG_KILLABLE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.page*, %struct.page** %5, align 8
  %35 = call i32 @__lock_page_killable(%struct.page* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %40 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %39, i32 0, i32 0
  %41 = call i32 @up_read(i32* %40)
  store i32 0, i32* %4, align 4
  br label %47

42:                                               ; preds = %33
  br label %46

43:                                               ; preds = %28
  %44 = load %struct.page*, %struct.page** %5, align 8
  %45 = call i32 @__lock_page(%struct.page* %44)
  br label %46

46:                                               ; preds = %43, %42
  store i32 1, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %38, %27
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @wait_on_page_locked_killable(%struct.page*) #1

declare dso_local i32 @wait_on_page_locked(%struct.page*) #1

declare dso_local i32 @__lock_page_killable(%struct.page*) #1

declare dso_local i32 @__lock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
