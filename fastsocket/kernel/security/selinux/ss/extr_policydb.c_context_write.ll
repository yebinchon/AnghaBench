; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_context_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_context_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i32 }
%struct.context = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, %struct.context*, i8*)* @context_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @context_write(%struct.policydb* %0, %struct.context* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.policydb*, align 8
  %6 = alloca %struct.context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  store %struct.policydb* %0, %struct.policydb** %5, align 8
  store %struct.context* %1, %struct.context** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.context*, %struct.context** %6, align 8
  %11 = getelementptr inbounds %struct.context, %struct.context* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cpu_to_le32(i32 %12)
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.context*, %struct.context** %6, align 8
  %16 = getelementptr inbounds %struct.context, %struct.context* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cpu_to_le32(i32 %17)
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %18, i32* %19, align 4
  %20 = load %struct.context*, %struct.context** %6, align 8
  %21 = getelementptr inbounds %struct.context, %struct.context* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cpu_to_le32(i32 %22)
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @put_entry(i32* %25, i32 4, i32 3, i8* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %42

32:                                               ; preds = %3
  %33 = load %struct.context*, %struct.context** %6, align 8
  %34 = getelementptr inbounds %struct.context, %struct.context* %33, i32 0, i32 0
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @mls_write_range_helper(i32* %34, i8* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %42

41:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %39, %30
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @put_entry(i32*, i32, i32, i8*) #1

declare dso_local i32 @mls_write_range_helper(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
