; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_free_large_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_free_large_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.large_page_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@GGC_DEBUG_LEVEL = common dso_local global i32 0, align 4
@G = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [40 x i8] c"Deallocating %s page at %p, data %p-%p\0A\00", align 1
@SMALL_PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.large_page_entry*)* @free_large_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_large_page(%struct.large_page_entry* %0) #0 {
  %2 = alloca %struct.large_page_entry*, align 8
  store %struct.large_page_entry* %0, %struct.large_page_entry** %2, align 8
  %3 = load i32, i32* @GGC_DEBUG_LEVEL, align 4
  %4 = icmp sge i32 %3, 2
  br i1 %4, label %5, label %27

5:                                                ; preds = %1
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @G, i32 0, i32 0), align 4
  %7 = load %struct.large_page_entry*, %struct.large_page_entry** %2, align 8
  %8 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.large_page_entry*, %struct.large_page_entry** %2, align 8
  %14 = ptrtoint %struct.large_page_entry* %13 to i32
  %15 = load %struct.large_page_entry*, %struct.large_page_entry** %2, align 8
  %16 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.large_page_entry*, %struct.large_page_entry** %2, align 8
  %20 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SMALL_PAGE_SIZE, align 8
  %24 = add nsw i64 %22, %23
  %25 = sub nsw i64 %24, 1
  %26 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %14, i64 %18, i64 %25)
  br label %27

27:                                               ; preds = %5, %1
  %28 = load %struct.large_page_entry*, %struct.large_page_entry** %2, align 8
  %29 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @gcc_assert(i32 %31)
  %33 = load %struct.large_page_entry*, %struct.large_page_entry** %2, align 8
  %34 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @set_page_table_entry(i64 %36, i32* null)
  %38 = load %struct.large_page_entry*, %struct.large_page_entry** %2, align 8
  %39 = call i32 @free(%struct.large_page_entry* %38)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i64, i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @set_page_table_entry(i64, i32*) #1

declare dso_local i32 @free(%struct.large_page_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
