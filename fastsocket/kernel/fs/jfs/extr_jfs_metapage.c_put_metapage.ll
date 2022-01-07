; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_metapage.c_put_metapage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_metapage.c_put_metapage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metapage = type { i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @put_metapage(%struct.metapage* %0) #0 {
  %2 = alloca %struct.metapage*, align 8
  store %struct.metapage* %0, %struct.metapage** %2, align 8
  %3 = load %struct.metapage*, %struct.metapage** %2, align 8
  %4 = getelementptr inbounds %struct.metapage, %struct.metapage* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.metapage*, %struct.metapage** %2, align 8
  %9 = getelementptr inbounds %struct.metapage, %struct.metapage* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7, %1
  %13 = load %struct.metapage*, %struct.metapage** %2, align 8
  %14 = getelementptr inbounds %struct.metapage, %struct.metapage* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @unlock_page(i32 %15)
  br label %34

17:                                               ; preds = %7
  %18 = load %struct.metapage*, %struct.metapage** %2, align 8
  %19 = getelementptr inbounds %struct.metapage, %struct.metapage* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @page_cache_get(i32 %20)
  %22 = load %struct.metapage*, %struct.metapage** %2, align 8
  %23 = getelementptr inbounds %struct.metapage, %struct.metapage* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.metapage*, %struct.metapage** %2, align 8
  %27 = call i32 @lock_metapage(%struct.metapage* %26)
  %28 = load %struct.metapage*, %struct.metapage** %2, align 8
  %29 = getelementptr inbounds %struct.metapage, %struct.metapage* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @unlock_page(i32 %30)
  %32 = load %struct.metapage*, %struct.metapage** %2, align 8
  %33 = call i32 @release_metapage(%struct.metapage* %32)
  br label %34

34:                                               ; preds = %17, %12
  ret void
}

declare dso_local i32 @unlock_page(i32) #1

declare dso_local i32 @page_cache_get(i32) #1

declare dso_local i32 @lock_metapage(%struct.metapage*) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
