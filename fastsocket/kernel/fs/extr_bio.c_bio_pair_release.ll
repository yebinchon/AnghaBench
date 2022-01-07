; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_pair_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_pair_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_pair = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.bio* }
%struct.bio = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bio_pair_release(%struct.bio_pair* %0) #0 {
  %2 = alloca %struct.bio_pair*, align 8
  %3 = alloca %struct.bio*, align 8
  store %struct.bio_pair* %0, %struct.bio_pair** %2, align 8
  %4 = load %struct.bio_pair*, %struct.bio_pair** %2, align 8
  %5 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %4, i32 0, i32 3
  %6 = call i64 @atomic_dec_and_test(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.bio_pair*, %struct.bio_pair** %2, align 8
  %10 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.bio*, %struct.bio** %11, align 8
  store %struct.bio* %12, %struct.bio** %3, align 8
  %13 = load %struct.bio*, %struct.bio** %3, align 8
  %14 = load %struct.bio_pair*, %struct.bio_pair** %2, align 8
  %15 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bio_endio(%struct.bio* %13, i32 %16)
  %18 = load %struct.bio_pair*, %struct.bio_pair** %2, align 8
  %19 = load %struct.bio_pair*, %struct.bio_pair** %2, align 8
  %20 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @mempool_free(%struct.bio_pair* %18, i32 %22)
  br label %24

24:                                               ; preds = %8, %1
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

declare dso_local i32 @mempool_free(%struct.bio_pair*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
