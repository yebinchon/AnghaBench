; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_lec.c_lec_mcast_make.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_lec.c_lec_mcast_make.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lec_priv = type { i32, %struct.atm_vcc* }
%struct.atm_vcc = type { i32, %struct.TYPE_4__, i32, %struct.lec_vcc_priv* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.lec_vcc_priv = type { i32, i64 }
%struct.lec_arp_table = type { i32, %struct.atm_vcc*, i32, i32, i32 }

@__const.lec_mcast_make.mac_addr = private unnamed_addr constant [6 x i8] c"\FF\FF\FF\FF\FF\FF", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lec_pop = common dso_local global i32 0, align 4
@ATM_ESA_LEN = common dso_local global i32 0, align 4
@ESI_FORWARD_DIRECT = common dso_local global i32 0, align 4
@LEC_PERMANENT_FLAG = common dso_local global i32 0, align 4
@lec_push = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lec_priv*, %struct.atm_vcc*)* @lec_mcast_make to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lec_mcast_make(%struct.lec_priv* %0, %struct.atm_vcc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lec_priv*, align 8
  %5 = alloca %struct.atm_vcc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [6 x i8], align 1
  %8 = alloca %struct.lec_arp_table*, align 8
  %9 = alloca %struct.lec_vcc_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.lec_priv* %0, %struct.lec_priv** %4, align 8
  store %struct.atm_vcc* %1, %struct.atm_vcc** %5, align 8
  %11 = bitcast [6 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.lec_mcast_make.mac_addr, i32 0, i32 0), i64 6, i1 false)
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.lec_vcc_priv* @kmalloc(i32 16, i32 %12)
  store %struct.lec_vcc_priv* %13, %struct.lec_vcc_priv** %9, align 8
  %14 = icmp ne %struct.lec_vcc_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %93

18:                                               ; preds = %2
  %19 = load %struct.lec_vcc_priv*, %struct.lec_vcc_priv** %9, align 8
  %20 = getelementptr inbounds %struct.lec_vcc_priv, %struct.lec_vcc_priv* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %22 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.lec_vcc_priv*, %struct.lec_vcc_priv** %9, align 8
  %25 = getelementptr inbounds %struct.lec_vcc_priv, %struct.lec_vcc_priv* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.lec_vcc_priv*, %struct.lec_vcc_priv** %9, align 8
  %27 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %28 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %27, i32 0, i32 3
  store %struct.lec_vcc_priv* %26, %struct.lec_vcc_priv** %28, align 8
  %29 = load i32, i32* @lec_pop, align 4
  %30 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %31 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.lec_priv*, %struct.lec_priv** %4, align 8
  %33 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %32, i32 0, i32 0
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.lec_priv*, %struct.lec_priv** %4, align 8
  %37 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %38 = call %struct.lec_arp_table* @make_entry(%struct.lec_priv* %36, i8* %37)
  store %struct.lec_arp_table* %38, %struct.lec_arp_table** %8, align 8
  %39 = load %struct.lec_arp_table*, %struct.lec_arp_table** %8, align 8
  %40 = icmp ne %struct.lec_arp_table* %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %18
  %42 = load %struct.lec_vcc_priv*, %struct.lec_vcc_priv** %9, align 8
  %43 = getelementptr inbounds %struct.lec_vcc_priv, %struct.lec_vcc_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %46 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.lec_vcc_priv*, %struct.lec_vcc_priv** %9, align 8
  %48 = call i32 @kfree(%struct.lec_vcc_priv* %47)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %10, align 4
  br label %87

51:                                               ; preds = %18
  %52 = load %struct.lec_arp_table*, %struct.lec_arp_table** %8, align 8
  %53 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %56 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ATM_ESA_LEN, align 4
  %61 = call i32 @memcpy(i32 %54, i32 %59, i32 %60)
  %62 = load i32, i32* @ESI_FORWARD_DIRECT, align 4
  %63 = load %struct.lec_arp_table*, %struct.lec_arp_table** %8, align 8
  %64 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @LEC_PERMANENT_FLAG, align 4
  %66 = load %struct.lec_arp_table*, %struct.lec_arp_table** %8, align 8
  %67 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %71 = load %struct.lec_arp_table*, %struct.lec_arp_table** %8, align 8
  %72 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %71, i32 0, i32 1
  store %struct.atm_vcc* %70, %struct.atm_vcc** %72, align 8
  %73 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %74 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.lec_arp_table*, %struct.lec_arp_table** %8, align 8
  %77 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @lec_push, align 4
  %79 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %80 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %82 = load %struct.lec_priv*, %struct.lec_priv** %4, align 8
  %83 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %82, i32 0, i32 1
  store %struct.atm_vcc* %81, %struct.atm_vcc** %83, align 8
  %84 = load %struct.lec_priv*, %struct.lec_priv** %4, align 8
  %85 = load %struct.lec_arp_table*, %struct.lec_arp_table** %8, align 8
  %86 = call i32 @lec_arp_add(%struct.lec_priv* %84, %struct.lec_arp_table* %85)
  br label %87

87:                                               ; preds = %51, %41
  %88 = load %struct.lec_priv*, %struct.lec_priv** %4, align 8
  %89 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %88, i32 0, i32 0
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %87, %15
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.lec_vcc_priv* @kmalloc(i32, i32) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local %struct.lec_arp_table* @make_entry(%struct.lec_priv*, i8*) #2

declare dso_local i32 @kfree(%struct.lec_vcc_priv*) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @lec_arp_add(%struct.lec_priv*, %struct.lec_arp_table*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
