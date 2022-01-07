; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_hardware_enable_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_hardware_enable_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@kvm_lock = common dso_local global i32 0, align 4
@kvm_usage_count = common dso_local global i32 0, align 4
@hardware_enable_failed = common dso_local global i32 0, align 4
@hardware_enable = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@__const.hardware_enable_all.event_string = private unnamed_addr constant [13 x i8] c"EVENT=create\00", align 1
@.str = private unnamed_addr constant [9 x i8] c"COUNT=%d\00", align 1
@kvm_dev = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @hardware_enable_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hardware_enable_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [20 x i8], align 16
  %4 = alloca [13 x i8], align 1
  %5 = alloca [3 x i8*], align 16
  store i32 0, i32* %1, align 4
  %6 = call i32 @spin_lock(i32* @kvm_lock)
  %7 = load i32, i32* @kvm_usage_count, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @kvm_usage_count, align 4
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* @kvm_usage_count, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %22

11:                                               ; preds = %0
  %12 = call i32 @atomic_set(i32* @hardware_enable_failed, i32 0)
  %13 = load i32, i32* @hardware_enable, align 4
  %14 = call i32 @on_each_cpu(i32 %13, i32* null, i32 1)
  %15 = call i64 @atomic_read(i32* @hardware_enable_failed)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = call i32 (...) @hardware_disable_all_nolock()
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %17, %11
  br label %22

22:                                               ; preds = %21, %0
  %23 = call i32 @spin_unlock(i32* @kvm_lock)
  %24 = load i32, i32* %1, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = bitcast [13 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %27, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.hardware_enable_all.event_string, i32 0, i32 0), i64 13, i1 false)
  %28 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 0
  %29 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 0
  store i8* %29, i8** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 1
  %31 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  store i8* %31, i8** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 1
  store i8* null, i8** %32, align 8
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_dev, i32 0, i32 0), align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* @KOBJ_CHANGE, align 4
  %39 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 0
  %40 = call i32 @kobject_uevent_env(i32* %37, i32 %38, i8** %39)
  br label %41

41:                                               ; preds = %26, %22
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @on_each_cpu(i32, i32*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @hardware_disable_all_nolock(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
