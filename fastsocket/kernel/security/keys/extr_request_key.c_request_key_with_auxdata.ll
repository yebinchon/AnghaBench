; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key.c_request_key_with_auxdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key.c_request_key_with_auxdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.key_type = type { i32 }

@KEY_ALLOC_IN_QUOTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key* @request_key_with_auxdata(%struct.key_type* %0, i8* %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.key*, align 8
  %7 = alloca %struct.key_type*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.key*, align 8
  %13 = alloca i32, align 4
  store %struct.key_type* %0, %struct.key_type** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.key_type*, %struct.key_type** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = load i32, i32* @KEY_ALLOC_IN_QUOTA, align 4
  %20 = call %struct.key* @request_key_and_link(%struct.key_type* %14, i8* %15, i8* %16, i64 %17, i8* %18, i32* null, i32 %19)
  store %struct.key* %20, %struct.key** %12, align 8
  %21 = load %struct.key*, %struct.key** %12, align 8
  %22 = call i32 @IS_ERR(%struct.key* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %5
  %25 = load %struct.key*, %struct.key** %12, align 8
  %26 = call i32 @wait_for_key_construction(%struct.key* %25, i32 0)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.key*, %struct.key** %12, align 8
  %31 = call i32 @key_put(%struct.key* %30)
  %32 = load i32, i32* %13, align 4
  %33 = call %struct.key* @ERR_PTR(i32 %32)
  store %struct.key* %33, %struct.key** %6, align 8
  br label %37

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %5
  %36 = load %struct.key*, %struct.key** %12, align 8
  store %struct.key* %36, %struct.key** %6, align 8
  br label %37

37:                                               ; preds = %35, %29
  %38 = load %struct.key*, %struct.key** %6, align 8
  ret %struct.key* %38
}

declare dso_local %struct.key* @request_key_and_link(%struct.key_type*, i8*, i8*, i64, i8*, i32*, i32) #1

declare dso_local i32 @IS_ERR(%struct.key*) #1

declare dso_local i32 @wait_for_key_construction(%struct.key*, i32) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local %struct.key* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
