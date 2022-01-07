; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_doi_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_doi_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cipso_v4_doi = type { i64, i64, i32*, i32, i32 }
%struct.netlbl_audit = type { i32 }
%struct.audit_buffer = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CIPSO_V4_DOI_UNKNOWN = common dso_local global i64 0, align 8
@CIPSO_V4_TAG_MAXCNT = common dso_local global i64 0, align 8
@cipso_v4_doi_list_lock = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@cipso_v4_doi_list = common dso_local global i32 0, align 4
@AUDIT_MAC_CIPSOV4_ADD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"trans\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c" cipso_doi=%u cipso_type=%s res=%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cipso_v4_doi_add(%struct.cipso_v4_doi* %0, %struct.netlbl_audit* %1) #0 {
  %3 = alloca %struct.cipso_v4_doi*, align 8
  %4 = alloca %struct.netlbl_audit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.audit_buffer*, align 8
  %10 = alloca i8*, align 8
  store %struct.cipso_v4_doi* %0, %struct.cipso_v4_doi** %3, align 8
  store %struct.netlbl_audit* %1, %struct.netlbl_audit** %4, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %3, align 8
  %14 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %3, align 8
  %17 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %3, align 8
  %20 = icmp eq %struct.cipso_v4_doi* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %3, align 8
  %23 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CIPSO_V4_DOI_UNKNOWN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %2
  br label %84

28:                                               ; preds = %21
  store i64 0, i64* %6, align 8
  br label %29

29:                                               ; preds = %62, %28
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @CIPSO_V4_TAG_MAXCNT, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %29
  %34 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %3, align 8
  %35 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %60 [
    i32 128, label %40
    i32 129, label %41
    i32 132, label %41
    i32 130, label %48
    i32 131, label %55
  ]

40:                                               ; preds = %33
  br label %61

41:                                               ; preds = %33, %33
  %42 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %3, align 8
  %43 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 134
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %84

47:                                               ; preds = %41
  br label %61

48:                                               ; preds = %33
  %49 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %3, align 8
  %50 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 135
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %84

54:                                               ; preds = %48
  br label %61

55:                                               ; preds = %33
  %56 = load i64, i64* %6, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %84

59:                                               ; preds = %55
  br label %61

60:                                               ; preds = %33
  br label %84

61:                                               ; preds = %59, %54, %47, %40
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %6, align 8
  br label %29

65:                                               ; preds = %29
  %66 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %3, align 8
  %67 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %66, i32 0, i32 4
  %68 = call i32 @atomic_set(i32* %67, i32 1)
  %69 = call i32 @spin_lock(i32* @cipso_v4_doi_list_lock)
  %70 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %3, align 8
  %71 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32* @cipso_v4_doi_search(i64 %72)
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = call i32 @spin_unlock(i32* @cipso_v4_doi_list_lock)
  %77 = load i32, i32* @EEXIST, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %84

79:                                               ; preds = %65
  %80 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %3, align 8
  %81 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %80, i32 0, i32 3
  %82 = call i32 @list_add_tail_rcu(i32* %81, i32* @cipso_v4_doi_list)
  %83 = call i32 @spin_unlock(i32* @cipso_v4_doi_list_lock)
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %79, %75, %60, %58, %53, %46, %27
  %85 = load i32, i32* @AUDIT_MAC_CIPSOV4_ADD, align 4
  %86 = load %struct.netlbl_audit*, %struct.netlbl_audit** %4, align 8
  %87 = call %struct.audit_buffer* @netlbl_audit_start(i32 %85, %struct.netlbl_audit* %86)
  store %struct.audit_buffer* %87, %struct.audit_buffer** %9, align 8
  %88 = load %struct.audit_buffer*, %struct.audit_buffer** %9, align 8
  %89 = icmp ne %struct.audit_buffer* %88, null
  br i1 %89, label %90, label %107

90:                                               ; preds = %84
  %91 = load i64, i64* %8, align 8
  switch i64 %91, label %95 [
    i64 133, label %92
    i64 134, label %93
    i64 135, label %94
  ]

92:                                               ; preds = %90
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %96

93:                                               ; preds = %90
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %96

94:                                               ; preds = %90
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %96

95:                                               ; preds = %90
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %96

96:                                               ; preds = %95, %94, %93, %92
  %97 = load %struct.audit_buffer*, %struct.audit_buffer** %9, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load i32, i32* %5, align 4
  %101 = icmp eq i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 1, i32 0
  %104 = call i32 @audit_log_format(%struct.audit_buffer* %97, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %98, i8* %99, i32 %103)
  %105 = load %struct.audit_buffer*, %struct.audit_buffer** %9, align 8
  %106 = call i32 @audit_log_end(%struct.audit_buffer* %105)
  br label %107

107:                                              ; preds = %96, %84
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32* @cipso_v4_doi_search(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local %struct.audit_buffer* @netlbl_audit_start(i32, %struct.netlbl_audit*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i64, i8*, i32) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
