; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_key.c___key_instantiate_and_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_key.c___key_instantiate_and_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.key*, i8*, i64)* }

@EBUSY = common dso_local global i32 0, align 4
@key_construction_mutex = common dso_local global i32 0, align 4
@KEY_FLAG_INSTANTIATED = common dso_local global i32 0, align 4
@KEY_FLAG_USER_CONSTRUCT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key*, i8*, i64, %struct.key*, %struct.key*, i64*)* @__key_instantiate_and_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__key_instantiate_and_link(%struct.key* %0, i8* %1, i64 %2, %struct.key* %3, %struct.key* %4, i64* %5) #0 {
  %7 = alloca %struct.key*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.key*, align 8
  %11 = alloca %struct.key*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.key* %3, %struct.key** %10, align 8
  store %struct.key* %4, %struct.key** %11, align 8
  store i64* %5, i64** %12, align 8
  %15 = load %struct.key*, %struct.key** %7, align 8
  %16 = call i32 @key_check(%struct.key* %15)
  %17 = load %struct.key*, %struct.key** %10, align 8
  %18 = call i32 @key_check(%struct.key* %17)
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %13, align 4
  %21 = call i32 @mutex_lock(i32* @key_construction_mutex)
  %22 = load i32, i32* @KEY_FLAG_INSTANTIATED, align 4
  %23 = load %struct.key*, %struct.key** %7, align 8
  %24 = getelementptr inbounds %struct.key, %struct.key* %23, i32 0, i32 0
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %71, label %27

27:                                               ; preds = %6
  %28 = load %struct.key*, %struct.key** %7, align 8
  %29 = getelementptr inbounds %struct.key, %struct.key* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.key*, i8*, i64)*, i32 (%struct.key*, i8*, i64)** %31, align 8
  %33 = load %struct.key*, %struct.key** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 %32(%struct.key* %33, i8* %34, i64 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %27
  %40 = load %struct.key*, %struct.key** %7, align 8
  %41 = getelementptr inbounds %struct.key, %struct.key* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @atomic_inc(i32* %43)
  %45 = load i32, i32* @KEY_FLAG_INSTANTIATED, align 4
  %46 = load %struct.key*, %struct.key** %7, align 8
  %47 = getelementptr inbounds %struct.key, %struct.key* %46, i32 0, i32 0
  %48 = call i32 @set_bit(i32 %45, i32* %47)
  %49 = load i32, i32* @KEY_FLAG_USER_CONSTRUCT, align 4
  %50 = load %struct.key*, %struct.key** %7, align 8
  %51 = getelementptr inbounds %struct.key, %struct.key* %50, i32 0, i32 0
  %52 = call i64 @test_and_clear_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  store i32 1, i32* %14, align 4
  br label %55

55:                                               ; preds = %54, %39
  %56 = load %struct.key*, %struct.key** %10, align 8
  %57 = icmp ne %struct.key* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.key*, %struct.key** %10, align 8
  %60 = load %struct.key*, %struct.key** %7, align 8
  %61 = load i64*, i64** %12, align 8
  %62 = call i32 @__key_link(%struct.key* %59, %struct.key* %60, i64* %61)
  br label %63

63:                                               ; preds = %58, %55
  %64 = load %struct.key*, %struct.key** %11, align 8
  %65 = icmp ne %struct.key* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.key*, %struct.key** %11, align 8
  %68 = call i32 @key_revoke(%struct.key* %67)
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %27
  br label %71

71:                                               ; preds = %70, %6
  %72 = call i32 @mutex_unlock(i32* @key_construction_mutex)
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load %struct.key*, %struct.key** %7, align 8
  %77 = getelementptr inbounds %struct.key, %struct.key* %76, i32 0, i32 0
  %78 = load i32, i32* @KEY_FLAG_USER_CONSTRUCT, align 4
  %79 = call i32 @wake_up_bit(i32* %77, i32 %78)
  br label %80

80:                                               ; preds = %75, %71
  %81 = load i32, i32* %13, align 4
  ret i32 %81
}

declare dso_local i32 @key_check(%struct.key*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @__key_link(%struct.key*, %struct.key*, i64*) #1

declare dso_local i32 @key_revoke(%struct.key*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
