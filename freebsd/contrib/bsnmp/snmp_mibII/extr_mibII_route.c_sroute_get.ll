; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII_route.c_sroute_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII_route.c_sroute_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sroute = type { i32* }
%struct.asn_oid = type { i32, i32* }

@sroutes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sroute* (%struct.asn_oid*, i32)* @sroute_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sroute* @sroute_get(%struct.asn_oid* %0, i32 %1) #0 {
  %3 = alloca %struct.sroute*, align 8
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sroute, align 8
  %7 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %9 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 %10, %11
  %13 = icmp ne i32 %12, 13
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.sroute* null, %struct.sroute** %3, align 8
  br label %40

15:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %34, %15
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 13
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %21 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.sroute, %struct.sroute* %6, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %28, i32* %33, align 4
  br label %34

34:                                               ; preds = %19
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %16

37:                                               ; preds = %16
  %38 = load i32, i32* @sroutes, align 4
  %39 = call %struct.sroute* @RB_FIND(i32 %38, i32* @sroutes, %struct.sroute* %6)
  store %struct.sroute* %39, %struct.sroute** %3, align 8
  br label %40

40:                                               ; preds = %37, %14
  %41 = load %struct.sroute*, %struct.sroute** %3, align 8
  ret %struct.sroute* %41
}

declare dso_local %struct.sroute* @RB_FIND(i32, i32*, %struct.sroute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
