; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII_ipaddr.c_update_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII_ipaddr.c_update_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_context = type { i32 }
%struct.snmp_dependency = type { i32 }
%struct.update = type { i32, i32, i32, i32, i32, i32 }
%struct.mibifa = type { i32, i32, i32 }

@UPD_IFINDEX = common dso_local global i32 0, align 4
@SNMP_ERR_INCONS_NAME = common dso_local global i32 0, align 4
@mib_iflist_bad = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@RB_CREATE = common dso_local global i32 0, align 4
@RB_DESTROY = common dso_local global i32 0, align 4
@RB_MODIFY = common dso_local global i32 0, align 4
@MIBIFA_DESTROYED = common dso_local global i32 0, align 4
@mibifa_list = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_context*, %struct.snmp_dependency*, i32)* @update_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_func(%struct.snmp_context* %0, %struct.snmp_dependency* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_context*, align 8
  %6 = alloca %struct.snmp_dependency*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.update*, align 8
  %9 = alloca %struct.mibifa*, align 8
  store %struct.snmp_context* %0, %struct.snmp_context** %5, align 8
  store %struct.snmp_dependency* %1, %struct.snmp_dependency** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snmp_dependency*, %struct.snmp_dependency** %6, align 8
  %11 = bitcast %struct.snmp_dependency* %10 to %struct.update*
  store %struct.update* %11, %struct.update** %8, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %133 [
    i32 130, label %13
    i32 128, label %52
    i32 129, label %105
  ]

13:                                               ; preds = %3
  %14 = load %struct.update*, %struct.update** %8, align 8
  %15 = getelementptr inbounds %struct.update, %struct.update* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.mibifa* @mib_find_ifa(i32 %16)
  store %struct.mibifa* %17, %struct.mibifa** %9, align 8
  %18 = icmp eq %struct.mibifa* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load %struct.update*, %struct.update** %8, align 8
  %21 = getelementptr inbounds %struct.update, %struct.update* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @UPD_IFINDEX, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @SNMP_ERR_INCONS_NAME, align 4
  store i32 %27, i32* %4, align 4
  br label %135

28:                                               ; preds = %19
  %29 = load %struct.update*, %struct.update** %8, align 8
  %30 = call i32 @create(%struct.update* %29)
  store i32 %30, i32* %4, align 4
  br label %135

31:                                               ; preds = %13
  %32 = load %struct.update*, %struct.update** %8, align 8
  %33 = getelementptr inbounds %struct.update, %struct.update* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @UPD_IFINDEX, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = load %struct.update*, %struct.update** %8, align 8
  %40 = getelementptr inbounds %struct.update, %struct.update* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.snmp_context*, %struct.snmp_context** %5, align 8
  %45 = load %struct.update*, %struct.update** %8, align 8
  %46 = load %struct.mibifa*, %struct.mibifa** %9, align 8
  %47 = call i32 @destroy(%struct.snmp_context* %44, %struct.update* %45, %struct.mibifa* %46)
  store i32 %47, i32* %4, align 4
  br label %135

48:                                               ; preds = %38, %31
  %49 = load %struct.update*, %struct.update** %8, align 8
  %50 = load %struct.mibifa*, %struct.mibifa** %9, align 8
  %51 = call i32 @modify(%struct.update* %49, %struct.mibifa* %50)
  store i32 %51, i32* %4, align 4
  br label %135

52:                                               ; preds = %3
  %53 = load %struct.update*, %struct.update** %8, align 8
  %54 = getelementptr inbounds %struct.update, %struct.update* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.mibifa* @mib_find_ifa(i32 %55)
  store %struct.mibifa* %56, %struct.mibifa** %9, align 8
  %57 = icmp eq %struct.mibifa* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  store i32 1, i32* @mib_iflist_bad, align 4
  %59 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %59, i32* %4, align 4
  br label %135

60:                                               ; preds = %52
  %61 = load %struct.update*, %struct.update** %8, align 8
  %62 = getelementptr inbounds %struct.update, %struct.update* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @RB_CREATE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load %struct.mibifa*, %struct.mibifa** %9, align 8
  %69 = call i32 @mib_uncreate_ifa(%struct.mibifa* %68)
  %70 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %70, i32* %4, align 4
  br label %135

71:                                               ; preds = %60
  %72 = load %struct.update*, %struct.update** %8, align 8
  %73 = getelementptr inbounds %struct.update, %struct.update* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @RB_DESTROY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load %struct.mibifa*, %struct.mibifa** %9, align 8
  %80 = call i32 @mib_undestroy_ifa(%struct.mibifa* %79)
  %81 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %81, i32* %4, align 4
  br label %135

82:                                               ; preds = %71
  %83 = load %struct.update*, %struct.update** %8, align 8
  %84 = getelementptr inbounds %struct.update, %struct.update* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @RB_MODIFY, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %82
  %90 = load %struct.update*, %struct.update** %8, align 8
  %91 = getelementptr inbounds %struct.update, %struct.update* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mibifa*, %struct.mibifa** %9, align 8
  %94 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.update*, %struct.update** %8, align 8
  %96 = getelementptr inbounds %struct.update, %struct.update* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.mibifa*, %struct.mibifa** %9, align 8
  %99 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.mibifa*, %struct.mibifa** %9, align 8
  %101 = call i32 @mib_unmodify_ifa(%struct.mibifa* %100)
  %102 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %102, i32* %4, align 4
  br label %135

103:                                              ; preds = %82
  %104 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %104, i32* %4, align 4
  br label %135

105:                                              ; preds = %3
  %106 = load %struct.update*, %struct.update** %8, align 8
  %107 = getelementptr inbounds %struct.update, %struct.update* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @RB_DESTROY, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %131

112:                                              ; preds = %105
  %113 = load %struct.update*, %struct.update** %8, align 8
  %114 = getelementptr inbounds %struct.update, %struct.update* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call %struct.mibifa* @mib_find_ifa(i32 %115)
  store %struct.mibifa* %116, %struct.mibifa** %9, align 8
  %117 = icmp ne %struct.mibifa* %116, null
  br i1 %117, label %118, label %131

118:                                              ; preds = %112
  %119 = load %struct.mibifa*, %struct.mibifa** %9, align 8
  %120 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @MIBIFA_DESTROYED, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %118
  %126 = load %struct.mibifa*, %struct.mibifa** %9, align 8
  %127 = load i32, i32* @link, align 4
  %128 = call i32 @TAILQ_REMOVE(i32* @mibifa_list, %struct.mibifa* %126, i32 %127)
  %129 = load %struct.mibifa*, %struct.mibifa** %9, align 8
  %130 = call i32 @free(%struct.mibifa* %129)
  br label %131

131:                                              ; preds = %125, %118, %112, %105
  %132 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %132, i32* %4, align 4
  br label %135

133:                                              ; preds = %3
  %134 = call i32 (...) @abort() #3
  unreachable

135:                                              ; preds = %131, %103, %89, %78, %67, %58, %48, %43, %28, %26
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local %struct.mibifa* @mib_find_ifa(i32) #1

declare dso_local i32 @create(%struct.update*) #1

declare dso_local i32 @destroy(%struct.snmp_context*, %struct.update*, %struct.mibifa*) #1

declare dso_local i32 @modify(%struct.update*, %struct.mibifa*) #1

declare dso_local i32 @mib_uncreate_ifa(%struct.mibifa*) #1

declare dso_local i32 @mib_undestroy_ifa(%struct.mibifa*) #1

declare dso_local i32 @mib_unmodify_ifa(%struct.mibifa*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.mibifa*, i32) #1

declare dso_local i32 @free(%struct.mibifa*) #1

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
