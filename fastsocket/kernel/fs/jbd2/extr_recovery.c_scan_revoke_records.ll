; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_recovery.c_scan_revoke_records.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_recovery.c_scan_revoke_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }
%struct.recovery_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

@JBD2_FEATURE_INCOMPAT_64BIT = common dso_local global i32 0, align 4
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
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.recovery_info* %3, %struct.recovery_info** %9, align 8
  store i32 4, i32* %13, align 4
  %16 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %10, align 8
  store i32 4, i32* %11, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @be32_to_cpu(i32 %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %12, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @JBD2_FEATURE_INCOMPAT_64BIT, align 4
  %27 = call i64 @JBD2_HAS_INCOMPAT_FEATURE(i32* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 8, i32* %13, align 4
  br label %30

30:                                               ; preds = %29, %4
  br label %31

31:                                               ; preds = %73, %30
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* %12, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %78

37:                                               ; preds = %31
  %38 = load i32, i32* %13, align 4
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %42 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = inttoptr i64 %46 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @be32_to_cpu(i32 %48)
  %50 = ptrtoint i8* %49 to i64
  store i64 %50, i64* %14, align 8
  br label %61

51:                                               ; preds = %37
  %52 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %53 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = inttoptr i64 %57 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @be64_to_cpu(i32 %59)
  store i64 %60, i64* %14, align 8
  br label %61

61:                                               ; preds = %51, %40
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %11, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = load i64, i64* %14, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @jbd2_journal_set_revoke(i32* %65, i64 %66, i32 %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* %15, align 4
  store i32 %72, i32* %5, align 4
  br label %79

73:                                               ; preds = %61
  %74 = load %struct.recovery_info*, %struct.recovery_info** %9, align 8
  %75 = getelementptr inbounds %struct.recovery_info, %struct.recovery_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %31

78:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %71
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i64 @JBD2_HAS_INCOMPAT_FEATURE(i32*, i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @jbd2_journal_set_revoke(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
