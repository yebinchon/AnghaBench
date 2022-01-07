; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_target/extr_target_snmp.c_target_append_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_target/extr_target_snmp.c_target_append_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asn_oid*, i64, i8*)* @target_append_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @target_append_index(%struct.asn_oid* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = add i64 %8, %10
  %12 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %13 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %31, %3
  %15 = load i64, i64* %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %25 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %27, %28
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  store i8 %23, i8* %30, align 1
  br label %31

31:                                               ; preds = %19
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %7, align 8
  br label %14

34:                                               ; preds = %14
  ret void
}

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
