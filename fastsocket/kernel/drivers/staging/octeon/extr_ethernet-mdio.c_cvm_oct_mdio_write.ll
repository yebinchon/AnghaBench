; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-mdio.c_cvm_oct_mdio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-mdio.c_cvm_oct_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%union.cvmx_smix_cmd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }
%union.cvmx_smix_wr_dat = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32)* @cvm_oct_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvm_oct_mdio_write(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.cvmx_smix_cmd, align 8
  %10 = alloca %union.cvmx_smix_wr_dat, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = bitcast %union.cvmx_smix_wr_dat* %10 to i64*
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %8, align 4
  %13 = bitcast %union.cvmx_smix_wr_dat* %10 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = call i32 @CVMX_SMIX_WR_DAT(i32 0)
  %16 = bitcast %union.cvmx_smix_wr_dat* %10 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @cvmx_write_csr(i32 %15, i64 %17)
  %19 = bitcast %union.cvmx_smix_cmd* %9 to i64*
  store i64 0, i64* %19, align 8
  %20 = bitcast %union.cvmx_smix_cmd* %9 to %struct.TYPE_3__*
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = bitcast %union.cvmx_smix_cmd* %9 to %struct.TYPE_3__*
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = bitcast %union.cvmx_smix_cmd* %9 to %struct.TYPE_3__*
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = call i32 @CVMX_SMIX_CMD(i32 0)
  %29 = bitcast %union.cvmx_smix_cmd* %9 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @cvmx_write_csr(i32 %28, i64 %30)
  br label %32

32:                                               ; preds = %41, %4
  %33 = call i32 (...) @in_interrupt()
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = call i32 (...) @yield()
  br label %37

37:                                               ; preds = %35, %32
  %38 = call i32 @CVMX_SMIX_WR_DAT(i32 0)
  %39 = call i64 @cvmx_read_csr(i32 %38)
  %40 = bitcast %union.cvmx_smix_wr_dat* %10 to i64*
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %37
  %42 = bitcast %union.cvmx_smix_wr_dat* %10 to %struct.TYPE_4__*
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %32, label %46

46:                                               ; preds = %41
  ret void
}

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_SMIX_WR_DAT(i32) #1

declare dso_local i32 @CVMX_SMIX_CMD(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @yield(...) #1

declare dso_local i64 @cvmx_read_csr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
