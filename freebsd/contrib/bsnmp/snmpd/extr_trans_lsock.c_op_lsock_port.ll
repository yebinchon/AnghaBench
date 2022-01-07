; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_lsock.c_op_lsock_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_lsock.c_op_lsock_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_context = type { i32 }
%struct.snmp_value = type { %struct.TYPE_9__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32*, i32 }
%struct.lsock_port = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.lsock_dep = type { i64, i32, i32, i32, %struct.lsock_port*, i32* }
%struct.asn_oid = type { i32 }

@my_trans = common dso_local global i32 0, align 4
@SNMP_ERR_NOSUCHNAME = common dso_local global i32 0, align 4
@SNMP_ERR_NO_CREATION = common dso_local global i32 0, align 4
@oid_begemotSnmpdLocalPortTable = common dso_local global i32 0, align 4
@lsock_func = common dso_local global i32 0, align 4
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@LD_STATUS = common dso_local global i32 0, align 4
@SNMP_ERR_INCONS_VALUE = common dso_local global i32 0, align 4
@SNMP_ERR_WRONG_VALUE = common dso_local global i32 0, align 4
@LD_TYPE = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @op_lsock_port(%struct.snmp_context* %0, %struct.snmp_value* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snmp_context*, align 8
  %8 = alloca %struct.snmp_value*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.lsock_port*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.lsock_dep*, align 8
  %17 = alloca %struct.asn_oid, align 4
  store %struct.snmp_context* %0, %struct.snmp_context** %7, align 8
  store %struct.snmp_value* %1, %struct.snmp_value** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %19 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %11, align 4
  switch i32 %27, label %181 [
    i32 130, label %28
    i32 131, label %46
    i32 128, label %57
    i32 129, label %179
    i32 132, label %179
  ]

28:                                               ; preds = %5
  %29 = load i32, i32* @my_trans, align 4
  %30 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %31 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %30, i32 0, i32 1
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @trans_next_port(i32 %29, %struct.TYPE_10__* %31, i32 %32)
  %34 = inttoptr i64 %33 to %struct.lsock_port*
  store %struct.lsock_port* %34, %struct.lsock_port** %13, align 8
  %35 = icmp eq %struct.lsock_port* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @SNMP_ERR_NOSUCHNAME, align 4
  store i32 %37, i32* %6, align 4
  br label %200

38:                                               ; preds = %28
  %39 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %40 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %39, i32 0, i32 1
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.lsock_port*, %struct.lsock_port** %13, align 8
  %43 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = call i32 @index_append(%struct.TYPE_10__* %40, i32 %41, i32* %44)
  br label %183

46:                                               ; preds = %5
  %47 = load i32, i32* @my_trans, align 4
  %48 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %49 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %48, i32 0, i32 1
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @trans_find_port(i32 %47, %struct.TYPE_10__* %49, i32 %50)
  %52 = inttoptr i64 %51 to %struct.lsock_port*
  store %struct.lsock_port* %52, %struct.lsock_port** %13, align 8
  %53 = icmp eq %struct.lsock_port* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @SNMP_ERR_NOSUCHNAME, align 4
  store i32 %55, i32* %6, align 4
  br label %200

56:                                               ; preds = %46
  br label %183

57:                                               ; preds = %5
  %58 = load i32, i32* @my_trans, align 4
  %59 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %60 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %59, i32 0, i32 1
  %61 = load i32, i32* %9, align 4
  %62 = call i64 @trans_find_port(i32 %58, %struct.TYPE_10__* %60, i32 %61)
  %63 = inttoptr i64 %62 to %struct.lsock_port*
  store %struct.lsock_port* %63, %struct.lsock_port** %13, align 8
  %64 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %65 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %64, i32 0, i32 1
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @index_decode(%struct.TYPE_10__* %65, i32 %66, i32 %67, i32** %14, i64* %15)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %57
  %71 = load i32, i32* @SNMP_ERR_NO_CREATION, align 4
  store i32 %71, i32* %6, align 4
  br label %200

72:                                               ; preds = %57
  %73 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %74 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %73, i32 0, i32 1
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %77 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @asn_slice_oid(%struct.asn_oid* %17, %struct.TYPE_10__* %74, i32 %75, i32 %79)
  %81 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %82 = load i32, i32* @lsock_func, align 4
  %83 = call i64 @snmp_dep_lookup(%struct.snmp_context* %81, i32* @oid_begemotSnmpdLocalPortTable, %struct.asn_oid* %17, i32 40, i32 %82)
  %84 = inttoptr i64 %83 to i8*
  %85 = bitcast i8* %84 to %struct.lsock_dep*
  store %struct.lsock_dep* %85, %struct.lsock_dep** %16, align 8
  %86 = icmp eq %struct.lsock_dep* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %72
  %88 = load i32*, i32** %14, align 8
  %89 = call i32 @free(i32* %88)
  %90 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %90, i32* %6, align 4
  br label %200

91:                                               ; preds = %72
  %92 = load %struct.lsock_dep*, %struct.lsock_dep** %16, align 8
  %93 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %92, i32 0, i32 5
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i32*, i32** %14, align 8
  %98 = load %struct.lsock_dep*, %struct.lsock_dep** %16, align 8
  %99 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %98, i32 0, i32 5
  store i32* %97, i32** %99, align 8
  %100 = load i64, i64* %15, align 8
  %101 = load %struct.lsock_dep*, %struct.lsock_dep** %16, align 8
  %102 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  br label %106

103:                                              ; preds = %91
  %104 = load i32*, i32** %14, align 8
  %105 = call i32 @free(i32* %104)
  br label %106

106:                                              ; preds = %103, %96
  %107 = load %struct.lsock_port*, %struct.lsock_port** %13, align 8
  %108 = load %struct.lsock_dep*, %struct.lsock_dep** %16, align 8
  %109 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %108, i32 0, i32 4
  store %struct.lsock_port* %107, %struct.lsock_port** %109, align 8
  %110 = load i32, i32* %12, align 4
  switch i32 %110, label %177 [
    i32 134, label %111
    i32 133, label %142
  ]

111:                                              ; preds = %106
  %112 = load %struct.lsock_dep*, %struct.lsock_dep** %16, align 8
  %113 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @LD_STATUS, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %119, i32* %6, align 4
  br label %200

120:                                              ; preds = %111
  %121 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %122 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @TRUTH_OK(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %120
  %128 = load i32, i32* @SNMP_ERR_WRONG_VALUE, align 4
  store i32 %128, i32* %6, align 4
  br label %200

129:                                              ; preds = %120
  %130 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %131 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @TRUTH_GET(i32 %133)
  %135 = load %struct.lsock_dep*, %struct.lsock_dep** %16, align 8
  %136 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @LD_STATUS, align 4
  %138 = load %struct.lsock_dep*, %struct.lsock_dep** %16, align 8
  %139 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %177

142:                                              ; preds = %106
  %143 = load %struct.lsock_dep*, %struct.lsock_dep** %16, align 8
  %144 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @LD_TYPE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %150, i32* %6, align 4
  br label %200

151:                                              ; preds = %142
  %152 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %153 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %155, 1
  br i1 %156, label %163, label %157

157:                                              ; preds = %151
  %158 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %159 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp sgt i32 %161, 4
  br i1 %162, label %163, label %165

163:                                              ; preds = %157, %151
  %164 = load i32, i32* @SNMP_ERR_WRONG_VALUE, align 4
  store i32 %164, i32* %6, align 4
  br label %200

165:                                              ; preds = %157
  %166 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %167 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.lsock_dep*, %struct.lsock_dep** %16, align 8
  %171 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* @LD_TYPE, align 4
  %173 = load %struct.lsock_dep*, %struct.lsock_dep** %16, align 8
  %174 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %106, %165, %129
  %178 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %178, i32* %6, align 4
  br label %200

179:                                              ; preds = %5, %5
  %180 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %180, i32* %6, align 4
  br label %200

181:                                              ; preds = %5
  %182 = call i32 (...) @abort() #3
  unreachable

183:                                              ; preds = %56, %38
  %184 = load i32, i32* %12, align 4
  switch i32 %184, label %196 [
    i32 134, label %185
    i32 133, label %189
  ]

185:                                              ; preds = %183
  %186 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %187 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  store i32 1, i32* %188, align 8
  br label %198

189:                                              ; preds = %183
  %190 = load %struct.lsock_port*, %struct.lsock_port** %13, align 8
  %191 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %194 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 8
  br label %198

196:                                              ; preds = %183
  %197 = call i32 (...) @abort() #3
  unreachable

198:                                              ; preds = %189, %185
  %199 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %199, i32* %6, align 4
  br label %200

200:                                              ; preds = %198, %179, %177, %163, %149, %127, %118, %87, %70, %54, %36
  %201 = load i32, i32* %6, align 4
  ret i32 %201
}

declare dso_local i64 @trans_next_port(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @index_append(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i64 @trans_find_port(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @index_decode(%struct.TYPE_10__*, i32, i32, i32**, i64*) #1

declare dso_local i32 @asn_slice_oid(%struct.asn_oid*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @snmp_dep_lookup(%struct.snmp_context*, i32*, %struct.asn_oid*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @TRUTH_OK(i32) #1

declare dso_local i32 @TRUTH_GET(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
