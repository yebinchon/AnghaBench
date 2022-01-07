; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_usm/extr_usm_snmp.c_usm_get_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_usm/extr_usm_snmp.c_usm_get_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usm_user = type { i32 }
%struct.asn_oid = type { i32 }

@SNMP_ADM_STR32_SIZ = common dso_local global i32 0, align 4
@SNMP_ENGINE_ID_SIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usm_user* (%struct.asn_oid*, i32)* @usm_get_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usm_user* @usm_get_user(%struct.asn_oid* %0, i32 %1) #0 {
  %3 = alloca %struct.usm_user*, align 8
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @SNMP_ADM_STR32_SIZ, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* @SNMP_ENGINE_ID_SIZ, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %18 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @usm_user_index_decode(%struct.asn_oid* %18, i32 %19, i32* %17, i32* %6, i8* %14)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store %struct.usm_user* null, %struct.usm_user** %3, align 8
  store i32 1, i32* %10, align 4
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.usm_user* @usm_find_user(i32* %17, i32 %24, i8* %14)
  store %struct.usm_user* %25, %struct.usm_user** %3, align 8
  store i32 1, i32* %10, align 4
  br label %26

26:                                               ; preds = %23, %22
  %27 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %27)
  %28 = load %struct.usm_user*, %struct.usm_user** %3, align 8
  ret %struct.usm_user* %28
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @usm_user_index_decode(%struct.asn_oid*, i32, i32*, i32*, i8*) #2

declare dso_local %struct.usm_user* @usm_find_user(i32*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
