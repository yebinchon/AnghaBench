; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_key.c_key_payload_reserve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_key.c_key_payload_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@KEY_FLAG_IN_QUOTA = common dso_local global i32 0, align 4
@key_quota_root_maxbytes = common dso_local global i32 0, align 4
@key_quota_maxbytes = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_payload_reserve(%struct.key* %0, i64 %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = trunc i64 %8 to i32
  %10 = load %struct.key*, %struct.key** %3, align 8
  %11 = getelementptr inbounds %struct.key, %struct.key* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %9, %12
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load %struct.key*, %struct.key** %3, align 8
  %15 = call i32 @key_check(%struct.key* %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %90

18:                                               ; preds = %2
  %19 = load i32, i32* @KEY_FLAG_IN_QUOTA, align 4
  %20 = load %struct.key*, %struct.key** %3, align 8
  %21 = getelementptr inbounds %struct.key, %struct.key* %20, i32 0, i32 3
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %90

24:                                               ; preds = %18
  %25 = load %struct.key*, %struct.key** %3, align 8
  %26 = getelementptr inbounds %struct.key, %struct.key* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @key_quota_root_maxbytes, align 4
  br label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @key_quota_maxbytes, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %7, align 4
  %37 = load %struct.key*, %struct.key** %3, align 8
  %38 = getelementptr inbounds %struct.key, %struct.key* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load i32, i32* %5, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %71

44:                                               ; preds = %35
  %45 = load %struct.key*, %struct.key** %3, align 8
  %46 = getelementptr inbounds %struct.key, %struct.key* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %7, align 4
  %53 = icmp uge i32 %51, %52
  br i1 %53, label %68, label %54

54:                                               ; preds = %44
  %55 = load %struct.key*, %struct.key** %3, align 8
  %56 = getelementptr inbounds %struct.key, %struct.key* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %59, %60
  %62 = load %struct.key*, %struct.key** %3, align 8
  %63 = getelementptr inbounds %struct.key, %struct.key* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %61, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %54, %44
  %69 = load i32, i32* @EDQUOT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %84

71:                                               ; preds = %54, %35
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.key*, %struct.key** %3, align 8
  %74 = getelementptr inbounds %struct.key, %struct.key* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, %72
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.key*, %struct.key** %3, align 8
  %81 = getelementptr inbounds %struct.key, %struct.key* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %71, %68
  %85 = load %struct.key*, %struct.key** %3, align 8
  %86 = getelementptr inbounds %struct.key, %struct.key* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = call i32 @spin_unlock(i32* %88)
  br label %90

90:                                               ; preds = %84, %18, %2
  %91 = load i32, i32* %6, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i64, i64* %4, align 8
  %95 = trunc i64 %94 to i32
  %96 = load %struct.key*, %struct.key** %3, align 8
  %97 = getelementptr inbounds %struct.key, %struct.key* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %93, %90
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @key_check(%struct.key*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
