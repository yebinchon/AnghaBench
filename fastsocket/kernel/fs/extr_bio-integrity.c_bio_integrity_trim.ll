; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio-integrity.c_bio_integrity_trim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio-integrity.c_bio_integrity_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.bio_integrity_payload* }
%struct.bio_integrity_payload = type { i64 }
%struct.blk_integrity = type { i32 }

@BIO_CLONED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bio_integrity_trim(%struct.bio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio_integrity_payload*, align 8
  %8 = alloca %struct.blk_integrity*, align 8
  %9 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.bio*, %struct.bio** %4, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 1
  %12 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %11, align 8
  store %struct.bio_integrity_payload* %12, %struct.bio_integrity_payload** %7, align 8
  %13 = load %struct.bio*, %struct.bio** %4, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.blk_integrity* @bdev_get_integrity(i32 %15)
  store %struct.blk_integrity* %16, %struct.blk_integrity** %8, align 8
  %17 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %7, align 8
  %18 = icmp eq %struct.bio_integrity_payload* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.blk_integrity*, %struct.blk_integrity** %8, align 8
  %22 = icmp eq %struct.blk_integrity* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.bio*, %struct.bio** %4, align 8
  %26 = load i32, i32* @BIO_CLONED, align 4
  %27 = call i32 @bio_flagged(%struct.bio* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.blk_integrity*, %struct.blk_integrity** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @bio_integrity_hw_sectors(%struct.blk_integrity* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %7, align 8
  %36 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %7, align 8
  %42 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %7, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.blk_integrity*, %struct.blk_integrity** %8, align 8
  %46 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul i32 %44, %47
  %49 = call i32 @bio_integrity_mark_head(%struct.bio_integrity_payload* %43, i32 %48)
  %50 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %7, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.blk_integrity*, %struct.blk_integrity** %8, align 8
  %53 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul i32 %51, %54
  %56 = call i32 @bio_integrity_mark_tail(%struct.bio_integrity_payload* %50, i32 %55)
  ret void
}

declare dso_local %struct.blk_integrity* @bdev_get_integrity(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bio_flagged(%struct.bio*, i32) #1

declare dso_local i32 @bio_integrity_hw_sectors(%struct.blk_integrity*, i32) #1

declare dso_local i32 @bio_integrity_mark_head(%struct.bio_integrity_payload*, i32) #1

declare dso_local i32 @bio_integrity_mark_tail(%struct.bio_integrity_payload*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
