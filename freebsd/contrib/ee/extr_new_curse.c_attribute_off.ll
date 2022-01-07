; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_new_curse.c_attribute_off.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_new_curse.c_attribute_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@String_table = common dso_local global i64* null, align 8
@me__ = common dso_local global i64 0, align 8
@sa__ = common dso_local global i64 0, align 8
@attributes_set = common dso_local global i64* null, align 8
@se__ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @attribute_off() #0 {
  %1 = load i64*, i64** @String_table, align 8
  %2 = load i64, i64* @me__, align 8
  %3 = getelementptr inbounds i64, i64* %1, i64 %2
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load i64*, i64** @String_table, align 8
  %8 = load i64, i64* @me__, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @String_Out(i64 %10, i64* null, i32 0)
  br label %41

12:                                               ; preds = %0
  %13 = load i64*, i64** @String_table, align 8
  %14 = load i64, i64* @sa__, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load i64*, i64** @attributes_set, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  store i64 0, i64* %20, align 8
  %21 = load i64*, i64** @String_table, align 8
  %22 = load i64, i64* @sa__, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** @attributes_set, align 8
  %26 = call i32 @String_Out(i64 %24, i64* %25, i32 1)
  br label %40

27:                                               ; preds = %12
  %28 = load i64*, i64** @String_table, align 8
  %29 = load i64, i64* @se__, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i64*, i64** @String_table, align 8
  %35 = load i64, i64* @se__, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @String_Out(i64 %37, i64* null, i32 0)
  br label %39

39:                                               ; preds = %33, %27
  br label %40

40:                                               ; preds = %39, %18
  br label %41

41:                                               ; preds = %40, %6
  ret void
}

declare dso_local i32 @String_Out(i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
