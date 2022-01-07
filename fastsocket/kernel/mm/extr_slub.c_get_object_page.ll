; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_get_object_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_get_object_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (i8*)* @get_object_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @get_object_page(i8* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.page*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.page* @virt_to_head_page(i8* %5)
  store %struct.page* %6, %struct.page** %4, align 8
  %7 = load %struct.page*, %struct.page** %4, align 8
  %8 = call i32 @PageSlab(%struct.page* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.page* null, %struct.page** %2, align 8
  br label %13

11:                                               ; preds = %1
  %12 = load %struct.page*, %struct.page** %4, align 8
  store %struct.page* %12, %struct.page** %2, align 8
  br label %13

13:                                               ; preds = %11, %10
  %14 = load %struct.page*, %struct.page** %2, align 8
  ret %struct.page* %14
}

declare dso_local %struct.page* @virt_to_head_page(i8*) #1

declare dso_local i32 @PageSlab(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
