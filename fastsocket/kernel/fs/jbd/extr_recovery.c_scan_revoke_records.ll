; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_recovery.c_scan_revoke_records.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_recovery.c_scan_revoke_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }
%struct.recovery_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.buffer_head*, i32, %struct.recovery_info*)* @scan_revoke_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_revoke_records(i32* %0, %struct.buffer_head* %1, i32 %2, %struct.recovery_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.recovery_info*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.recovery_info* %3, %struct.recovery_info** %9, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %16 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %10, align 8
  store i32 4, i32* %11, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @be32_to_cpu(i32 %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %12, align 4
  br label %24

24:                                               ; preds = %49, %4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %24
  %29 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = inttoptr i64 %34 to i32*
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @be32_to_cpu(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 4
  store i32 %40, i32* %11, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @journal_set_revoke(i32* %41, i32 %42, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %28
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %5, align 4
  br label %55

49:                                               ; preds = %28
  %50 = load %struct.recovery_info*, %struct.recovery_info** %9, align 8
  %51 = getelementptr inbounds %struct.recovery_info, %struct.recovery_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %24

54:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %47
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @journal_set_revoke(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
