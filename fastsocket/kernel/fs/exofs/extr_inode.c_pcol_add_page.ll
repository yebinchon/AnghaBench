; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_inode.c_pcol_add_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_inode.c_pcol_add_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_collect = type { i32, i32, i32, i32 }
%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page_collect*, %struct.page*, i32)* @pcol_add_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcol_add_page(%struct.page_collect* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page_collect*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.page_collect* %0, %struct.page_collect** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.page_collect*, %struct.page_collect** %5, align 8
  %10 = getelementptr inbounds %struct.page_collect, %struct.page_collect* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.page_collect*, %struct.page_collect** %5, align 8
  %13 = getelementptr inbounds %struct.page_collect, %struct.page_collect* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.page*, %struct.page** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @bio_add_pc_page(i32 %11, i32 %14, %struct.page* %15, i32 %16, i32 0)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %37

27:                                               ; preds = %3
  %28 = load %struct.page_collect*, %struct.page_collect** %5, align 8
  %29 = getelementptr inbounds %struct.page_collect, %struct.page_collect* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.page_collect*, %struct.page_collect** %5, align 8
  %34 = getelementptr inbounds %struct.page_collect, %struct.page_collect* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add i32 %35, %32
  store i32 %36, i32* %34, align 4
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %27, %24
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @bio_add_pc_page(i32, i32, %struct.page*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
