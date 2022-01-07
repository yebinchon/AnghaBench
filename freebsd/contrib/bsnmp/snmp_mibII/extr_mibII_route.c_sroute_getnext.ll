; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII_route.c_sroute_getnext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII_route.c_sroute_getnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sroute = type { i64* }
%struct.asn_oid = type { i32, i64* }

@sroutes = common dso_local global i32 0, align 4
@ASN_MAXID = common dso_local global i64 0, align 8
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sroute* (%struct.asn_oid*, i32)* @sroute_getnext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sroute* @sroute_getnext(%struct.asn_oid* %0, i32 %1) #0 {
  %3 = alloca %struct.sroute*, align 8
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sroute, align 8
  %9 = alloca %struct.sroute*, align 8
  %10 = alloca %struct.sroute*, align 8
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %12 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @sroutes, align 4
  %18 = call %struct.sroute* @RB_MIN(i32 %17, i32* @sroutes)
  store %struct.sroute* %18, %struct.sroute** %3, align 8
  br label %173

19:                                               ; preds = %2
  %20 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %21 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 13
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %118

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %45, %26
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %31 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %36 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %48

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %28

48:                                               ; preds = %43, %28
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %51 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @sroutes, align 4
  %56 = call %struct.sroute* @RB_MIN(i32 %55, i32* @sroutes)
  store %struct.sroute* %56, %struct.sroute** %3, align 8
  br label %173

57:                                               ; preds = %48
  %58 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %59 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %73, %57
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 13
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %68 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %61

76:                                               ; preds = %61
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 13
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %110, %76
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %113

84:                                               ; preds = %80
  %85 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %86 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %84
  %94 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %95 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, -1
  store i64 %101, i64* %99, align 8
  br label %113

102:                                              ; preds = %84
  %103 = load i64, i64* @ASN_MAXID, align 8
  %104 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %105 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %104, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  store i64 %103, i64* %109, align 8
  br label %110

110:                                              ; preds = %102
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %6, align 4
  br label %80

113:                                              ; preds = %93, %80
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 13
  %116 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %117 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %113, %19
  %119 = load i32, i32* %5, align 4
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %140, %118
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 13
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %125, label %143

125:                                              ; preds = %120
  %126 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %127 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.sroute, %struct.sroute* %8, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %5, align 4
  %137 = sub nsw i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %134, i64 %138
  store i64 %132, i64* %139, align 8
  br label %140

140:                                              ; preds = %125
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %6, align 4
  br label %120

143:                                              ; preds = %120
  store %struct.sroute* null, %struct.sroute** %9, align 8
  %144 = call %struct.sroute* @RB_ROOT(i32* @sroutes)
  store %struct.sroute* %144, %struct.sroute** %10, align 8
  br label %145

145:                                              ; preds = %167, %153, %143
  %146 = load %struct.sroute*, %struct.sroute** %10, align 8
  %147 = icmp ne %struct.sroute* %146, null
  br i1 %147, label %148, label %171

148:                                              ; preds = %145
  %149 = load %struct.sroute*, %struct.sroute** %10, align 8
  %150 = call i32 @sroute_compare(%struct.sroute* %8, %struct.sroute* %149)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp sge i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load %struct.sroute*, %struct.sroute** %10, align 8
  %155 = load i32, i32* @link, align 4
  %156 = call %struct.sroute* @RB_RIGHT(%struct.sroute* %154, i32 %155)
  store %struct.sroute* %156, %struct.sroute** %10, align 8
  br label %145

157:                                              ; preds = %148
  %158 = load %struct.sroute*, %struct.sroute** %9, align 8
  %159 = icmp eq %struct.sroute* %158, null
  br i1 %159, label %165, label %160

160:                                              ; preds = %157
  %161 = load %struct.sroute*, %struct.sroute** %10, align 8
  %162 = load %struct.sroute*, %struct.sroute** %9, align 8
  %163 = call i32 @sroute_compare(%struct.sroute* %161, %struct.sroute* %162)
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160, %157
  %166 = load %struct.sroute*, %struct.sroute** %10, align 8
  store %struct.sroute* %166, %struct.sroute** %9, align 8
  br label %167

167:                                              ; preds = %165, %160
  %168 = load %struct.sroute*, %struct.sroute** %10, align 8
  %169 = load i32, i32* @link, align 4
  %170 = call %struct.sroute* @RB_LEFT(%struct.sroute* %168, i32 %169)
  store %struct.sroute* %170, %struct.sroute** %10, align 8
  br label %145

171:                                              ; preds = %145
  %172 = load %struct.sroute*, %struct.sroute** %9, align 8
  store %struct.sroute* %172, %struct.sroute** %3, align 8
  br label %173

173:                                              ; preds = %171, %54, %16
  %174 = load %struct.sroute*, %struct.sroute** %3, align 8
  ret %struct.sroute* %174
}

declare dso_local %struct.sroute* @RB_MIN(i32, i32*) #1

declare dso_local %struct.sroute* @RB_ROOT(i32*) #1

declare dso_local i32 @sroute_compare(%struct.sroute*, %struct.sroute*) #1

declare dso_local %struct.sroute* @RB_RIGHT(%struct.sroute*, i32) #1

declare dso_local %struct.sroute* @RB_LEFT(%struct.sroute*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
