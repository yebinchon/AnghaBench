; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/lib/extr_carlfw.c_carlfw_desc_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/lib/extr_carlfw.c_carlfw_desc_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.carlfw = type { i32 }
%struct.carl9170fw_desc_head = type { i32 }
%struct.carlfw_list_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@h = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @carlfw_desc_next(%struct.carlfw* %0, %struct.carl9170fw_desc_head* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.carlfw*, align 8
  %5 = alloca %struct.carl9170fw_desc_head*, align 8
  %6 = alloca %struct.carlfw_list_entry*, align 8
  store %struct.carlfw* %0, %struct.carlfw** %4, align 8
  store %struct.carl9170fw_desc_head* %1, %struct.carl9170fw_desc_head** %5, align 8
  %7 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %5, align 8
  %8 = icmp ne %struct.carl9170fw_desc_head* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load %struct.carlfw*, %struct.carlfw** %4, align 8
  %11 = getelementptr inbounds %struct.carlfw, %struct.carlfw* %10, i32 0, i32 0
  %12 = bitcast i32* %11 to %struct.carlfw_list_entry*
  store %struct.carlfw_list_entry* %12, %struct.carlfw_list_entry** %6, align 8
  br label %16

13:                                               ; preds = %2
  %14 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %5, align 8
  %15 = call %struct.carlfw_list_entry* @carlfw_desc_to_entry(%struct.carl9170fw_desc_head* %14)
  store %struct.carlfw_list_entry* %15, %struct.carlfw_list_entry** %6, align 8
  br label %16

16:                                               ; preds = %13, %9
  %17 = load %struct.carlfw_list_entry*, %struct.carlfw_list_entry** %6, align 8
  %18 = load %struct.carlfw*, %struct.carlfw** %4, align 8
  %19 = getelementptr inbounds %struct.carlfw, %struct.carlfw* %18, i32 0, i32 0
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @h, i32 0, i32 0), align 4
  %21 = call i64 @list_at_tail(%struct.carlfw_list_entry* %17, i32* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  br label %33

24:                                               ; preds = %16
  %25 = load %struct.carlfw_list_entry*, %struct.carlfw_list_entry** %6, align 8
  %26 = getelementptr inbounds %struct.carlfw_list_entry, %struct.carlfw_list_entry* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.carlfw_list_entry*
  store %struct.carlfw_list_entry* %30, %struct.carlfw_list_entry** %6, align 8
  %31 = load %struct.carlfw_list_entry*, %struct.carlfw_list_entry** %6, align 8
  %32 = call i8* @carlfw_entry_to_desc(%struct.carlfw_list_entry* %31)
  store i8* %32, i8** %3, align 8
  br label %33

33:                                               ; preds = %24, %23
  %34 = load i8*, i8** %3, align 8
  ret i8* %34
}

declare dso_local %struct.carlfw_list_entry* @carlfw_desc_to_entry(%struct.carl9170fw_desc_head*) #1

declare dso_local i64 @list_at_tail(%struct.carlfw_list_entry*, i32*, i32) #1

declare dso_local i8* @carlfw_entry_to_desc(%struct.carlfw_list_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
