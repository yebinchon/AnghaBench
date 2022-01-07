; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_kobject.c_kset_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_kobject.c_kset_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kset = type { %struct.TYPE_2__, %struct.kset_uevent_ops* }
%struct.TYPE_2__ = type { i32*, i32*, %struct.kobject* }
%struct.kset_uevent_ops = type { i32 }
%struct.kobject = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@kset_ktype = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kset* (i8*, %struct.kset_uevent_ops*, %struct.kobject*)* @kset_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kset* @kset_create(i8* %0, %struct.kset_uevent_ops* %1, %struct.kobject* %2) #0 {
  %4 = alloca %struct.kset*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kset_uevent_ops*, align 8
  %7 = alloca %struct.kobject*, align 8
  %8 = alloca %struct.kset*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.kset_uevent_ops* %1, %struct.kset_uevent_ops** %6, align 8
  store %struct.kobject* %2, %struct.kobject** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.kset* @kzalloc(i32 32, i32 %10)
  store %struct.kset* %11, %struct.kset** %8, align 8
  %12 = load %struct.kset*, %struct.kset** %8, align 8
  %13 = icmp ne %struct.kset* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.kset* null, %struct.kset** %4, align 8
  br label %40

15:                                               ; preds = %3
  %16 = load %struct.kset*, %struct.kset** %8, align 8
  %17 = getelementptr inbounds %struct.kset, %struct.kset* %16, i32 0, i32 0
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @kobject_set_name(%struct.TYPE_2__* %17, i8* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.kset*, %struct.kset** %8, align 8
  %24 = call i32 @kfree(%struct.kset* %23)
  store %struct.kset* null, %struct.kset** %4, align 8
  br label %40

25:                                               ; preds = %15
  %26 = load %struct.kset_uevent_ops*, %struct.kset_uevent_ops** %6, align 8
  %27 = load %struct.kset*, %struct.kset** %8, align 8
  %28 = getelementptr inbounds %struct.kset, %struct.kset* %27, i32 0, i32 1
  store %struct.kset_uevent_ops* %26, %struct.kset_uevent_ops** %28, align 8
  %29 = load %struct.kobject*, %struct.kobject** %7, align 8
  %30 = load %struct.kset*, %struct.kset** %8, align 8
  %31 = getelementptr inbounds %struct.kset, %struct.kset* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store %struct.kobject* %29, %struct.kobject** %32, align 8
  %33 = load %struct.kset*, %struct.kset** %8, align 8
  %34 = getelementptr inbounds %struct.kset, %struct.kset* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32* @kset_ktype, i32** %35, align 8
  %36 = load %struct.kset*, %struct.kset** %8, align 8
  %37 = getelementptr inbounds %struct.kset, %struct.kset* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = load %struct.kset*, %struct.kset** %8, align 8
  store %struct.kset* %39, %struct.kset** %4, align 8
  br label %40

40:                                               ; preds = %25, %22, %14
  %41 = load %struct.kset*, %struct.kset** %4, align 8
  ret %struct.kset* %41
}

declare dso_local %struct.kset* @kzalloc(i32, i32) #1

declare dso_local i32 @kobject_set_name(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @kfree(%struct.kset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
