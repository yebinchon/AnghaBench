; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_trans_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_trans_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport_def = type { i8*, i32 }
%struct.transport = type { i32, i32, %struct.TYPE_2__, %struct.transport_def* }
%struct.TYPE_2__ = type { i32*, i8* }

@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@transport_list = common dso_local global i32 0, align 4
@SNMP_ERR_INCONS_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s transport mapping\00", align 1
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trans_register(%struct.transport_def* %0, %struct.transport** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.transport_def*, align 8
  %5 = alloca %struct.transport**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  store %struct.transport_def* %0, %struct.transport_def** %4, align 8
  store %struct.transport** %1, %struct.transport*** %5, align 8
  %8 = call %struct.transport* @malloc(i32 32)
  %9 = load %struct.transport**, %struct.transport*** %5, align 8
  store %struct.transport* %8, %struct.transport** %9, align 8
  %10 = icmp eq %struct.transport* %8, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %12, i32* %3, align 4
  br label %108

13:                                               ; preds = %2
  %14 = load %struct.transport_def*, %struct.transport_def** %4, align 8
  %15 = getelementptr inbounds %struct.transport_def, %struct.transport_def* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @strlen(i8* %16)
  %18 = getelementptr i8, i8* %17, i64 1
  %19 = load %struct.transport**, %struct.transport*** %5, align 8
  %20 = load %struct.transport*, %struct.transport** %19, align 8
  %21 = getelementptr inbounds %struct.transport, %struct.transport* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i8* %18, i8** %22, align 8
  %23 = load %struct.transport_def*, %struct.transport_def** %4, align 8
  %24 = getelementptr inbounds %struct.transport_def, %struct.transport_def* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @strlen(i8* %25)
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.transport**, %struct.transport*** %5, align 8
  %29 = load %struct.transport*, %struct.transport** %28, align 8
  %30 = getelementptr inbounds %struct.transport, %struct.transport* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %27, i32* %33, align 4
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %62, %13
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.transport**, %struct.transport*** %5, align 8
  %37 = load %struct.transport*, %struct.transport** %36, align 8
  %38 = getelementptr inbounds %struct.transport, %struct.transport* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %35, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %34
  %45 = load %struct.transport_def*, %struct.transport_def** %4, align 8
  %46 = getelementptr inbounds %struct.transport_def, %struct.transport_def* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = load %struct.transport**, %struct.transport*** %5, align 8
  %54 = load %struct.transport*, %struct.transport** %53, align 8
  %55 = getelementptr inbounds %struct.transport, %struct.transport* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  store i32 %52, i32* %61, align 4
  br label %62

62:                                               ; preds = %44
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %34

65:                                               ; preds = %34
  %66 = load %struct.transport_def*, %struct.transport_def** %4, align 8
  %67 = load %struct.transport**, %struct.transport*** %5, align 8
  %68 = load %struct.transport*, %struct.transport** %67, align 8
  %69 = getelementptr inbounds %struct.transport, %struct.transport* %68, i32 0, i32 3
  store %struct.transport_def* %66, %struct.transport_def** %69, align 8
  %70 = load %struct.transport**, %struct.transport*** %5, align 8
  %71 = load %struct.transport*, %struct.transport** %70, align 8
  %72 = getelementptr inbounds %struct.transport, %struct.transport* %71, i32 0, i32 2
  %73 = call i32* @FIND_OBJECT_OID(i32* @transport_list, %struct.TYPE_2__* %72, i32 0)
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %65
  %76 = load %struct.transport**, %struct.transport*** %5, align 8
  %77 = load %struct.transport*, %struct.transport** %76, align 8
  %78 = call i32 @free(%struct.transport* %77)
  %79 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %79, i32* %3, align 4
  br label %108

80:                                               ; preds = %65
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %82 = load %struct.transport_def*, %struct.transport_def** %4, align 8
  %83 = getelementptr inbounds %struct.transport_def, %struct.transport_def* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @snprintf(i8* %81, i32 256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %84)
  %86 = load %struct.transport_def*, %struct.transport_def** %4, align 8
  %87 = getelementptr inbounds %struct.transport_def, %struct.transport_def* %86, i32 0, i32 1
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %89 = call i32 @or_register(i32* %87, i8* %88, i32* null)
  %90 = load %struct.transport**, %struct.transport*** %5, align 8
  %91 = load %struct.transport*, %struct.transport** %90, align 8
  %92 = getelementptr inbounds %struct.transport, %struct.transport* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  %93 = icmp eq i32 %89, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %80
  %95 = load %struct.transport**, %struct.transport*** %5, align 8
  %96 = load %struct.transport*, %struct.transport** %95, align 8
  %97 = call i32 @free(%struct.transport* %96)
  %98 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %98, i32* %3, align 4
  br label %108

99:                                               ; preds = %80
  %100 = load %struct.transport**, %struct.transport*** %5, align 8
  %101 = load %struct.transport*, %struct.transport** %100, align 8
  %102 = call i32 @INSERT_OBJECT_OID(%struct.transport* %101, i32* @transport_list)
  %103 = load %struct.transport**, %struct.transport*** %5, align 8
  %104 = load %struct.transport*, %struct.transport** %103, align 8
  %105 = getelementptr inbounds %struct.transport, %struct.transport* %104, i32 0, i32 0
  %106 = call i32 @TAILQ_INIT(i32* %105)
  %107 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %99, %94, %75, %11
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.transport* @malloc(i32) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32* @FIND_OBJECT_OID(i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @free(%struct.transport*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @or_register(i32*, i8*, i32*) #1

declare dso_local i32 @INSERT_OBJECT_OID(%struct.transport*, i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
