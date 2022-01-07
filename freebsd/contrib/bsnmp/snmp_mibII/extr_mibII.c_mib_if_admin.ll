; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_mib_if_admin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_mib_if_admin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mibif = type { i32 }
%struct.ifreq = type { i32, i32 }

@mib_netsock = common dso_local global i32 0, align 4
@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"SIOCGIFFLAGS(%s): %m\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"SIOCSIFFLAGS(%s): %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mib_if_admin(%struct.mibif* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mibif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifreq, align 4
  store %struct.mibif* %0, %struct.mibif** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.mibif*, %struct.mibif** %4, align 8
  %10 = getelementptr inbounds %struct.mibif, %struct.mibif* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @strlcpy(i32 %8, i32 %11, i32 4)
  %13 = load i32, i32* @mib_netsock, align 4
  %14 = load i32, i32* @SIOCGIFFLAGS, align 4
  %15 = call i32 @ioctl(i32 %13, i32 %14, %struct.ifreq* %6)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i32, i32* @LOG_ERR, align 4
  %19 = load %struct.mibif*, %struct.mibif** %4, align 8
  %20 = getelementptr inbounds %struct.mibif, %struct.mibif* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @syslog(i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 -1, i32* %3, align 4
  br label %51

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* @IFF_UP, align 4
  %28 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 4
  br label %37

31:                                               ; preds = %23
  %32 = load i32, i32* @IFF_UP, align 4
  %33 = xor i32 %32, -1
  %34 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %33
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %26
  %38 = load i32, i32* @mib_netsock, align 4
  %39 = load i32, i32* @SIOCSIFFLAGS, align 4
  %40 = call i32 @ioctl(i32 %38, i32 %39, %struct.ifreq* %6)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @LOG_ERR, align 4
  %44 = load %struct.mibif*, %struct.mibif** %4, align 8
  %45 = getelementptr inbounds %struct.mibif, %struct.mibif* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @syslog(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  store i32 -1, i32* %3, align 4
  br label %51

48:                                               ; preds = %37
  %49 = load %struct.mibif*, %struct.mibif** %4, align 8
  %50 = call i32 @mib_fetch_ifmib(%struct.mibif* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %42, %17
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @mib_fetch_ifmib(%struct.mibif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
