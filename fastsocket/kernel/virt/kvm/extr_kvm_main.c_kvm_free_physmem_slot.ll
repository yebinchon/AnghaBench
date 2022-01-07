; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_free_physmem_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_free_physmem_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_memory_slot = type { i32*, i32*, i64, i32** }

@KVM_NR_PAGE_SIZES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_memory_slot*, %struct.kvm_memory_slot*)* @kvm_free_physmem_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_free_physmem_slot(%struct.kvm_memory_slot* %0, %struct.kvm_memory_slot* %1) #0 {
  %3 = alloca %struct.kvm_memory_slot*, align 8
  %4 = alloca %struct.kvm_memory_slot*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_memory_slot* %0, %struct.kvm_memory_slot** %3, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %4, align 8
  %6 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %7 = icmp ne %struct.kvm_memory_slot* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %11, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %8, %2
  %17 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @vfree(i32* %19)
  br label %21

21:                                               ; preds = %16, %8
  %22 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %23 = icmp ne %struct.kvm_memory_slot* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %3, align 8
  %26 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %29 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %27, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %24, %21
  %33 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %3, align 8
  %34 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @vfree(i32* %35)
  br label %37

37:                                               ; preds = %32, %24
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %78, %37
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @KVM_NR_PAGE_SIZES, align 4
  %41 = sub nsw i32 %40, 1
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %81

43:                                               ; preds = %38
  %44 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %45 = icmp ne %struct.kvm_memory_slot* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %3, align 8
  %48 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %47, i32 0, i32 3
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %55 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %54, i32 0, i32 3
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %53, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %46, %43
  %63 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %3, align 8
  %64 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %63, i32 0, i32 3
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @vfree(i32* %69)
  %71 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %3, align 8
  %72 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %71, i32 0, i32 3
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %62, %46
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %38

81:                                               ; preds = %38
  %82 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %3, align 8
  %83 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %82, i32 0, i32 2
  store i64 0, i64* %83, align 8
  %84 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %3, align 8
  %85 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  %86 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %3, align 8
  %87 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %86, i32 0, i32 0
  store i32* null, i32** %87, align 8
  ret void
}

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
