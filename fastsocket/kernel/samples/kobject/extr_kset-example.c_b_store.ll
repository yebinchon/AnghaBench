; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/samples/kobject/extr_kset-example.c_b_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/samples/kobject/extr_kset-example.c_b_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo_obj = type { i32, i32 }
%struct.foo_attribute = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%du\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"baz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.foo_obj*, %struct.foo_attribute*, i8*, i64)* @b_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @b_store(%struct.foo_obj* %0, %struct.foo_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.foo_obj*, align 8
  %6 = alloca %struct.foo_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.foo_obj* %0, %struct.foo_obj** %5, align 8
  store %struct.foo_attribute* %1, %struct.foo_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @sscanf(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %9)
  %12 = load %struct.foo_attribute*, %struct.foo_attribute** %6, align 8
  %13 = getelementptr inbounds %struct.foo_attribute, %struct.foo_attribute* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @strcmp(i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.foo_obj*, %struct.foo_obj** %5, align 8
  %21 = getelementptr inbounds %struct.foo_obj, %struct.foo_obj* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %26

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.foo_obj*, %struct.foo_obj** %5, align 8
  %25 = getelementptr inbounds %struct.foo_obj, %struct.foo_obj* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i64, i64* %8, align 8
  ret i64 %27
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
