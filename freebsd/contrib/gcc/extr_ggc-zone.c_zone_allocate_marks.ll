; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_zone_allocate_marks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_zone_allocate_marks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.alloc_zone* }
%struct.alloc_zone = type { i64, %struct.small_page_entry*, i32*, %struct.alloc_zone* }
%struct.small_page_entry = type { i32*, %struct.small_page_entry* }
%struct.TYPE_3__ = type { i64, i32* }

@G = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GGC_PAGE_SIZE = common dso_local global i32 0, align 4
@BYTES_PER_MARK_WORD = common dso_local global i32 0, align 4
@pch_zone = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @zone_allocate_marks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zone_allocate_marks() #0 {
  %1 = alloca %struct.alloc_zone*, align 8
  %2 = alloca %struct.small_page_entry*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load %struct.alloc_zone*, %struct.alloc_zone** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @G, i32 0, i32 0), align 8
  store %struct.alloc_zone* %6, %struct.alloc_zone** %1, align 8
  br label %7

7:                                                ; preds = %49, %0
  %8 = load %struct.alloc_zone*, %struct.alloc_zone** %1, align 8
  %9 = icmp ne %struct.alloc_zone* %8, null
  br i1 %9, label %10, label %53

10:                                               ; preds = %7
  %11 = load i32, i32* @GGC_PAGE_SIZE, align 4
  %12 = load i32, i32* @BYTES_PER_MARK_WORD, align 4
  %13 = add nsw i32 %11, %12
  %14 = sub nsw i32 %13, 1
  %15 = load i32, i32* @BYTES_PER_MARK_WORD, align 4
  %16 = sdiv i32 %14, %15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %5, align 8
  %18 = load %struct.alloc_zone*, %struct.alloc_zone** %1, align 8
  %19 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = mul i64 %20, %21
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @xcalloc(i32 4, i64 %23)
  %25 = inttoptr i64 %24 to i32*
  %26 = load %struct.alloc_zone*, %struct.alloc_zone** %1, align 8
  %27 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %26, i32 0, i32 2
  store i32* %25, i32** %27, align 8
  %28 = load %struct.alloc_zone*, %struct.alloc_zone** %1, align 8
  %29 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %3, align 8
  %31 = load %struct.alloc_zone*, %struct.alloc_zone** %1, align 8
  %32 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %31, i32 0, i32 1
  %33 = load %struct.small_page_entry*, %struct.small_page_entry** %32, align 8
  store %struct.small_page_entry* %33, %struct.small_page_entry** %2, align 8
  br label %34

34:                                               ; preds = %44, %10
  %35 = load %struct.small_page_entry*, %struct.small_page_entry** %2, align 8
  %36 = icmp ne %struct.small_page_entry* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load i32*, i32** %3, align 8
  %39 = load %struct.small_page_entry*, %struct.small_page_entry** %2, align 8
  %40 = getelementptr inbounds %struct.small_page_entry, %struct.small_page_entry* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 %41
  store i32* %43, i32** %3, align 8
  br label %44

44:                                               ; preds = %37
  %45 = load %struct.small_page_entry*, %struct.small_page_entry** %2, align 8
  %46 = getelementptr inbounds %struct.small_page_entry, %struct.small_page_entry* %45, i32 0, i32 1
  %47 = load %struct.small_page_entry*, %struct.small_page_entry** %46, align 8
  store %struct.small_page_entry* %47, %struct.small_page_entry** %2, align 8
  br label %34

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.alloc_zone*, %struct.alloc_zone** %1, align 8
  %51 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %50, i32 0, i32 3
  %52 = load %struct.alloc_zone*, %struct.alloc_zone** %51, align 8
  store %struct.alloc_zone* %52, %struct.alloc_zone** %1, align 8
  br label %7

53:                                               ; preds = %7
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pch_zone, i32 0, i32 0), align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pch_zone, i32 0, i32 0), align 8
  %58 = load i32, i32* @BYTES_PER_MARK_WORD, align 4
  %59 = call i64 @CEIL(i64 %57, i32 %58)
  %60 = call i64 @xcalloc(i32 4, i64 %59)
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pch_zone, i32 0, i32 1), align 8
  br label %62

62:                                               ; preds = %56, %53
  ret void
}

declare dso_local i64 @xcalloc(i32, i64) #1

declare dso_local i64 @CEIL(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
