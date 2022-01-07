; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/lib/extr_carlfw.c___carlfw_entry_add_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/lib/extr_carlfw.c___carlfw_entry_add_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlfw_list_entry = type { i32 }
%struct.carlfw = type { i32, i32 }
%struct.carl9170fw_desc_head = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.carlfw_list_entry* (%struct.carlfw*, %struct.carl9170fw_desc_head*)* @__carlfw_entry_add_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.carlfw_list_entry* @__carlfw_entry_add_prepare(%struct.carlfw* %0, %struct.carl9170fw_desc_head* %1) #0 {
  %3 = alloca %struct.carlfw_list_entry*, align 8
  %4 = alloca %struct.carlfw*, align 8
  %5 = alloca %struct.carl9170fw_desc_head*, align 8
  %6 = alloca %struct.carlfw_list_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.carlfw* %0, %struct.carlfw** %4, align 8
  store %struct.carl9170fw_desc_head* %1, %struct.carl9170fw_desc_head** %5, align 8
  %8 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %5, align 8
  %9 = getelementptr inbounds %struct.carl9170fw_desc_head, %struct.carl9170fw_desc_head* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @le16_to_cpu(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = icmp ult i64 %13, 4
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.carlfw_list_entry* @ERR_PTR(i32 %17)
  store %struct.carlfw_list_entry* %18, %struct.carlfw_list_entry** %3, align 8
  br label %48

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = add i64 4, %21
  %23 = trunc i64 %22 to i32
  %24 = call %struct.carlfw_list_entry* @malloc(i32 %23)
  store %struct.carlfw_list_entry* %24, %struct.carlfw_list_entry** %6, align 8
  %25 = load %struct.carlfw_list_entry*, %struct.carlfw_list_entry** %6, align 8
  %26 = icmp ne %struct.carlfw_list_entry* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.carlfw_list_entry* @ERR_PTR(i32 %29)
  store %struct.carlfw_list_entry* %30, %struct.carlfw_list_entry** %3, align 8
  br label %48

31:                                               ; preds = %19
  %32 = load %struct.carlfw*, %struct.carlfw** %4, align 8
  %33 = getelementptr inbounds %struct.carlfw, %struct.carlfw* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.carlfw*, %struct.carlfw** %4, align 8
  %38 = getelementptr inbounds %struct.carlfw, %struct.carlfw* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.carlfw_list_entry*, %struct.carlfw_list_entry** %6, align 8
  %42 = getelementptr inbounds %struct.carlfw_list_entry, %struct.carlfw_list_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @memcpy(i32 %43, %struct.carl9170fw_desc_head* %44, i32 %45)
  %47 = load %struct.carlfw_list_entry*, %struct.carlfw_list_entry** %6, align 8
  store %struct.carlfw_list_entry* %47, %struct.carlfw_list_entry** %3, align 8
  br label %48

48:                                               ; preds = %31, %27, %15
  %49 = load %struct.carlfw_list_entry*, %struct.carlfw_list_entry** %3, align 8
  ret %struct.carlfw_list_entry* %49
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.carlfw_list_entry* @ERR_PTR(i32) #1

declare dso_local %struct.carlfw_list_entry* @malloc(i32) #1

declare dso_local i32 @memcpy(i32, %struct.carl9170fw_desc_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
