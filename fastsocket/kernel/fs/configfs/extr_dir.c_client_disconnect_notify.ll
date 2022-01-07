; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_client_disconnect_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_client_disconnect_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { %struct.config_item_type* }
%struct.config_item_type = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.config_item*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_item*, %struct.config_item*)* @client_disconnect_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @client_disconnect_notify(%struct.config_item* %0, %struct.config_item* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca %struct.config_item_type*, align 8
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store %struct.config_item* %1, %struct.config_item** %4, align 8
  %6 = load %struct.config_item*, %struct.config_item** %3, align 8
  %7 = getelementptr inbounds %struct.config_item, %struct.config_item* %6, i32 0, i32 0
  %8 = load %struct.config_item_type*, %struct.config_item_type** %7, align 8
  store %struct.config_item_type* %8, %struct.config_item_type** %5, align 8
  %9 = load %struct.config_item_type*, %struct.config_item_type** %5, align 8
  %10 = icmp ne %struct.config_item_type* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.config_item_type*, %struct.config_item_type** %5, align 8
  %15 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = load %struct.config_item_type*, %struct.config_item_type** %5, align 8
  %20 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32, %struct.config_item*)*, i32 (i32, %struct.config_item*)** %22, align 8
  %24 = icmp ne i32 (i32, %struct.config_item*)* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load %struct.config_item_type*, %struct.config_item_type** %5, align 8
  %27 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (i32, %struct.config_item*)*, i32 (i32, %struct.config_item*)** %29, align 8
  %31 = load %struct.config_item*, %struct.config_item** %3, align 8
  %32 = call i32 @to_config_group(%struct.config_item* %31)
  %33 = load %struct.config_item*, %struct.config_item** %4, align 8
  %34 = call i32 %30(i32 %32, %struct.config_item* %33)
  br label %35

35:                                               ; preds = %25, %18, %2
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @to_config_group(%struct.config_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
