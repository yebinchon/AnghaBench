; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio-integrity.c_bio_integrity_endio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio-integrity.c_bio_integrity_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.bio_integrity_payload* }
%struct.bio_integrity_payload = type { i32, i32, %struct.bio* }

@bio_integrity_verify_fn = common dso_local global i32 0, align 4
@kintegrityd_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bio_integrity_endio(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio_integrity_payload*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bio*, %struct.bio** %3, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 1
  %8 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %7, align 8
  store %struct.bio_integrity_payload* %8, %struct.bio_integrity_payload** %5, align 8
  %9 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %5, align 8
  %10 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %9, i32 0, i32 2
  %11 = load %struct.bio*, %struct.bio** %10, align 8
  %12 = load %struct.bio*, %struct.bio** %3, align 8
  %13 = icmp ne %struct.bio* %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %5, align 8
  %20 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bio*, %struct.bio** %3, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.bio*, %struct.bio** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @bio_endio(%struct.bio* %24, i32 %25)
  br label %36

27:                                               ; preds = %2
  %28 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %5, align 8
  %29 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %28, i32 0, i32 0
  %30 = load i32, i32* @bio_integrity_verify_fn, align 4
  %31 = call i32 @INIT_WORK(i32* %29, i32 %30)
  %32 = load i32, i32* @kintegrityd_wq, align 4
  %33 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %5, align 8
  %34 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %33, i32 0, i32 0
  %35 = call i32 @queue_work(i32 %32, i32* %34)
  br label %36

36:                                               ; preds = %27, %18
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
