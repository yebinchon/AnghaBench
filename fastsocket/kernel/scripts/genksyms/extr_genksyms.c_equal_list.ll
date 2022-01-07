; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/genksyms/extr_genksyms.c_equal_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/genksyms/extr_genksyms.c_equal_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i64, %struct.string_list*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.string_list*, %struct.string_list*)* @equal_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @equal_list(%struct.string_list* %0, %struct.string_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca %struct.string_list*, align 8
  store %struct.string_list* %0, %struct.string_list** %4, align 8
  store %struct.string_list* %1, %struct.string_list** %5, align 8
  br label %6

6:                                                ; preds = %32, %2
  %7 = load %struct.string_list*, %struct.string_list** %4, align 8
  %8 = icmp ne %struct.string_list* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load %struct.string_list*, %struct.string_list** %5, align 8
  %11 = icmp ne %struct.string_list* %10, null
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i1 [ false, %6 ], [ %11, %9 ]
  br i1 %13, label %14, label %39

14:                                               ; preds = %12
  %15 = load %struct.string_list*, %struct.string_list** %4, align 8
  %16 = getelementptr inbounds %struct.string_list, %struct.string_list* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.string_list*, %struct.string_list** %5, align 8
  %19 = getelementptr inbounds %struct.string_list, %struct.string_list* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %14
  %23 = load %struct.string_list*, %struct.string_list** %4, align 8
  %24 = getelementptr inbounds %struct.string_list, %struct.string_list* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.string_list*, %struct.string_list** %5, align 8
  %27 = getelementptr inbounds %struct.string_list, %struct.string_list* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @strcmp(i32 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22, %14
  store i32 0, i32* %3, align 4
  br label %49

32:                                               ; preds = %22
  %33 = load %struct.string_list*, %struct.string_list** %4, align 8
  %34 = getelementptr inbounds %struct.string_list, %struct.string_list* %33, i32 0, i32 1
  %35 = load %struct.string_list*, %struct.string_list** %34, align 8
  store %struct.string_list* %35, %struct.string_list** %4, align 8
  %36 = load %struct.string_list*, %struct.string_list** %5, align 8
  %37 = getelementptr inbounds %struct.string_list, %struct.string_list* %36, i32 0, i32 1
  %38 = load %struct.string_list*, %struct.string_list** %37, align 8
  store %struct.string_list* %38, %struct.string_list** %5, align 8
  br label %6

39:                                               ; preds = %12
  %40 = load %struct.string_list*, %struct.string_list** %4, align 8
  %41 = icmp ne %struct.string_list* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load %struct.string_list*, %struct.string_list** %5, align 8
  %44 = icmp ne %struct.string_list* %43, null
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %42, %39
  %47 = phi i1 [ false, %39 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %31
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
