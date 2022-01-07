; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_role_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_role_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.role_datum = type { i64, i64, i32, i32 }
%struct.policy_data = type { %struct.policydb*, i8* }
%struct.policydb = type { i64 }

@POLICYDB_VERSION_BOUNDARY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @role_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @role_write(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.role_datum*, align 8
  %10 = alloca %struct.policy_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.policydb*, align 8
  %13 = alloca [3 x i8], align 1
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.role_datum*
  store %struct.role_datum* %19, %struct.role_datum** %9, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.policy_data*
  store %struct.policy_data* %21, %struct.policy_data** %10, align 8
  %22 = load %struct.policy_data*, %struct.policy_data** %10, align 8
  %23 = getelementptr inbounds %struct.policy_data, %struct.policy_data* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %11, align 8
  %25 = load %struct.policy_data*, %struct.policy_data** %10, align 8
  %26 = getelementptr inbounds %struct.policy_data, %struct.policy_data* %25, i32 0, i32 0
  %27 = load %struct.policydb*, %struct.policydb** %26, align 8
  store %struct.policydb* %27, %struct.policydb** %12, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @strlen(i8* %28)
  store i64 %29, i64* %15, align 8
  store i64 0, i64* %14, align 8
  %30 = load i64, i64* %15, align 8
  %31 = call signext i8 @cpu_to_le32(i64 %30)
  %32 = load i64, i64* %14, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %14, align 8
  %34 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 %32
  store i8 %31, i8* %34, align 1
  %35 = load %struct.role_datum*, %struct.role_datum** %9, align 8
  %36 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call signext i8 @cpu_to_le32(i64 %37)
  %39 = load i64, i64* %14, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %14, align 8
  %41 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 %39
  store i8 %38, i8* %41, align 1
  %42 = load %struct.policydb*, %struct.policydb** %12, align 8
  %43 = getelementptr inbounds %struct.policydb, %struct.policydb* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @POLICYDB_VERSION_BOUNDARY, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %3
  %48 = load %struct.role_datum*, %struct.role_datum** %9, align 8
  %49 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call signext i8 @cpu_to_le32(i64 %50)
  %52 = load i64, i64* %14, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %14, align 8
  %54 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 %52
  store i8 %51, i8* %54, align 1
  br label %55

55:                                               ; preds = %47, %3
  %56 = load i64, i64* %14, align 8
  %57 = icmp ugt i64 %56, 3
  %58 = zext i1 %57 to i32
  %59 = call i32 @BUG_ON(i32 %58)
  %60 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  %61 = load i64, i64* %14, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @put_entry(i8* %60, i32 4, i64 %61, i8* %62)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i32, i32* %16, align 4
  store i32 %67, i32* %4, align 4
  br label %96

68:                                               ; preds = %55
  %69 = load i8*, i8** %8, align 8
  %70 = load i64, i64* %15, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @put_entry(i8* %69, i32 1, i64 %70, i8* %71)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %16, align 4
  store i32 %76, i32* %4, align 4
  br label %96

77:                                               ; preds = %68
  %78 = load %struct.role_datum*, %struct.role_datum** %9, align 8
  %79 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %78, i32 0, i32 3
  %80 = load i8*, i8** %11, align 8
  %81 = call i32 @ebitmap_write(i32* %79, i8* %80)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* %16, align 4
  store i32 %85, i32* %4, align 4
  br label %96

86:                                               ; preds = %77
  %87 = load %struct.role_datum*, %struct.role_datum** %9, align 8
  %88 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %87, i32 0, i32 2
  %89 = load i8*, i8** %11, align 8
  %90 = call i32 @ebitmap_write(i32* %88, i8* %89)
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* %16, align 4
  store i32 %94, i32* %4, align 4
  br label %96

95:                                               ; preds = %86
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %93, %84, %75, %66
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local signext i8 @cpu_to_le32(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @put_entry(i8*, i32, i64, i8*) #1

declare dso_local i32 @ebitmap_write(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
