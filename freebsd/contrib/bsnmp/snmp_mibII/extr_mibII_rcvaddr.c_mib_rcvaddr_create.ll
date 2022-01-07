; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII_rcvaddr.c_mib_rcvaddr_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII_rcvaddr.c_mib_rcvaddr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mibrcvaddr = type { i64, i64, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i64, i64* }
%struct.mibif = type { i64 }

@OIDLEN_ifRcvAddressEntry = common dso_local global i64 0, align 8
@ASN_MAXOIDLEN = common dso_local global i64 0, align 8
@mibrcvaddr_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mibrcvaddr* @mib_rcvaddr_create(%struct.mibif* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.mibrcvaddr*, align 8
  %5 = alloca %struct.mibif*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mibrcvaddr*, align 8
  %9 = alloca i64, align 8
  store %struct.mibif* %0, %struct.mibif** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @OIDLEN_ifRcvAddressEntry, align 8
  %12 = add i64 %10, %11
  %13 = add i64 %12, 1
  %14 = load i64, i64* @ASN_MAXOIDLEN, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.mibrcvaddr* null, %struct.mibrcvaddr** %4, align 8
  br label %80

17:                                               ; preds = %3
  %18 = call %struct.mibrcvaddr* @malloc(i32 48)
  store %struct.mibrcvaddr* %18, %struct.mibrcvaddr** %8, align 8
  %19 = icmp eq %struct.mibrcvaddr* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store %struct.mibrcvaddr* null, %struct.mibrcvaddr** %4, align 8
  br label %80

21:                                               ; preds = %17
  %22 = load %struct.mibif*, %struct.mibif** %5, align 8
  %23 = getelementptr inbounds %struct.mibif, %struct.mibif* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.mibrcvaddr*, %struct.mibrcvaddr** %8, align 8
  %26 = getelementptr inbounds %struct.mibrcvaddr, %struct.mibrcvaddr* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.mibrcvaddr*, %struct.mibrcvaddr** %8, align 8
  %29 = getelementptr inbounds %struct.mibrcvaddr, %struct.mibrcvaddr* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.mibrcvaddr*, %struct.mibrcvaddr** %8, align 8
  %31 = getelementptr inbounds %struct.mibrcvaddr, %struct.mibrcvaddr* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load i64*, i64** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @memcpy(i32 %32, i64* %33, i64 %34)
  %36 = load %struct.mibrcvaddr*, %struct.mibrcvaddr** %8, align 8
  %37 = getelementptr inbounds %struct.mibrcvaddr, %struct.mibrcvaddr* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, 2
  %40 = load %struct.mibrcvaddr*, %struct.mibrcvaddr** %8, align 8
  %41 = getelementptr inbounds %struct.mibrcvaddr, %struct.mibrcvaddr* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  %43 = load %struct.mibif*, %struct.mibif** %5, align 8
  %44 = getelementptr inbounds %struct.mibif, %struct.mibif* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.mibrcvaddr*, %struct.mibrcvaddr** %8, align 8
  %47 = getelementptr inbounds %struct.mibrcvaddr, %struct.mibrcvaddr* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  store i64 %45, i64* %50, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.mibrcvaddr*, %struct.mibrcvaddr** %8, align 8
  %53 = getelementptr inbounds %struct.mibrcvaddr, %struct.mibrcvaddr* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  store i64 %51, i64* %56, align 8
  store i64 0, i64* %9, align 8
  br label %57

57:                                               ; preds = %73, %21
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %57
  %62 = load i64*, i64** %6, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.mibrcvaddr*, %struct.mibrcvaddr** %8, align 8
  %67 = getelementptr inbounds %struct.mibrcvaddr, %struct.mibrcvaddr* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = add i64 %70, 2
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 %65, i64* %72, align 8
  br label %73

73:                                               ; preds = %61
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %9, align 8
  br label %57

76:                                               ; preds = %57
  %77 = load %struct.mibrcvaddr*, %struct.mibrcvaddr** %8, align 8
  %78 = call i32 @INSERT_OBJECT_OID(%struct.mibrcvaddr* %77, i32* @mibrcvaddr_list)
  %79 = load %struct.mibrcvaddr*, %struct.mibrcvaddr** %8, align 8
  store %struct.mibrcvaddr* %79, %struct.mibrcvaddr** %4, align 8
  br label %80

80:                                               ; preds = %76, %20, %16
  %81 = load %struct.mibrcvaddr*, %struct.mibrcvaddr** %4, align 8
  ret %struct.mibrcvaddr* %81
}

declare dso_local %struct.mibrcvaddr* @malloc(i32) #1

declare dso_local i32 @memcpy(i32, i64*, i64) #1

declare dso_local i32 @INSERT_OBJECT_OID(%struct.mibrcvaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
