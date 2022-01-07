; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_ldm.c_ldm_compare_tocblocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_ldm.c_ldm_compare_tocblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tocblock = type { i64, i64, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tocblock*, %struct.tocblock*)* @ldm_compare_tocblocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldm_compare_tocblocks(%struct.tocblock* %0, %struct.tocblock* %1) #0 {
  %3 = alloca %struct.tocblock*, align 8
  %4 = alloca %struct.tocblock*, align 8
  store %struct.tocblock* %0, %struct.tocblock** %3, align 8
  store %struct.tocblock* %1, %struct.tocblock** %4, align 8
  %5 = load %struct.tocblock*, %struct.tocblock** %3, align 8
  %6 = icmp ne %struct.tocblock* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct.tocblock*, %struct.tocblock** %4, align 8
  %9 = icmp ne %struct.tocblock* %8, null
  %10 = xor i1 %9, true
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i1 [ true, %2 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.tocblock*, %struct.tocblock** %3, align 8
  %16 = getelementptr inbounds %struct.tocblock, %struct.tocblock* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.tocblock*, %struct.tocblock** %4, align 8
  %19 = getelementptr inbounds %struct.tocblock, %struct.tocblock* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %65

22:                                               ; preds = %11
  %23 = load %struct.tocblock*, %struct.tocblock** %3, align 8
  %24 = getelementptr inbounds %struct.tocblock, %struct.tocblock* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.tocblock*, %struct.tocblock** %4, align 8
  %27 = getelementptr inbounds %struct.tocblock, %struct.tocblock* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %22
  %31 = load %struct.tocblock*, %struct.tocblock** %3, align 8
  %32 = getelementptr inbounds %struct.tocblock, %struct.tocblock* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.tocblock*, %struct.tocblock** %4, align 8
  %35 = getelementptr inbounds %struct.tocblock, %struct.tocblock* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %65

38:                                               ; preds = %30
  %39 = load %struct.tocblock*, %struct.tocblock** %3, align 8
  %40 = getelementptr inbounds %struct.tocblock, %struct.tocblock* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.tocblock*, %struct.tocblock** %4, align 8
  %43 = getelementptr inbounds %struct.tocblock, %struct.tocblock* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %38
  %47 = load %struct.tocblock*, %struct.tocblock** %3, align 8
  %48 = getelementptr inbounds %struct.tocblock, %struct.tocblock* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tocblock*, %struct.tocblock** %4, align 8
  %51 = getelementptr inbounds %struct.tocblock, %struct.tocblock* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @strncmp(i32 %49, i32 %52, i32 4)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %46
  %56 = load %struct.tocblock*, %struct.tocblock** %3, align 8
  %57 = getelementptr inbounds %struct.tocblock, %struct.tocblock* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.tocblock*, %struct.tocblock** %4, align 8
  %60 = getelementptr inbounds %struct.tocblock, %struct.tocblock* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @strncmp(i32 %58, i32 %61, i32 4)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %55, %46, %38, %30, %22, %11
  %66 = phi i1 [ false, %46 ], [ false, %38 ], [ false, %30 ], [ false, %22 ], [ false, %11 ], [ %64, %55 ]
  %67 = zext i1 %66 to i32
  ret i32 %67
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @strncmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
