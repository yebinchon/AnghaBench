; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_link_obj.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_link_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { %struct.TYPE_2__*, i32, %struct.config_item* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_item*, %struct.config_item*)* @link_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_obj(%struct.config_item* %0, %struct.config_item* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca %struct.config_item*, align 8
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store %struct.config_item* %1, %struct.config_item** %4, align 8
  %5 = load %struct.config_item*, %struct.config_item** %3, align 8
  %6 = load %struct.config_item*, %struct.config_item** %4, align 8
  %7 = getelementptr inbounds %struct.config_item, %struct.config_item* %6, i32 0, i32 2
  store %struct.config_item* %5, %struct.config_item** %7, align 8
  %8 = load %struct.config_item*, %struct.config_item** %3, align 8
  %9 = call i32 @to_config_group(%struct.config_item* %8)
  %10 = call %struct.TYPE_2__* @config_group_get(i32 %9)
  %11 = load %struct.config_item*, %struct.config_item** %4, align 8
  %12 = getelementptr inbounds %struct.config_item, %struct.config_item* %11, i32 0, i32 0
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %12, align 8
  %13 = load %struct.config_item*, %struct.config_item** %4, align 8
  %14 = getelementptr inbounds %struct.config_item, %struct.config_item* %13, i32 0, i32 1
  %15 = load %struct.config_item*, %struct.config_item** %4, align 8
  %16 = getelementptr inbounds %struct.config_item, %struct.config_item* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @list_add_tail(i32* %14, i32* %18)
  %20 = load %struct.config_item*, %struct.config_item** %4, align 8
  %21 = call i32 @config_item_get(%struct.config_item* %20)
  ret void
}

declare dso_local %struct.TYPE_2__* @config_group_get(i32) #1

declare dso_local i32 @to_config_group(%struct.config_item*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @config_item_get(%struct.config_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
