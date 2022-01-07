; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_avtab.c_avtab_write_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_avtab.c_avtab_write_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i32 }
%struct.avtab_node = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avtab_write_item(%struct.policydb* %0, %struct.avtab_node* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.policydb*, align 8
  %6 = alloca %struct.avtab_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca [1 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %5, align 8
  store %struct.avtab_node* %1, %struct.avtab_node** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %12 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @cpu_to_le16(i32 %14)
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %15, i32* %16, align 16
  %17 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %18 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cpu_to_le16(i32 %20)
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %24 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cpu_to_le16(i32 %26)
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %27, i32* %28, align 8
  %29 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %30 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cpu_to_le16(i32 %32)
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @put_entry(i32* %35, i32 4, i32 4, i8* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %3
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %57

42:                                               ; preds = %3
  %43 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %44 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cpu_to_le32(i32 %46)
  %48 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @put_entry(i32* %49, i32 4, i32 1, i8* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %57

56:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %54, %40
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @put_entry(i32*, i32, i32, i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
