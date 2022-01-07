; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/lib/extr_carlfw.c_carlfw_find_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/lib/extr_carlfw.c_carlfw_find_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlfw = type { i32 }
%struct.carlfw_list_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @carlfw_find_desc(%struct.carlfw* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.carlfw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.carlfw_list_entry*, align 8
  store %struct.carlfw* %0, %struct.carlfw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.carlfw*, %struct.carlfw** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.carlfw_list_entry* @carlfw_find_entry(%struct.carlfw* %10, i32* %11, i32 %12, i32 %13)
  store %struct.carlfw_list_entry* %14, %struct.carlfw_list_entry** %9, align 8
  %15 = load %struct.carlfw_list_entry*, %struct.carlfw_list_entry** %9, align 8
  %16 = icmp ne %struct.carlfw_list_entry* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.carlfw_list_entry*, %struct.carlfw_list_entry** %9, align 8
  %19 = call i8* @carlfw_entry_to_desc(%struct.carlfw_list_entry* %18)
  br label %21

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi i8* [ %19, %17 ], [ null, %20 ]
  ret i8* %22
}

declare dso_local %struct.carlfw_list_entry* @carlfw_find_entry(%struct.carlfw*, i32*, i32, i32) #1

declare dso_local i8* @carlfw_entry_to_desc(%struct.carlfw_list_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
