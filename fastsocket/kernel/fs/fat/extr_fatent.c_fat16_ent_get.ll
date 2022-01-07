; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fatent.c_fat16_ent_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fatent.c_fat16_ent_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fat_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@BAD_FAT16 = common dso_local global i32 0, align 4
@FAT_ENT_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fat_entry*)* @fat16_ent_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat16_ent_get(%struct.fat_entry* %0) #0 {
  %2 = alloca %struct.fat_entry*, align 8
  %3 = alloca i32, align 4
  store %struct.fat_entry* %0, %struct.fat_entry** %2, align 8
  %4 = load %struct.fat_entry*, %struct.fat_entry** %2, align 8
  %5 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @le16_to_cpu(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.fat_entry*, %struct.fat_entry** %2, align 8
  %11 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = ptrtoint i32* %13 to i64
  %15 = and i64 %14, 1
  %16 = call i32 @WARN_ON(i64 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @BAD_FAT16, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @FAT_ENT_EOF, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %20, %1
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @WARN_ON(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
