; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_vmaster.c_slave_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_vmaster.c_slave_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_slave = type { i32*, %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, %struct.snd_ctl_elem_value*)*, i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link_slave*)* @slave_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slave_update(%struct.link_slave* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.link_slave*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.link_slave* %0, %struct.link_slave** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.snd_ctl_elem_value* @kmalloc(i32 16, i32 %7)
  store %struct.snd_ctl_elem_value* %8, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %10 = icmp ne %struct.snd_ctl_elem_value* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %58

14:                                               ; preds = %1
  %15 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %16 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %20 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %22 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_8__*, %struct.snd_ctl_elem_value*)*, i32 (%struct.TYPE_8__*, %struct.snd_ctl_elem_value*)** %23, align 8
  %25 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %26 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %25, i32 0, i32 2
  %27 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %28 = call i32 %24(%struct.TYPE_8__* %26, %struct.snd_ctl_elem_value* %27)
  store i32 %28, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %52, %14
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %32 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %29
  %37 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %38 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %47 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  br label %52

52:                                               ; preds = %36
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %29

55:                                               ; preds = %29
  %56 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %57 = call i32 @kfree(%struct.snd_ctl_elem_value* %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %55, %11
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.snd_ctl_elem_value* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.snd_ctl_elem_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
