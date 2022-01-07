; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_get_transp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_get_transp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_client = type { i32 }

@trans_list = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [26 x i8] c"empty transport specifier\00", align 1
@SNMP_TRANS_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_client*, i8**)* @get_transp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_transp(%struct.snmp_client* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_client*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.snmp_client* %0, %struct.snmp_client** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %53, %2
  %9 = load i64, i64* %7, align 8
  %10 = load i8**, i8*** @trans_list, align 8
  %11 = call i64 @nitems(i8** %10)
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %13, label %56

13:                                               ; preds = %8
  %14 = load i8**, i8*** @trans_list, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %13
  %20 = load i8**, i8*** @trans_list, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19, %13
  br label %53

28:                                               ; preds = %19
  %29 = load i8**, i8*** %5, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i8**, i8*** @trans_list, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @strstr(i8* %30, i8* %34)
  store i8* %35, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %36, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %28
  %41 = load i8**, i8*** @trans_list, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i8*, i8** %41, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = load i8**, i8*** %5, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = sext i32 %45 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %46, align 8
  %50 = load i64, i64* %7, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %75

52:                                               ; preds = %28
  br label %53

53:                                               ; preds = %52, %27
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %7, align 8
  br label %8

56:                                               ; preds = %8
  %57 = load i8**, i8*** %5, align 8
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 58
  br i1 %63, label %64, label %73

64:                                               ; preds = %56
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 58
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.snmp_client*, %struct.snmp_client** %4, align 8
  %72 = call i32 @seterr(%struct.snmp_client* %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %75

73:                                               ; preds = %64, %56
  %74 = load i32, i32* @SNMP_TRANS_UDP, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %70, %40
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @nitems(i8**) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @seterr(%struct.snmp_client*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
