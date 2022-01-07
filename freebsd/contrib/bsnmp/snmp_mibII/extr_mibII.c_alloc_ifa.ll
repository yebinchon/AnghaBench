; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_alloc_ifa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_alloc_ifa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mibifa = type { %struct.TYPE_6__, %struct.TYPE_5__, i64, %struct.TYPE_4__, %struct.in_addr, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.in_addr = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ifa: %m\00", align 1
@mibifa_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mibifa* (i32, i32)* @alloc_ifa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mibifa* @alloc_ifa(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.mibifa*, align 8
  %4 = alloca %struct.in_addr, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mibifa*, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  store i32 %1, i32* %8, align 4
  store i32 %0, i32* %5, align 4
  %9 = call %struct.mibifa* @malloc(i32 48)
  store %struct.mibifa* %9, %struct.mibifa** %6, align 8
  %10 = icmp eq %struct.mibifa* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @LOG_ERR, align 4
  %13 = call i32 @syslog(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.mibifa* null, %struct.mibifa** %3, align 8
  br label %73

14:                                               ; preds = %2
  %15 = load %struct.mibifa*, %struct.mibifa** %6, align 8
  %16 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %15, i32 0, i32 4
  %17 = bitcast %struct.in_addr* %16 to i8*
  %18 = bitcast %struct.in_addr* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.mibifa*, %struct.mibifa** %6, align 8
  %21 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = load %struct.mibifa*, %struct.mibifa** %6, align 8
  %23 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ntohl(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.mibifa*, %struct.mibifa** %6, align 8
  %28 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 4, i32* %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = ashr i32 %30, 24
  %32 = and i32 %31, 255
  %33 = load %struct.mibifa*, %struct.mibifa** %6, align 8
  %34 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %32, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %38, 16
  %40 = and i32 %39, 255
  %41 = load %struct.mibifa*, %struct.mibifa** %6, align 8
  %42 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %40, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = ashr i32 %46, 8
  %48 = and i32 %47, 255
  %49 = load %struct.mibifa*, %struct.mibifa** %6, align 8
  %50 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* %7, align 4
  %55 = ashr i32 %54, 0
  %56 = and i32 %55, 255
  %57 = load %struct.mibifa*, %struct.mibifa** %6, align 8
  %58 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  store i32 %56, i32* %61, align 4
  %62 = load %struct.mibifa*, %struct.mibifa** %6, align 8
  %63 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load %struct.mibifa*, %struct.mibifa** %6, align 8
  %65 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.mibifa*, %struct.mibifa** %6, align 8
  %68 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 -1, i32* %69, align 8
  %70 = load %struct.mibifa*, %struct.mibifa** %6, align 8
  %71 = call i32 @INSERT_OBJECT_OID(%struct.mibifa* %70, i32* @mibifa_list)
  %72 = load %struct.mibifa*, %struct.mibifa** %6, align 8
  store %struct.mibifa* %72, %struct.mibifa** %3, align 8
  br label %73

73:                                               ; preds = %14, %11
  %74 = load %struct.mibifa*, %struct.mibifa** %3, align 8
  ret %struct.mibifa* %74
}

declare dso_local %struct.mibifa* @malloc(i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @INSERT_OBJECT_OID(%struct.mibifa*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
