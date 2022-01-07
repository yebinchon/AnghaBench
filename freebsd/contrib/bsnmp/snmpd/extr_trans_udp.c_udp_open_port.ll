; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_udp.c_udp_open_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_udp.c_udp_open_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_port = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, i8** }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32, i32, %struct.sockaddr*, i64, i64, i32* }
%struct.sockaddr = type { i32 }

@SNMP_ERR_NO_CREATION = common dso_local global i32 0, align 4
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@my_trans = common dso_local global i32 0, align 4
@community = common dso_local global i64 0, align 8
@COMM_INITIALIZE = common dso_local global i64 0, align 8
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, %struct.udp_port**)* @udp_open_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_open_port(i8** %0, i32 %1, %struct.udp_port** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.udp_port**, align 8
  %8 = alloca %struct.udp_port*, align 8
  %9 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.udp_port** %2, %struct.udp_port*** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 65535
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @SNMP_ERR_NO_CREATION, align 4
  store i32 %13, i32* %4, align 4
  br label %147

14:                                               ; preds = %3
  %15 = call %struct.udp_port* @malloc(i32 80)
  store %struct.udp_port* %15, %struct.udp_port** %8, align 8
  %16 = icmp eq %struct.udp_port* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %18, i32* %4, align 4
  br label %147

19:                                               ; preds = %14
  %20 = load %struct.udp_port*, %struct.udp_port** %8, align 8
  %21 = call i32 @memset(%struct.udp_port* %20, i32 0, i32 80)
  %22 = load %struct.udp_port*, %struct.udp_port** %8, align 8
  %23 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 5, i32* %25, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.udp_port*, %struct.udp_port** %8, align 8
  %31 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %29, i32* %35, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.udp_port*, %struct.udp_port** %8, align 8
  %41 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %39, i32* %45, align 4
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 2
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.udp_port*, %struct.udp_port** %8, align 8
  %51 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 %49, i32* %55, align 4
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 3
  %58 = load i8*, i8** %57, align 8
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.udp_port*, %struct.udp_port** %8, align 8
  %61 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  store i32 %59, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.udp_port*, %struct.udp_port** %8, align 8
  %68 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  store i32 %66, i32* %72, align 4
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.udp_port*, %struct.udp_port** %8, align 8
  %77 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %76, i32 0, i32 4
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 0
  store i8* %75, i8** %79, align 8
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 1
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.udp_port*, %struct.udp_port** %8, align 8
  %84 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %83, i32 0, i32 4
  %85 = load i8**, i8*** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 1
  store i8* %82, i8** %86, align 8
  %87 = load i8**, i8*** %5, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 2
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.udp_port*, %struct.udp_port** %8, align 8
  %91 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %90, i32 0, i32 4
  %92 = load i8**, i8*** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 2
  store i8* %89, i8** %93, align 8
  %94 = load i8**, i8*** %5, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 3
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.udp_port*, %struct.udp_port** %8, align 8
  %98 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %97, i32 0, i32 4
  %99 = load i8**, i8*** %98, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 3
  store i8* %96, i8** %100, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.udp_port*, %struct.udp_port** %8, align 8
  %103 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.udp_port*, %struct.udp_port** %8, align 8
  %105 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i32 -1, i32* %106, align 8
  %107 = load %struct.udp_port*, %struct.udp_port** %8, align 8
  %108 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 5
  store i32* null, i32** %109, align 8
  %110 = load %struct.udp_port*, %struct.udp_port** %8, align 8
  %111 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 4
  store i64 0, i64* %112, align 8
  %113 = load %struct.udp_port*, %struct.udp_port** %8, align 8
  %114 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  store i64 0, i64* %115, align 8
  %116 = load %struct.udp_port*, %struct.udp_port** %8, align 8
  %117 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %116, i32 0, i32 3
  %118 = bitcast i32* %117 to %struct.sockaddr*
  %119 = load %struct.udp_port*, %struct.udp_port** %8, align 8
  %120 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  store %struct.sockaddr* %118, %struct.sockaddr** %121, align 8
  %122 = load %struct.udp_port*, %struct.udp_port** %8, align 8
  %123 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  store i32 4, i32* %124, align 4
  %125 = load i32, i32* @my_trans, align 4
  %126 = load %struct.udp_port*, %struct.udp_port** %8, align 8
  %127 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %126, i32 0, i32 1
  %128 = call i32 @trans_insert_port(i32 %125, %struct.TYPE_8__* %127)
  %129 = load i64, i64* @community, align 8
  %130 = load i64, i64* @COMM_INITIALIZE, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %19
  %133 = load %struct.udp_port*, %struct.udp_port** %8, align 8
  %134 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %133, i32 0, i32 1
  %135 = call i32 @udp_init_port(%struct.TYPE_8__* %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = load %struct.udp_port*, %struct.udp_port** %8, align 8
  %140 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %139, i32 0, i32 1
  %141 = call i32 @udp_close_port(%struct.TYPE_8__* %140)
  %142 = load i32, i32* %9, align 4
  store i32 %142, i32* %4, align 4
  br label %147

143:                                              ; preds = %132, %19
  %144 = load %struct.udp_port*, %struct.udp_port** %8, align 8
  %145 = load %struct.udp_port**, %struct.udp_port*** %7, align 8
  store %struct.udp_port* %144, %struct.udp_port** %145, align 8
  %146 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %143, %138, %17, %12
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local %struct.udp_port* @malloc(i32) #1

declare dso_local i32 @memset(%struct.udp_port*, i32, i32) #1

declare dso_local i32 @trans_insert_port(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @udp_init_port(%struct.TYPE_8__*) #1

declare dso_local i32 @udp_close_port(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
