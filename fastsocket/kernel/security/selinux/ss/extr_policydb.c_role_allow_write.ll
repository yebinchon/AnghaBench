; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_role_allow_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_role_allow_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.role_allow = type { i64, i64, %struct.role_allow* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.role_allow*, i8*)* @role_allow_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @role_allow_write(%struct.role_allow* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.role_allow*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.role_allow*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.role_allow* %0, %struct.role_allow** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.role_allow*, %struct.role_allow** %4, align 8
  store %struct.role_allow* %10, %struct.role_allow** %6, align 8
  br label %11

11:                                               ; preds = %17, %2
  %12 = load %struct.role_allow*, %struct.role_allow** %6, align 8
  %13 = icmp ne %struct.role_allow* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load i64, i64* %8, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %8, align 8
  br label %17

17:                                               ; preds = %14
  %18 = load %struct.role_allow*, %struct.role_allow** %6, align 8
  %19 = getelementptr inbounds %struct.role_allow, %struct.role_allow* %18, i32 0, i32 2
  %20 = load %struct.role_allow*, %struct.role_allow** %19, align 8
  store %struct.role_allow* %20, %struct.role_allow** %6, align 8
  br label %11

21:                                               ; preds = %11
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @cpu_to_le32(i64 %22)
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @put_entry(i32* %25, i32 4, i32 1, i8* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  br label %61

32:                                               ; preds = %21
  %33 = load %struct.role_allow*, %struct.role_allow** %4, align 8
  store %struct.role_allow* %33, %struct.role_allow** %6, align 8
  br label %34

34:                                               ; preds = %56, %32
  %35 = load %struct.role_allow*, %struct.role_allow** %6, align 8
  %36 = icmp ne %struct.role_allow* %35, null
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  %38 = load %struct.role_allow*, %struct.role_allow** %6, align 8
  %39 = getelementptr inbounds %struct.role_allow, %struct.role_allow* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @cpu_to_le32(i64 %40)
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.role_allow*, %struct.role_allow** %6, align 8
  %44 = getelementptr inbounds %struct.role_allow, %struct.role_allow* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @cpu_to_le32(i64 %45)
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @put_entry(i32* %48, i32 4, i32 2, i8* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %37
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %61

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.role_allow*, %struct.role_allow** %6, align 8
  %58 = getelementptr inbounds %struct.role_allow, %struct.role_allow* %57, i32 0, i32 2
  %59 = load %struct.role_allow*, %struct.role_allow** %58, align 8
  store %struct.role_allow* %59, %struct.role_allow** %6, align 8
  br label %34

60:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %53, %30
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @put_entry(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
