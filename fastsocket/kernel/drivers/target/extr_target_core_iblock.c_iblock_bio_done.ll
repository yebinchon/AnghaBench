; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_iblock.c_iblock_bio_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_iblock.c_iblock_bio_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.se_cmd* }
%struct.se_cmd = type { %struct.iblock_req* }
%struct.iblock_req = type { i32 }

@BIO_UPTODATE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"test_bit(BIO_UPTODATE) failed for bio: %p, err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @iblock_bio_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iblock_bio_done(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_cmd*, align 8
  %6 = alloca %struct.iblock_req*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bio*, %struct.bio** %3, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 1
  %9 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  store %struct.se_cmd* %9, %struct.se_cmd** %5, align 8
  %10 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %11 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %10, i32 0, i32 0
  %12 = load %struct.iblock_req*, %struct.iblock_req** %11, align 8
  store %struct.iblock_req* %12, %struct.iblock_req** %6, align 8
  %13 = load i32, i32* @BIO_UPTODATE, align 4
  %14 = load %struct.bio*, %struct.bio** %3, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 0
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %21, %18, %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.bio*, %struct.bio** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), %struct.bio* %28, i32 %29)
  %31 = load %struct.iblock_req*, %struct.iblock_req** %6, align 8
  %32 = getelementptr inbounds %struct.iblock_req, %struct.iblock_req* %31, i32 0, i32 0
  %33 = call i32 @atomic_inc(i32* %32)
  %34 = call i32 (...) @smp_mb__after_atomic_inc()
  br label %35

35:                                               ; preds = %27, %24
  %36 = load %struct.bio*, %struct.bio** %3, align 8
  %37 = call i32 @bio_put(%struct.bio* %36)
  %38 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %39 = call i32 @iblock_complete_cmd(%struct.se_cmd* %38)
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @pr_err(i8*, %struct.bio*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @smp_mb__after_atomic_inc(...) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @iblock_complete_cmd(%struct.se_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
