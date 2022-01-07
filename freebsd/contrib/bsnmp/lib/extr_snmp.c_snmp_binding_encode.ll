; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_snmp_binding_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_snmp_binding_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i32 }
%struct.snmp_value = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ASN_TYPE_SEQUENCE = common dso_local global i32 0, align 4
@ASN_TYPE_CONSTRUCTED = common dso_local global i32 0, align 4
@ASN_ERR_OK = common dso_local global i32 0, align 4
@ASN_APP_TIMETICKS = common dso_local global i32 0, align 4
@ASN_APP_COUNTER = common dso_local global i32 0, align 4
@ASN_APP_GAUGE = common dso_local global i32 0, align 4
@ASN_EXCEPT_NOSUCHOBJECT = common dso_local global i32 0, align 4
@ASN_EXCEPT_NOSUCHINSTANCE = common dso_local global i32 0, align 4
@ASN_EXCEPT_ENDOFMIBVIEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_binding_encode(%struct.asn_buf* %0, %struct.snmp_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asn_buf*, align 8
  %5 = alloca %struct.snmp_value*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.asn_buf, align 4
  store %struct.asn_buf* %0, %struct.asn_buf** %4, align 8
  store %struct.snmp_value* %1, %struct.snmp_value** %5, align 8
  %9 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %10 = bitcast %struct.asn_buf* %8 to i8*
  %11 = bitcast %struct.asn_buf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 4, i1 false)
  %12 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %13 = load i32, i32* @ASN_TYPE_SEQUENCE, align 4
  %14 = load i32, i32* @ASN_TYPE_CONSTRUCTED, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @asn_put_temp_header(%struct.asn_buf* %12, i32 %15, i32** %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @ASN_ERR_OK, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %21 = bitcast %struct.asn_buf* %20 to i8*
  %22 = bitcast %struct.asn_buf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %142

24:                                               ; preds = %2
  %25 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %26 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %27 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %26, i32 0, i32 2
  %28 = call i32 @asn_put_objid(%struct.asn_buf* %25, i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @ASN_ERR_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %33 = bitcast %struct.asn_buf* %32 to i8*
  %34 = bitcast %struct.asn_buf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %142

36:                                               ; preds = %24
  %37 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %38 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %119 [
    i32 131, label %40
    i32 135, label %43
    i32 130, label %50
    i32 129, label %63
    i32 134, label %69
    i32 128, label %76
    i32 139, label %84
    i32 136, label %92
    i32 138, label %100
    i32 132, label %107
    i32 133, label %111
    i32 137, label %115
  ]

40:                                               ; preds = %36
  %41 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %42 = call i32 @asn_put_null(%struct.asn_buf* %41)
  store i32 %42, i32* %7, align 4
  br label %119

43:                                               ; preds = %36
  %44 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %45 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %46 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @asn_put_integer(%struct.asn_buf* %44, i32 %48)
  store i32 %49, i32* %7, align 4
  br label %119

50:                                               ; preds = %36
  %51 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %52 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %53 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %58 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @asn_put_octetstring(%struct.asn_buf* %51, i32 %56, i32 %61)
  store i32 %62, i32* %7, align 4
  br label %119

63:                                               ; preds = %36
  %64 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %65 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %66 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = call i32 @asn_put_objid(%struct.asn_buf* %64, i32* %67)
  store i32 %68, i32* %7, align 4
  br label %119

69:                                               ; preds = %36
  %70 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %71 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %72 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @asn_put_ipaddress(%struct.asn_buf* %70, i32 %74)
  store i32 %75, i32* %7, align 4
  br label %119

76:                                               ; preds = %36
  %77 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %78 = load i32, i32* @ASN_APP_TIMETICKS, align 4
  %79 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %80 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @asn_put_uint32(%struct.asn_buf* %77, i32 %78, i32 %82)
  store i32 %83, i32* %7, align 4
  br label %119

84:                                               ; preds = %36
  %85 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %86 = load i32, i32* @ASN_APP_COUNTER, align 4
  %87 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %88 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @asn_put_uint32(%struct.asn_buf* %85, i32 %86, i32 %90)
  store i32 %91, i32* %7, align 4
  br label %119

92:                                               ; preds = %36
  %93 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %94 = load i32, i32* @ASN_APP_GAUGE, align 4
  %95 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %96 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @asn_put_uint32(%struct.asn_buf* %93, i32 %94, i32 %98)
  store i32 %99, i32* %7, align 4
  br label %119

100:                                              ; preds = %36
  %101 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %102 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %103 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @asn_put_counter64(%struct.asn_buf* %101, i32 %105)
  store i32 %106, i32* %7, align 4
  br label %119

107:                                              ; preds = %36
  %108 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %109 = load i32, i32* @ASN_EXCEPT_NOSUCHOBJECT, align 4
  %110 = call i32 @asn_put_exception(%struct.asn_buf* %108, i32 %109)
  store i32 %110, i32* %7, align 4
  br label %119

111:                                              ; preds = %36
  %112 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %113 = load i32, i32* @ASN_EXCEPT_NOSUCHINSTANCE, align 4
  %114 = call i32 @asn_put_exception(%struct.asn_buf* %112, i32 %113)
  store i32 %114, i32* %7, align 4
  br label %119

115:                                              ; preds = %36
  %116 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %117 = load i32, i32* @ASN_EXCEPT_ENDOFMIBVIEW, align 4
  %118 = call i32 @asn_put_exception(%struct.asn_buf* %116, i32 %117)
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %36, %115, %111, %107, %100, %92, %84, %76, %69, %63, %50, %43, %40
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @ASN_ERR_OK, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %125 = bitcast %struct.asn_buf* %124 to i8*
  %126 = bitcast %struct.asn_buf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %125, i8* align 4 %126, i64 4, i1 false)
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %3, align 4
  br label %142

128:                                              ; preds = %119
  %129 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = call i32 @asn_commit_header(%struct.asn_buf* %129, i32* %130, i32* null)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @ASN_ERR_OK, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %128
  %136 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %137 = bitcast %struct.asn_buf* %136 to i8*
  %138 = bitcast %struct.asn_buf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %137, i8* align 4 %138, i64 4, i1 false)
  %139 = load i32, i32* %7, align 4
  store i32 %139, i32* %3, align 4
  br label %142

140:                                              ; preds = %128
  %141 = load i32, i32* @ASN_ERR_OK, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %135, %123, %31, %19
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @asn_put_temp_header(%struct.asn_buf*, i32, i32**) #2

declare dso_local i32 @asn_put_objid(%struct.asn_buf*, i32*) #2

declare dso_local i32 @asn_put_null(%struct.asn_buf*) #2

declare dso_local i32 @asn_put_integer(%struct.asn_buf*, i32) #2

declare dso_local i32 @asn_put_octetstring(%struct.asn_buf*, i32, i32) #2

declare dso_local i32 @asn_put_ipaddress(%struct.asn_buf*, i32) #2

declare dso_local i32 @asn_put_uint32(%struct.asn_buf*, i32, i32) #2

declare dso_local i32 @asn_put_counter64(%struct.asn_buf*, i32) #2

declare dso_local i32 @asn_put_exception(%struct.asn_buf*, i32) #2

declare dso_local i32 @asn_commit_header(%struct.asn_buf*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
