; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_metapage.c_free_metapage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_metapage.c_free_metapage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metapage = type { i64 }

@META_free = common dso_local global i32 0, align 4
@metapage_mempool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.metapage*)* @free_metapage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_metapage(%struct.metapage* %0) #0 {
  %2 = alloca %struct.metapage*, align 8
  store %struct.metapage* %0, %struct.metapage** %2, align 8
  %3 = load %struct.metapage*, %struct.metapage** %2, align 8
  %4 = getelementptr inbounds %struct.metapage, %struct.metapage* %3, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = load i32, i32* @META_free, align 4
  %6 = load %struct.metapage*, %struct.metapage** %2, align 8
  %7 = getelementptr inbounds %struct.metapage, %struct.metapage* %6, i32 0, i32 0
  %8 = call i32 @set_bit(i32 %5, i64* %7)
  %9 = load %struct.metapage*, %struct.metapage** %2, align 8
  %10 = load i32, i32* @metapage_mempool, align 4
  %11 = call i32 @mempool_free(%struct.metapage* %9, i32 %10)
  ret void
}

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @mempool_free(%struct.metapage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
