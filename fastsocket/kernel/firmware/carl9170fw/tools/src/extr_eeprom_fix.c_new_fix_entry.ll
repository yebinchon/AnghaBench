; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/src/extr_eeprom_fix.c_new_fix_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/src/extr_eeprom_fix.c_new_fix_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlfw = type { i32 }
%struct.carl9170fw_fix_entry = type { i32 }
%struct.carl9170fw_fix_desc = type { i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@FIX_MAGIC = common dso_local global i64 0, align 8
@CARL9170FW_FIX_DESC_MIN_VER = common dso_local global i32 0, align 4
@CARL9170FW_FIX_DESC_CUR_VER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.carlfw*, %struct.carl9170fw_fix_entry*)* @new_fix_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_fix_entry(%struct.carlfw* %0, %struct.carl9170fw_fix_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.carlfw*, align 8
  %5 = alloca %struct.carl9170fw_fix_entry*, align 8
  %6 = alloca %struct.carl9170fw_fix_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.carlfw* %0, %struct.carlfw** %4, align 8
  store %struct.carl9170fw_fix_entry* %1, %struct.carl9170fw_fix_entry** %5, align 8
  store i32 20, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.carl9170fw_fix_desc* @malloc(i32 %8)
  store %struct.carl9170fw_fix_desc* %9, %struct.carl9170fw_fix_desc** %6, align 8
  %10 = load %struct.carl9170fw_fix_desc*, %struct.carl9170fw_fix_desc** %6, align 8
  %11 = icmp ne %struct.carl9170fw_fix_desc* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  %16 = load %struct.carl9170fw_fix_desc*, %struct.carl9170fw_fix_desc** %6, align 8
  %17 = getelementptr inbounds %struct.carl9170fw_fix_desc, %struct.carl9170fw_fix_desc* %16, i32 0, i32 0
  %18 = load i64, i64* @FIX_MAGIC, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @cpu_to_le16(i32 %20)
  %22 = load i32, i32* @CARL9170FW_FIX_DESC_MIN_VER, align 4
  %23 = load i32, i32* @CARL9170FW_FIX_DESC_CUR_VER, align 4
  %24 = call i32 @carl9170fw_fill_desc(i32* %17, i32* %19, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.carl9170fw_fix_desc*, %struct.carl9170fw_fix_desc** %6, align 8
  %26 = getelementptr inbounds %struct.carl9170fw_fix_desc, %struct.carl9170fw_fix_desc* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load %struct.carl9170fw_fix_entry*, %struct.carl9170fw_fix_entry** %5, align 8
  %30 = call i32 @memcpy(i32* %28, %struct.carl9170fw_fix_entry* %29, i32 4)
  %31 = load %struct.carlfw*, %struct.carlfw** %4, align 8
  %32 = load %struct.carl9170fw_fix_desc*, %struct.carl9170fw_fix_desc** %6, align 8
  %33 = getelementptr inbounds %struct.carl9170fw_fix_desc, %struct.carl9170fw_fix_desc* %32, i32 0, i32 0
  %34 = call i32 @carlfw_desc_add_tail(%struct.carlfw* %31, i32* %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %15, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.carl9170fw_fix_desc* @malloc(i32) #1

declare dso_local i32 @carl9170fw_fill_desc(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.carl9170fw_fix_entry*, i32) #1

declare dso_local i32 @carlfw_desc_add_tail(%struct.carlfw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
