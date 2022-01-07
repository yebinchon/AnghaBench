; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_get_dirty_log.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_get_dirty_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.kvm_memory_slot* }
%struct.kvm_memory_slot = type { i64* }
%struct.kvm_dirty_log = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@KVM_MEMORY_SLOTS = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_get_dirty_log(%struct.kvm* %0, %struct.kvm_dirty_log* %1, i32* %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_dirty_log*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.kvm_memory_slot*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_dirty_log* %1, %struct.kvm_dirty_log** %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.kvm_dirty_log*, %struct.kvm_dirty_log** %5, align 8
  %15 = getelementptr inbounds %struct.kvm_dirty_log, %struct.kvm_dirty_log* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @KVM_MEMORY_SLOTS, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %81

20:                                               ; preds = %3
  %21 = load %struct.kvm*, %struct.kvm** %4, align 8
  %22 = getelementptr inbounds %struct.kvm, %struct.kvm* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %24, align 8
  %26 = load %struct.kvm_dirty_log*, %struct.kvm_dirty_log** %5, align 8
  %27 = getelementptr inbounds %struct.kvm_dirty_log, %struct.kvm_dirty_log* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %25, i64 %28
  store %struct.kvm_memory_slot* %29, %struct.kvm_memory_slot** %7, align 8
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %33 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %20
  br label %81

37:                                               ; preds = %20
  %38 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %39 = call i64 @kvm_dirty_bitmap_bytes(%struct.kvm_memory_slot* %38)
  store i64 %39, i64* %10, align 8
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %59, %37
  %41 = load i64, i64* %11, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %10, align 8
  %47 = udiv i64 %46, 8
  %48 = icmp ult i64 %45, %47
  br label %49

49:                                               ; preds = %43, %40
  %50 = phi i1 [ false, %40 ], [ %48, %43 ]
  br i1 %50, label %51, label %62

51:                                               ; preds = %49
  %52 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %53 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %11, align 8
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %40

62:                                               ; preds = %49
  %63 = load i32, i32* @EFAULT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %8, align 4
  %65 = load %struct.kvm_dirty_log*, %struct.kvm_dirty_log** %5, align 8
  %66 = getelementptr inbounds %struct.kvm_dirty_log, %struct.kvm_dirty_log* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %69 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i64 @copy_to_user(i32 %67, i64* %70, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %81

75:                                               ; preds = %62
  %76 = load i64, i64* %11, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32*, i32** %6, align 8
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %78, %75
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %80, %74, %36, %19
  %82 = load i32, i32* %8, align 4
  ret i32 %82
}

declare dso_local i64 @kvm_dirty_bitmap_bytes(%struct.kvm_memory_slot*) #1

declare dso_local i64 @copy_to_user(i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
