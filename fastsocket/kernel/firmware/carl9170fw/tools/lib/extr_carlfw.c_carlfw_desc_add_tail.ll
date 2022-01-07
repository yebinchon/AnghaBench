; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/lib/extr_carlfw.c_carlfw_desc_add_tail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/lib/extr_carlfw.c_carlfw_desc_add_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlfw = type { i32 }
%struct.carl9170fw_desc_head = type { i32 }
%struct.carlfw_list_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carlfw_desc_add_tail(%struct.carlfw* %0, %struct.carl9170fw_desc_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.carlfw*, align 8
  %5 = alloca %struct.carl9170fw_desc_head*, align 8
  %6 = alloca %struct.carlfw_list_entry*, align 8
  store %struct.carlfw* %0, %struct.carlfw** %4, align 8
  store %struct.carl9170fw_desc_head* %1, %struct.carl9170fw_desc_head** %5, align 8
  %7 = load %struct.carlfw*, %struct.carlfw** %4, align 8
  %8 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %5, align 8
  %9 = call %struct.carlfw_list_entry* @__carlfw_entry_add_prepare(%struct.carlfw* %7, %struct.carl9170fw_desc_head* %8)
  store %struct.carlfw_list_entry* %9, %struct.carlfw_list_entry** %6, align 8
  %10 = load %struct.carlfw_list_entry*, %struct.carlfw_list_entry** %6, align 8
  %11 = call i64 @IS_ERR(%struct.carlfw_list_entry* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.carlfw_list_entry*, %struct.carlfw_list_entry** %6, align 8
  %15 = call i32 @PTR_ERR(%struct.carlfw_list_entry* %14)
  store i32 %15, i32* %3, align 4
  br label %23

16:                                               ; preds = %2
  %17 = load %struct.carlfw_list_entry*, %struct.carlfw_list_entry** %6, align 8
  %18 = getelementptr inbounds %struct.carlfw_list_entry, %struct.carlfw_list_entry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.carlfw*, %struct.carlfw** %4, align 8
  %21 = getelementptr inbounds %struct.carlfw, %struct.carlfw* %20, i32 0, i32 0
  %22 = call i32 @list_add_tail(i32* %19, i32* %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %16, %13
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.carlfw_list_entry* @__carlfw_entry_add_prepare(%struct.carlfw*, %struct.carl9170fw_desc_head*) #1

declare dso_local i64 @IS_ERR(%struct.carlfw_list_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.carlfw_list_entry*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
