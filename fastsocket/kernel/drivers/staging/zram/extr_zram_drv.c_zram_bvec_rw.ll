; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_zram_drv.c_zram_bvec_rw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_zram_drv.c_zram_bvec_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zram = type { i32 }
%struct.bio_vec = type { i32 }
%struct.bio = type { i32 }

@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zram*, %struct.bio_vec*, i32, i32, %struct.bio*, i32)* @zram_bvec_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zram_bvec_rw(%struct.zram* %0, %struct.bio_vec* %1, i32 %2, i32 %3, %struct.bio* %4, i32 %5) #0 {
  %7 = alloca %struct.zram*, align 8
  %8 = alloca %struct.bio_vec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bio*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.zram* %0, %struct.zram** %7, align 8
  store %struct.bio_vec* %1, %struct.bio_vec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.bio* %4, %struct.bio** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* @READ, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %6
  %18 = load %struct.zram*, %struct.zram** %7, align 8
  %19 = getelementptr inbounds %struct.zram, %struct.zram* %18, i32 0, i32 0
  %20 = call i32 @down_read(i32* %19)
  %21 = load %struct.zram*, %struct.zram** %7, align 8
  %22 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.bio*, %struct.bio** %11, align 8
  %26 = call i32 @zram_bvec_read(%struct.zram* %21, %struct.bio_vec* %22, i32 %23, i32 %24, %struct.bio* %25)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.zram*, %struct.zram** %7, align 8
  %28 = getelementptr inbounds %struct.zram, %struct.zram* %27, i32 0, i32 0
  %29 = call i32 @up_read(i32* %28)
  br label %42

30:                                               ; preds = %6
  %31 = load %struct.zram*, %struct.zram** %7, align 8
  %32 = getelementptr inbounds %struct.zram, %struct.zram* %31, i32 0, i32 0
  %33 = call i32 @down_write(i32* %32)
  %34 = load %struct.zram*, %struct.zram** %7, align 8
  %35 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @zram_bvec_write(%struct.zram* %34, %struct.bio_vec* %35, i32 %36, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load %struct.zram*, %struct.zram** %7, align 8
  %40 = getelementptr inbounds %struct.zram, %struct.zram* %39, i32 0, i32 0
  %41 = call i32 @up_write(i32* %40)
  br label %42

42:                                               ; preds = %30, %17
  %43 = load i32, i32* %13, align 4
  ret i32 %43
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @zram_bvec_read(%struct.zram*, %struct.bio_vec*, i32, i32, %struct.bio*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @zram_bvec_write(%struct.zram*, %struct.bio_vec*, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
