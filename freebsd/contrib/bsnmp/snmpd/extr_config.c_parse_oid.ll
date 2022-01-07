; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_parse_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_parse_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_node = type { i32 }
%struct.asn_oid = type { i64, i64* }

@tree = common dso_local global %struct.snmp_node* null, align 8
@tree_size = common dso_local global i64 0, align 8
@token = common dso_local global i8 0, align 1
@TOK_NUM = common dso_local global i8 0, align 1
@numval = common dso_local global i64 0, align 8
@ASN_MAXID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"subid too large %#jx\00", align 1
@ASN_MAXOIDLEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"index too long\00", align 1
@TOK_STR = common dso_local global i8 0, align 1
@strvallen = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"oid too long\00", align 1
@strval = common dso_local global i64* null, align 8
@TOK_HOST = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"bad token in index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snmp_node* (i8*, %struct.asn_oid*)* @parse_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snmp_node* @parse_oid(i8* %0, %struct.asn_oid* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca %struct.snmp_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [4 x i64], align 16
  %8 = alloca %struct.asn_oid, align 8
  store i8* %0, i8** %3, align 8
  store %struct.asn_oid* %1, %struct.asn_oid** %4, align 8
  %9 = load %struct.snmp_node*, %struct.snmp_node** @tree, align 8
  store %struct.snmp_node* %9, %struct.snmp_node** %5, align 8
  br label %10

