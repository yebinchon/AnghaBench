; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_subseq_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_subseq_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sub_seq = type { %struct.publication*, i32, i32 }
%struct.publication = type { i64, i32, i64, %struct.publication*, i32 }
%struct.print_buf = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%-10u %-10u \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"<%u.%u.%u:%u>\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%-26s \00", align 1
@tipc_own_addr = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TIPC_NODE_SCOPE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@TIPC_CLUSTER_SCOPE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"cluster\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"zone\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%-10u %s\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"\0A%33s\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sub_seq*, %struct.print_buf*, i32, i32)* @subseq_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subseq_list(%struct.sub_seq* %0, %struct.print_buf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sub_seq*, align 8
  %6 = alloca %struct.print_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [27 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca %struct.publication*, align 8
  store %struct.sub_seq* %0, %struct.sub_seq** %5, align 8
  store %struct.print_buf* %1, %struct.print_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.sub_seq*, %struct.sub_seq** %5, align 8
  %13 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %12, i32 0, i32 0
  %14 = load %struct.publication*, %struct.publication** %13, align 8
  store %struct.publication* %14, %struct.publication** %11, align 8
  %15 = load %struct.print_buf*, %struct.print_buf** %6, align 8
  %16 = load %struct.sub_seq*, %struct.sub_seq** %5, align 8
  %17 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sub_seq*, %struct.sub_seq** %5, align 8
  %20 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load %struct.publication*, %struct.publication** %11, align 8
  %27 = icmp ne %struct.publication* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25, %4
  %29 = load %struct.print_buf*, %struct.print_buf** %6, align 8
  %30 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %103

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %99, %31
  %33 = getelementptr inbounds [27 x i8], [27 x i8]* %9, i64 0, i64 0
  %34 = load %struct.publication*, %struct.publication** %11, align 8
  %35 = getelementptr inbounds %struct.publication, %struct.publication* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @tipc_zone(i64 %36)
  %38 = load %struct.publication*, %struct.publication** %11, align 8
  %39 = getelementptr inbounds %struct.publication, %struct.publication* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @tipc_cluster(i64 %40)
  %42 = load %struct.publication*, %struct.publication** %11, align 8
  %43 = getelementptr inbounds %struct.publication, %struct.publication* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @tipc_node(i64 %44)
  %46 = load %struct.publication*, %struct.publication** %11, align 8
  %47 = getelementptr inbounds %struct.publication, %struct.publication* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %41, i32 %45, i32 %48)
  %50 = load %struct.print_buf*, %struct.print_buf** %6, align 8
  %51 = getelementptr inbounds [27 x i8], [27 x i8]* %9, i64 0, i64 0
  %52 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %53, 3
  br i1 %54, label %55, label %86

55:                                               ; preds = %32
  %56 = load %struct.publication*, %struct.publication** %11, align 8
  %57 = getelementptr inbounds %struct.publication, %struct.publication* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @tipc_own_addr, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %79

62:                                               ; preds = %55
  %63 = load %struct.publication*, %struct.publication** %11, align 8
  %64 = getelementptr inbounds %struct.publication, %struct.publication* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TIPC_NODE_SCOPE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %78

69:                                               ; preds = %62
  %70 = load %struct.publication*, %struct.publication** %11, align 8
  %71 = getelementptr inbounds %struct.publication, %struct.publication* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @TIPC_CLUSTER_SCOPE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  br label %77

76:                                               ; preds = %69
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %10, align 8
  br label %77

77:                                               ; preds = %76, %75
  br label %78

78:                                               ; preds = %77, %68
  br label %79

79:                                               ; preds = %78, %61
  %80 = load %struct.print_buf*, %struct.print_buf** %6, align 8
  %81 = load %struct.publication*, %struct.publication** %11, align 8
  %82 = getelementptr inbounds %struct.publication, %struct.publication* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %83, i8* %84)
  br label %86

86:                                               ; preds = %79, %32
  %87 = load %struct.publication*, %struct.publication** %11, align 8
  %88 = getelementptr inbounds %struct.publication, %struct.publication* %87, i32 0, i32 3
  %89 = load %struct.publication*, %struct.publication** %88, align 8
  store %struct.publication* %89, %struct.publication** %11, align 8
  %90 = load %struct.publication*, %struct.publication** %11, align 8
  %91 = load %struct.sub_seq*, %struct.sub_seq** %5, align 8
  %92 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %91, i32 0, i32 0
  %93 = load %struct.publication*, %struct.publication** %92, align 8
  %94 = icmp eq %struct.publication* %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %100

96:                                               ; preds = %86
  %97 = load %struct.print_buf*, %struct.print_buf** %6, align 8
  %98 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96
  br i1 true, label %32, label %100

100:                                              ; preds = %99, %95
  %101 = load %struct.print_buf*, %struct.print_buf** %6, align 8
  %102 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %28
  ret void
}

declare dso_local i32 @tipc_printf(%struct.print_buf*, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @tipc_zone(i64) #1

declare dso_local i32 @tipc_cluster(i64) #1

declare dso_local i32 @tipc_node(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
