; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/src/extr_eeprom_fix.c_scan_for_similar_fix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/src/extr_eeprom_fix.c_scan_for_similar_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carl9170fw_fix_entry = type { i64 }
%struct.carl9170fw_fix_desc = type { %struct.carl9170fw_fix_entry*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.carl9170fw_fix_entry* (%struct.carl9170fw_fix_desc*, i64)* @scan_for_similar_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.carl9170fw_fix_entry* @scan_for_similar_fix(%struct.carl9170fw_fix_desc* %0, i64 %1) #0 {
  %3 = alloca %struct.carl9170fw_fix_entry*, align 8
  %4 = alloca %struct.carl9170fw_fix_desc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.carl9170fw_fix_desc* %0, %struct.carl9170fw_fix_desc** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.carl9170fw_fix_desc*, %struct.carl9170fw_fix_desc** %4, align 8
  %9 = getelementptr inbounds %struct.carl9170fw_fix_desc, %struct.carl9170fw_fix_desc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @le16_to_cpu(i32 %11)
  %13 = sext i32 %12 to i64
  %14 = sub i64 %13, 16
  %15 = udiv i64 %14, 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %40, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.carl9170fw_fix_desc*, %struct.carl9170fw_fix_desc** %4, align 8
  %24 = getelementptr inbounds %struct.carl9170fw_fix_desc, %struct.carl9170fw_fix_desc* %23, i32 0, i32 0
  %25 = load %struct.carl9170fw_fix_entry*, %struct.carl9170fw_fix_entry** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.carl9170fw_fix_entry, %struct.carl9170fw_fix_entry* %25, i64 %27
  %29 = getelementptr inbounds %struct.carl9170fw_fix_entry, %struct.carl9170fw_fix_entry* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %22, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %21
  %33 = load %struct.carl9170fw_fix_desc*, %struct.carl9170fw_fix_desc** %4, align 8
  %34 = getelementptr inbounds %struct.carl9170fw_fix_desc, %struct.carl9170fw_fix_desc* %33, i32 0, i32 0
  %35 = load %struct.carl9170fw_fix_entry*, %struct.carl9170fw_fix_entry** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.carl9170fw_fix_entry, %struct.carl9170fw_fix_entry* %35, i64 %37
  store %struct.carl9170fw_fix_entry* %38, %struct.carl9170fw_fix_entry** %3, align 8
  br label %44

39:                                               ; preds = %21
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %17

43:                                               ; preds = %17
  store %struct.carl9170fw_fix_entry* null, %struct.carl9170fw_fix_entry** %3, align 8
  br label %44

44:                                               ; preds = %43, %32
  %45 = load %struct.carl9170fw_fix_entry*, %struct.carl9170fw_fix_entry** %3, align 8
  ret %struct.carl9170fw_fix_entry* %45
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
