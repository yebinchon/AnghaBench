; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fatent.c_fat32_ent_set_ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fatent.c_fat32_ent_set_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fat_entry = type { %struct.TYPE_4__**, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fat_entry*, i32)* @fat32_ent_set_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fat32_ent_set_ptr(%struct.fat_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.fat_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.fat_entry* %0, %struct.fat_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 3
  %7 = call i32 @WARN_ON(i32 %6)
  %8 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %9 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %10, i64 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = inttoptr i64 %17 to i32*
  %19 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %20 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32* %18, i32** %21, align 8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
