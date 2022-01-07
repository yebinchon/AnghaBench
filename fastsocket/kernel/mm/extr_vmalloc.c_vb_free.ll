; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c_vb_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c_vb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmap_block = type { i64, i32, i32, i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@VMAP_MAX_ALLOC = common dso_local global i64 0, align 8
@VMAP_BLOCK_SIZE = common dso_local global i32 0, align 4
@vmap_block_tree = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VMAP_BBMAP_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @vb_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vb_free(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmap_block*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @PAGE_MASK, align 8
  %11 = xor i64 %10, -1
  %12 = and i64 %9, %11
  %13 = trunc i64 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @PAGE_SIZE, align 8
  %17 = load i64, i64* @VMAP_MAX_ALLOC, align 8
  %18 = mul i64 %16, %17
  %19 = icmp ugt i64 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i8*, i8** %3, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = load i8*, i8** %3, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %25, %26
  %28 = call i32 @flush_cache_vunmap(i64 %23, i64 %27)
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @get_order(i64 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = load i32, i32* @VMAP_BLOCK_SIZE, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = and i64 %32, %35
  store i64 %36, i64* %5, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = call i64 @addr_to_vb_idx(i64 %38)
  store i64 %39, i64* %6, align 8
  %40 = call i32 (...) @rcu_read_lock()
  %41 = load i64, i64* %6, align 8
  %42 = call %struct.vmap_block* @radix_tree_lookup(i32* @vmap_block_tree, i64 %41)
  store %struct.vmap_block* %42, %struct.vmap_block** %8, align 8
  %43 = call i32 (...) @rcu_read_unlock()
  %44 = load %struct.vmap_block*, %struct.vmap_block** %8, align 8
  %45 = icmp ne %struct.vmap_block* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load i8*, i8** %3, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = load i8*, i8** %3, align 8
  %52 = ptrtoint i8* %51 to i64
  %53 = load i64, i64* %4, align 8
  %54 = add i64 %52, %53
  %55 = call i32 @vunmap_page_range(i64 %50, i64 %54)
  %56 = load %struct.vmap_block*, %struct.vmap_block** %8, align 8
  %57 = getelementptr inbounds %struct.vmap_block, %struct.vmap_block* %56, i32 0, i32 2
  %58 = call i32 @spin_lock(i32* %57)
  %59 = load %struct.vmap_block*, %struct.vmap_block** %8, align 8
  %60 = getelementptr inbounds %struct.vmap_block, %struct.vmap_block* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* @PAGE_SHIFT, align 8
  %64 = lshr i64 %62, %63
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @bitmap_allocate_region(i32 %61, i64 %64, i32 %65)
  %67 = call i32 @BUG_ON(i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = shl i64 1, %69
  %71 = load %struct.vmap_block*, %struct.vmap_block** %8, align 8
  %72 = getelementptr inbounds %struct.vmap_block, %struct.vmap_block* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load %struct.vmap_block*, %struct.vmap_block** %8, align 8
  %76 = getelementptr inbounds %struct.vmap_block, %struct.vmap_block* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @VMAP_BBMAP_BITS, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %2
  %81 = load %struct.vmap_block*, %struct.vmap_block** %8, align 8
  %82 = getelementptr inbounds %struct.vmap_block, %struct.vmap_block* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @BUG_ON(i32 %83)
  %85 = load %struct.vmap_block*, %struct.vmap_block** %8, align 8
  %86 = getelementptr inbounds %struct.vmap_block, %struct.vmap_block* %85, i32 0, i32 2
  %87 = call i32 @spin_unlock(i32* %86)
  %88 = load %struct.vmap_block*, %struct.vmap_block** %8, align 8
  %89 = call i32 @free_vmap_block(%struct.vmap_block* %88)
  br label %94

90:                                               ; preds = %2
  %91 = load %struct.vmap_block*, %struct.vmap_block** %8, align 8
  %92 = getelementptr inbounds %struct.vmap_block, %struct.vmap_block* %91, i32 0, i32 2
  %93 = call i32 @spin_unlock(i32* %92)
  br label %94

94:                                               ; preds = %90, %80
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @flush_cache_vunmap(i64, i64) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i64 @addr_to_vb_idx(i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.vmap_block* @radix_tree_lookup(i32*, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @vunmap_page_range(i64, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @bitmap_allocate_region(i32, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @free_vmap_block(%struct.vmap_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
