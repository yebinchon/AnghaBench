; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_io_ctl_set_crc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_io_ctl_set_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ctl = type { i32, i32*, i64, i32, i32 }

@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_ctl*, i32)* @io_ctl_set_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_ctl_set_crc(%struct.io_ctl* %0, i32 %1) #0 {
  %3 = alloca %struct.io_ctl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.io_ctl* %0, %struct.io_ctl** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 -1, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %9 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %14 = call i32 @io_ctl_unmap_page(%struct.io_ctl* %13)
  br label %64

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %20 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 8, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %18, %15
  %26 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %27 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %30 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = sub nsw i64 %36, %38
  %40 = call i64 @btrfs_csum_data(i32 %28, i64 %34, i64 %35, i64 %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = bitcast i64* %6 to i8*
  %43 = call i32 @btrfs_csum_final(i64 %41, i8* %42)
  %44 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %45 = call i32 @io_ctl_unmap_page(%struct.io_ctl* %44)
  %46 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %47 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64* @kmap(i32 %50)
  store i64* %51, i64** %5, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i64*, i64** %5, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  store i64* %55, i64** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64*, i64** %5, align 8
  store i64 %56, i64* %57, align 8
  %58 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %59 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @kunmap(i32 %62)
  br label %64

64:                                               ; preds = %25, %12
  ret void
}

declare dso_local i32 @io_ctl_unmap_page(%struct.io_ctl*) #1

declare dso_local i64 @btrfs_csum_data(i32, i64, i64, i64) #1

declare dso_local i32 @btrfs_csum_final(i64, i8*) #1

declare dso_local i64* @kmap(i32) #1

declare dso_local i32 @kunmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
