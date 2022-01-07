; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_hardware_disable_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_hardware_disable_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@__const.hardware_disable_all.event_string = private unnamed_addr constant [16 x i8] c"EVENT=terminate\00", align 16
@kvm_lock = common dso_local global i32 0, align 4
@kvm_usage_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"COUNT=%d\00", align 1
@kvm_dev = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @hardware_disable_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hardware_disable_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [20 x i8], align 16
  %3 = alloca [16 x i8], align 16
  %4 = alloca [3 x i8*], align 16
  %5 = bitcast [16 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.hardware_disable_all.event_string, i32 0, i32 0), i64 16, i1 false)
  %6 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  store i8* %7, i8** %6, align 8
  %8 = getelementptr inbounds i8*, i8** %6, i64 1
  %9 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  store i8* %9, i8** %8, align 8
  %10 = getelementptr inbounds i8*, i8** %8, i64 1
  store i8* null, i8** %10, align 8
  %11 = call i32 @spin_lock(i32* @kvm_lock)
  %12 = call i32 (...) @hardware_disable_all_nolock()
  %13 = load i32, i32* @kvm_usage_count, align 4
  store i32 %13, i32* %1, align 4
  %14 = call i32 @spin_unlock(i32* @kvm_lock)
  %15 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_dev, i32 0, i32 0), align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* @KOBJ_CHANGE, align 4
  %21 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %22 = call i32 @kobject_uevent_env(i32* %19, i32 %20, i8** %21)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @hardware_disable_all_nolock(...) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
