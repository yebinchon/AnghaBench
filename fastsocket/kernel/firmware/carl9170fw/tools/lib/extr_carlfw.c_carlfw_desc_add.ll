; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/lib/extr_carlfw.c_carlfw_desc_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/lib/extr_carlfw.c_carlfw_desc_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlfw = type { i32 }
%struct.carl9170fw_desc_head = type { i32 }
%struct.carlfw_list_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carlfw_desc_add(%struct.carlfw* %0, %struct.carl9170fw_desc_head* %1, %struct.carl9170fw_desc_head* %2, %struct.carl9170fw_desc_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.carlfw*, align 8
  %7 = alloca %struct.carl9170fw_desc_head*, align 8
  %8 = alloca %struct.carl9170fw_desc_head*, align 8
  %9 = alloca %struct.carl9170fw_desc_head*, align 8
  %10 = alloca %struct.carlfw_list_entry*, align 8
  store %struct.carlfw* %0, %struct.carlfw** %6, align 8
  store %struct.carl9170fw_desc_head* %1, %struct.carl9170fw_desc_head** %7, align 8
  store %struct.carl9170fw_desc_head* %2, %struct.carl9170fw_desc_head** %8, align 8
  store %struct.carl9170fw_desc_head* %3, %struct.carl9170fw_desc_head** %9, align 8
  %11 = load %struct.carlfw*, %struct.carlfw** %6, align 8
  %12 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %7, align 8
  %13 = call %struct.carlfw_list_entry* @__carlfw_entry_add_prepare(%struct.carlfw* %11, %struct.carl9170fw_desc_head* %12)
  store %struct.carlfw_list_entry* %13, %struct.carlfw_list_entry** %10, align 8
  %14 = load %struct.carlfw_list_entry*, %struct.carlfw_list_entry** %10, align 8
  %15 = call i64 @IS_ERR(%struct.carlfw_list_entry* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.carlfw_list_entry*, %struct.carlfw_list_entry** %10, align 8
  %19 = call i32 @PTR_ERR(%struct.carlfw_list_entry* %18)
  store i32 %19, i32* %5, align 4
  br label %33

20:                                               ; preds = %4
  %21 = load %struct.carlfw_list_entry*, %struct.carlfw_list_entry** %10, align 8
  %22 = getelementptr inbounds %struct.carlfw_list_entry, %struct.carlfw_list_entry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %8, align 8
  %25 = call %struct.TYPE_6__* @carlfw_desc_to_entry(%struct.carl9170fw_desc_head* %24)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %9, align 8
  %29 = call %struct.TYPE_6__* @carlfw_desc_to_entry(%struct.carl9170fw_desc_head* %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = call i32 @list_add(i32* %23, i32* %27, i32* %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %20, %17
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.carlfw_list_entry* @__carlfw_entry_add_prepare(%struct.carlfw*, %struct.carl9170fw_desc_head*) #1

declare dso_local i64 @IS_ERR(%struct.carlfw_list_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.carlfw_list_entry*) #1

declare dso_local i32 @list_add(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @carlfw_desc_to_entry(%struct.carl9170fw_desc_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
