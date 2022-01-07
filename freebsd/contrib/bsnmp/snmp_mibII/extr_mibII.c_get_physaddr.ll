; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_get_physaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_get_physaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mibif = type { i64, i32*, i32 }
%struct.sockaddr_dl = type { i64 }
%struct.mibrcvaddr = type { i32 }

@MIBRCVADDR_HW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mibif*, %struct.sockaddr_dl*, i32*)* @get_physaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_physaddr(%struct.mibif* %0, %struct.sockaddr_dl* %1, i32* %2) #0 {
  %4 = alloca %struct.mibif*, align 8
  %5 = alloca %struct.sockaddr_dl*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mibrcvaddr*, align 8
  store %struct.mibif* %0, %struct.mibif** %4, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %10 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %3
  %14 = load %struct.mibif*, %struct.mibif** %4, align 8
  %15 = getelementptr inbounds %struct.mibif, %struct.mibif* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %13
  %19 = load %struct.mibif*, %struct.mibif** %4, align 8
  %20 = getelementptr inbounds %struct.mibif, %struct.mibif* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mibif*, %struct.mibif** %4, align 8
  %23 = getelementptr inbounds %struct.mibif, %struct.mibif* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.mibif*, %struct.mibif** %4, align 8
  %26 = getelementptr inbounds %struct.mibif, %struct.mibif* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.mibrcvaddr* @mib_find_rcvaddr(i32 %21, i32* %24, i64 %27)
  store %struct.mibrcvaddr* %28, %struct.mibrcvaddr** %8, align 8
  %29 = icmp ne %struct.mibrcvaddr* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load %struct.mibrcvaddr*, %struct.mibrcvaddr** %8, align 8
  %32 = call i32 @mib_rcvaddr_delete(%struct.mibrcvaddr* %31)
  br label %33

33:                                               ; preds = %30, %18
  %34 = load %struct.mibif*, %struct.mibif** %4, align 8
  %35 = getelementptr inbounds %struct.mibif, %struct.mibif* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @free(i32* %36)
  %38 = load %struct.mibif*, %struct.mibif** %4, align 8
  %39 = getelementptr inbounds %struct.mibif, %struct.mibif* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.mibif*, %struct.mibif** %4, align 8
  %41 = getelementptr inbounds %struct.mibif, %struct.mibif* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %33, %13
  br label %151

43:                                               ; preds = %3
  %44 = load %struct.mibif*, %struct.mibif** %4, align 8
  %45 = getelementptr inbounds %struct.mibif, %struct.mibif* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %48 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %99

51:                                               ; preds = %43
  %52 = load %struct.mibif*, %struct.mibif** %4, align 8
  %53 = getelementptr inbounds %struct.mibif, %struct.mibif* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load %struct.mibif*, %struct.mibif** %4, align 8
  %58 = getelementptr inbounds %struct.mibif, %struct.mibif* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mibif*, %struct.mibif** %4, align 8
  %61 = getelementptr inbounds %struct.mibif, %struct.mibif* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.mibif*, %struct.mibif** %4, align 8
  %64 = getelementptr inbounds %struct.mibif, %struct.mibif* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call %struct.mibrcvaddr* @mib_find_rcvaddr(i32 %59, i32* %62, i64 %65)
  store %struct.mibrcvaddr* %66, %struct.mibrcvaddr** %8, align 8
  %67 = icmp ne %struct.mibrcvaddr* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %56
  %69 = load %struct.mibrcvaddr*, %struct.mibrcvaddr** %8, align 8
  %70 = call i32 @mib_rcvaddr_delete(%struct.mibrcvaddr* %69)
  br label %71

71:                                               ; preds = %68, %56
  br label %72

72:                                               ; preds = %71, %51
  %73 = load %struct.mibif*, %struct.mibif** %4, align 8
  %74 = getelementptr inbounds %struct.mibif, %struct.mibif* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %77 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32* @realloc(i32* %75, i64 %78)
  store i32* %79, i32** %7, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %72
  %82 = load %struct.mibif*, %struct.mibif** %4, align 8
  %83 = getelementptr inbounds %struct.mibif, %struct.mibif* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @free(i32* %84)
  %86 = load %struct.mibif*, %struct.mibif** %4, align 8
  %87 = getelementptr inbounds %struct.mibif, %struct.mibif* %86, i32 0, i32 1
  store i32* null, i32** %87, align 8
  %88 = load %struct.mibif*, %struct.mibif** %4, align 8
  %89 = getelementptr inbounds %struct.mibif, %struct.mibif* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  br label %151

