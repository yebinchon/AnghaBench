; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_swap.c_wait_on_bio_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_swap.c_wait_on_bio_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.TYPE_2__*, %struct.bio* }
%struct.TYPE_2__ = type { %struct.page* }
%struct.page = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bio**)* @wait_on_bio_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_on_bio_chain(%struct.bio** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bio**, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  store %struct.bio** %0, %struct.bio*** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.bio**, %struct.bio*** %3, align 8
  %9 = icmp eq %struct.bio** %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

11:                                               ; preds = %1
  %12 = load %struct.bio**, %struct.bio*** %3, align 8
  %13 = load %struct.bio*, %struct.bio** %12, align 8
  store %struct.bio* %13, %struct.bio** %4, align 8
  %14 = load %struct.bio*, %struct.bio** %4, align 8
  %15 = icmp eq %struct.bio* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %52

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %43, %17
  %19 = load %struct.bio*, %struct.bio** %4, align 8
  %20 = icmp ne %struct.bio* %19, null
  br i1 %20, label %21, label %49

21:                                               ; preds = %18
  %22 = load %struct.bio*, %struct.bio** %4, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 1
  %24 = load %struct.bio*, %struct.bio** %23, align 8
  store %struct.bio* %24, %struct.bio** %5, align 8
  %25 = load %struct.bio*, %struct.bio** %4, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.page*, %struct.page** %29, align 8
  store %struct.page* %30, %struct.page** %7, align 8
  %31 = load %struct.page*, %struct.page** %7, align 8
  %32 = call i32 @wait_on_page_locked(%struct.page* %31)
  %33 = load %struct.page*, %struct.page** %7, align 8
  %34 = call i32 @PageUptodate(%struct.page* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %21
  %37 = load %struct.page*, %struct.page** %7, align 8
  %38 = call i64 @PageError(%struct.page* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %21
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %36
  %44 = load %struct.page*, %struct.page** %7, align 8
  %45 = call i32 @put_page(%struct.page* %44)
  %46 = load %struct.bio*, %struct.bio** %4, align 8
  %47 = call i32 @bio_put(%struct.bio* %46)
  %48 = load %struct.bio*, %struct.bio** %5, align 8
  store %struct.bio* %48, %struct.bio** %4, align 8
  br label %18

49:                                               ; preds = %18
  %50 = load %struct.bio**, %struct.bio*** %3, align 8
  store %struct.bio* null, %struct.bio** %50, align 8
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %16, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @wait_on_page_locked(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i64 @PageError(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
