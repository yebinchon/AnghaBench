; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_dump_binding.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_dump_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@ASN_OIDSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s=\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"INTEGER %d\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"OCTET STRING %lu:\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"OID %s\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"IPADDRESS %u.%u.%u.%u\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"COUNTER %u\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"GAUGE %u\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"TIMETICKS %u\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"COUNTER64 %lld\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"NoSuchObject\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"NoSuchInstance\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"EndOfMibView\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"UNKNOWN SYNTAX %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snmp_value*)* @dump_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_binding(%struct.snmp_value* %0) #0 {
  %2 = alloca %struct.snmp_value*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.snmp_value* %0, %struct.snmp_value** %2, align 8
  %6 = load i32, i32* @ASN_OIDSTRLEN, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %11 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %10, i32 0, i32 2
  %12 = call i32 @asn_oid2str_r(i32* %11, i8* %9)
  %13 = call i32 (i8*, ...) @snmp_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %15 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %117 [
    i32 131, label %17
    i32 135, label %19
    i32 130, label %25
    i32 129, label %55
    i32 134, label %61
    i32 139, label %87
    i32 136, label %93
    i32 128, label %99
    i32 138, label %105
    i32 132, label %111
    i32 133, label %113
    i32 137, label %115
  ]

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @snmp_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %122

19:                                               ; preds = %1
  %20 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %21 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, ...) @snmp_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  br label %122

25:                                               ; preds = %1
  %26 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %27 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, ...) @snmp_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  store i64 0, i64* %3, align 8
  br label %32

32:                                               ; preds = %51, %25
  %33 = load i64, i64* %3, align 8
  %34 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %35 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %33, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %32
  %42 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %43 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %3, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @snmp_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %41
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %3, align 8
  br label %32

54:                                               ; preds = %32
  br label %122

55:                                               ; preds = %1
  %56 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %57 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  %59 = call i32 @asn_oid2str_r(i32* %58, i8* %9)
  %60 = call i32 (i8*, ...) @snmp_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  br label %122

61:                                               ; preds = %1
  %62 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %63 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %69 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %75 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %81 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, ...) @snmp_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %67, i32 %73, i32 %79, i32 %85)
  br label %122

87:                                               ; preds = %1
  %88 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %89 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @snmp_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %91)
  br label %122

93:                                               ; preds = %1
  %94 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %95 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, ...) @snmp_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %97)
  br label %122

99:                                               ; preds = %1
  %100 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %101 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, ...) @snmp_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %103)
  br label %122

105:                                              ; preds = %1
  %106 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %107 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i8*, ...) @snmp_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %109)
  br label %122

111:                                              ; preds = %1
  %112 = call i32 (i8*, ...) @snmp_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  br label %122

113:                                              ; preds = %1
  %114 = call i32 (i8*, ...) @snmp_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %122

115:                                              ; preds = %1
  %116 = call i32 (i8*, ...) @snmp_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  br label %122

117:                                              ; preds = %1
  %118 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %119 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 (i8*, ...) @snmp_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %117, %115, %113, %111, %105, %99, %93, %87, %61, %55, %54, %19, %17
  %123 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %123)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snmp_printf(i8*, ...) #2

declare dso_local i32 @asn_oid2str_r(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
