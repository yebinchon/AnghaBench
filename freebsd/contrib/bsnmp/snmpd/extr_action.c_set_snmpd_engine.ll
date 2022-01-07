; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_action.c_set_snmpd_engine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_action.c_set_snmpd_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32*, i32 }

@SNMP_ENGINE_ID_SIZ = common dso_local global i32 0, align 4
@engine_file = common dso_local global i8* null, align 8
@snmpd_engine = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"%.2x\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_snmpd_engine() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @SNMP_ENGINE_ID_SIZ, align 4
  %10 = mul nsw i32 2, %9
  %11 = add nsw i32 %10, 2
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32, i32* @SNMP_ENGINE_ID_SIZ, align 4
  %16 = mul nsw i32 2, %15
  %17 = add nsw i32 %16, 2
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %20 = load i8*, i8** @engine_file, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %93

26:                                               ; preds = %0
  store i8* %19, i8** %4, align 8
  store i64 0, i64* %3, align 8
  br label %27

27:                                               ; preds = %41, %26
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 0), align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i8*, i8** %4, align 8
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 1), align 8
  %34 = load i64, i64* %3, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i8*, i8** %4, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %4, align 8
  br label %41

41:                                               ; preds = %31
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %3, align 8
  br label %27

44:                                               ; preds = %27
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %4, align 8
  store i8 10, i8* %45, align 1
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %4, align 8
  store i8 0, i8* %47, align 1
  %49 = load i8*, i8** @engine_file, align 8
  %50 = call i32* @fopen(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %50, i32** %2, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %75

52:                                               ; preds = %44
  %53 = sub i64 %12, 1
  %54 = trunc i64 %53 to i32
  %55 = load i32*, i32** %2, align 8
  %56 = call i32* @fgets(i8* %14, i32 %54, i32* %55)
  %57 = icmp eq i32* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load i32*, i32** %2, align 8
  %60 = call i64 @fscanf(i32* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 2))
  %61 = icmp sle i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58, %52
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @fclose(i32* %63)
  br label %82

65:                                               ; preds = %58
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @fclose(i32* %66)
  %68 = call i64 @strcmp(i8* %19, i8* %14)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 2), align 8
  br label %74

71:                                               ; preds = %65
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 2), align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 2), align 8
  br label %74

74:                                               ; preds = %71, %70
  br label %81

75:                                               ; preds = %44
  %76 = load i64, i64* @errno, align 8
  %77 = load i64, i64* @ENOENT, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %93

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %74
  br label %82

82:                                               ; preds = %81, %62
  %83 = load i8*, i8** @engine_file, align 8
  %84 = call i32* @fopen(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %84, i32** %2, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %93

87:                                               ; preds = %82
  %88 = load i32*, i32** %2, align 8
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 2), align 8
  %90 = call i32 @fprintf(i32* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %19, i32 %89)
  %91 = load i32*, i32** %2, align 8
  %92 = call i32 @fclose(i32* %91)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %93

93:                                               ; preds = %87, %86, %79, %25
  %94 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %1, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i64 @fscanf(i32*, i8*, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
