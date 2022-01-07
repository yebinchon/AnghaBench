; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_tsnmap.c_sctp_tsnmap_mark.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_tsnmap.c_sctp_tsnmap_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tsnmap = type { i64, i64, i64, i32, i32 }
%struct.sctp_transport = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_tsnmap_mark(%struct.sctp_tsnmap* %0, i64 %1, %struct.sctp_transport* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_tsnmap*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sctp_transport*, align 8
  %8 = alloca i64, align 8
  store %struct.sctp_tsnmap* %0, %struct.sctp_tsnmap** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.sctp_transport* %2, %struct.sctp_transport** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %5, align 8
  %11 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @TSN_lt(i64 %9, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %87

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %5, align 8
  %19 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %5, align 8
  %24 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %16
  %28 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %5, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @sctp_tsnmap_grow(%struct.sctp_tsnmap* %28, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %87

35:                                               ; preds = %27, %16
  %36 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %5, align 8
  %37 = call i32 @sctp_tsnmap_has_gap(%struct.sctp_tsnmap* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %67, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %39
  %43 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %5, align 8
  %44 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %5, align 8
  %48 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %52 = icmp ne %struct.sctp_transport* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %42
  %54 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %55 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %61 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %53, %42
  %63 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %5, align 8
  %64 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  br label %86

67:                                               ; preds = %39, %35
  %68 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %5, align 8
  %69 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i64 @TSN_lt(i64 %70, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %5, align 8
  %77 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %74, %67
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %5, align 8
  %81 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @set_bit(i64 %79, i32 %82)
  %84 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %5, align 8
  %85 = call i32 @sctp_tsnmap_update(%struct.sctp_tsnmap* %84)
  br label %86

86:                                               ; preds = %78, %62
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %32, %15
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @TSN_lt(i64, i64) #1

declare dso_local i32 @sctp_tsnmap_grow(%struct.sctp_tsnmap*, i64) #1

declare dso_local i32 @sctp_tsnmap_has_gap(%struct.sctp_tsnmap*) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @sctp_tsnmap_update(%struct.sctp_tsnmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
