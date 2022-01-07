; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_tsnmap.c_sctp_tsnmap_skip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_tsnmap.c_sctp_tsnmap_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tsnmap = type { i64, i64, i64, i32, i32 }

@SCTP_TSN_MAP_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_tsnmap_skip(%struct.sctp_tsnmap* %0, i64 %1) #0 {
  %3 = alloca %struct.sctp_tsnmap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.sctp_tsnmap* %0, %struct.sctp_tsnmap** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %3, align 8
  %8 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @TSN_lt(i64 %6, i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %80

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %3, align 8
  %16 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SCTP_TSN_MAP_SIZE, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i64 @TSN_lt(i64 %14, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  br label %80

23:                                               ; preds = %13
  %24 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %3, align 8
  %25 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @TSN_lt(i64 %26, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %3, align 8
  %33 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %23
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %3, align 8
  %37 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %3, align 8
  %43 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, %41
  store i64 %45, i64* %43, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %3, align 8
  %48 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %3, align 8
  %55 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %53, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %34
  %59 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %3, align 8
  %60 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %3, align 8
  %63 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @bitmap_zero(i32 %61, i64 %64)
  br label %80

66:                                               ; preds = %34
  %67 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %3, align 8
  %68 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %3, align 8
  %71 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %3, align 8
  %75 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @bitmap_shift_right(i32 %69, i32 %72, i64 %73, i64 %76)
  %78 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %3, align 8
  %79 = call i32 @sctp_tsnmap_update(%struct.sctp_tsnmap* %78)
  br label %80

80:                                               ; preds = %12, %22, %66, %58
  ret void
}

declare dso_local i64 @TSN_lt(i64, i64) #1

declare dso_local i32 @bitmap_zero(i32, i64) #1

declare dso_local i32 @bitmap_shift_right(i32, i32, i64, i64) #1

declare dso_local i32 @sctp_tsnmap_update(%struct.sctp_tsnmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
