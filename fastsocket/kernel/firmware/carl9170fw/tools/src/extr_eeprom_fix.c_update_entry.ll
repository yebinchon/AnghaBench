; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/src/extr_eeprom_fix.c_update_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/src/extr_eeprom_fix.c_update_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carl9170fw_fix_entry = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown option: '%c'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, %struct.carl9170fw_fix_entry*, %struct.carl9170fw_fix_entry*)* @update_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_entry(i8 signext %0, %struct.carl9170fw_fix_entry* %1, %struct.carl9170fw_fix_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct.carl9170fw_fix_entry*, align 8
  %7 = alloca %struct.carl9170fw_fix_entry*, align 8
  store i8 %0, i8* %5, align 1
  store %struct.carl9170fw_fix_entry* %1, %struct.carl9170fw_fix_entry** %6, align 8
  store %struct.carl9170fw_fix_entry* %2, %struct.carl9170fw_fix_entry** %7, align 8
  %8 = load i8, i8* %5, align 1
  %9 = sext i8 %8 to i32
  switch i32 %9, label %51 [
    i32 61, label %10
    i32 79, label %21
    i32 65, label %36
  ]

10:                                               ; preds = %3
  %11 = load %struct.carl9170fw_fix_entry*, %struct.carl9170fw_fix_entry** %7, align 8
  %12 = getelementptr inbounds %struct.carl9170fw_fix_entry, %struct.carl9170fw_fix_entry* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.carl9170fw_fix_entry*, %struct.carl9170fw_fix_entry** %6, align 8
  %15 = getelementptr inbounds %struct.carl9170fw_fix_entry, %struct.carl9170fw_fix_entry* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.carl9170fw_fix_entry*, %struct.carl9170fw_fix_entry** %7, align 8
  %17 = getelementptr inbounds %struct.carl9170fw_fix_entry, %struct.carl9170fw_fix_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.carl9170fw_fix_entry*, %struct.carl9170fw_fix_entry** %6, align 8
  %20 = getelementptr inbounds %struct.carl9170fw_fix_entry, %struct.carl9170fw_fix_entry* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %57

21:                                               ; preds = %3
  %22 = load %struct.carl9170fw_fix_entry*, %struct.carl9170fw_fix_entry** %7, align 8
  %23 = getelementptr inbounds %struct.carl9170fw_fix_entry, %struct.carl9170fw_fix_entry* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.carl9170fw_fix_entry*, %struct.carl9170fw_fix_entry** %6, align 8
  %26 = getelementptr inbounds %struct.carl9170fw_fix_entry, %struct.carl9170fw_fix_entry* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.carl9170fw_fix_entry*, %struct.carl9170fw_fix_entry** %7, align 8
  %30 = getelementptr inbounds %struct.carl9170fw_fix_entry, %struct.carl9170fw_fix_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.carl9170fw_fix_entry*, %struct.carl9170fw_fix_entry** %6, align 8
  %33 = getelementptr inbounds %struct.carl9170fw_fix_entry, %struct.carl9170fw_fix_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %57

36:                                               ; preds = %3
  %37 = load %struct.carl9170fw_fix_entry*, %struct.carl9170fw_fix_entry** %7, align 8
  %38 = getelementptr inbounds %struct.carl9170fw_fix_entry, %struct.carl9170fw_fix_entry* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.carl9170fw_fix_entry*, %struct.carl9170fw_fix_entry** %6, align 8
  %41 = getelementptr inbounds %struct.carl9170fw_fix_entry, %struct.carl9170fw_fix_entry* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.carl9170fw_fix_entry*, %struct.carl9170fw_fix_entry** %7, align 8
  %45 = getelementptr inbounds %struct.carl9170fw_fix_entry, %struct.carl9170fw_fix_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.carl9170fw_fix_entry*, %struct.carl9170fw_fix_entry** %6, align 8
  %48 = getelementptr inbounds %struct.carl9170fw_fix_entry, %struct.carl9170fw_fix_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %57

51:                                               ; preds = %3
  %52 = load i32, i32* @stderr, align 4
  %53 = load i8, i8* %5, align 1
  %54 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8 signext %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %58

57:                                               ; preds = %36, %21, %10
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %51
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @fprintf(i32, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
