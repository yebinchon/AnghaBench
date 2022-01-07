; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_domainhash.c_netlbl_domhsh_audit_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_domainhash.c_netlbl_domhsh_audit_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_dom_map = type { i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.cipso_v4_doi* }
%struct.cipso_v4_doi = type { i32 }
%struct.netlbl_af4list = type { i32, i32 }
%struct.netlbl_af6list = type { i32, i32 }
%struct.netlbl_audit = type { i32 }
%struct.audit_buffer = type { i32 }
%struct.netlbl_domaddr4_map = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.cipso_v4_doi* }

@AUDIT_MAC_MAP_ADD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c" nlbl_domain=%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"(default)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c" nlbl_protocol=unlbl\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c" nlbl_protocol=cipsov4 cipso_doi=%u\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" res=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netlbl_dom_map*, %struct.netlbl_af4list*, %struct.netlbl_af6list*, i32, %struct.netlbl_audit*)* @netlbl_domhsh_audit_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netlbl_domhsh_audit_add(%struct.netlbl_dom_map* %0, %struct.netlbl_af4list* %1, %struct.netlbl_af6list* %2, i32 %3, %struct.netlbl_audit* %4) #0 {
  %6 = alloca %struct.netlbl_dom_map*, align 8
  %7 = alloca %struct.netlbl_af4list*, align 8
  %8 = alloca %struct.netlbl_af6list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.netlbl_audit*, align 8
  %11 = alloca %struct.audit_buffer*, align 8
  %12 = alloca %struct.cipso_v4_doi*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.netlbl_domaddr4_map*, align 8
  store %struct.netlbl_dom_map* %0, %struct.netlbl_dom_map** %6, align 8
  store %struct.netlbl_af4list* %1, %struct.netlbl_af4list** %7, align 8
  store %struct.netlbl_af6list* %2, %struct.netlbl_af6list** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.netlbl_audit* %4, %struct.netlbl_audit** %10, align 8
  store %struct.cipso_v4_doi* null, %struct.cipso_v4_doi** %12, align 8
  %15 = load i32, i32* @AUDIT_MAC_MAP_ADD, align 4
  %16 = load %struct.netlbl_audit*, %struct.netlbl_audit** %10, align 8
  %17 = call %struct.audit_buffer* @netlbl_audit_start_common(i32 %15, %struct.netlbl_audit* %16)
  store %struct.audit_buffer* %17, %struct.audit_buffer** %11, align 8
  %18 = load %struct.audit_buffer*, %struct.audit_buffer** %11, align 8
  %19 = icmp ne %struct.audit_buffer* %18, null
  br i1 %19, label %20, label %86

20:                                               ; preds = %5
  %21 = load %struct.audit_buffer*, %struct.audit_buffer** %11, align 8
  %22 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %6, align 8
  %23 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %6, align 8
  %28 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  br label %31

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i8* [ %29, %26 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %30 ]
  %33 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load %struct.netlbl_af4list*, %struct.netlbl_af4list** %7, align 8
  %35 = icmp ne %struct.netlbl_af4list* %34, null
  br i1 %35, label %36, label %54

36:                                               ; preds = %31
  %37 = load %struct.netlbl_af4list*, %struct.netlbl_af4list** %7, align 8
  %38 = call %struct.netlbl_domaddr4_map* @netlbl_domhsh_addr4_entry(%struct.netlbl_af4list* %37)
  store %struct.netlbl_domaddr4_map* %38, %struct.netlbl_domaddr4_map** %14, align 8
  %39 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %14, align 8
  %40 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %13, align 4
  %42 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %14, align 8
  %43 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %44, align 8
  store %struct.cipso_v4_doi* %45, %struct.cipso_v4_doi** %12, align 8
  %46 = load %struct.audit_buffer*, %struct.audit_buffer** %11, align 8
  %47 = load %struct.netlbl_af4list*, %struct.netlbl_af4list** %7, align 8
  %48 = getelementptr inbounds %struct.netlbl_af4list, %struct.netlbl_af4list* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.netlbl_af4list*, %struct.netlbl_af4list** %7, align 8
  %51 = getelementptr inbounds %struct.netlbl_af4list, %struct.netlbl_af4list* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @netlbl_af4list_audit_addr(%struct.audit_buffer* %46, i32 0, i32* null, i32 %49, i32 %52)
  br label %62

54:                                               ; preds = %31
  %55 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %6, align 8
  %56 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %13, align 4
  %58 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %6, align 8
  %59 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %60, align 8
  store %struct.cipso_v4_doi* %61, %struct.cipso_v4_doi** %12, align 8
  br label %62

62:                                               ; preds = %54, %36
  %63 = load i32, i32* %13, align 4
  switch i32 %63, label %77 [
    i32 128, label %64
    i32 129, label %67
  ]

64:                                               ; preds = %62
  %65 = load %struct.audit_buffer*, %struct.audit_buffer** %11, align 8
  %66 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %77

67:                                               ; preds = %62
  %68 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %12, align 8
  %69 = icmp eq %struct.cipso_v4_doi* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i32 @BUG_ON(i32 %70)
  %72 = load %struct.audit_buffer*, %struct.audit_buffer** %11, align 8
  %73 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %12, align 8
  %74 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %72, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %62, %67, %64
  %78 = load %struct.audit_buffer*, %struct.audit_buffer** %11, align 8
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 1, i32 0
  %83 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  %84 = load %struct.audit_buffer*, %struct.audit_buffer** %11, align 8
  %85 = call i32 @audit_log_end(%struct.audit_buffer* %84)
  br label %86

86:                                               ; preds = %77, %5
  ret void
}

declare dso_local %struct.audit_buffer* @netlbl_audit_start_common(i32, %struct.netlbl_audit*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, ...) #1

declare dso_local %struct.netlbl_domaddr4_map* @netlbl_domhsh_addr4_entry(%struct.netlbl_af4list*) #1

declare dso_local i32 @netlbl_af4list_audit_addr(%struct.audit_buffer*, i32, i32*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
