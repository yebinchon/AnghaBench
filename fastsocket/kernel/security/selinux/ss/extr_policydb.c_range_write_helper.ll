; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_range_write_helper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_range_write_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.range_trans = type { i32, i32, i32 }
%struct.mls_range = type { i32 }
%struct.policy_data = type { %struct.policydb*, i8* }
%struct.policydb = type { i64 }

@POLICYDB_VERSION_RANGETRANS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @range_write_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @range_write_helper(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca %struct.range_trans*, align 8
  %10 = alloca %struct.mls_range*, align 8
  %11 = alloca %struct.policy_data*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.policydb*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.range_trans*
  store %struct.range_trans* %16, %struct.range_trans** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.mls_range*
  store %struct.mls_range* %18, %struct.mls_range** %10, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.policy_data*
  store %struct.policy_data* %20, %struct.policy_data** %11, align 8
  %21 = load %struct.policy_data*, %struct.policy_data** %11, align 8
  %22 = getelementptr inbounds %struct.policy_data, %struct.policy_data* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %12, align 8
  %24 = load %struct.policy_data*, %struct.policy_data** %11, align 8
  %25 = getelementptr inbounds %struct.policy_data, %struct.policy_data* %24, i32 0, i32 0
  %26 = load %struct.policydb*, %struct.policydb** %25, align 8
  store %struct.policydb* %26, %struct.policydb** %13, align 8
  %27 = load %struct.range_trans*, %struct.range_trans** %9, align 8
  %28 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cpu_to_le32(i32 %29)
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.range_trans*, %struct.range_trans** %9, align 8
  %33 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cpu_to_le32(i32 %34)
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %38 = load i8*, i8** %12, align 8
  %39 = call i32 @put_entry(i32* %37, i32 4, i32 2, i8* %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %4, align 4
  br label %73

44:                                               ; preds = %3
  %45 = load %struct.policydb*, %struct.policydb** %13, align 8
  %46 = getelementptr inbounds %struct.policydb, %struct.policydb* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @POLICYDB_VERSION_RANGETRANS, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %44
  %51 = load %struct.range_trans*, %struct.range_trans** %9, align 8
  %52 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @cpu_to_le32(i32 %53)
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %57 = load i8*, i8** %12, align 8
  %58 = call i32 @put_entry(i32* %56, i32 4, i32 1, i8* %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %4, align 4
  br label %73

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %44
  %65 = load %struct.mls_range*, %struct.mls_range** %10, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = call i32 @mls_write_range_helper(%struct.mls_range* %65, i8* %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %4, align 4
  br label %73

72:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %70, %61, %42
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @put_entry(i32*, i32, i32, i8*) #1

declare dso_local i32 @mls_write_range_helper(%struct.mls_range*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
