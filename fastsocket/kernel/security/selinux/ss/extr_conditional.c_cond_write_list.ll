; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_conditional.c_cond_write_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_conditional.c_cond_write_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i32 }
%struct.cond_node = type { %struct.cond_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cond_write_list(%struct.policydb* %0, %struct.cond_node* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.policydb*, align 8
  %6 = alloca %struct.cond_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cond_node*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [1 x i32], align 4
  %11 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %5, align 8
  store %struct.cond_node* %1, %struct.cond_node** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %9, align 8
  %12 = load %struct.cond_node*, %struct.cond_node** %6, align 8
  store %struct.cond_node* %12, %struct.cond_node** %8, align 8
  br label %13

13:                                               ; preds = %19, %3
  %14 = load %struct.cond_node*, %struct.cond_node** %8, align 8
  %15 = icmp ne %struct.cond_node* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load i64, i64* %9, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %9, align 8
  br label %19

19:                                               ; preds = %16
  %20 = load %struct.cond_node*, %struct.cond_node** %8, align 8
  %21 = getelementptr inbounds %struct.cond_node, %struct.cond_node* %20, i32 0, i32 0
  %22 = load %struct.cond_node*, %struct.cond_node** %21, align 8
  store %struct.cond_node* %22, %struct.cond_node** %8, align 8
  br label %13

23:                                               ; preds = %13
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @cpu_to_le32(i64 %24)
  %26 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @put_entry(i32* %27, i32 8, i32 1, i8* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %4, align 4
  br label %54

34:                                               ; preds = %23
  %35 = load %struct.cond_node*, %struct.cond_node** %6, align 8
  store %struct.cond_node* %35, %struct.cond_node** %8, align 8
  br label %36

36:                                               ; preds = %49, %34
  %37 = load %struct.cond_node*, %struct.cond_node** %8, align 8
  %38 = icmp ne %struct.cond_node* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load %struct.policydb*, %struct.policydb** %5, align 8
  %41 = load %struct.cond_node*, %struct.cond_node** %8, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @cond_write_node(%struct.policydb* %40, %struct.cond_node* %41, i8* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %4, align 4
  br label %54

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.cond_node*, %struct.cond_node** %8, align 8
  %51 = getelementptr inbounds %struct.cond_node, %struct.cond_node* %50, i32 0, i32 0
  %52 = load %struct.cond_node*, %struct.cond_node** %51, align 8
  store %struct.cond_node* %52, %struct.cond_node** %8, align 8
  br label %36

53:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %46, %32
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @put_entry(i32*, i32, i32, i8*) #1

declare dso_local i32 @cond_write_node(%struct.policydb*, %struct.cond_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
