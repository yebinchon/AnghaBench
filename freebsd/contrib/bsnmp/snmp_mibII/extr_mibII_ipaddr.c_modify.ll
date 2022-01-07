; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII_ipaddr.c_modify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII_ipaddr.c_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.update = type { i32, i64, i32, %struct.TYPE_6__, %struct.TYPE_5__, i64, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mibifa = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mibif = type { i32 }

@SNMP_ERR_WRONG_VALUE = common dso_local global i32 0, align 4
@UPD_IFINDEX = common dso_local global i32 0, align 4
@SNMP_ERR_INCONS_VALUE = common dso_local global i32 0, align 4
@UPD_MASK = common dso_local global i32 0, align 4
@UPD_BCAST = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"set netmask/bcast: %m\00", align 1
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@RB_MODIFY = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.update*, %struct.mibifa*)* @modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modify(%struct.update* %0, %struct.mibifa* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.update*, align 8
  %5 = alloca %struct.mibifa*, align 8
  %6 = alloca %struct.mibif*, align 8
  store %struct.update* %0, %struct.update** %4, align 8
  store %struct.mibifa* %1, %struct.mibifa** %5, align 8
  %7 = load %struct.mibifa*, %struct.mibifa** %5, align 8
  %8 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call %struct.mibif* @mib_find_if(i64 %9)
  store %struct.mibif* %10, %struct.mibif** %6, align 8
  %11 = icmp eq %struct.mibif* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @SNMP_ERR_WRONG_VALUE, align 4
  store i32 %13, i32* %3, align 4
  br label %148

14:                                               ; preds = %2
  %15 = load %struct.update*, %struct.update** %4, align 8
  %16 = getelementptr inbounds %struct.update, %struct.update* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @UPD_IFINDEX, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load %struct.update*, %struct.update** %4, align 8
  %23 = getelementptr inbounds %struct.update, %struct.update* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.mibifa*, %struct.mibifa** %5, align 8
  %26 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %30, i32* %3, align 4
  br label %148

31:                                               ; preds = %21, %14
  %32 = load %struct.update*, %struct.update** %4, align 8
  %33 = getelementptr inbounds %struct.update, %struct.update* %32, i32 0, i32 4
  %34 = load %struct.mibifa*, %struct.mibifa** %5, align 8
  %35 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %34, i32 0, i32 2
  %36 = bitcast %struct.TYPE_5__* %33 to i8*
  %37 = bitcast %struct.TYPE_5__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 4 %37, i64 4, i1 false)
  %38 = load %struct.update*, %struct.update** %4, align 8
  %39 = getelementptr inbounds %struct.update, %struct.update* %38, i32 0, i32 3
  %40 = load %struct.mibifa*, %struct.mibifa** %5, align 8
  %41 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %40, i32 0, i32 1
  %42 = bitcast %struct.TYPE_6__* %39 to i8*
  %43 = bitcast %struct.TYPE_6__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 8 %43, i64 4, i1 false)
  %44 = load %struct.update*, %struct.update** %4, align 8
  %45 = getelementptr inbounds %struct.update, %struct.update* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @UPD_MASK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %31
  %51 = load %struct.update*, %struct.update** %4, align 8
  %52 = getelementptr inbounds %struct.update, %struct.update* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mibifa*, %struct.mibifa** %5, align 8
  %56 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %54, %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %50, %31
  %61 = load %struct.update*, %struct.update** %4, align 8
  %62 = getelementptr inbounds %struct.update, %struct.update* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @UPD_BCAST, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %146

67:                                               ; preds = %60, %50
  %68 = load %struct.update*, %struct.update** %4, align 8
  %69 = getelementptr inbounds %struct.update, %struct.update* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @UPD_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.mibifa*, %struct.mibifa** %5, align 8
  %76 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %75, i32 0, i32 2
  %77 = load %struct.update*, %struct.update** %4, align 8
  %78 = getelementptr inbounds %struct.update, %struct.update* %77, i32 0, i32 6
  %79 = bitcast %struct.TYPE_5__* %76 to i8*
  %80 = bitcast %struct.TYPE_5__* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 8 %80, i64 4, i1 false)
  br label %81

81:                                               ; preds = %74, %67
  %82 = load %struct.update*, %struct.update** %4, align 8
  %83 = getelementptr inbounds %struct.update, %struct.update* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @UPD_BCAST, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %118

88:                                               ; preds = %81
  %89 = load %struct.mibifa*, %struct.mibifa** %5, align 8
  %90 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.mibifa*, %struct.mibifa** %5, align 8
  %94 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %92, %96
  %98 = load %struct.mibifa*, %struct.mibifa** %5, align 8
  %99 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 8
  %101 = load %struct.update*, %struct.update** %4, align 8
  %102 = getelementptr inbounds %struct.update, %struct.update* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %88
  %106 = load %struct.mibifa*, %struct.mibifa** %5, align 8
  %107 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 -1, %110
  %112 = load %struct.mibifa*, %struct.mibifa** %5, align 8
  %113 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %111
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %105, %88
  br label %118

118:                                              ; preds = %117, %81
  %119 = load %struct.mibifa*, %struct.mibifa** %5, align 8
  %120 = call i64 @mib_modify_ifa(%struct.mibifa* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %118
  %123 = load i32, i32* @LOG_ERR, align 4
  %124 = call i32 @syslog(i32 %123, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %125 = load %struct.mibifa*, %struct.mibifa** %5, align 8
  %126 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %125, i32 0, i32 2
  %127 = load %struct.update*, %struct.update** %4, align 8
  %128 = getelementptr inbounds %struct.update, %struct.update* %127, i32 0, i32 4
  %129 = bitcast %struct.TYPE_5__* %126 to i8*
  %130 = bitcast %struct.TYPE_5__* %128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %129, i8* align 8 %130, i64 4, i1 false)
  %131 = load %struct.mibifa*, %struct.mibifa** %5, align 8
  %132 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %131, i32 0, i32 1
  %133 = load %struct.update*, %struct.update** %4, align 8
  %134 = getelementptr inbounds %struct.update, %struct.update* %133, i32 0, i32 3
  %135 = bitcast %struct.TYPE_6__* %132 to i8*
  %136 = bitcast %struct.TYPE_6__* %134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %135, i8* align 4 %136, i64 4, i1 false)
  %137 = load %struct.mibifa*, %struct.mibifa** %5, align 8
  %138 = call i32 @mib_unmodify_ifa(%struct.mibifa* %137)
  %139 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %139, i32* %3, align 4
  br label %148

140:                                              ; preds = %118
  %141 = load i32, i32* @RB_MODIFY, align 4
  %142 = load %struct.update*, %struct.update** %4, align 8
  %143 = getelementptr inbounds %struct.update, %struct.update* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %140, %60
  %147 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %146, %122, %29, %12
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.mibif* @mib_find_if(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mib_modify_ifa(%struct.mibifa*) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i32 @mib_unmodify_ifa(%struct.mibifa*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
