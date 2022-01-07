; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c_insert_vmalloc_vmlist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c_insert_vmalloc_vmlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_struct = type { i64, %struct.vm_struct*, i32 }

@VM_UNLIST = common dso_local global i32 0, align 4
@vmlist_lock = common dso_local global i32 0, align 4
@vmlist = common dso_local global %struct.vm_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_struct*)* @insert_vmalloc_vmlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_vmalloc_vmlist(%struct.vm_struct* %0) #0 {
  %2 = alloca %struct.vm_struct*, align 8
  %3 = alloca %struct.vm_struct*, align 8
  %4 = alloca %struct.vm_struct**, align 8
  store %struct.vm_struct* %0, %struct.vm_struct** %2, align 8
  %5 = load i32, i32* @VM_UNLIST, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.vm_struct*, %struct.vm_struct** %2, align 8
  %8 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, %6
  store i32 %10, i32* %8, align 8
  %11 = call i32 @write_lock(i32* @vmlist_lock)
  store %struct.vm_struct** @vmlist, %struct.vm_struct*** %4, align 8
  br label %12

12:                                               ; preds = %26, %1
  %13 = load %struct.vm_struct**, %struct.vm_struct*** %4, align 8
  %14 = load %struct.vm_struct*, %struct.vm_struct** %13, align 8
  store %struct.vm_struct* %14, %struct.vm_struct** %3, align 8
  %15 = icmp ne %struct.vm_struct* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load %struct.vm_struct*, %struct.vm_struct** %3, align 8
  %18 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.vm_struct*, %struct.vm_struct** %2, align 8
  %21 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %29

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.vm_struct*, %struct.vm_struct** %3, align 8
  %28 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %27, i32 0, i32 1
  store %struct.vm_struct** %28, %struct.vm_struct*** %4, align 8
  br label %12

29:                                               ; preds = %24, %12
  %30 = load %struct.vm_struct**, %struct.vm_struct*** %4, align 8
  %31 = load %struct.vm_struct*, %struct.vm_struct** %30, align 8
  %32 = load %struct.vm_struct*, %struct.vm_struct** %2, align 8
  %33 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %32, i32 0, i32 1
  store %struct.vm_struct* %31, %struct.vm_struct** %33, align 8
  %34 = load %struct.vm_struct*, %struct.vm_struct** %2, align 8
  %35 = load %struct.vm_struct**, %struct.vm_struct*** %4, align 8
  store %struct.vm_struct* %34, %struct.vm_struct** %35, align 8
  %36 = call i32 @write_unlock(i32* @vmlist_lock)
  ret void
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
