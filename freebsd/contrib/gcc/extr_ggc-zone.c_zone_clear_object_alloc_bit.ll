; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_zone_clear_object_alloc_bit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_zone_clear_object_alloc_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.small_page_entry = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.small_page_entry*, i8*)* @zone_clear_object_alloc_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zone_clear_object_alloc_bit(%struct.small_page_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.small_page_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.small_page_entry* %0, %struct.small_page_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @zone_get_object_alloc_word(i8* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @zone_get_object_alloc_bit(i8* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = zext i32 %11 to i64
  %13 = shl i64 1, %12
  %14 = xor i64 %13, -1
  %15 = load %struct.small_page_entry*, %struct.small_page_entry** %3, align 8
  %16 = getelementptr inbounds %struct.small_page_entry, %struct.small_page_entry* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = and i64 %21, %14
  store i64 %22, i64* %20, align 8
  ret void
}

declare dso_local i32 @zone_get_object_alloc_word(i8*) #1

declare dso_local i32 @zone_get_object_alloc_bit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
