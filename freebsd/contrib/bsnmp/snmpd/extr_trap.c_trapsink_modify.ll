; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trap.c_trapsink_modify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trap.c_trapsink_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapsink = type { i64, i8*, i32 }
%struct.trapsink_dep = type { i64, i8*, i32, i32, i8*, i32, i32, i32 }

@TDEP_STATUS = common dso_local global i32 0, align 4
@TRAPSINK_ACTIVE = common dso_local global i64 0, align 8
@TRAPSINK_NOT_IN_SERVICE = common dso_local global i64 0, align 8
@TDEP_MODIFY = common dso_local global i32 0, align 4
@TDEP_VERSION = common dso_local global i32 0, align 4
@TDEP_COMM = common dso_local global i32 0, align 4
@SNMP_ERR_INCONS_VALUE = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trapsink*, %struct.trapsink_dep*)* @trapsink_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trapsink_modify(%struct.trapsink* %0, %struct.trapsink_dep* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trapsink*, align 8
  %5 = alloca %struct.trapsink_dep*, align 8
  store %struct.trapsink* %0, %struct.trapsink** %4, align 8
  store %struct.trapsink_dep* %1, %struct.trapsink_dep** %5, align 8
  %6 = load %struct.trapsink*, %struct.trapsink** %4, align 8
  %7 = getelementptr inbounds %struct.trapsink, %struct.trapsink* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.trapsink_dep*, %struct.trapsink_dep** %5, align 8
  %10 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.trapsink*, %struct.trapsink** %4, align 8
  %12 = getelementptr inbounds %struct.trapsink, %struct.trapsink* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.trapsink_dep*, %struct.trapsink_dep** %5, align 8
  %15 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 4
  %16 = load %struct.trapsink_dep*, %struct.trapsink_dep** %5, align 8
  %17 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.trapsink*, %struct.trapsink** %4, align 8
  %20 = getelementptr inbounds %struct.trapsink, %struct.trapsink* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strcpy(i8* %18, i8* %21)
  %23 = load %struct.trapsink_dep*, %struct.trapsink_dep** %5, align 8
  %24 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TDEP_STATUS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %2
  %30 = load %struct.trapsink_dep*, %struct.trapsink_dep** %5, align 8
  %31 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load %struct.trapsink_dep*, %struct.trapsink_dep** %5, align 8
  %36 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TRAPSINK_ACTIVE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load i64, i64* @TRAPSINK_NOT_IN_SERVICE, align 8
  %42 = load %struct.trapsink*, %struct.trapsink** %4, align 8
  %43 = getelementptr inbounds %struct.trapsink, %struct.trapsink* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* @TDEP_MODIFY, align 4
  %45 = load %struct.trapsink_dep*, %struct.trapsink_dep** %5, align 8
  %46 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %40, %34, %29
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.trapsink_dep*, %struct.trapsink_dep** %5, align 8
  %52 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @TDEP_VERSION, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.trapsink_dep*, %struct.trapsink_dep** %5, align 8
  %59 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.trapsink*, %struct.trapsink** %4, align 8
  %62 = getelementptr inbounds %struct.trapsink, %struct.trapsink* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %57, %50
  %64 = load %struct.trapsink_dep*, %struct.trapsink_dep** %5, align 8
  %65 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @TDEP_COMM, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load %struct.trapsink*, %struct.trapsink** %4, align 8
  %72 = getelementptr inbounds %struct.trapsink, %struct.trapsink* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.trapsink_dep*, %struct.trapsink_dep** %5, align 8
  %75 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strcpy(i8* %73, i8* %76)
  br label %78

78:                                               ; preds = %70, %63
  %79 = load %struct.trapsink_dep*, %struct.trapsink_dep** %5, align 8
  %80 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @TDEP_STATUS, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %133

85:                                               ; preds = %78
  %86 = load %struct.trapsink_dep*, %struct.trapsink_dep** %5, align 8
  %87 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %132

90:                                               ; preds = %85
  %91 = load %struct.trapsink_dep*, %struct.trapsink_dep** %5, align 8
  %92 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @TRAPSINK_ACTIVE, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %132

96:                                               ; preds = %90
  %97 = load %struct.trapsink*, %struct.trapsink** %4, align 8
  %98 = getelementptr inbounds %struct.trapsink, %struct.trapsink* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %96
  %105 = load %struct.trapsink_dep*, %struct.trapsink_dep** %5, align 8
  %106 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.trapsink*, %struct.trapsink** %4, align 8
  %109 = getelementptr inbounds %struct.trapsink, %struct.trapsink* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load %struct.trapsink_dep*, %struct.trapsink_dep** %5, align 8
  %111 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.trapsink*, %struct.trapsink** %4, align 8
  %114 = getelementptr inbounds %struct.trapsink, %struct.trapsink* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.trapsink*, %struct.trapsink** %4, align 8
  %116 = getelementptr inbounds %struct.trapsink, %struct.trapsink* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.trapsink_dep*, %struct.trapsink_dep** %5, align 8
  %119 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @strcpy(i8* %117, i8* %120)
  %122 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %122, i32* %3, align 4
  br label %135

123:                                              ; preds = %96
  %124 = load i64, i64* @TRAPSINK_ACTIVE, align 8
  %125 = load %struct.trapsink*, %struct.trapsink** %4, align 8
  %126 = getelementptr inbounds %struct.trapsink, %struct.trapsink* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load i32, i32* @TDEP_MODIFY, align 4
  %128 = load %struct.trapsink_dep*, %struct.trapsink_dep** %5, align 8
  %129 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %123, %90, %85
  br label %133

133:                                              ; preds = %132, %78
  %134 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %133, %104
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
