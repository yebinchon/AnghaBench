; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio-integrity.c_bio_integrity_advance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio-integrity.c_bio_integrity_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.bio_integrity_payload* }
%struct.bio_integrity_payload = type { i32 }
%struct.blk_integrity = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bio_integrity_advance(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio_integrity_payload*, align 8
  %6 = alloca %struct.blk_integrity*, align 8
  %7 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bio*, %struct.bio** %3, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 1
  %10 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %9, align 8
  store %struct.bio_integrity_payload* %10, %struct.bio_integrity_payload** %5, align 8
  %11 = load %struct.bio*, %struct.bio** %3, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.blk_integrity* @bdev_get_integrity(i32 %13)
  store %struct.blk_integrity* %14, %struct.blk_integrity** %6, align 8
  %15 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %5, align 8
  %16 = icmp eq %struct.bio_integrity_payload* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %20 = icmp eq %struct.blk_integrity* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %24 = load i32, i32* %4, align 4
  %25 = lshr i32 %24, 9
  %26 = call i32 @bio_integrity_hw_sectors(%struct.blk_integrity* %23, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %30 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul i32 %28, %31
  %33 = call i32 @bio_integrity_mark_head(%struct.bio_integrity_payload* %27, i32 %32)
  ret void
}

declare dso_local %struct.blk_integrity* @bdev_get_integrity(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bio_integrity_hw_sectors(%struct.blk_integrity*, i32) #1

declare dso_local i32 @bio_integrity_mark_head(%struct.bio_integrity_payload*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
