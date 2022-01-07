; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpagent.c_next_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpagent.c_next_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_node = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.snmp_value = type { %struct.TYPE_6__ }

@FIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"next: searching %s\00", align 1
@oidbuf = common dso_local global i32 0, align 4
@tree = common dso_local global %struct.snmp_node* null, align 8
@tree_size = common dso_local global i32 0, align 4
@SNMP_NODE_LEAF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"next: found scalar %s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"next: found column %s\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"next: found %s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"next: failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snmp_node* (%struct.snmp_value*, i32*)* @next_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snmp_node* @next_node(%struct.snmp_value* %0, i32* %1) #0 {
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
  %17 = load i32*, i32** %5, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.snmp_node*, %struct.snmp_node** @tree, align 8
  store %struct.snmp_node* %18, %struct.snmp_node** %6, align 8
  br label %19

19:                                               ; preds = %104, %16
  %20 = load %struct.snmp_node*, %struct.snmp_node** %6, align 8
  %21 = load %struct.snmp_node*, %struct.snmp_node** @tree, align 8
  %22 = load i32, i32* @tree_size, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %21, i64 %23
  %25 = icmp ult %struct.snmp_node* %20, %24
  br i1 %25, label %26, label %107

26:                                               ; preds = %19
  %27 = load %struct.snmp_node*, %struct.snmp_node** %6, align 8
  %28 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %27, i32 0, i32 1
  %29 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %30 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %29, i32 0, i32 0
  %31 = call i64 @asn_is_suboid(%struct.TYPE_6__* %28, %struct.TYPE_6__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %75

33:                                               ; preds = %26
  %34 = load %struct.snmp_node*, %struct.snmp_node** %6, align 8
  %35 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SNMP_NODE_LEAF, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %33
  %40 = load %struct.snmp_node*, %struct.snmp_node** %6, align 8
  %41 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %45 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %43, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %39
  %50 = load i32, i32* @FIND, align 4
  %51 = call i64 @TR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.snmp_node*, %struct.snmp_node** %6, align 8
  %55 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %54, i32 0, i32 1
  %56 = load i32, i32* @oidbuf, align 4
  %57 = call i32 @asn_oid2str_r(%struct.TYPE_6__* %55, i32 %56)
  %58 = call i32 (i8*, ...) @snmp_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %53, %49
  %60 = load %struct.snmp_node*, %struct.snmp_node** %6, align 8
  store %struct.snmp_node* %60, %struct.snmp_node** %3, align 8
  br label %114

61:                                               ; preds = %39
  br label %74

62:                                               ; preds = %33
  %63 = load i32, i32* @FIND, align 4
  %64 = call i64 @TR(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.snmp_node*, %struct.snmp_node** %6, align 8
  %68 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %67, i32 0, i32 1
  %69 = load i32, i32* @oidbuf, align 4
  %70 = call i32 @asn_oid2str_r(%struct.TYPE_6__* %68, i32 %69)
  %71 = call i32 (i8*, ...) @snmp_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %66, %62
  %73 = load %struct.snmp_node*, %struct.snmp_node** %6, align 8
  store %struct.snmp_node* %73, %struct.snmp_node** %3, align 8
  br label %114

74:                                               ; preds = %61
  br label %103

75:                                               ; preds = %26
  %76 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %77 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %76, i32 0, i32 0
  %78 = load %struct.snmp_node*, %struct.snmp_node** %6, align 8
  %79 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %78, i32 0, i32 1
  %80 = call i64 @asn_is_suboid(%struct.TYPE_6__* %77, %struct.TYPE_6__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %75
  %83 = load %struct.snmp_node*, %struct.snmp_node** %6, align 8
  %84 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %83, i32 0, i32 1
  %85 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %86 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %85, i32 0, i32 0
  %87 = call i64 @asn_compare_oid(%struct.TYPE_6__* %84, %struct.TYPE_6__* %86)
  %88 = icmp sge i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %82, %75
  %90 = load i32, i32* @FIND, align 4
  %91 = call i64 @TR(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load %struct.snmp_node*, %struct.snmp_node** %6, align 8
  %95 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %94, i32 0, i32 1
  %96 = load i32, i32* @oidbuf, align 4
  %97 = call i32 @asn_oid2str_r(%struct.TYPE_6__* %95, i32 %96)
  %98 = call i32 (i8*, ...) @snmp_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %93, %89
  %100 = load i32*, i32** %5, align 8
  store i32 1, i32* %100, align 4
  %101 = load %struct.snmp_node*, %struct.snmp_node** %6, align 8
  store %struct.snmp_node* %101, %struct.snmp_node** %3, align 8
  br label %114

102:                                              ; preds = %82
  br label %103

103:                                              ; preds = %102, %74
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.snmp_node*, %struct.snmp_node** %6, align 8
  %106 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %105, i32 1
  store %struct.snmp_node* %106, %struct.snmp_node** %6, align 8
  br label %19

107:                                              ; preds = %19
  %108 = load i32, i32* @FIND, align 4
  %109 = call i64 @TR(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = call i32 (i8*, ...) @snmp_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %107
  store %struct.snmp_node* null, %struct.snmp_node** %3, align 8
  br label %114

114:                                              ; preds = %113, %99, %72, %59
  %115 = load %struct.snmp_node*, %struct.snmp_node** %3, align 8
  ret %struct.snmp_node* %115
}

declare dso_local i64 @TR(i32) #1

declare dso_local i32 @snmp_debug(i8*, ...) #1

declare dso_local i32 @asn_oid2str_r(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @asn_is_suboid(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i64 @asn_compare_oid(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
