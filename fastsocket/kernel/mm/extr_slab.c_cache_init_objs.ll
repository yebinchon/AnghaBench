; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_cache_init_objs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_cache_init_objs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i32, i32, i32 (i8*)* }
%struct.slab = type { i32 }

@BUFCTL_END = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@POISON_FREE = common dso_local global i32 0, align 4
@RED_INACTIVE = common dso_local global i64 0, align 8
@SLAB_POISON = common dso_local global i32 0, align 4
@SLAB_RED_ZONE = common dso_local global i32 0, align 4
@SLAB_STORE_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmem_cache*, %struct.slab*)* @cache_init_objs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_init_objs(%struct.kmem_cache* %0, %struct.slab* %1) #0 {
  %3 = alloca %struct.kmem_cache*, align 8
  %4 = alloca %struct.slab*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %3, align 8
  store %struct.slab* %1, %struct.slab** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %36, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %10 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %7
  %14 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %15 = load %struct.slab*, %struct.slab** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i8* @index_to_obj(%struct.kmem_cache* %14, %struct.slab* %15, i32 %16)
  store i8* %17, i8** %6, align 8
  %18 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %19 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %18, i32 0, i32 3
  %20 = load i32 (i8*)*, i32 (i8*)** %19, align 8
  %21 = icmp ne i32 (i8*)* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %24 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %23, i32 0, i32 3
  %25 = load i32 (i8*)*, i32 (i8*)** %24, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 %25(i8* %26)
  br label %28

28:                                               ; preds = %22, %13
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  %31 = load %struct.slab*, %struct.slab** %4, align 8
  %32 = call i32* @slab_bufctl(%struct.slab* %31)
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %30, i32* %35, align 4
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %7

39:                                               ; preds = %7
  %40 = load i32, i32* @BUFCTL_END, align 4
  %41 = load %struct.slab*, %struct.slab** %4, align 8
  %42 = call i32* @slab_bufctl(%struct.slab* %41)
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32 %40, i32* %46, align 4
  ret void
}

declare dso_local i8* @index_to_obj(%struct.kmem_cache*, %struct.slab*, i32) #1

declare dso_local i32* @slab_bufctl(%struct.slab*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
