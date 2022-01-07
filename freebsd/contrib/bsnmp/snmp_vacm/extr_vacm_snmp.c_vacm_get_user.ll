; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_get_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_get_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vacm_user = type { i64, i32 }
%struct.asn_oid = type { i32 }

@SNMP_ADM_STR32_SIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vacm_user* (%struct.asn_oid*, i32)* @vacm_get_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vacm_user* @vacm_get_user(%struct.asn_oid* %0, i32 %1) #0 {
  %3 = alloca %struct.vacm_user*, align 8
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vacm_user*, align 8
  %10 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @SNMP_ADM_STR32_SIZ, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @vacm_user_index_decode(%struct.asn_oid* %15, i32 %16, i64* %6, i8* %14)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %struct.vacm_user* null, %struct.vacm_user** %3, align 8
  store i32 1, i32* %10, align 4
  br label %44

20:                                               ; preds = %2
  %21 = call %struct.vacm_user* (...) @vacm_first_user()
  store %struct.vacm_user* %21, %struct.vacm_user** %9, align 8
  br label %22

22:                                               ; preds = %40, %20
  %23 = load %struct.vacm_user*, %struct.vacm_user** %9, align 8
  %24 = icmp ne %struct.vacm_user* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  %26 = load %struct.vacm_user*, %struct.vacm_user** %9, align 8
  %27 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @strcmp(i8* %14, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.vacm_user*, %struct.vacm_user** %9, align 8
  %33 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load %struct.vacm_user*, %struct.vacm_user** %9, align 8
  store %struct.vacm_user* %38, %struct.vacm_user** %3, align 8
  store i32 1, i32* %10, align 4
  br label %44

39:                                               ; preds = %31, %25
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.vacm_user*, %struct.vacm_user** %9, align 8
  %42 = call %struct.vacm_user* @vacm_next_user(%struct.vacm_user* %41)
  store %struct.vacm_user* %42, %struct.vacm_user** %9, align 8
  br label %22

43:                                               ; preds = %22
  store %struct.vacm_user* null, %struct.vacm_user** %3, align 8
  store i32 1, i32* %10, align 4
  br label %44

44:                                               ; preds = %43, %37, %19
  %45 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load %struct.vacm_user*, %struct.vacm_user** %3, align 8
  ret %struct.vacm_user* %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @vacm_user_index_decode(%struct.asn_oid*, i32, i64*, i8*) #2

declare dso_local %struct.vacm_user* @vacm_first_user(...) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local %struct.vacm_user* @vacm_next_user(%struct.vacm_user*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
