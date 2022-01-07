; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_chain_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_chain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chain_allocator = type { i32, %struct.linked_page*, i32, i32 }
%struct.linked_page = type { i8*, %struct.linked_page* }

@LINKED_PAGE_DATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.chain_allocator*, i32)* @chain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @chain_alloc(%struct.chain_allocator* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.chain_allocator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.linked_page*, align 8
  store %struct.chain_allocator* %0, %struct.chain_allocator** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @LINKED_PAGE_DATA_SIZE, align 4
  %9 = load %struct.chain_allocator*, %struct.chain_allocator** %4, align 8
  %10 = getelementptr inbounds %struct.chain_allocator, %struct.chain_allocator* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub i32 %8, %11
  %13 = load i32, i32* %5, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load %struct.chain_allocator*, %struct.chain_allocator** %4, align 8
  %17 = getelementptr inbounds %struct.chain_allocator, %struct.chain_allocator* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.chain_allocator*, %struct.chain_allocator** %4, align 8
  %20 = getelementptr inbounds %struct.chain_allocator, %struct.chain_allocator* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.linked_page* @get_image_page(i32 %18, i32 %21)
  store %struct.linked_page* %22, %struct.linked_page** %7, align 8
  %23 = load %struct.linked_page*, %struct.linked_page** %7, align 8
  %24 = icmp ne %struct.linked_page* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  store i8* null, i8** %3, align 8
  br label %54

26:                                               ; preds = %15
  %27 = load %struct.chain_allocator*, %struct.chain_allocator** %4, align 8
  %28 = getelementptr inbounds %struct.chain_allocator, %struct.chain_allocator* %27, i32 0, i32 1
  %29 = load %struct.linked_page*, %struct.linked_page** %28, align 8
  %30 = load %struct.linked_page*, %struct.linked_page** %7, align 8
  %31 = getelementptr inbounds %struct.linked_page, %struct.linked_page* %30, i32 0, i32 1
  store %struct.linked_page* %29, %struct.linked_page** %31, align 8
  %32 = load %struct.linked_page*, %struct.linked_page** %7, align 8
  %33 = load %struct.chain_allocator*, %struct.chain_allocator** %4, align 8
  %34 = getelementptr inbounds %struct.chain_allocator, %struct.chain_allocator* %33, i32 0, i32 1
  store %struct.linked_page* %32, %struct.linked_page** %34, align 8
  %35 = load %struct.chain_allocator*, %struct.chain_allocator** %4, align 8
  %36 = getelementptr inbounds %struct.chain_allocator, %struct.chain_allocator* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %26, %2
  %38 = load %struct.chain_allocator*, %struct.chain_allocator** %4, align 8
  %39 = getelementptr inbounds %struct.chain_allocator, %struct.chain_allocator* %38, i32 0, i32 1
  %40 = load %struct.linked_page*, %struct.linked_page** %39, align 8
  %41 = getelementptr inbounds %struct.linked_page, %struct.linked_page* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.chain_allocator*, %struct.chain_allocator** %4, align 8
  %44 = getelementptr inbounds %struct.chain_allocator, %struct.chain_allocator* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = zext i32 %45 to i64
  %47 = getelementptr i8, i8* %42, i64 %46
  store i8* %47, i8** %6, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.chain_allocator*, %struct.chain_allocator** %4, align 8
  %50 = getelementptr inbounds %struct.chain_allocator, %struct.chain_allocator* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load i8*, i8** %6, align 8
  store i8* %53, i8** %3, align 8
  br label %54

54:                                               ; preds = %37, %25
  %55 = load i8*, i8** %3, align 8
  ret i8* %55
}

declare dso_local %struct.linked_page* @get_image_page(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
