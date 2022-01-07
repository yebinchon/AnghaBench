; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_metapage.c_grab_metapage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_metapage.c_grab_metapage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metapage = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"grab_metapage: mp = 0x%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grab_metapage(%struct.metapage* %0) #0 {
  %2 = alloca %struct.metapage*, align 8
  store %struct.metapage* %0, %struct.metapage** %2, align 8
  %3 = load %struct.metapage*, %struct.metapage** %2, align 8
  %4 = call i32 @jfs_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.metapage* %3)
  %5 = load %struct.metapage*, %struct.metapage** %2, align 8
  %6 = getelementptr inbounds %struct.metapage, %struct.metapage* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @page_cache_get(i32 %7)
  %9 = load %struct.metapage*, %struct.metapage** %2, align 8
  %10 = getelementptr inbounds %struct.metapage, %struct.metapage* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @lock_page(i32 %11)
  %13 = load %struct.metapage*, %struct.metapage** %2, align 8
  %14 = getelementptr inbounds %struct.metapage, %struct.metapage* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.metapage*, %struct.metapage** %2, align 8
  %18 = call i32 @lock_metapage(%struct.metapage* %17)
  %19 = load %struct.metapage*, %struct.metapage** %2, align 8
  %20 = getelementptr inbounds %struct.metapage, %struct.metapage* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @unlock_page(i32 %21)
  ret void
}

declare dso_local i32 @jfs_info(i8*, %struct.metapage*) #1

declare dso_local i32 @page_cache_get(i32) #1

declare dso_local i32 @lock_page(i32) #1

declare dso_local i32 @lock_metapage(%struct.metapage*) #1

declare dso_local i32 @unlock_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
