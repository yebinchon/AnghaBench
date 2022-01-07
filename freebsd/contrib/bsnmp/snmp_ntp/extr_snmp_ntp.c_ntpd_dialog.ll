; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_ntp/extr_snmp_ntp.c_ntpd_dialog.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_ntp/extr_snmp_ntp.c_ntpd_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bad response op 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"response for wrong associd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i8*, i32**, i64*)* @ntpd_dialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntpd_dialog(i64 %0, i64 %1, i8* %2, i32** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @ntpd_request(i64 %14, i64 %15, i8* %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %46

20:                                               ; preds = %5
  %21 = load i32**, i32*** %10, align 8
  %22 = load i64*, i64** %11, align 8
  %23 = call i32 @ntpd_read(i64* %13, i64* %12, i32** %21, i64* %22)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 -1, i32* %6, align 4
  br label %46

26:                                               ; preds = %20
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* @LOG_ERR, align 4
  %32 = load i64, i64* %13, align 8
  %33 = call i32 (i32, i8*, ...) @syslog(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i32**, i32*** %10, align 8
  %35 = call i32 @free(i32** %34)
  store i32 -1, i32* %6, align 4
  br label %46

36:                                               ; preds = %26
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* @LOG_ERR, align 4
  %42 = call i32 (i32, i8*, ...) @syslog(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32**, i32*** %10, align 8
  %44 = call i32 @free(i32** %43)
  store i32 -1, i32* %6, align 4
  br label %46

45:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %40, %30, %25, %19
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @ntpd_request(i64, i64, i8*) #1

declare dso_local i32 @ntpd_read(i64*, i64*, i32**, i64*) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
