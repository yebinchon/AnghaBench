; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpagent.c_do_getnext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpagent.c_do_getnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_node = type { i64, i32 (i32*, %struct.snmp_value*, i32, i32, i32)*, %struct.TYPE_2__, i32, i32 }
%struct.snmp_value = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64* }
%struct.context = type { i32 }
%struct.snmp_pdu = type { i64, i32 }

@SNMP_NODE_LEAF = common dso_local global i64 0, align 8
@SNMP_OP_GET = common dso_local global i32 0, align 4
@SNMP_OP_GETNEXT = common dso_local global i32 0, align 4
@SNMP_ERR_NOSUCHNAME = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@GETNEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"getnext: %s returns %u\00", align 1
@tree = common dso_local global %struct.snmp_node* null, align 8
@tree_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"getnext: no data - avancing to %s\00", align 1
@SNMP_V1 = common dso_local global i64 0, align 8
@SNMP_RET_ERR = common dso_local global i32 0, align 4
@SNMP_SYNTAX_ENDOFMIBVIEW = common dso_local global i32 0, align 4
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@SNMP_RET_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.context*, %struct.snmp_value*, %struct.snmp_value*, %struct.snmp_pdu*)* @do_getnext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_getnext(%struct.context* %0, %struct.snmp_value* %1, %struct.snmp_value* %2, %struct.snmp_pdu* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.context*, align 8
  %7 = alloca %struct.snmp_value*, align 8
  %8 = alloca %struct.snmp_value*, align 8
  %9 = alloca %struct.snmp_pdu*, align 8
  %10 = alloca %struct.snmp_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %6, align 8
  store %struct.snmp_value* %1, %struct.snmp_value** %7, align 8
  store %struct.snmp_value* %2, %struct.snmp_value** %8, align 8
  store %struct.snmp_pdu* %3, %struct.snmp_pdu** %9, align 8
  %13 = load %struct.snmp_value*, %struct.snmp_value** %7, align 8
  %14 = call %struct.snmp_node* @next_node(%struct.snmp_value* %13, i32* %12)
  store %struct.snmp_node* %14, %struct.snmp_node** %10, align 8
  %15 = icmp eq %struct.snmp_node* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %144

17:                                               ; preds = %4
  %18 = load %struct.snmp_node*, %struct.snmp_node** %10, align 8
  %19 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SNMP_NODE_LEAF, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23, %17
  %27 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %28 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %27, i32 0, i32 1
  %29 = load %struct.snmp_node*, %struct.snmp_node** %10, align 8
  %30 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %29, i32 0, i32 2
  %31 = bitcast %struct.TYPE_2__* %28 to i8*
  %32 = bitcast %struct.TYPE_2__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 16, i1 false)
  br label %40

33:                                               ; preds = %23
  %34 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %35 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %34, i32 0, i32 1
  %36 = load %struct.snmp_value*, %struct.snmp_value** %7, align 8
  %37 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %36, i32 0, i32 1
  %38 = bitcast %struct.TYPE_2__* %35 to i8*
  %39 = bitcast %struct.TYPE_2__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 16, i1 false)
  br label %40

40:                                               ; preds = %33, %26
  br label %41

41:                                               ; preds = %132, %40
  %42 = load %struct.snmp_node*, %struct.snmp_node** %10, align 8
  %43 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %46 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.snmp_node*, %struct.snmp_node** %10, align 8
  %48 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SNMP_NODE_LEAF, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %79

52:                                               ; preds = %41
  %53 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %54 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %58 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i64, i64* %56, i64 %62
  store i64 0, i64* %63, align 8
  %64 = load %struct.snmp_node*, %struct.snmp_node** %10, align 8
  %65 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %64, i32 0, i32 1
  %66 = load i32 (i32*, %struct.snmp_value*, i32, i32, i32)*, i32 (i32*, %struct.snmp_value*, i32, i32, i32)** %65, align 8
  %67 = load %struct.context*, %struct.context** %6, align 8
  %68 = getelementptr inbounds %struct.context, %struct.context* %67, i32 0, i32 0
  %69 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %70 = load %struct.snmp_node*, %struct.snmp_node** %10, align 8
  %71 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.snmp_node*, %struct.snmp_node** %10, align 8
  %75 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @SNMP_OP_GET, align 4
  %78 = call i32 %66(i32* %68, %struct.snmp_value* %69, i32 %73, i32 %76, i32 %77)
  store i32 %78, i32* %11, align 4
  br label %95

