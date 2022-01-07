; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_get_next_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_vacm/extr_vacm_snmp.c_vacm_get_next_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vacm_user = type { i64, i32 }
%struct.asn_oid = type { i64 }

@SNMP_ADM_STR32_SIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vacm_user* (%struct.asn_oid*, i64)* @vacm_get_next_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vacm_user* @vacm_get_next_user(%struct.asn_oid* %0, i64 %1) #0 {
  %3 = alloca %struct.vacm_user*, align 8
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vacm_user*, align 8
  %10 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32, i32* @SNMP_ADM_STR32_SIZ, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %16 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = sub nsw i64 %17, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call %struct.vacm_user* (...) @vacm_first_user()
  store %struct.vacm_user* %22, %struct.vacm_user** %3, align 8
  store i32 1, i32* %10, align 4
  br label %54

23:                                               ; preds = %2
  %24 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @vacm_user_index_decode(%struct.asn_oid* %24, i64 %25, i64* %6, i8* %14)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store %struct.vacm_user* null, %struct.vacm_user** %3, align 8
  store i32 1, i32* %10, align 4
  br label %54

29:                                               ; preds = %23
  %30 = call %struct.vacm_user* (...) @vacm_first_user()
  store %struct.vacm_user* %30, %struct.vacm_user** %9, align 8
  br label %31

31:                                               ; preds = %50, %29
  %32 = load %struct.vacm_user*, %struct.vacm_user** %9, align 8
  %33 = icmp ne %struct.vacm_user* %32, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %31
  %35 = load %struct.vacm_user*, %struct.vacm_user** %9, align 8
  %36 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @strcmp(i8* %14, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.vacm_user*, %struct.vacm_user** %9, align 8
  %42 = getelementptr inbounds %struct.vacm_user, %struct.vacm_user* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.vacm_user*, %struct.vacm_user** %9, align 8
  %48 = call %struct.vacm_user* @vacm_next_user(%struct.vacm_user* %47)
  store %struct.vacm_user* %48, %struct.vacm_user** %3, align 8
  store i32 1, i32* %10, align 4
  br label %54

49:                                               ; preds = %40, %34
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.vacm_user*, %struct.vacm_user** %9, align 8
  %52 = call %struct.vacm_user* @vacm_next_user(%struct.vacm_user* %51)
  store %struct.vacm_user* %52, %struct.vacm_user** %9, align 8
  br label %31

53:                                               ; preds = %31
  store %struct.vacm_user* null, %struct.vacm_user** %3, align 8
  store i32 1, i32* %10, align 4
  br label %54

54:                                               ; preds = %53, %46, %28, %21
  %55 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load %struct.vacm_user*, %struct.vacm_user** %3, align 8
  ret %struct.vacm_user* %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.vacm_user* @vacm_first_user(...) #2

declare dso_local i64 @vacm_user_index_decode(%struct.asn_oid*, i64, i64*, i8*) #2

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
