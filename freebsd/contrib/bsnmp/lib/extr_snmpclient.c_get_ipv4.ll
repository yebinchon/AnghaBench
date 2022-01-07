; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_get_ipv4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_get_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_client = type { i32 }
%struct.in_addr = type { i32 }

@INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"IPv4 address too long '%.*s'\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"illegal IPv4 address '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.snmp_client*, i8**)* @get_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_ipv4(%struct.snmp_client* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.snmp_client*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.in_addr, align 4
  %10 = alloca i32, align 4
  store %struct.snmp_client* %0, %struct.snmp_client** %4, align 8
  store i8** %1, i8*** %5, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  br label %13

13:                                               ; preds = %32, %2
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = call i64 @isascii(i8 signext %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @isdigit(i8 signext %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 46
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i1 [ true, %18 ], [ %27, %23 ]
  br label %30

30:                                               ; preds = %28, %13
  %31 = phi i1 [ false, %13 ], [ %29, %28 ]
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  br label %13

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = ptrtoint i8* %36 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp sgt i64 %41, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %35
  %46 = load %struct.snmp_client*, %struct.snmp_client** %4, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i8**, i8*** %5, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = ptrtoint i8* %47 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = load i8**, i8*** %5, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (%struct.snmp_client*, i8*, ...) @seterr(%struct.snmp_client* %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %52, i8* %54)
  store i8* null, i8** %3, align 8
  br label %98

56:                                               ; preds = %35
  %57 = load i8**, i8*** %5, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = icmp eq i8* %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i8**, i8*** %5, align 8
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %3, align 8
  br label %98

64:                                               ; preds = %56
  %65 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %66 = add nsw i32 %65, 1
  %67 = zext i32 %66 to i64
  %68 = call i8* @llvm.stacksave()
  store i8* %68, i8** %7, align 8
  %69 = alloca i8, i64 %67, align 16
  store i64 %67, i64* %8, align 8
  %70 = load i8**, i8*** %5, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i8**, i8*** %5, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = ptrtoint i8* %72 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  %79 = call i32 @strncpy(i8* %69, i8* %71, i32 %78)
  %80 = load i8*, i8** %6, align 8
  %81 = load i8**, i8*** %5, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = ptrtoint i8* %80 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = getelementptr inbounds i8, i8* %69, i64 %85
  store i8 0, i8* %86, align 1
  %87 = call i32 @inet_aton(i8* %69, %struct.in_addr* %9)
  %88 = icmp ne i32 %87, 1
  br i1 %88, label %89, label %92

89:                                               ; preds = %64
  %90 = load %struct.snmp_client*, %struct.snmp_client** %4, align 8
  %91 = call i32 (%struct.snmp_client*, i8*, ...) @seterr(%struct.snmp_client* %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %96

92:                                               ; preds = %64
  %93 = load i8*, i8** %6, align 8
  %94 = load i8**, i8*** %5, align 8
  store i8* %93, i8** %94, align 8
  %95 = load i8*, i8** %6, align 8
  store i8* %95, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %96

96:                                               ; preds = %92, %89
  %97 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %97)
  br label %98

98:                                               ; preds = %96, %61, %45
  %99 = load i8*, i8** %3, align 8
  ret i8* %99
}

declare dso_local i64 @isascii(i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @seterr(%struct.snmp_client*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @inet_aton(i8*, %struct.in_addr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