79:                                               ; preds = %41
  %80 = load %struct.snmp_node*, %struct.snmp_node** %10, align 8
  %81 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %80, i32 0, i32 1
  %82 = load i32 (i32*, %struct.snmp_value*, i32, i32, i32)*, i32 (i32*, %struct.snmp_value*, i32, i32, i32)** %81, align 8
  %83 = load %struct.context*, %struct.context** %6, align 8
  %84 = getelementptr inbounds %struct.context, %struct.context* %83, i32 0, i32 0
  %85 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %86 = load %struct.snmp_node*, %struct.snmp_node** %10, align 8
  %87 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.snmp_node*, %struct.snmp_node** %10, align 8
  %91 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @SNMP_OP_GETNEXT, align 4
  %94 = call i32 %82(i32* %84, %struct.snmp_value* %85, i32 %89, i32 %92, i32 %93)
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %79, %52
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @SNMP_ERR_NOSUCHNAME, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %95
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %99
  %104 = load i32, i32* @GETNEXT, align 4
  %105 = call i64 @TR(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %109 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %108, i32 0, i32 1
  %110 = call i32 @asn_oid2str(%struct.TYPE_2__* %109)
  %111 = load i32, i32* %11, align 4
  %112 = call i32 (i8*, i32, ...) @snmp_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %107, %103, %99
  br label %139

114:                                              ; preds = %95
  %115 = load %struct.snmp_node*, %struct.snmp_node** %10, align 8
  %116 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %115, i32 1
  store %struct.snmp_node* %116, %struct.snmp_node** %10, align 8
  %117 = load %struct.snmp_node*, %struct.snmp_node** @tree, align 8
  %118 = load i32, i32* @tree_size, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %117, i64 %119
  %121 = icmp eq %struct.snmp_node* %116, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  br label %139

123:                                              ; preds = %114
  %124 = load i32, i32* @GETNEXT, align 4
  %125 = call i64 @TR(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load %struct.snmp_node*, %struct.snmp_node** %10, align 8
  %129 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %128, i32 0, i32 2
  %130 = call i32 @asn_oid2str(%struct.TYPE_2__* %129)
  %131 = call i32 (i8*, i32, ...) @snmp_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %127, %123
  %133 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %134 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %133, i32 0, i32 1
  %135 = load %struct.snmp_node*, %struct.snmp_node** %10, align 8
  %136 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %135, i32 0, i32 2
  %137 = bitcast %struct.TYPE_2__* %134 to i8*
  %138 = bitcast %struct.TYPE_2__* %136 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %137, i8* align 8 %138, i64 16, i1 false)
  br label %41

139:                                              ; preds = %122, %113
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @SNMP_ERR_NOSUCHNAME, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %165

143:                                              ; preds = %139
  br label %144

144:                                              ; preds = %143, %16
  %145 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %146 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %145, i32 0, i32 1
  %147 = load %struct.snmp_value*, %struct.snmp_value** %7, align 8
  %148 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %147, i32 0, i32 1
  %149 = bitcast %struct.TYPE_2__* %146 to i8*
  %150 = bitcast %struct.TYPE_2__* %148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %149, i8* align 8 %150, i64 16, i1 false)
  %151 = load %struct.snmp_pdu*, %struct.snmp_pdu** %9, align 8
  %152 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @SNMP_V1, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %144
  %157 = load i32, i32* @SNMP_ERR_NOSUCHNAME, align 4
  %158 = load %struct.snmp_pdu*, %struct.snmp_pdu** %9, align 8
  %159 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* @SNMP_RET_ERR, align 4
  store i32 %160, i32* %5, align 4
  br label %177

161:                                              ; preds = %144
  %162 = load i32, i32* @SNMP_SYNTAX_ENDOFMIBVIEW, align 4
  %163 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %164 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  br label %175

165:                                              ; preds = %139
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = load i32, i32* @SNMP_ERR_GENERR, align 4
  %171 = load %struct.snmp_pdu*, %struct.snmp_pdu** %9, align 8
  %172 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 8
  %173 = load i32, i32* @SNMP_RET_ERR, align 4
  store i32 %173, i32* %5, align 4
  br label %177

174:                                              ; preds = %165
  br label %175

175:                                              ; preds = %174, %161
  %176 = load i32, i32* @SNMP_RET_OK, align 4
  store i32 %176, i32* %5, align 4
  br label %177

177:                                              ; preds = %175, %169, %156
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local %struct.snmp_node* @next_node(%struct.snmp_value*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @TR(i32) #1

declare dso_local i32 @snmp_debug(i8*, i32, ...) #1

declare dso_local i32 @asn_oid2str(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
