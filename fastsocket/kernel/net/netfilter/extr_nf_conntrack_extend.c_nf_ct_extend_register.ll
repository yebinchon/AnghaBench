; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_extend.c_nf_ct_extend_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_extend.c_nf_ct_extend_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_ct_ext_type = type { i64, i64, i32, i64 }

@nf_ct_ext_type_mutex = common dso_local global i32 0, align 4
@nf_ct_ext_types = common dso_local global i64* null, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_ct_extend_register(%struct.nf_ct_ext_type* %0) #0 {
  %2 = alloca %struct.nf_ct_ext_type*, align 8
  %3 = alloca i32, align 4
  store %struct.nf_ct_ext_type* %0, %struct.nf_ct_ext_type** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 @mutex_lock(i32* @nf_ct_ext_type_mutex)
  %5 = load i64*, i64** @nf_ct_ext_types, align 8
  %6 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %2, align 8
  %7 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds i64, i64* %5, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %36

15:                                               ; preds = %1
  %16 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %2, align 8
  %17 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @ALIGN(i32 4, i32 %18)
  %20 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %2, align 8
  %21 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %2, align 8
  %25 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %24, i32 0, i32 3
  store i64 %23, i64* %25, align 8
  %26 = load i64*, i64** @nf_ct_ext_types, align 8
  %27 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %2, align 8
  %28 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %2, align 8
  %33 = call i32 @rcu_assign_pointer(i64 %31, %struct.nf_ct_ext_type* %32)
  %34 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %2, align 8
  %35 = call i32 @update_alloc_size(%struct.nf_ct_ext_type* %34)
  br label %36

36:                                               ; preds = %15, %12
  %37 = call i32 @mutex_unlock(i32* @nf_ct_ext_type_mutex)
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i64, %struct.nf_ct_ext_type*) #1

declare dso_local i32 @update_alloc_size(%struct.nf_ct_ext_type*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
