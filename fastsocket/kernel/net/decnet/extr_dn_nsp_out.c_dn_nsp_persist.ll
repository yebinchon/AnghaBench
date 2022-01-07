; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_out.c_dn_nsp_persist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_out.c_dn_nsp_persist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dn_scp = type { i32, i32, i64 }

@nsp_backoff = common dso_local global i64* null, align 8
@HZ = common dso_local global i64 0, align 8
@NSP_MAXRXTSHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dn_nsp_persist(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.dn_scp*, align 8
  %4 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.dn_scp* @DN_SK(%struct.sock* %5)
  store %struct.dn_scp* %6, %struct.dn_scp** %3, align 8
  %7 = load %struct.dn_scp*, %struct.dn_scp** %3, align 8
  %8 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = ashr i32 %9, 2
  %11 = load %struct.dn_scp*, %struct.dn_scp** %3, align 8
  %12 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %10, %13
  %15 = ashr i32 %14, 1
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %4, align 8
  %17 = load i64*, i64** @nsp_backoff, align 8
  %18 = load %struct.dn_scp*, %struct.dn_scp** %3, align 8
  %19 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i64, i64* %17, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = mul i64 %23, %22
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @HZ, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i64, i64* @HZ, align 8
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %28, %1
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @HZ, align 8
  %33 = mul i64 600, %32
  %34 = icmp ugt i64 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i64, i64* @HZ, align 8
  %37 = mul i64 600, %36
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.dn_scp*, %struct.dn_scp** %3, align 8
  %40 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NSP_MAXRXTSHIFT, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.dn_scp*, %struct.dn_scp** %3, align 8
  %46 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %44, %38
  %50 = load i64, i64* %4, align 8
  ret i64 %50
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
