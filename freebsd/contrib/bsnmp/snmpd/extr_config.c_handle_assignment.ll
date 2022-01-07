; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_handle_assignment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_handle_assignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32* }
%struct.snmp_node = type { i64, i8*, i32 (%struct.TYPE_5__*, %struct.snmp_value*, i64, i32, i32)*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32* }
%struct.asn_oid = type { i32, i32* }
%struct.snmp_value = type { %struct.TYPE_4__ }
%struct.assign = type { i8*, %struct.snmp_value, i32 }

@SNMP_NODE_LEAF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"bad index on leaf node\00", align 1
@ASN_MAXOIDLEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"resulting OID too long\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%m\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@snmp_ctx = common dso_local global %struct.TYPE_5__* null, align 8
@SNMP_OP_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"assignment to %s.%s returns %d\00", align 1
@assigns = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snmp_node*, %struct.asn_oid*, %struct.snmp_value*)* @handle_assignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_assignment(%struct.snmp_node* %0, %struct.asn_oid* %1, %struct.snmp_value* %2) #0 {
  %4 = alloca %struct.snmp_node*, align 8
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca %struct.snmp_value*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.assign*, align 8
  %10 = alloca [100 x i8], align 16
  store %struct.snmp_node* %0, %struct.snmp_node** %4, align 8
  store %struct.asn_oid* %1, %struct.asn_oid** %5, align 8
  store %struct.snmp_value* %2, %struct.snmp_value** %6, align 8
  %11 = load %struct.snmp_node*, %struct.snmp_node** %4, align 8
  %12 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SNMP_NODE_LEAF, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %3
  %17 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %18 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %33, label %21

21:                                               ; preds = %16
  %22 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %23 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %28 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26, %16
  %34 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %26, %21
  %36 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %37 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %39 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 0, i32* %41, align 4
  br label %57

42:                                               ; preds = %3
  %43 = load %struct.snmp_node*, %struct.snmp_node** %4, align 8
  %44 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %48 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %46, %50
  %52 = load i64, i64* @ASN_MAXOIDLEN, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %42
  br label %57

57:                                               ; preds = %56, %35
  %58 = call %struct.assign* @malloc(i32 32)
  store %struct.assign* %58, %struct.assign** %9, align 8
  %59 = icmp eq %struct.assign* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57
  %63 = load %struct.assign*, %struct.assign** %9, align 8
  %64 = getelementptr inbounds %struct.assign, %struct.assign* %63, i32 0, i32 1
  %65 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %66 = bitcast %struct.snmp_value* %64 to i8*
  %67 = bitcast %struct.snmp_value* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 16, i1 false)
  %68 = load %struct.snmp_node*, %struct.snmp_node** %4, align 8
  %69 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.assign*, %struct.assign** %9, align 8
  %72 = getelementptr inbounds %struct.assign, %struct.assign* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.assign*, %struct.assign** %9, align 8
  %74 = getelementptr inbounds %struct.assign, %struct.assign* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %74, i32 0, i32 0
  %76 = load %struct.snmp_node*, %struct.snmp_node** %4, align 8
  %77 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %76, i32 0, i32 4
  %78 = bitcast %struct.TYPE_4__* %75 to i8*
  %79 = bitcast %struct.TYPE_4__* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 16, i1 false)
  store i64 0, i64* %7, align 8
  br label %80

80:                                               ; preds = %106, %62
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %83 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = icmp ult i64 %81, %85
  br i1 %86, label %87, label %109

87:                                               ; preds = %80
  %88 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %89 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.assign*, %struct.assign** %9, align 8
  %95 = getelementptr inbounds %struct.assign, %struct.assign* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.assign*, %struct.assign** %9, align 8
  %100 = getelementptr inbounds %struct.assign, %struct.assign* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %102, align 8
  %105 = getelementptr inbounds i32, i32* %98, i64 %103
  store i32 %93, i32* %105, align 4
  br label %106

106:                                              ; preds = %87
  %107 = load i64, i64* %7, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %7, align 8
  br label %80

109:                                              ; preds = %80
  %110 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %111 = load %struct.snmp_node*, %struct.snmp_node** %4, align 8
  %112 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @snprintf(i8* %110, i32 100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %113)
  %115 = load %struct.assign*, %struct.assign** %9, align 8
  %116 = getelementptr inbounds %struct.assign, %struct.assign* %115, i32 0, i32 2
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** @snmp_ctx, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  store i32* %116, i32** %118, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** @snmp_ctx, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  store i64 0, i64* %120, align 8
  %121 = load %struct.snmp_node*, %struct.snmp_node** %4, align 8
  %122 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %121, i32 0, i32 2
  %123 = load i32 (%struct.TYPE_5__*, %struct.snmp_value*, i64, i32, i32)*, i32 (%struct.TYPE_5__*, %struct.snmp_value*, i64, i32, i32)** %122, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** @snmp_ctx, align 8
  %125 = load %struct.assign*, %struct.assign** %9, align 8
  %126 = getelementptr inbounds %struct.assign, %struct.assign* %125, i32 0, i32 1
  %127 = load %struct.snmp_node*, %struct.snmp_node** %4, align 8
  %128 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.snmp_node*, %struct.snmp_node** %4, align 8
  %132 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @SNMP_OP_SET, align 4
  %135 = call i32 %123(%struct.TYPE_5__* %124, %struct.snmp_value* %126, i64 %130, i32 %133, i32 %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %109
  %139 = load %struct.assign*, %struct.assign** %9, align 8
  %140 = call i32 @free(%struct.assign* %139)
  %141 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %142 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %143 = call i32 @asn_oid2str(%struct.asn_oid* %142)
  %144 = load i32, i32* %8, align 4
  %145 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %141, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %138, %109
  %147 = load %struct.assign*, %struct.assign** %9, align 8
  %148 = load i32, i32* @link, align 4
  %149 = call i32 @TAILQ_INSERT_TAIL(i32* @assigns, %struct.assign* %147, i32 %148)
  ret void
}

declare dso_local i32 @report(i8*, ...) #1

declare dso_local %struct.assign* @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @free(%struct.assign*) #1

declare dso_local i32 @asn_oid2str(%struct.asn_oid*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.assign*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
