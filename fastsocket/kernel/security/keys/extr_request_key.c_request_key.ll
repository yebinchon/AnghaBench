; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key.c_request_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key.c_request_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.key_type = type { i32 }

@KEY_ALLOC_IN_QUOTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key* @request_key(%struct.key_type* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.key*, align 8
  %5 = alloca %struct.key_type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.key*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.key_type* %0, %struct.key_type** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %9, align 8
  br label %16

16:                                               ; preds = %13, %3
  %17 = load %struct.key_type*, %struct.key_type** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i32, i32* @KEY_ALLOC_IN_QUOTA, align 4
  %22 = call %struct.key* @request_key_and_link(%struct.key_type* %17, i8* %18, i8* %19, i64 %20, i32* null, i32* null, i32 %21)
  store %struct.key* %22, %struct.key** %8, align 8
  %23 = load %struct.key*, %struct.key** %8, align 8
  %24 = call i32 @IS_ERR(%struct.key* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %16
  %27 = load %struct.key*, %struct.key** %8, align 8
  %28 = call i32 @wait_for_key_construction(%struct.key* %27, i32 0)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.key*, %struct.key** %8, align 8
  %33 = call i32 @key_put(%struct.key* %32)
  %34 = load i32, i32* %10, align 4
  %35 = call %struct.key* @ERR_PTR(i32 %34)
  store %struct.key* %35, %struct.key** %4, align 8
  br label %39

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %16
  %38 = load %struct.key*, %struct.key** %8, align 8
  store %struct.key* %38, %struct.key** %4, align 8
  br label %39

39:                                               ; preds = %37, %31
  %40 = load %struct.key*, %struct.key** %4, align 8
  ret %struct.key* %40
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.key* @request_key_and_link(%struct.key_type*, i8*, i8*, i64, i32*, i32*, i32) #1

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
