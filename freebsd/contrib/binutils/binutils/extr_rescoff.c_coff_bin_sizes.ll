; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rescoff.c_coff_bin_sizes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rescoff.c_coff_bin_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i64, %struct.TYPE_10__, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.coff_write_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.coff_write_info*)* @coff_bin_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coff_bin_sizes(%struct.TYPE_13__* %0, %struct.coff_write_info* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.coff_write_info*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.coff_write_info* %1, %struct.coff_write_info** %4, align 8
  %6 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %7 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = add i64 %9, 4
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %5, align 8
  br label %15

15:                                               ; preds = %62, %2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = icmp ne %struct.TYPE_12__* %16, null
  br i1 %17, label %18, label %66

18:                                               ; preds = %15
  %19 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %20 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %18
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %36, 2
  %38 = add nsw i32 %37, 2
  %39 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %40 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %30, %18
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  call void @coff_bin_sizes(%struct.TYPE_13__* %52, %struct.coff_write_info* %53)
  br label %61

54:                                               ; preds = %43
  %55 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %56 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, 4
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  br label %61

61:                                               ; preds = %54, %48
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  store %struct.TYPE_12__* %65, %struct.TYPE_12__** %5, align 8
  br label %15

66:                                               ; preds = %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
