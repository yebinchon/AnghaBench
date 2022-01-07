; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_key.c___key_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_key.c___key_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.key*, i8*, i64)* }

@KEY_WRITE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@KEY_FLAG_NEGATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @__key_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__key_update(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.key* @key_ref_to_ptr(i32 %9)
  store %struct.key* %10, %struct.key** %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @KEY_WRITE, align 4
  %13 = call i32 @key_permission(i32 %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %57

17:                                               ; preds = %3
  %18 = load i32, i32* @EEXIST, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.key*, %struct.key** %7, align 8
  %21 = getelementptr inbounds %struct.key, %struct.key* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.key*, i8*, i64)*, i32 (%struct.key*, i8*, i64)** %23, align 8
  %25 = icmp ne i32 (%struct.key*, i8*, i64)* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %57

27:                                               ; preds = %17
  %28 = load %struct.key*, %struct.key** %7, align 8
  %29 = getelementptr inbounds %struct.key, %struct.key* %28, i32 0, i32 0
  %30 = call i32 @down_write(i32* %29)
  %31 = load %struct.key*, %struct.key** %7, align 8
  %32 = getelementptr inbounds %struct.key, %struct.key* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.key*, i8*, i64)*, i32 (%struct.key*, i8*, i64)** %34, align 8
  %36 = load %struct.key*, %struct.key** %7, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 %35(%struct.key* %36, i8* %37, i64 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %27
  %43 = load i32, i32* @KEY_FLAG_NEGATIVE, align 4
  %44 = load %struct.key*, %struct.key** %7, align 8
  %45 = getelementptr inbounds %struct.key, %struct.key* %44, i32 0, i32 1
  %46 = call i32 @clear_bit(i32 %43, i32* %45)
  br label %47

47:                                               ; preds = %42, %27
  %48 = load %struct.key*, %struct.key** %7, align 8
  %49 = getelementptr inbounds %struct.key, %struct.key* %48, i32 0, i32 0
  %50 = call i32 @up_write(i32* %49)
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %57

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %57, %54
  %56 = load i32, i32* %4, align 4
  ret i32 %56

57:                                               ; preds = %53, %26, %16
  %58 = load %struct.key*, %struct.key** %7, align 8
  %59 = call i32 @key_put(%struct.key* %58)
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @ERR_PTR(i32 %60)
  store i32 %61, i32* %4, align 4
  br label %55
}

declare dso_local %struct.key* @key_ref_to_ptr(i32) #1

declare dso_local i32 @key_permission(i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
