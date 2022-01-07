; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_snmp_basic.c_snmp_trap_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_snmp_basic.c_snmp_trap_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_ctx = type { i64, i32 }
%struct.snmp_v1_trap = type { i64*, i64, i32, i32, i32, i32 }
%struct.oct1_map = type { i32 }

@ASN1_UNI = common dso_local global i32 0, align 4
@ASN1_PRI = common dso_local global i32 0, align 4
@ASN1_OJI = common dso_local global i32 0, align 4
@ASN1_APL = common dso_local global i32 0, align 4
@SNMP_IPA = common dso_local global i32 0, align 4
@ASN1_OTS = common dso_local global i32 0, align 4
@ASN1_INT = common dso_local global i32 0, align 4
@SNMP_TIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.asn1_ctx*, %struct.snmp_v1_trap*, %struct.oct1_map*, i32*)* @snmp_trap_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @snmp_trap_decode(%struct.asn1_ctx* %0, %struct.snmp_v1_trap* %1, %struct.oct1_map* %2, i32* %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.asn1_ctx*, align 8
  %7 = alloca %struct.snmp_v1_trap*, align 8
  %8 = alloca %struct.oct1_map*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.asn1_ctx* %0, %struct.asn1_ctx** %6, align 8
  store %struct.snmp_v1_trap* %1, %struct.snmp_v1_trap** %7, align 8
  store %struct.oct1_map* %2, %struct.oct1_map** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.asn1_ctx*, %struct.asn1_ctx** %6, align 8
  %16 = call i32 @asn1_header_decode(%struct.asn1_ctx* %15, i8** %14, i32* %10, i32* %11, i32* %12)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i8 0, i8* %5, align 1
  br label %197

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @ASN1_UNI, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @ASN1_PRI, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @ASN1_OJI, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %23, %19
  store i8 0, i8* %5, align 1
  br label %197

32:                                               ; preds = %27
  %33 = load %struct.asn1_ctx*, %struct.asn1_ctx** %6, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = load %struct.snmp_v1_trap*, %struct.snmp_v1_trap** %7, align 8
  %36 = getelementptr inbounds %struct.snmp_v1_trap, %struct.snmp_v1_trap* %35, i32 0, i32 0
  %37 = load %struct.snmp_v1_trap*, %struct.snmp_v1_trap** %7, align 8
  %38 = getelementptr inbounds %struct.snmp_v1_trap, %struct.snmp_v1_trap* %37, i32 0, i32 5
  %39 = call i32 @asn1_oid_decode(%struct.asn1_ctx* %33, i8* %34, i64** %36, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  store i8 0, i8* %5, align 1
  br label %197

42:                                               ; preds = %32
  %43 = load %struct.asn1_ctx*, %struct.asn1_ctx** %6, align 8
  %44 = call i32 @asn1_header_decode(%struct.asn1_ctx* %43, i8** %14, i32* %10, i32* %11, i32* %12)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  br label %192

47:                                               ; preds = %42
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @ASN1_APL, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @ASN1_PRI, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @SNMP_IPA, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %72, label %59

59:                                               ; preds = %55, %51, %47
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @ASN1_UNI, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @ASN1_PRI, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @ASN1_OTS, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %72, label %71

71:                                               ; preds = %67, %63, %59
  br label %192

72:                                               ; preds = %67, %55
  %73 = load %struct.asn1_ctx*, %struct.asn1_ctx** %6, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = load %struct.snmp_v1_trap*, %struct.snmp_v1_trap** %7, align 8
  %76 = getelementptr inbounds %struct.snmp_v1_trap, %struct.snmp_v1_trap* %75, i32 0, i32 1
  %77 = bitcast i64* %76 to i8**
  %78 = call i32 @asn1_octets_decode(%struct.asn1_ctx* %73, i8* %74, i8** %77, i32* %13)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %72
  br label %192

81:                                               ; preds = %72
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 4
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %186

85:                                               ; preds = %81
  %86 = load %struct.asn1_ctx*, %struct.asn1_ctx** %6, align 8
  %87 = getelementptr inbounds %struct.asn1_ctx, %struct.asn1_ctx* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.asn1_ctx*, %struct.asn1_ctx** %6, align 8
  %90 = getelementptr inbounds %struct.asn1_ctx, %struct.asn1_ctx* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %91, 4
  %93 = load %struct.oct1_map*, %struct.oct1_map** %8, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @mangle_address(i32 %88, i64 %92, %struct.oct1_map* %93, i32* %94)
  %96 = load %struct.asn1_ctx*, %struct.asn1_ctx** %6, align 8
  %97 = call i32 @asn1_header_decode(%struct.asn1_ctx* %96, i8** %14, i32* %10, i32* %11, i32* %12)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %85
  br label %186

100:                                              ; preds = %85
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @ASN1_UNI, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %112, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @ASN1_PRI, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @ASN1_INT, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108, %104, %100
  br label %186

113:                                              ; preds = %108
  %114 = load %struct.asn1_ctx*, %struct.asn1_ctx** %6, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = load %struct.snmp_v1_trap*, %struct.snmp_v1_trap** %7, align 8
  %117 = getelementptr inbounds %struct.snmp_v1_trap, %struct.snmp_v1_trap* %116, i32 0, i32 4
  %118 = call i32 @asn1_uint_decode(%struct.asn1_ctx* %114, i8* %115, i32* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %113
  br label %186

121:                                              ; preds = %113
  %122 = load %struct.asn1_ctx*, %struct.asn1_ctx** %6, align 8
  %123 = call i32 @asn1_header_decode(%struct.asn1_ctx* %122, i8** %14, i32* %10, i32* %11, i32* %12)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %121
  br label %186

126:                                              ; preds = %121
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @ASN1_UNI, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %138, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @ASN1_PRI, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @ASN1_INT, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134, %130, %126
  br label %186

139:                                              ; preds = %134
  %140 = load %struct.asn1_ctx*, %struct.asn1_ctx** %6, align 8
  %141 = load i8*, i8** %14, align 8
  %142 = load %struct.snmp_v1_trap*, %struct.snmp_v1_trap** %7, align 8
  %143 = getelementptr inbounds %struct.snmp_v1_trap, %struct.snmp_v1_trap* %142, i32 0, i32 3
  %144 = call i32 @asn1_uint_decode(%struct.asn1_ctx* %140, i8* %141, i32* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %139
  br label %186

147:                                              ; preds = %139
  %148 = load %struct.asn1_ctx*, %struct.asn1_ctx** %6, align 8
  %149 = call i32 @asn1_header_decode(%struct.asn1_ctx* %148, i8** %14, i32* %10, i32* %11, i32* %12)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %147
  br label %186

152:                                              ; preds = %147
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @ASN1_APL, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %152
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @ASN1_PRI, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* @SNMP_TIT, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %177, label %164

164:                                              ; preds = %160, %156, %152
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* @ASN1_UNI, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %164
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @ASN1_PRI, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* @ASN1_INT, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %177, label %176

176:                                              ; preds = %172, %168, %164
  br label %186

177:                                              ; preds = %172, %160
  %178 = load %struct.asn1_ctx*, %struct.asn1_ctx** %6, align 8
  %179 = load i8*, i8** %14, align 8
  %180 = load %struct.snmp_v1_trap*, %struct.snmp_v1_trap** %7, align 8
  %181 = getelementptr inbounds %struct.snmp_v1_trap, %struct.snmp_v1_trap* %180, i32 0, i32 2
  %182 = call i32 @asn1_ulong_decode(%struct.asn1_ctx* %178, i8* %179, i32* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %177
  br label %186

185:                                              ; preds = %177
  store i8 1, i8* %5, align 1
  br label %197

186:                                              ; preds = %184, %176, %151, %146, %138, %125, %120, %112, %99, %84
  %187 = load %struct.snmp_v1_trap*, %struct.snmp_v1_trap** %7, align 8
  %188 = getelementptr inbounds %struct.snmp_v1_trap, %struct.snmp_v1_trap* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = inttoptr i64 %189 to i64*
  %191 = call i32 @kfree(i64* %190)
  br label %192

192:                                              ; preds = %186, %80, %71, %46
  %193 = load %struct.snmp_v1_trap*, %struct.snmp_v1_trap** %7, align 8
  %194 = getelementptr inbounds %struct.snmp_v1_trap, %struct.snmp_v1_trap* %193, i32 0, i32 0
  %195 = load i64*, i64** %194, align 8
  %196 = call i32 @kfree(i64* %195)
  store i8 0, i8* %5, align 1
  br label %197

197:                                              ; preds = %192, %185, %41, %31, %18
  %198 = load i8, i8* %5, align 1
  ret i8 %198
}

declare dso_local i32 @asn1_header_decode(%struct.asn1_ctx*, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @asn1_oid_decode(%struct.asn1_ctx*, i8*, i64**, i32*) #1

declare dso_local i32 @asn1_octets_decode(%struct.asn1_ctx*, i8*, i8**, i32*) #1

declare dso_local i32 @mangle_address(i32, i64, %struct.oct1_map*, i32*) #1

declare dso_local i32 @asn1_uint_decode(%struct.asn1_ctx*, i8*, i32*) #1

declare dso_local i32 @asn1_ulong_decode(%struct.asn1_ctx*, i8*, i32*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
