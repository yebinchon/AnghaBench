; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_io_ctl_add_bitmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_io_ctl_add_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ctl = type { i64, i64, i64, i64 }

@ENOSPC = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_ctl*, i8*)* @io_ctl_add_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_ctl_add_bitmap(%struct.io_ctl* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.io_ctl*, align 8
  %5 = alloca i8*, align 8
  store %struct.io_ctl* %0, %struct.io_ctl** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.io_ctl*, %struct.io_ctl** %4, align 8
  %7 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOSPC, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %65

13:                                               ; preds = %2
  %14 = load %struct.io_ctl*, %struct.io_ctl** %4, align 8
  %15 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.io_ctl*, %struct.io_ctl** %4, align 8
  %18 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %13
  %22 = load %struct.io_ctl*, %struct.io_ctl** %4, align 8
  %23 = load %struct.io_ctl*, %struct.io_ctl** %4, align 8
  %24 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %25, 1
  %27 = call i32 @io_ctl_set_crc(%struct.io_ctl* %22, i64 %26)
  %28 = load %struct.io_ctl*, %struct.io_ctl** %4, align 8
  %29 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.io_ctl*, %struct.io_ctl** %4, align 8
  %32 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load i32, i32* @ENOSPC, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %65

38:                                               ; preds = %21
  %39 = load %struct.io_ctl*, %struct.io_ctl** %4, align 8
  %40 = call i32 @io_ctl_map_page(%struct.io_ctl* %39, i32 0)
  br label %41

41:                                               ; preds = %38, %13
  %42 = load %struct.io_ctl*, %struct.io_ctl** %4, align 8
  %43 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %47 = call i32 @memcpy(i64 %44, i8* %45, i32 %46)
  %48 = load %struct.io_ctl*, %struct.io_ctl** %4, align 8
  %49 = load %struct.io_ctl*, %struct.io_ctl** %4, align 8
  %50 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, 1
  %53 = call i32 @io_ctl_set_crc(%struct.io_ctl* %48, i64 %52)
  %54 = load %struct.io_ctl*, %struct.io_ctl** %4, align 8
  %55 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.io_ctl*, %struct.io_ctl** %4, align 8
  %58 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %41
  %62 = load %struct.io_ctl*, %struct.io_ctl** %4, align 8
  %63 = call i32 @io_ctl_map_page(%struct.io_ctl* %62, i32 0)
  br label %64

64:                                               ; preds = %61, %41
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %35, %10
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @io_ctl_set_crc(%struct.io_ctl*, i64) #1

declare dso_local i32 @io_ctl_map_page(%struct.io_ctl*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
