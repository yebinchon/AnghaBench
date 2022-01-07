; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_util.c_get_user_pages_fast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_util.c_get_user_pages_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.page = type { i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local i32 @get_user_pages_fast(i64 %0, i32 %1, i32 %2, %struct.page** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page**, align 8
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.page** %3, %struct.page*** %8, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  store %struct.mm_struct* %13, %struct.mm_struct** %9, align 8
  %14 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %15 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %14, i32 0, i32 0
  %16 = call i32 @down_read(i32* %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %18 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.page**, %struct.page*** %8, align 8
  %23 = call i32 @get_user_pages(%struct.TYPE_3__* %17, %struct.mm_struct* %18, i64 %19, i32 %20, i32 %21, i32 0, %struct.page** %22, i32* null)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %25 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %24, i32 0, i32 0
  %26 = call i32 @up_read(i32* %25)
  %27 = load i32, i32* %10, align 4
  ret i32 %27
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @get_user_pages(%struct.TYPE_3__*, %struct.mm_struct*, i64, i32, i32, i32, %struct.page**, i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
