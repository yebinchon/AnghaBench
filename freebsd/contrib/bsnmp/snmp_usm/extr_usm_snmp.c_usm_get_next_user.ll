; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_usm/extr_usm_snmp.c_usm_get_next_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_usm/extr_usm_snmp.c_usm_get_next_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usm_user = type { i32 }
%struct.asn_oid = type { i64 }

@SNMP_ADM_STR32_SIZ = common dso_local global i32 0, align 4
@SNMP_ENGINE_ID_SIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usm_user* (%struct.asn_oid*, i64)* @usm_get_next_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usm_user* @usm_get_next_user(%struct.asn_oid* %0, i64 %1) #0 {
  %3 = alloca %struct.usm_user*, align 8
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usm_user*, align 8
  %11 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i32, i32* @SNMP_ADM_STR32_SIZ, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @SNMP_ENGINE_ID_SIZ, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %19 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %20 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = sub nsw i64 %21, %22
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = call %struct.usm_user* (...) @usm_first_user()
  store %struct.usm_user* %26, %struct.usm_user** %3, align 8
  store i32 1, i32* %11, align 4
  br label %41

27:                                               ; preds = %2
  %28 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @usm_user_index_decode(%struct.asn_oid* %28, i64 %29, i32* %18, i32* %6, i8* %15)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store %struct.usm_user* null, %struct.usm_user** %3, align 8
  store i32 1, i32* %11, align 4
  br label %41

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.usm_user* @usm_find_user(i32* %18, i32 %34, i8* %15)
  store %struct.usm_user* %35, %struct.usm_user** %10, align 8
  %36 = icmp ne %struct.usm_user* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.usm_user*, %struct.usm_user** %10, align 8
  %39 = call %struct.usm_user* @usm_next_user(%struct.usm_user* %38)
  store %struct.usm_user* %39, %struct.usm_user** %3, align 8
  store i32 1, i32* %11, align 4
  br label %41

40:                                               ; preds = %33
  store %struct.usm_user* null, %struct.usm_user** %3, align 8
  store i32 1, i32* %11, align 4
  br label %41

41:                                               ; preds = %40, %37, %32, %25
  %42 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load %struct.usm_user*, %struct.usm_user** %3, align 8
  ret %struct.usm_user* %43
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.usm_user* @usm_first_user(...) #2

declare dso_local i64 @usm_user_index_decode(%struct.asn_oid*, i64, i32*, i32*, i8*) #2

declare dso_local %struct.usm_user* @usm_find_user(i32*, i32, i8*) #2

declare dso_local %struct.usm_user* @usm_next_user(%struct.usm_user*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
