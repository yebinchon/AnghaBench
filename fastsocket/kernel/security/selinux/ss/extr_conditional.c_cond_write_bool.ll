; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_conditional.c_cond_write_bool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_conditional.c_cond_write_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cond_bool_datum = type { i32, i32 }
%struct.policy_data = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cond_write_bool(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cond_bool_datum*, align 8
  %10 = alloca %struct.policy_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [3 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.cond_bool_datum*
  store %struct.cond_bool_datum* %17, %struct.cond_bool_datum** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.policy_data*
  store %struct.policy_data* %19, %struct.policy_data** %10, align 8
  %20 = load %struct.policy_data*, %struct.policy_data** %10, align 8
  %21 = getelementptr inbounds %struct.policy_data, %struct.policy_data* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strlen(i8* %23)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.cond_bool_datum*, %struct.cond_bool_datum** %9, align 8
  %26 = getelementptr inbounds %struct.cond_bool_datum, %struct.cond_bool_datum* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call signext i8 @cpu_to_le32(i32 %27)
  %29 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  store i8 %28, i8* %29, align 1
  %30 = load %struct.cond_bool_datum*, %struct.cond_bool_datum** %9, align 8
  %31 = getelementptr inbounds %struct.cond_bool_datum, %struct.cond_bool_datum* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call signext i8 @cpu_to_le32(i32 %32)
  %34 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 1
  store i8 %33, i8* %34, align 1
  %35 = load i32, i32* %13, align 4
  %36 = call signext i8 @cpu_to_le32(i32 %35)
  %37 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 2
  store i8 %36, i8* %37, align 1
  %38 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @put_entry(i8* %38, i32 4, i32 3, i8* %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %3
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %4, align 4
  br label %55

45:                                               ; preds = %3
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @put_entry(i8* %46, i32 1, i32 %47, i8* %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %52, %43
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local signext i8 @cpu_to_le32(i32) #1

declare dso_local i32 @put_entry(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
