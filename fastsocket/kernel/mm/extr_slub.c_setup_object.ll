; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_setup_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_setup_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 (i8*)* }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmem_cache*, %struct.page*, i8*)* @setup_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_object(%struct.kmem_cache* %0, %struct.page* %1, i8* %2) #0 {
  %4 = alloca %struct.kmem_cache*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i8*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %8 = load %struct.page*, %struct.page** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @setup_object_debug(%struct.kmem_cache* %7, %struct.page* %8, i8* %9)
  %11 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %12 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %11, i32 0, i32 0
  %13 = load i32 (i8*)*, i32 (i8*)** %12, align 8
  %14 = call i64 @unlikely(i32 (i8*)* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %18 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %17, i32 0, i32 0
  %19 = load i32 (i8*)*, i32 (i8*)** %18, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 %19(i8* %20)
  br label %22

22:                                               ; preds = %16, %3
  ret void
}

declare dso_local i32 @setup_object_debug(%struct.kmem_cache*, %struct.page*, i8*) #1

declare dso_local i64 @unlikely(i32 (i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
