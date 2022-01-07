; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_device.c_snd_seq_device_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_device.c_snd_seq_device_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_device = type { {}*, i32, i32 }
%struct.ops_list = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_device*)* @snd_seq_device_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_seq_device_free(%struct.snd_seq_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_seq_device*, align 8
  %4 = alloca %struct.ops_list*, align 8
  store %struct.snd_seq_device* %0, %struct.snd_seq_device** %3, align 8
  %5 = load %struct.snd_seq_device*, %struct.snd_seq_device** %3, align 8
  %6 = icmp ne %struct.snd_seq_device* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @snd_BUG_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %58

14:                                               ; preds = %1
  %15 = load %struct.snd_seq_device*, %struct.snd_seq_device** %3, align 8
  %16 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ops_list* @find_driver(i32 %17, i32 0)
  store %struct.ops_list* %18, %struct.ops_list** %4, align 8
  %19 = load %struct.ops_list*, %struct.ops_list** %4, align 8
  %20 = icmp eq %struct.ops_list* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %58

24:                                               ; preds = %14
  %25 = load %struct.ops_list*, %struct.ops_list** %4, align 8
  %26 = getelementptr inbounds %struct.ops_list, %struct.ops_list* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.snd_seq_device*, %struct.snd_seq_device** %3, align 8
  %29 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %28, i32 0, i32 1
  %30 = call i32 @list_del(i32* %29)
  %31 = load %struct.ops_list*, %struct.ops_list** %4, align 8
  %32 = getelementptr inbounds %struct.ops_list, %struct.ops_list* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.ops_list*, %struct.ops_list** %4, align 8
  %36 = getelementptr inbounds %struct.ops_list, %struct.ops_list* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load %struct.snd_seq_device*, %struct.snd_seq_device** %3, align 8
  %39 = load %struct.ops_list*, %struct.ops_list** %4, align 8
  %40 = call i32 @free_device(%struct.snd_seq_device* %38, %struct.ops_list* %39)
  %41 = load %struct.snd_seq_device*, %struct.snd_seq_device** %3, align 8
  %42 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %41, i32 0, i32 0
  %43 = bitcast {}** %42 to i32 (%struct.snd_seq_device*)**
  %44 = load i32 (%struct.snd_seq_device*)*, i32 (%struct.snd_seq_device*)** %43, align 8
  %45 = icmp ne i32 (%struct.snd_seq_device*)* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %24
  %47 = load %struct.snd_seq_device*, %struct.snd_seq_device** %3, align 8
  %48 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %47, i32 0, i32 0
  %49 = bitcast {}** %48 to i32 (%struct.snd_seq_device*)**
  %50 = load i32 (%struct.snd_seq_device*)*, i32 (%struct.snd_seq_device*)** %49, align 8
  %51 = load %struct.snd_seq_device*, %struct.snd_seq_device** %3, align 8
  %52 = call i32 %50(%struct.snd_seq_device* %51)
  br label %53

53:                                               ; preds = %46, %24
  %54 = load %struct.snd_seq_device*, %struct.snd_seq_device** %3, align 8
  %55 = call i32 @kfree(%struct.snd_seq_device* %54)
  %56 = load %struct.ops_list*, %struct.ops_list** %4, align 8
  %57 = call i32 @unlock_driver(%struct.ops_list* %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %53, %21, %11
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.ops_list* @find_driver(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_device(%struct.snd_seq_device*, %struct.ops_list*) #1

declare dso_local i32 @kfree(%struct.snd_seq_device*) #1

declare dso_local i32 @unlock_driver(%struct.ops_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
