; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_rmap.c_anon_vma_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_rmap.c_anon_vma_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon_vma_chain = type { i32, %struct.anon_vma* }
%struct.anon_vma = type { %struct.anon_vma*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.anon_vma_chain*)* @anon_vma_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anon_vma_unlink(%struct.anon_vma_chain* %0) #0 {
  %2 = alloca %struct.anon_vma_chain*, align 8
  %3 = alloca %struct.anon_vma*, align 8
  %4 = alloca i32, align 4
  store %struct.anon_vma_chain* %0, %struct.anon_vma_chain** %2, align 8
  %5 = load %struct.anon_vma_chain*, %struct.anon_vma_chain** %2, align 8
  %6 = getelementptr inbounds %struct.anon_vma_chain, %struct.anon_vma_chain* %5, i32 0, i32 1
  %7 = load %struct.anon_vma*, %struct.anon_vma** %6, align 8
  store %struct.anon_vma* %7, %struct.anon_vma** %3, align 8
  %8 = load %struct.anon_vma*, %struct.anon_vma** %3, align 8
  %9 = icmp ne %struct.anon_vma* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %47

11:                                               ; preds = %1
  %12 = load %struct.anon_vma*, %struct.anon_vma** %3, align 8
  %13 = call i32 @anon_vma_lock(%struct.anon_vma* %12)
  %14 = load %struct.anon_vma_chain*, %struct.anon_vma_chain** %2, align 8
  %15 = getelementptr inbounds %struct.anon_vma_chain, %struct.anon_vma_chain* %14, i32 0, i32 0
  %16 = call i32 @list_del(i32* %15)
  %17 = load %struct.anon_vma*, %struct.anon_vma** %3, align 8
  %18 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %17, i32 0, i32 1
  %19 = call i64 @list_empty(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %11
  %22 = load %struct.anon_vma*, %struct.anon_vma** %3, align 8
  %23 = call i32 @anonvma_external_refcount(%struct.anon_vma* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %21, %11
  %27 = phi i1 [ false, %11 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %4, align 4
  %29 = load %struct.anon_vma*, %struct.anon_vma** %3, align 8
  %30 = call i32 @anon_vma_unlock(%struct.anon_vma* %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load %struct.anon_vma*, %struct.anon_vma** %3, align 8
  %35 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %34, i32 0, i32 0
  %36 = load %struct.anon_vma*, %struct.anon_vma** %35, align 8
  %37 = load %struct.anon_vma*, %struct.anon_vma** %3, align 8
  %38 = icmp ne %struct.anon_vma* %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.anon_vma*, %struct.anon_vma** %3, align 8
  %41 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %40, i32 0, i32 0
  %42 = load %struct.anon_vma*, %struct.anon_vma** %41, align 8
  %43 = call i32 @drop_anon_vma(%struct.anon_vma* %42)
  br label %44

44:                                               ; preds = %39, %33
  %45 = load %struct.anon_vma*, %struct.anon_vma** %3, align 8
  %46 = call i32 @anon_vma_free(%struct.anon_vma* %45)
  br label %47

47:                                               ; preds = %10, %44, %26
  ret void
}

declare dso_local i32 @anon_vma_lock(%struct.anon_vma*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @anonvma_external_refcount(%struct.anon_vma*) #1

declare dso_local i32 @anon_vma_unlock(%struct.anon_vma*) #1

declare dso_local i32 @drop_anon_vma(%struct.anon_vma*) #1

declare dso_local i32 @anon_vma_free(%struct.anon_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
