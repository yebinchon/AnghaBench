; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_sens_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_sens_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.level_datum = type { i64, i32 }
%struct.policy_data = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @sens_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sens_write(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.level_datum*, align 8
  %10 = alloca %struct.policy_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [2 x i8], align 1
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.level_datum*
  store %struct.level_datum* %17, %struct.level_datum** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.policy_data*
  store %struct.policy_data* %19, %struct.policy_data** %10, align 8
  %20 = load %struct.policy_data*, %struct.policy_data** %10, align 8
  %21 = getelementptr inbounds %struct.policy_data, %struct.policy_data* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @strlen(i8* %23)
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %13, align 8
  %26 = call signext i8 @cpu_to_le32(i64 %25)
  %27 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 %26, i8* %27, align 1
  %28 = load %struct.level_datum*, %struct.level_datum** %9, align 8
  %29 = getelementptr inbounds %struct.level_datum, %struct.level_datum* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call signext i8 @cpu_to_le32(i64 %30)
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  store i8 %31, i8* %32, align 1
  %33 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @put_entry(i8* %33, i32 4, i64 2, i8* %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %4, align 4
  br label %60

40:                                               ; preds = %3
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @put_entry(i8* %41, i32 1, i64 %42, i8* %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %4, align 4
  br label %60

49:                                               ; preds = %40
  %50 = load %struct.level_datum*, %struct.level_datum** %9, align 8
  %51 = getelementptr inbounds %struct.level_datum, %struct.level_datum* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @mls_write_level(i32 %52, i8* %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %4, align 4
  br label %60

59:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %57, %47, %38
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local signext i8 @cpu_to_le32(i64) #1

declare dso_local i32 @put_entry(i8*, i32, i64, i8*) #1

declare dso_local i32 @mls_write_level(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
