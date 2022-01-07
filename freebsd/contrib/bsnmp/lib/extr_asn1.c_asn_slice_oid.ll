; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_slice_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_slice_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @asn_slice_oid(%struct.asn_oid* %0, %struct.asn_oid* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca %struct.asn_oid*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.asn_oid* %0, %struct.asn_oid** %5, align 8
  store %struct.asn_oid* %1, %struct.asn_oid** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* %8, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %14 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  br label %35

15:                                               ; preds = %4
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = sub i64 %16, %17
  %19 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %20 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %22 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %25 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %30 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memcpy(i32* %23, i32* %28, i32 %33)
  br label %35

35:                                               ; preds = %15, %12
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
