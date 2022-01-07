; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_metapage.c_release_metapage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_metapage.c_release_metapage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metapage = type { i64, i32, i64, i64, %struct.page* }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"release_metapage: mp = 0x%p, flag = 0x%lx\00", align 1
@META_dirty = common dso_local global i32 0, align 4
@META_sync = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_metapage(%struct.metapage* %0) #0 {
  %2 = alloca %struct.metapage*, align 8
  %3 = alloca %struct.page*, align 8
  store %struct.metapage* %0, %struct.metapage** %2, align 8
  %4 = load %struct.metapage*, %struct.metapage** %2, align 8
  %5 = getelementptr inbounds %struct.metapage, %struct.metapage* %4, i32 0, i32 4
  %6 = load %struct.page*, %struct.page** %5, align 8
  store %struct.page* %6, %struct.page** %3, align 8
  %7 = load %struct.metapage*, %struct.metapage** %2, align 8
  %8 = load %struct.metapage*, %struct.metapage** %2, align 8
  %9 = getelementptr inbounds %struct.metapage, %struct.metapage* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @jfs_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.metapage* %7, i32 %10)
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = icmp ne %struct.page* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = call i32 @lock_page(%struct.page* %17)
  %19 = load %struct.metapage*, %struct.metapage** %2, align 8
  %20 = call i32 @unlock_metapage(%struct.metapage* %19)
  %21 = load %struct.metapage*, %struct.metapage** %2, align 8
  %22 = getelementptr inbounds %struct.metapage, %struct.metapage* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @assert(i64 %23)
  %25 = load %struct.metapage*, %struct.metapage** %2, align 8
  %26 = getelementptr inbounds %struct.metapage, %struct.metapage* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %1
  %31 = load %struct.metapage*, %struct.metapage** %2, align 8
  %32 = getelementptr inbounds %struct.metapage, %struct.metapage* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30, %1
  %36 = load %struct.page*, %struct.page** %3, align 8
  %37 = call i32 @unlock_page(%struct.page* %36)
  %38 = load %struct.page*, %struct.page** %3, align 8
  %39 = call i32 @page_cache_release(%struct.page* %38)
  br label %81

40:                                               ; preds = %30
  %41 = load i32, i32* @META_dirty, align 4
  %42 = load %struct.metapage*, %struct.metapage** %2, align 8
  %43 = getelementptr inbounds %struct.metapage, %struct.metapage* %42, i32 0, i32 1
  %44 = call i64 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %40
  %47 = load %struct.page*, %struct.page** %3, align 8
  %48 = call i32 @set_page_dirty(%struct.page* %47)
  %49 = load i32, i32* @META_sync, align 4
  %50 = load %struct.metapage*, %struct.metapage** %2, align 8
  %51 = getelementptr inbounds %struct.metapage, %struct.metapage* %50, i32 0, i32 1
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %46
  %55 = load i32, i32* @META_sync, align 4
  %56 = load %struct.metapage*, %struct.metapage** %2, align 8
  %57 = getelementptr inbounds %struct.metapage, %struct.metapage* %56, i32 0, i32 1
  %58 = call i32 @clear_bit(i32 %55, i32* %57)
  %59 = load %struct.page*, %struct.page** %3, align 8
  %60 = call i32 @write_one_page(%struct.page* %59, i32 1)
  %61 = load %struct.page*, %struct.page** %3, align 8
  %62 = call i32 @lock_page(%struct.page* %61)
  br label %63

63:                                               ; preds = %54, %46
  br label %73

64:                                               ; preds = %40
  %65 = load %struct.metapage*, %struct.metapage** %2, align 8
  %66 = getelementptr inbounds %struct.metapage, %struct.metapage* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.metapage*, %struct.metapage** %2, align 8
  %71 = call i32 @remove_from_logsync(%struct.metapage* %70)
  br label %72

72:                                               ; preds = %69, %64
  br label %73

73:                                               ; preds = %72, %63
  %74 = load %struct.page*, %struct.page** %3, align 8
  %75 = load %struct.metapage*, %struct.metapage** %2, align 8
  %76 = call i32 @drop_metapage(%struct.page* %74, %struct.metapage* %75)
  %77 = load %struct.page*, %struct.page** %3, align 8
  %78 = call i32 @unlock_page(%struct.page* %77)
  %79 = load %struct.page*, %struct.page** %3, align 8
  %80 = call i32 @page_cache_release(%struct.page* %79)
  br label %81

81:                                               ; preds = %73, %35
  ret void
}

declare dso_local i32 @jfs_info(i8*, %struct.metapage*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @unlock_metapage(%struct.metapage*) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @write_one_page(%struct.page*, i32) #1

declare dso_local i32 @remove_from_logsync(%struct.metapage*) #1

declare dso_local i32 @drop_metapage(%struct.page*, %struct.metapage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
