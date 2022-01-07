; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/lib/extr_carlfw.c_carlfw_entry_to_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/lib/extr_carlfw.c_carlfw_entry_to_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carl9170fw_desc_head = type { i32 }
%struct.carlfw_list_entry = type { %struct.carl9170fw_desc_head }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.carl9170fw_desc_head* (%struct.carlfw_list_entry*)* @carlfw_entry_to_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.carl9170fw_desc_head* @carlfw_entry_to_desc(%struct.carlfw_list_entry* %0) #0 {
  %2 = alloca %struct.carlfw_list_entry*, align 8
  store %struct.carlfw_list_entry* %0, %struct.carlfw_list_entry** %2, align 8
  %3 = load %struct.carlfw_list_entry*, %struct.carlfw_list_entry** %2, align 8
  %4 = getelementptr inbounds %struct.carlfw_list_entry, %struct.carlfw_list_entry* %3, i32 0, i32 0
  ret %struct.carl9170fw_desc_head* %4
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
