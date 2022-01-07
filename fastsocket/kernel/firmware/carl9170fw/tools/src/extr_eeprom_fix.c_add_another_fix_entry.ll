; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/src/extr_eeprom_fix.c_add_another_fix_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/src/extr_eeprom_fix.c_add_another_fix_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlfw = type { i32 }
%struct.carl9170fw_fix_desc = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.carl9170fw_fix_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.carlfw*, %struct.carl9170fw_fix_desc*, %struct.carl9170fw_fix_entry*)* @add_another_fix_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_another_fix_entry(%struct.carlfw* %0, %struct.carl9170fw_fix_desc* %1, %struct.carl9170fw_fix_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.carlfw*, align 8
  %6 = alloca %struct.carl9170fw_fix_desc*, align 8
  %7 = alloca %struct.carl9170fw_fix_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.carlfw* %0, %struct.carlfw** %5, align 8
  store %struct.carl9170fw_fix_desc* %1, %struct.carl9170fw_fix_desc** %6, align 8
  store %struct.carl9170fw_fix_entry* %2, %struct.carl9170fw_fix_entry** %7, align 8
  %9 = load %struct.carlfw*, %struct.carlfw** %5, align 8
  %10 = load %struct.carl9170fw_fix_desc*, %struct.carl9170fw_fix_desc** %6, align 8
  %11 = getelementptr inbounds %struct.carl9170fw_fix_desc, %struct.carl9170fw_fix_desc* %10, i32 0, i32 1
  %12 = call %struct.carl9170fw_fix_desc* @carlfw_desc_mod_len(%struct.carlfw* %9, %struct.TYPE_2__* %11, i32 4)
  store %struct.carl9170fw_fix_desc* %12, %struct.carl9170fw_fix_desc** %6, align 8
  %13 = load %struct.carl9170fw_fix_desc*, %struct.carl9170fw_fix_desc** %6, align 8
  %14 = call i64 @IS_ERR_OR_NULL(%struct.carl9170fw_fix_desc* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.carl9170fw_fix_desc*, %struct.carl9170fw_fix_desc** %6, align 8
  %18 = call i64 @PTR_ERR(%struct.carl9170fw_fix_desc* %17)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %4, align 4
  br label %39

20:                                               ; preds = %3
  %21 = load %struct.carl9170fw_fix_desc*, %struct.carl9170fw_fix_desc** %6, align 8
  %22 = getelementptr inbounds %struct.carl9170fw_fix_desc, %struct.carl9170fw_fix_desc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @le16_to_cpu(i32 %24)
  %26 = sext i32 %25 to i64
  %27 = sub i64 %26, 16
  %28 = udiv i64 %27, 4
  %29 = sub i64 %28, 1
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load %struct.carl9170fw_fix_desc*, %struct.carl9170fw_fix_desc** %6, align 8
  %32 = getelementptr inbounds %struct.carl9170fw_fix_desc, %struct.carl9170fw_fix_desc* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load %struct.carl9170fw_fix_entry*, %struct.carl9170fw_fix_entry** %7, align 8
  %38 = call i32 @memcpy(i32* %36, %struct.carl9170fw_fix_entry* %37, i32 4)
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %20, %16
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.carl9170fw_fix_desc* @carlfw_desc_mod_len(%struct.carlfw*, %struct.TYPE_2__*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.carl9170fw_fix_desc*) #1

declare dso_local i64 @PTR_ERR(%struct.carl9170fw_fix_desc*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.carl9170fw_fix_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
