; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_super.c_adfs_checkdiscrecord.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_super.c_adfs_checkdiscrecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adfs_discrecord = type { i32, i32, i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adfs_discrecord*)* @adfs_checkdiscrecord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_checkdiscrecord(%struct.adfs_discrecord* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adfs_discrecord*, align 8
  %4 = alloca i32, align 4
  store %struct.adfs_discrecord* %0, %struct.adfs_discrecord** %3, align 8
  %5 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %3, align 8
  %6 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 8
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %3, align 8
  %11 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 9
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %3, align 8
  %16 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 10
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %67

20:                                               ; preds = %14, %9, %1
  %21 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %3, align 8
  %22 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %3, align 8
  %25 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 3
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %67

30:                                               ; preds = %20
  %31 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %3, align 8
  %32 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @le32_to_cpu(i32 %33)
  %35 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %3, align 8
  %36 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = ashr i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %67

41:                                               ; preds = %30
  %42 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %3, align 8
  %43 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %44, 19
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %67

47:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %63, %47
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ult i64 %50, 8
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %3, align 8
  %54 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %53, i32 0, i32 2
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32 1, i32* %2, align 4
  br label %67

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %48

66:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %61, %46, %40, %29, %19
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
