; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_action.c_init_actvals.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_action.c_init_actvals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_4__, i32*, i32* }
%struct.TYPE_4__ = type { i64, i64* }
%struct.utsname = type { i8*, i8*, i8* }

@systemg = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@KERN_HOSTID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s %s %s %s\00", align 1
@ASN_MAXOIDLEN = common dso_local global i64 0, align 8
@oid_freeBSDVersion = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_actvals() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.utsname, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = call i32 @uname(%struct.utsname* %2)
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %63

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32* @strdup(i8* %10)
  store i32* %11, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @systemg, i32 0, i32 2), align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 -1, i32* %1, align 4
  br label %63

14:                                               ; preds = %8
  %15 = load i32, i32* @KERN_HOSTID, align 4
  %16 = call i8* @act_getkernint(i32 %15)
  store i8* %16, i8** %3, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 -1, i32* %1, align 4
  br label %63

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %4, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %4, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %4, align 8
  %31 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %4, align 8
  %38 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %4, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = call i32* @malloc(i64 %45)
  store i32* %46, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @systemg, i32 0, i32 1), align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %19
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 @free(i8* %49)
  store i32 -1, i32* %1, align 4
  br label %63

51:                                               ; preds = %19
  %52 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @systemg, i32 0, i32 1), align 8
  %53 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @sprintf(i32* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %54, i8* %55, i8* %57, i8* %59)
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @free(i8* %61)
  store i32 0, i32* %1, align 4
  br label %63

63:                                               ; preds = %51, %48, %18, %13, %7
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local i32 @uname(%struct.utsname*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i8* @act_getkernint(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sprintf(i32*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
