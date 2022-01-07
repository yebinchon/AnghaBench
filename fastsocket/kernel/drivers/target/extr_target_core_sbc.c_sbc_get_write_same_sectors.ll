; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_sbc.c_sbc_get_write_same_sectors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_sbc.c_sbc_get_write_same_sectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i64*, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.TYPE_4__*)* }

@WRITE_SAME = common dso_local global i64 0, align 8
@WRITE_SAME_16 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sbc_get_write_same_sectors(%struct.se_cmd* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i64, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %5 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %6 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @WRITE_SAME, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 7
  %17 = call i64 @get_unaligned_be16(i64* %16)
  store i64 %17, i64* %4, align 8
  br label %39

18:                                               ; preds = %1
  %19 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %20 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WRITE_SAME_16, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %28 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 10
  %31 = call i64 @get_unaligned_be32(i64* %30)
  store i64 %31, i64* %4, align 8
  br label %38

32:                                               ; preds = %18
  %33 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %34 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 28
  %37 = call i64 @get_unaligned_be32(i64* %36)
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %32, %26
  br label %39

39:                                               ; preds = %38, %12
  %40 = load i64, i64* %4, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i64, i64* %4, align 8
  store i64 %43, i64* %2, align 8
  br label %61

44:                                               ; preds = %39
  %45 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %46 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64 (%struct.TYPE_4__*)*, i64 (%struct.TYPE_4__*)** %50, align 8
  %52 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %53 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = call i64 %51(%struct.TYPE_4__* %54)
  %56 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %57 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %2, align 8
  br label %61

61:                                               ; preds = %44, %42
  %62 = load i64, i64* %2, align 8
  ret i64 %62
}

declare dso_local i64 @get_unaligned_be16(i64*) #1

declare dso_local i64 @get_unaligned_be32(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
