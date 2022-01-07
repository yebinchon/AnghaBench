; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/lib/extr_carlfw.c_carlfw_desc_add_before.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/lib/extr_carlfw.c_carlfw_desc_add_before.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlfw = type { i32 }
%struct.carl9170fw_desc_head = type { i32 }
%struct.carlfw_list_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carlfw_desc_add_before(%struct.carlfw* %0, %struct.carl9170fw_desc_head* %1, %struct.carl9170fw_desc_head* %2) #0 {
  %4 = alloca %struct.carlfw*, align 8
  %5 = alloca %struct.carl9170fw_desc_head*, align 8
  %6 = alloca %struct.carl9170fw_desc_head*, align 8
  %7 = alloca %struct.carl9170fw_desc_head*, align 8
  %8 = alloca %struct.carlfw_list_entry*, align 8
  store %struct.carlfw* %0, %struct.carlfw** %4, align 8
  store %struct.carl9170fw_desc_head* %1, %struct.carl9170fw_desc_head** %5, align 8
  store %struct.carl9170fw_desc_head* %2, %struct.carl9170fw_desc_head** %6, align 8
  %9 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %6, align 8
  %10 = call %struct.carlfw_list_entry* @carlfw_desc_to_entry(%struct.carl9170fw_desc_head* %9)
  store %struct.carlfw_list_entry* %10, %struct.carlfw_list_entry** %8, align 8
  %11 = load %struct.carlfw_list_entry*, %struct.carlfw_list_entry** %8, align 8
  %12 = getelementptr inbounds %struct.carlfw_list_entry, %struct.carlfw_list_entry* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.carlfw_list_entry*
  %17 = call %struct.carl9170fw_desc_head* @carlfw_entry_to_desc(%struct.carlfw_list_entry* %16)
  store %struct.carl9170fw_desc_head* %17, %struct.carl9170fw_desc_head** %7, align 8
  %18 = load %struct.carlfw*, %struct.carlfw** %4, align 8
  %19 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %5, align 8
  %20 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %7, align 8
  %21 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %6, align 8
  %22 = call i32 @carlfw_desc_add(%struct.carlfw* %18, %struct.carl9170fw_desc_head* %19, %struct.carl9170fw_desc_head* %20, %struct.carl9170fw_desc_head* %21)
  ret i32 %22
}

declare dso_local %struct.carlfw_list_entry* @carlfw_desc_to_entry(%struct.carl9170fw_desc_head*) #1

declare dso_local %struct.carl9170fw_desc_head* @carlfw_entry_to_desc(%struct.carlfw_list_entry*) #1

declare dso_local i32 @carlfw_desc_add(%struct.carlfw*, %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
