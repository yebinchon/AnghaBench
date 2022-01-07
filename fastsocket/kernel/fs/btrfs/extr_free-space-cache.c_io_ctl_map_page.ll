; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_io_ctl_map_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_io_ctl_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ctl = type { i64, i64, i32, i32, i32, i32, i32* }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_ctl*, i32)* @io_ctl_map_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_ctl_map_page(%struct.io_ctl* %0, i32 %1) #0 {
  %3 = alloca %struct.io_ctl*, align 8
  %4 = alloca i32, align 4
  store %struct.io_ctl* %0, %struct.io_ctl** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %6 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @WARN_ON(i32 %7)
  %9 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %10 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %13 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %19 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %18, i32 0, i32 6
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %22 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = getelementptr inbounds i32, i32* %20, i64 %23
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %28 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %30 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @kmap(i32 %31)
  %33 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %34 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %36 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %39 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %41 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %42 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %2
  %46 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %47 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %50 = call i32 @memset(i32 %48, i32 0, i32 %49)
  br label %51

51:                                               ; preds = %45, %2
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kmap(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