10:                                               ; preds = %25, %2
  %11 = load %struct.snmp_node*, %struct.snmp_node** %5, align 8
  %12 = load %struct.snmp_node*, %struct.snmp_node** @tree, align 8
  %13 = load i64, i64* @tree_size, align 8
  %14 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %12, i64 %13
  %15 = icmp ult %struct.snmp_node* %11, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load i8*, i8** %3, align 8
  %18 = load %struct.snmp_node*, %struct.snmp_node** %5, align 8
  %19 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @strcmp(i8* %17, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %28

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.snmp_node*, %struct.snmp_node** %5, align 8
  %27 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %26, i32 1
  store %struct.snmp_node* %27, %struct.snmp_node** %5, align 8
  br label %10

28:                                               ; preds = %23, %10
  %29 = load %struct.snmp_node*, %struct.snmp_node** %5, align 8
  %30 = load %struct.snmp_node*, %struct.snmp_node** @tree, align 8
  %31 = load i64, i64* @tree_size, align 8
  %32 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %30, i64 %31
  %33 = icmp eq %struct.snmp_node* %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store %struct.snmp_node* null, %struct.snmp_node** %5, align 8
  br label %35

35:                                               ; preds = %34, %28
  %36 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %37 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %212, %35
  %39 = load i8, i8* @token, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 46
  br i1 %41, label %42, label %213

42:                                               ; preds = %38
  %43 = call signext i8 (...) @gettoken()
  %44 = sext i8 %43 to i32
  %45 = load i8, i8* @TOK_NUM, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %120

48:                                               ; preds = %42
  %49 = load i64, i64* @numval, align 8
  %50 = load i64, i64* @ASN_MAXID, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i64, i64* @numval, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %48
  %57 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %58 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ASN_MAXOIDLEN, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %56
  %65 = call signext i8 (...) @gettoken()
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 58
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load i64, i64* @numval, align 8
  %70 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %71 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %74 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %74, align 8
  %77 = getelementptr inbounds i64, i64* %72, i64 %75
  store i64 %69, i64* %77, align 8
  br label %119

78:                                               ; preds = %64
  %79 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %8, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load i64, i64* @numval, align 8
  %81 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %8, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %8, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %83, align 8
  %86 = getelementptr inbounds i64, i64* %82, i64 %84
  store i64 %80, i64* %86, align 8
  br label %87

87:                                               ; preds = %105, %78
  %88 = call signext i8 (...) @gettoken()
  %89 = sext i8 %88 to i32
  %90 = load i8, i8* @TOK_NUM, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %87
  %94 = load i64, i64* @numval, align 8
  %95 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %8, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %8, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %97, align 8
  %100 = getelementptr inbounds i64, i64* %96, i64 %98
  store i64 %94, i64* %100, align 8
  %101 = call signext i8 (...) @gettoken()
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 58
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  br label %106

105:                                              ; preds = %93
  br label %87

106:                                              ; preds = %104, %87
  %107 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %8, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %110 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  %112 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %113 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %113, align 8
  %116 = getelementptr inbounds i64, i64* %111, i64 %114
  store i64 %108, i64* %116, align 8
  %117 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %118 = call i32 @asn_append_oid(%struct.asn_oid* %117, %struct.asn_oid* %8)
  br label %119

119:                                              ; preds = %106, %68
  br label %212

120:                                              ; preds = %42
  %121 = load i8, i8* @token, align 1
  %122 = sext i8 %121 to i32
  %123 = load i8, i8* @TOK_STR, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %169

126:                                              ; preds = %120
  %127 = load i64, i64* @strvallen, align 8
  %128 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %129 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %127, %130
  %132 = add nsw i64 %131, 1
  %133 = load i64, i64* @ASN_MAXOIDLEN, align 8
  %134 = icmp sgt i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %126
  %136 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %126
  %138 = load i64, i64* @strvallen, align 8
  %139 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %140 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %139, i32 0, i32 1
  %141 = load i64*, i64** %140, align 8
  %142 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %143 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %143, align 8
  %146 = getelementptr inbounds i64, i64* %141, i64 %144
  store i64 %138, i64* %146, align 8
  store i64 0, i64* %6, align 8
  br label %147

147:                                              ; preds = %164, %137
  %148 = load i64, i64* %6, align 8
  %149 = load i64, i64* @strvallen, align 8
  %150 = icmp slt i64 %148, %149
  br i1 %150, label %151, label %167

151:                                              ; preds = %147
  %152 = load i64*, i64** @strval, align 8
  %153 = load i64, i64* %6, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %157 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %156, i32 0, i32 1
  %158 = load i64*, i64** %157, align 8
  %159 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %160 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %161, 1
  store i64 %162, i64* %160, align 8
  %163 = getelementptr inbounds i64, i64* %158, i64 %161
  store i64 %155, i64* %163, align 8
  br label %164

164:                                              ; preds = %151
  %165 = load i64, i64* %6, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %6, align 8
  br label %147

167:                                              ; preds = %147
  %168 = call signext i8 (...) @gettoken()
  br label %211

169:                                              ; preds = %120
  %170 = load i8, i8* @token, align 1
  %171 = sext i8 %170 to i32
  %172 = load i8, i8* @TOK_HOST, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %171, %173
  br i1 %174, label %175, label %208

175:                                              ; preds = %169
  %176 = load i64*, i64** @strval, align 8
  %177 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %178 = call i32 @gethost(i64* %176, i64* %177)
  %179 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %180 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, 4
  %183 = load i64, i64* @ASN_MAXOIDLEN, align 8
  %184 = icmp sgt i64 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %175
  %186 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %175
  store i64 0, i64* %6, align 8
  br label %188

188:                                              ; preds = %203, %187
  %189 = load i64, i64* %6, align 8
  %190 = icmp slt i64 %189, 4
  br i1 %190, label %191, label %206

191:                                              ; preds = %188
  %192 = load i64, i64* %6, align 8
  %193 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %196 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %195, i32 0, i32 1
  %197 = load i64*, i64** %196, align 8
  %198 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %199 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %200, 1
  store i64 %201, i64* %199, align 8
  %202 = getelementptr inbounds i64, i64* %197, i64 %200
  store i64 %194, i64* %202, align 8
  br label %203

203:                                              ; preds = %191
  %204 = load i64, i64* %6, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %6, align 8
  br label %188

206:                                              ; preds = %188
  %207 = call signext i8 (...) @gettoken()
  br label %210

208:                                              ; preds = %169
  %209 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %210

210:                                              ; preds = %208, %206
  br label %211

211:                                              ; preds = %210, %167
  br label %212

212:                                              ; preds = %211, %119
  br label %38

213:                                              ; preds = %38
  %214 = load %struct.snmp_node*, %struct.snmp_node** %5, align 8
  ret %struct.snmp_node* %214
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local signext i8 @gettoken(...) #1

declare dso_local i32 @report(i8*, ...) #1

declare dso_local i32 @asn_append_oid(%struct.asn_oid*, %struct.asn_oid*) #1

declare dso_local i32 @gethost(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
