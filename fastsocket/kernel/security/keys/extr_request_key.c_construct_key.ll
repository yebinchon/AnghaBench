; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key.c_construct_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key.c_construct_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.key_construction*, i8*, i8*)* }
%struct.key_construction = type { i8*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"%d,%p,%zu,%p\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@KEY_FLAG_REVOKED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key*, i8*, i64, i8*, %struct.key*)* @construct_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @construct_key(%struct.key* %0, i8* %1, i64 %2, i8* %3, %struct.key* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.key*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.key*, align 8
  %12 = alloca %struct.key_construction*, align 8
  %13 = alloca i32 (%struct.key_construction*, i8*, i8*)*, align 8
  %14 = alloca %struct.key*, align 8
  %15 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.key* %4, %struct.key** %11, align 8
  %16 = load %struct.key*, %struct.key** %7, align 8
  %17 = getelementptr inbounds %struct.key, %struct.key* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @kenter(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %19, i64 %20, i8* %21)
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.key_construction* @kmalloc(i32 16, i32 %23)
  store %struct.key_construction* %24, %struct.key_construction** %12, align 8
  %25 = load %struct.key_construction*, %struct.key_construction** %12, align 8
  %26 = icmp ne %struct.key_construction* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %89

30:                                               ; preds = %5
  %31 = load %struct.key*, %struct.key** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.key*, %struct.key** %11, align 8
  %35 = call %struct.key* @request_key_auth_new(%struct.key* %31, i8* %32, i64 %33, %struct.key* %34)
  store %struct.key* %35, %struct.key** %14, align 8
  %36 = load %struct.key*, %struct.key** %14, align 8
  %37 = call i64 @IS_ERR(%struct.key* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load %struct.key_construction*, %struct.key_construction** %12, align 8
  %41 = call i32 @kfree(%struct.key_construction* %40)
  %42 = load %struct.key*, %struct.key** %14, align 8
  %43 = call i32 @PTR_ERR(%struct.key* %42)
  store i32 %43, i32* %15, align 4
  store %struct.key* null, %struct.key** %14, align 8
  br label %85

44:                                               ; preds = %30
  %45 = load %struct.key*, %struct.key** %14, align 8
  %46 = call i8* @key_get(%struct.key* %45)
  %47 = load %struct.key_construction*, %struct.key_construction** %12, align 8
  %48 = getelementptr inbounds %struct.key_construction, %struct.key_construction* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.key*, %struct.key** %7, align 8
  %50 = call i8* @key_get(%struct.key* %49)
  %51 = load %struct.key_construction*, %struct.key_construction** %12, align 8
  %52 = getelementptr inbounds %struct.key_construction, %struct.key_construction* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  store i32 (%struct.key_construction*, i8*, i8*)* @call_sbin_request_key, i32 (%struct.key_construction*, i8*, i8*)** %13, align 8
  %53 = load %struct.key*, %struct.key** %7, align 8
  %54 = getelementptr inbounds %struct.key, %struct.key* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32 (%struct.key_construction*, i8*, i8*)*, i32 (%struct.key_construction*, i8*, i8*)** %56, align 8
  %58 = icmp ne i32 (%struct.key_construction*, i8*, i8*)* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %44
  %60 = load %struct.key*, %struct.key** %7, align 8
  %61 = getelementptr inbounds %struct.key, %struct.key* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32 (%struct.key_construction*, i8*, i8*)*, i32 (%struct.key_construction*, i8*, i8*)** %63, align 8
  store i32 (%struct.key_construction*, i8*, i8*)* %64, i32 (%struct.key_construction*, i8*, i8*)** %13, align 8
  br label %65

65:                                               ; preds = %59, %44
  %66 = load i32 (%struct.key_construction*, i8*, i8*)*, i32 (%struct.key_construction*, i8*, i8*)** %13, align 8
  %67 = load %struct.key_construction*, %struct.key_construction** %12, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 %66(%struct.key_construction* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load i32, i32* @KEY_FLAG_REVOKED, align 4
  %74 = load %struct.key*, %struct.key** %14, align 8
  %75 = getelementptr inbounds %struct.key, %struct.key* %74, i32 0, i32 0
  %76 = call i32 @test_bit(i32 %73, i32* %75)
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  br label %79

79:                                               ; preds = %72, %65
  %80 = phi i1 [ false, %65 ], [ %78, %72 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 @WARN_ON(i32 %81)
  %83 = load %struct.key*, %struct.key** %14, align 8
  %84 = call i32 @key_put(%struct.key* %83)
  br label %85

85:                                               ; preds = %79, %39
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @kleave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %85, %27
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @kenter(i8*, i32, i8*, i64, i8*) #1

declare dso_local %struct.key_construction* @kmalloc(i32, i32) #1

declare dso_local %struct.key* @request_key_auth_new(%struct.key*, i8*, i64, %struct.key*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @kfree(%struct.key_construction*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i8* @key_get(%struct.key*) #1

declare dso_local i32 @call_sbin_request_key(%struct.key_construction*, i8*, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @kleave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
