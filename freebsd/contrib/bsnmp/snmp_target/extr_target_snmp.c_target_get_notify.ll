; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_target/extr_target_snmp.c_target_get_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_target/extr_target_snmp.c_target_get_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_notify = type { i32 }
%struct.asn_oid = type { i32 }

@SNMP_ADM_STR32_SIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.target_notify* (%struct.asn_oid*, i32)* @target_get_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.target_notify* @target_get_notify(%struct.asn_oid* %0, i32 %1) #0 {
  %3 = alloca %struct.target_notify*, align 8
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.target_notify*, align 8
  %9 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @SNMP_ADM_STR32_SIZ, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @target_decode_index(%struct.asn_oid* %14, i32 %15, i8* %13)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.target_notify* null, %struct.target_notify** %3, align 8
  store i32 1, i32* %9, align 4
  br label %37

19:                                               ; preds = %2
  %20 = call %struct.target_notify* (...) @target_first_notify()
  store %struct.target_notify* %20, %struct.target_notify** %8, align 8
  br label %21

21:                                               ; preds = %33, %19
  %22 = load %struct.target_notify*, %struct.target_notify** %8, align 8
  %23 = icmp ne %struct.target_notify* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load %struct.target_notify*, %struct.target_notify** %8, align 8
  %26 = getelementptr inbounds %struct.target_notify, %struct.target_notify* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @strcmp(i8* %13, i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load %struct.target_notify*, %struct.target_notify** %8, align 8
  store %struct.target_notify* %31, %struct.target_notify** %3, align 8
  store i32 1, i32* %9, align 4
  br label %37

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.target_notify*, %struct.target_notify** %8, align 8
  %35 = call %struct.target_notify* @target_next_notify(%struct.target_notify* %34)
  store %struct.target_notify* %35, %struct.target_notify** %8, align 8
  br label %21

36:                                               ; preds = %21
  store %struct.target_notify* null, %struct.target_notify** %3, align 8
  store i32 1, i32* %9, align 4
  br label %37

37:                                               ; preds = %36, %30, %18
  %38 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load %struct.target_notify*, %struct.target_notify** %3, align 8
  ret %struct.target_notify* %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @target_decode_index(%struct.asn_oid*, i32, i8*) #2

declare dso_local %struct.target_notify* @target_first_notify(...) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local %struct.target_notify* @target_next_notify(%struct.target_notify*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
