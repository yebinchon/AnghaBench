; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcookies.c_dcookie_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcookies.c_dcookie_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"dcookie_cache\00", align 1
@dcookie_cache = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@dcookie_hashtable = common dso_local global %struct.list_head* null, align 8
@hash_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dcookie_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcookie_init() #0 {
  %1 = alloca %struct.list_head*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @ENOMEM, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = call i32 @kmem_cache_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  store i32 %7, i32* @dcookie_cache, align 4
  %8 = load i32, i32* @dcookie_cache, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %51

11:                                               ; preds = %0
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.list_head* @kmalloc(i32 %12, i32 %13)
  store %struct.list_head* %14, %struct.list_head** @dcookie_hashtable, align 8
  %15 = load %struct.list_head*, %struct.list_head** @dcookie_hashtable, align 8
  %16 = icmp ne %struct.list_head* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %53

18:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = sext i32 %19 to i64
  %21 = udiv i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* @hash_size, align 4
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %26, %18
  %24 = load i32, i32* %3, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @hash_size, align 4
  %28 = load i32, i32* %3, align 4
  %29 = lshr i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %23, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %32, -1
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = shl i64 1, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* @hash_size, align 4
  %38 = load %struct.list_head*, %struct.list_head** @dcookie_hashtable, align 8
  store %struct.list_head* %38, %struct.list_head** %1, align 8
  %39 = load i32, i32* @hash_size, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %47, %31
  %41 = load %struct.list_head*, %struct.list_head** %1, align 8
  %42 = call i32 @INIT_LIST_HEAD(%struct.list_head* %41)
  %43 = load %struct.list_head*, %struct.list_head** %1, align 8
  %44 = getelementptr inbounds %struct.list_head, %struct.list_head* %43, i32 1
  store %struct.list_head* %44, %struct.list_head** %1, align 8
  %45 = load i32, i32* %2, align 4
  %46 = add i32 %45, -1
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %2, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %40, label %50

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %53, %50, %10
  %52 = load i32, i32* %4, align 4
  ret i32 %52

53:                                               ; preds = %17
  %54 = load i32, i32* @dcookie_cache, align 4
  %55 = call i32 @kmem_cache_destroy(i32 %54)
  br label %51
}

declare dso_local i32 @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local %struct.list_head* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
