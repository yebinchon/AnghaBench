; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_check_valid_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_check_valid_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmem_cache*, %struct.page*, i8*)* @check_valid_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_valid_pointer(%struct.kmem_cache* %0, %struct.page* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kmem_cache*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %45

12:                                               ; preds = %3
  %13 = load %struct.page*, %struct.page** %6, align 8
  %14 = call i8* @page_address(%struct.page* %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %43, label %18

18:                                               ; preds = %12
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.page*, %struct.page** %6, align 8
  %22 = getelementptr inbounds %struct.page, %struct.page* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %25 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr i8, i8* %20, i64 %28
  %30 = icmp uge i8* %19, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %18
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %38 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = srem i64 %36, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31, %18, %12
  store i32 0, i32* %4, align 4
  br label %45

44:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %43, %11
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i8* @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
