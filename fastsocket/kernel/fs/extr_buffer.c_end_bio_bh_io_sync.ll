; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_end_bio_bh_io_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_end_bio_bh_io_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.buffer_head* }
%struct.buffer_head = type { i32 (%struct.buffer_head*, i32)*, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@BIO_EOPNOTSUPP = common dso_local global i32 0, align 4
@BH_Eopnotsupp = common dso_local global i32 0, align 4
@BIO_QUIET = common dso_local global i32 0, align 4
@BH_Quiet = common dso_local global i32 0, align 4
@BIO_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @end_bio_bh_io_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_bio_bh_io_sync(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer_head*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bio*, %struct.bio** %3, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 1
  %8 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %8, %struct.buffer_head** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @EOPNOTSUPP, align 4
  %11 = sub nsw i32 0, %10
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load i32, i32* @BIO_EOPNOTSUPP, align 4
  %15 = load %struct.bio*, %struct.bio** %3, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 0
  %17 = call i32 @set_bit(i32 %14, i32* %16)
  %18 = load i32, i32* @BH_Eopnotsupp, align 4
  %19 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 1
  %21 = call i32 @set_bit(i32 %18, i32* %20)
  br label %22

22:                                               ; preds = %13, %2
  %23 = load i32, i32* @BIO_QUIET, align 4
  %24 = load %struct.bio*, %struct.bio** %3, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 0
  %26 = call i32 @test_bit(i32 %23, i32* %25)
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load i32, i32* @BH_Quiet, align 4
  %31 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %32 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %31, i32 0, i32 1
  %33 = call i32 @set_bit(i32 %30, i32* %32)
  br label %34

34:                                               ; preds = %29, %22
  %35 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 0
  %37 = load i32 (%struct.buffer_head*, i32)*, i32 (%struct.buffer_head*, i32)** %36, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %39 = load i32, i32* @BIO_UPTODATE, align 4
  %40 = load %struct.bio*, %struct.bio** %3, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 0
  %42 = call i32 @test_bit(i32 %39, i32* %41)
  %43 = call i32 %37(%struct.buffer_head* %38, i32 %42)
  %44 = load %struct.bio*, %struct.bio** %3, align 8
  %45 = call i32 @bio_put(%struct.bio* %44)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
