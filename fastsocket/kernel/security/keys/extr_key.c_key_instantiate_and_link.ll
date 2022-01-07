; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_key.c_key_instantiate_and_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_key.c_key_instantiate_and_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_instantiate_and_link(%struct.key* %0, i8* %1, i64 %2, %struct.key* %3, %struct.key* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.key*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.key*, align 8
  %11 = alloca %struct.key*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.key* %3, %struct.key** %10, align 8
  store %struct.key* %4, %struct.key** %11, align 8
  %14 = load %struct.key*, %struct.key** %10, align 8
  %15 = icmp ne %struct.key* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %5
  %17 = load %struct.key*, %struct.key** %10, align 8
  %18 = load %struct.key*, %struct.key** %7, align 8
  %19 = getelementptr inbounds %struct.key, %struct.key* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.key*, %struct.key** %7, align 8
  %22 = getelementptr inbounds %struct.key, %struct.key* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__key_link_begin(%struct.key* %17, i32 %20, i32 %23, i64* %12)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %6, align 4
  br label %48

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29, %5
  %31 = load %struct.key*, %struct.key** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.key*, %struct.key** %10, align 8
  %35 = load %struct.key*, %struct.key** %11, align 8
  %36 = call i32 @__key_instantiate_and_link(%struct.key* %31, i8* %32, i64 %33, %struct.key* %34, %struct.key* %35, i64* %12)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.key*, %struct.key** %10, align 8
  %38 = icmp ne %struct.key* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = load %struct.key*, %struct.key** %10, align 8
  %41 = load %struct.key*, %struct.key** %7, align 8
  %42 = getelementptr inbounds %struct.key, %struct.key* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @__key_link_end(%struct.key* %40, i32 %43, i64 %44)
  br label %46

46:                                               ; preds = %39, %30
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %46, %27
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @__key_link_begin(%struct.key*, i32, i32, i64*) #1

declare dso_local i32 @__key_instantiate_and_link(%struct.key*, i8*, i64, %struct.key*, %struct.key*, i64*) #1

declare dso_local i32 @__key_link_end(%struct.key*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