90:                                               ; preds = %72
  %91 = load i32*, i32** %7, align 8
  %92 = load %struct.mibif*, %struct.mibif** %4, align 8
  %93 = getelementptr inbounds %struct.mibif, %struct.mibif* %92, i32 0, i32 1
  store i32* %91, i32** %93, align 8
  %94 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %95 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.mibif*, %struct.mibif** %4, align 8
  %98 = getelementptr inbounds %struct.mibif, %struct.mibif* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %127

99:                                               ; preds = %43
  %100 = load %struct.mibif*, %struct.mibif** %4, align 8
  %101 = getelementptr inbounds %struct.mibif, %struct.mibif* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = load %struct.mibif*, %struct.mibif** %4, align 8
  %105 = getelementptr inbounds %struct.mibif, %struct.mibif* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @memcmp(i32* %102, i32* %103, i64 %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %151

110:                                              ; preds = %99
  %111 = load %struct.mibif*, %struct.mibif** %4, align 8
  %112 = getelementptr inbounds %struct.mibif, %struct.mibif* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.mibif*, %struct.mibif** %4, align 8
  %115 = getelementptr inbounds %struct.mibif, %struct.mibif* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.mibif*, %struct.mibif** %4, align 8
  %118 = getelementptr inbounds %struct.mibif, %struct.mibif* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call %struct.mibrcvaddr* @mib_find_rcvaddr(i32 %113, i32* %116, i64 %119)
  store %struct.mibrcvaddr* %120, %struct.mibrcvaddr** %8, align 8
  %121 = icmp ne %struct.mibrcvaddr* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %110
  %123 = load %struct.mibrcvaddr*, %struct.mibrcvaddr** %8, align 8
  %124 = call i32 @mib_rcvaddr_delete(%struct.mibrcvaddr* %123)
  br label %125

125:                                              ; preds = %122, %110
  br label %126

126:                                              ; preds = %125
  br label %127

127:                                              ; preds = %126, %90
  %128 = load %struct.mibif*, %struct.mibif** %4, align 8
  %129 = getelementptr inbounds %struct.mibif, %struct.mibif* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = load %struct.mibif*, %struct.mibif** %4, align 8
  %133 = getelementptr inbounds %struct.mibif, %struct.mibif* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @memcpy(i32* %130, i32* %131, i64 %134)
  %136 = load %struct.mibif*, %struct.mibif** %4, align 8
  %137 = load %struct.mibif*, %struct.mibif** %4, align 8
  %138 = getelementptr inbounds %struct.mibif, %struct.mibif* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.mibif*, %struct.mibif** %4, align 8
  %141 = getelementptr inbounds %struct.mibif, %struct.mibif* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call %struct.mibrcvaddr* @mib_rcvaddr_create(%struct.mibif* %136, i32* %139, i64 %142)
  store %struct.mibrcvaddr* %143, %struct.mibrcvaddr** %8, align 8
  %144 = icmp ne %struct.mibrcvaddr* %143, null
  br i1 %144, label %145, label %151

145:                                              ; preds = %127
  %146 = load i32, i32* @MIBRCVADDR_HW, align 4
  %147 = load %struct.mibrcvaddr*, %struct.mibrcvaddr** %8, align 8
  %148 = getelementptr inbounds %struct.mibrcvaddr, %struct.mibrcvaddr* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %42, %81, %109, %145, %127
  ret void
}

declare dso_local %struct.mibrcvaddr* @mib_find_rcvaddr(i32, i32*, i64) #1

declare dso_local i32 @mib_rcvaddr_delete(%struct.mibrcvaddr*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @realloc(i32*, i64) #1

declare dso_local i64 @memcmp(i32*, i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local %struct.mibrcvaddr* @mib_rcvaddr_create(%struct.mibif*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
