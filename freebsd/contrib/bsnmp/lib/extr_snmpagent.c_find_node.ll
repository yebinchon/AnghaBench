; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpagent.c_find_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpagent.c_find_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_node = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.snmp_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64* }

@FIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"find: searching %s\00", align 1
@oidbuf = common dso_local global i32 0, align 4
@tree = common dso_local global %struct.snmp_node* null, align 8
@tree_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"find: no match\00", align 1
@SNMP_SYNTAX_NOSUCHOBJECT = common dso_local global i32 0, align 4
@SNMP_NODE_LEAF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"find: bad leaf index\00", align 1
@SNMP_SYNTAX_NOSUCHINSTANCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"find: found %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snmp_node* (%struct.snmp_value*, i32*)* @find_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snmp_node* @find_node(%struct.snmp_value* %0, i32* %1) #0 {
  %3 = alloca %struct.snmp_node*, align 8
  %4 = alloca %struct.snmp_value*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.snmp_node*, align 8
  store %struct.snmp_value* %0, %struct.snmp_value** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @FIND, align 4
  %8 = call i64 @TR(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %12 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %11, i32 0, i32 0
  %13 = load i32, i32* @oidbuf, align 4
  %14 = call i32 @asn_oid2str_r(%struct.TYPE_6__* %12, i32 %13)
  %15 = call i32 (i8*, ...) @snmp_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %10, %2
  %17 = load %struct.snmp_node*, %struct.snmp_node** @tree, align 8
  store %struct.snmp_node* %17, %struct.snmp_node** %6, align 8
  br label %18

18:                                               ; preds = %42, %16
  %19 = load %struct.snmp_node*, %struct.snmp_node** %6, align 8
  %20 = load %struct.snmp_node*, %struct.snmp_node** @tree, align 8
  %21 = load i32, i32* @tree_size, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %20, i64 %22
  %24 = icmp ult %struct.snmp_node* %19, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %18
  %26 = load %struct.snmp_node*, %struct.snmp_node** %6, align 8
  %27 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %26, i32 0, i32 1
  %28 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %29 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %28, i32 0, i32 0
  %30 = call i64 @asn_is_suboid(%struct.TYPE_7__* %27, %struct.TYPE_6__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %54

33:                                               ; preds = %25
  %34 = load %struct.snmp_node*, %struct.snmp_node** %6, align 8
  %35 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %34, i32 0, i32 1
  %36 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %37 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %36, i32 0, i32 0
  %38 = call i64 @asn_compare_oid(%struct.TYPE_7__* %35, %struct.TYPE_6__* %37)
  %39 = icmp sge i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %45

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.snmp_node*, %struct.snmp_node** %6, align 8
  %44 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %43, i32 1
  store %struct.snmp_node* %44, %struct.snmp_node** %6, align 8
  br label %18

45:                                               ; preds = %40, %18
  %46 = load i32, i32* @FIND, align 4
  %47 = call i64 @TR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 (i8*, ...) @snmp_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i32, i32* @SNMP_SYNTAX_NOSUCHOBJECT, align 4
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  store %struct.snmp_node* null, %struct.snmp_node** %3, align 8
  br label %105

54:                                               ; preds = %32
  %55 = load %struct.snmp_node*, %struct.snmp_node** %6, align 8
  %56 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SNMP_NODE_LEAF, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %93

60:                                               ; preds = %54
  %61 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %62 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.snmp_node*, %struct.snmp_node** %6, align 8
  %66 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  %70 = icmp ne i32 %64, %69
  br i1 %70, label %84, label %71

71:                                               ; preds = %60
  %72 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %73 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load %struct.snmp_node*, %struct.snmp_node** %6, align 8
  %77 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %75, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %71, %60
  %85 = load i32, i32* @FIND, align 4
  %86 = call i64 @TR(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = call i32 (i8*, ...) @snmp_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %84
  %91 = load i32, i32* @SNMP_SYNTAX_NOSUCHINSTANCE, align 4
  %92 = load i32*, i32** %5, align 8
  store i32 %91, i32* %92, align 4
  store %struct.snmp_node* null, %struct.snmp_node** %3, align 8
  br label %105

93:                                               ; preds = %71, %54
  %94 = load i32, i32* @FIND, align 4
  %95 = call i64 @TR(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %99 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %98, i32 0, i32 0
  %100 = load i32, i32* @oidbuf, align 4
  %101 = call i32 @asn_oid2str_r(%struct.TYPE_6__* %99, i32 %100)
  %102 = call i32 (i8*, ...) @snmp_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %97, %93
  %104 = load %struct.snmp_node*, %struct.snmp_node** %6, align 8
  store %struct.snmp_node* %104, %struct.snmp_node** %3, align 8
  br label %105

105:                                              ; preds = %103, %90, %51
  %106 = load %struct.snmp_node*, %struct.snmp_node** %3, align 8
  ret %struct.snmp_node* %106
}

declare dso_local i64 @TR(i32) #1

declare dso_local i32 @snmp_debug(i8*, ...) #1

declare dso_local i32 @asn_oid2str_r(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @asn_is_suboid(%struct.TYPE_7__*, %struct.TYPE_6__*) #1

declare dso_local i64 @asn_compare_oid(%struct.TYPE_7__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
