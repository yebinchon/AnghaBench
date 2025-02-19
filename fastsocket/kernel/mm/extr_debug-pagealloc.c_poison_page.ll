; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_debug-pagealloc.c_poison_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_debug-pagealloc.c_poison_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_POISON = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*)* @poison_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poison_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i8*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %4 = load %struct.page*, %struct.page** %2, align 8
  %5 = call i64 @PageHighMem(%struct.page* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.page*, %struct.page** %2, align 8
  %9 = call i32 @poison_highpage(%struct.page* %8)
  br label %19

10:                                               ; preds = %1
  %11 = load %struct.page*, %struct.page** %2, align 8
  %12 = call i32 @set_page_poison(%struct.page* %11)
  %13 = load %struct.page*, %struct.page** %2, align 8
  %14 = call i8* @page_address(%struct.page* %13)
  store i8* %14, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @PAGE_POISON, align 4
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = call i32 @memset(i8* %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %10, %7
  ret void
}

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i32 @poison_highpage(%struct.page*) #1

declare dso_local i32 @set_page_poison(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
