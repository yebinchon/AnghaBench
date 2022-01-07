; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_read_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.lmodule = type { i32 }

@ASN_OIDSTRLEN = common dso_local global i32 0, align 4
@ignore = common dso_local global i64 0, align 8
@input_push = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %m\00", align 1
@COMM_INITIALIZE = common dso_local global i32 0, align 4
@community = common dso_local global i32 0, align 4
@snmp_ctx = common dso_local global %struct.TYPE_9__* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%m\00", align 1
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"init dep failed: %u %s %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_config(i8* %0, %struct.lmodule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lmodule*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.lmodule* %1, %struct.lmodule** %5, align 8
  %11 = load i32, i32* @ASN_OIDSTRLEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* @ASN_OIDSTRLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  store i64 0, i64* @ignore, align 8
  store i64 0, i64* @input_push, align 8
  %18 = call i64 (...) @ERRPUSH()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %83

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @input_open_file(i8* %22, i32 0)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @LOG_ERR, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 (i32, i8*, ...) @syslog(i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %27)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %83

29:                                               ; preds = %21
  %30 = call i32 (...) @ERRPOP()
  %31 = load i32, i32* @COMM_INITIALIZE, align 4
  store i32 %31, i32* @community, align 4
  %32 = call %struct.TYPE_9__* (...) @snmp_init_context()
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** @snmp_ctx, align 8
  %33 = icmp eq %struct.TYPE_9__* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = call i32 (...) @input_close_all()
  %36 = load i32, i32* @LOG_ERR, align 4
  %37 = call i32 (i32, i8*, ...) @syslog(i32 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %83

38:                                               ; preds = %29
  %39 = call i64 (...) @ERRPUSH()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = call i32 (...) @do_rollback()
  %43 = call i32 (...) @input_close_all()
  %44 = call i32 (...) @macro_free_all()
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @snmp_ctx, align 8
  %46 = call i32 @free(%struct.TYPE_9__* %45)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %83

47:                                               ; preds = %38
  %48 = load %struct.lmodule*, %struct.lmodule** %5, align 8
  %49 = call i32 @parse_file(%struct.lmodule* %48)
  %50 = call i32 (...) @ERRPOP()
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** @snmp_ctx, align 8
  %52 = call i32 @snmp_dep_commit(%struct.TYPE_9__* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %47
  %56 = load i32, i32* @LOG_ERR, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** @snmp_ctx, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = call i32 @asn_oid2str_r(i32* %61, i8* %14)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** @snmp_ctx, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = call i32 @asn_oid2str_r(i32* %66, i8* %17)
  %68 = call i32 (i32, i8*, ...) @syslog(i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %62, i32 %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** @snmp_ctx, align 8
  %70 = call i32 @snmp_dep_rollback(%struct.TYPE_9__* %69)
  %71 = call i32 (...) @do_rollback()
  %72 = call i32 (...) @input_close_all()
  %73 = call i32 (...) @macro_free_all()
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** @snmp_ctx, align 8
  %75 = call i32 @free(%struct.TYPE_9__* %74)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %83

76:                                               ; preds = %47
  %77 = call i32 (...) @do_commit()
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** @snmp_ctx, align 8
  %79 = call i32 @snmp_dep_finish(%struct.TYPE_9__* %78)
  %80 = call i32 (...) @macro_free_all()
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** @snmp_ctx, align 8
  %82 = call i32 @free(%struct.TYPE_9__* %81)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %83

83:                                               ; preds = %76, %55, %41, %34, %25, %20
  %84 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ERRPUSH(...) #2

declare dso_local i32 @input_open_file(i8*, i32) #2

declare dso_local i32 @syslog(i32, i8*, ...) #2

declare dso_local i32 @ERRPOP(...) #2

declare dso_local %struct.TYPE_9__* @snmp_init_context(...) #2

declare dso_local i32 @input_close_all(...) #2

declare dso_local i32 @do_rollback(...) #2

declare dso_local i32 @macro_free_all(...) #2

declare dso_local i32 @free(%struct.TYPE_9__*) #2

declare dso_local i32 @parse_file(%struct.lmodule*) #2

declare dso_local i32 @snmp_dep_commit(%struct.TYPE_9__*) #2

declare dso_local i32 @asn_oid2str_r(i32*, i8*) #2

declare dso_local i32 @snmp_dep_rollback(%struct.TYPE_9__*) #2

declare dso_local i32 @do_commit(...) #2

declare dso_local i32 @snmp_dep_finish(%struct.TYPE_9__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
