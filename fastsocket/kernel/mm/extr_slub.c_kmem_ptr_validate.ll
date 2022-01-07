; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_kmem_ptr_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_kmem_ptr_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }
%struct.page = type { %struct.kmem_cache* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kmem_ptr_validate(%struct.kmem_cache* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kmem_cache*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call %struct.page* @get_object_page(i8* %7)
  store %struct.page* %8, %struct.page** %6, align 8
  %9 = load %struct.page*, %struct.page** %6, align 8
  %10 = icmp ne %struct.page* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %13 = load %struct.page*, %struct.page** %6, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 0
  %15 = load %struct.kmem_cache*, %struct.kmem_cache** %14, align 8
  %16 = icmp ne %struct.kmem_cache* %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %26

18:                                               ; preds = %11
  %19 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %20 = load %struct.page*, %struct.page** %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @check_valid_pointer(%struct.kmem_cache* %19, %struct.page* %20, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %26

25:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %24, %17
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.page* @get_object_page(i8*) #1

declare dso_local i32 @check_valid_pointer(%struct.kmem_cache*, %struct.page*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
