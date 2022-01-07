; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_target/extr_target_snmp.c_target_get_next_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_target/extr_target_snmp.c_target_get_next_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_param = type { i32 }
%struct.asn_oid = type { i64 }

@SNMP_ADM_STR32_SIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.target_param* (%struct.asn_oid*, i64)* @target_get_next_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.target_param* @target_get_next_param(%struct.asn_oid* %0, i64 %1) #0 {
  %3 = alloca %struct.target_param*, align 8
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.target_param*, align 8
  %9 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* @SNMP_ADM_STR32_SIZ, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %15 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = sub nsw i64 %16, %17
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call %struct.target_param* (...) @target_first_param()
  store %struct.target_param* %21, %struct.target_param** %3, align 8
  store i32 1, i32* %9, align 4
  br label %47

22:                                               ; preds = %2
  %23 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @target_decode_index(%struct.asn_oid* %23, i64 %24, i8* %13)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store %struct.target_param* null, %struct.target_param** %3, align 8
  store i32 1, i32* %9, align 4
  br label %47

28:                                               ; preds = %22
  %29 = call %struct.target_param* (...) @target_first_param()
  store %struct.target_param* %29, %struct.target_param** %8, align 8
  br label %30

30:                                               ; preds = %43, %28
  %31 = load %struct.target_param*, %struct.target_param** %8, align 8
  %32 = icmp ne %struct.target_param* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load %struct.target_param*, %struct.target_param** %8, align 8
  %35 = getelementptr inbounds %struct.target_param, %struct.target_param* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @strcmp(i8* %13, i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.target_param*, %struct.target_param** %8, align 8
  %41 = call %struct.target_param* @target_next_param(%struct.target_param* %40)
  store %struct.target_param* %41, %struct.target_param** %3, align 8
  store i32 1, i32* %9, align 4
  br label %47

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.target_param*, %struct.target_param** %8, align 8
  %45 = call %struct.target_param* @target_next_param(%struct.target_param* %44)
  store %struct.target_param* %45, %struct.target_param** %8, align 8
  br label %30

46:                                               ; preds = %30
  store %struct.target_param* null, %struct.target_param** %3, align 8
  store i32 1, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %39, %27, %20
  %48 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load %struct.target_param*, %struct.target_param** %3, align 8
  ret %struct.target_param* %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.target_param* @target_first_param(...) #2

declare dso_local i64 @target_decode_index(%struct.asn_oid*, i64, i8*) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local %struct.target_param* @target_next_param(%struct.target_param*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
