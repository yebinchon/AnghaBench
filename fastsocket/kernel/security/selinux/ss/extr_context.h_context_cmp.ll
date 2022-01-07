; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_context.h_context_cmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_context.h_context_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.context*, %struct.context*)* @context_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @context_cmp(%struct.context* %0, %struct.context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.context*, align 8
  %5 = alloca %struct.context*, align 8
  store %struct.context* %0, %struct.context** %4, align 8
  store %struct.context* %1, %struct.context** %5, align 8
  %6 = load %struct.context*, %struct.context** %4, align 8
  %7 = getelementptr inbounds %struct.context, %struct.context* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %2
  %11 = load %struct.context*, %struct.context** %5, align 8
  %12 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = load %struct.context*, %struct.context** %4, align 8
  %17 = getelementptr inbounds %struct.context, %struct.context* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.context*, %struct.context** %5, align 8
  %20 = getelementptr inbounds %struct.context, %struct.context* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %15
  %24 = load %struct.context*, %struct.context** %4, align 8
  %25 = getelementptr inbounds %struct.context, %struct.context* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.context*, %struct.context** %5, align 8
  %28 = getelementptr inbounds %struct.context, %struct.context* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @strcmp(i32 %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %23, %15
  %34 = phi i1 [ false, %15 ], [ %32, %23 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %79

36:                                               ; preds = %10, %2
  %37 = load %struct.context*, %struct.context** %4, align 8
  %38 = getelementptr inbounds %struct.context, %struct.context* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.context*, %struct.context** %5, align 8
  %43 = getelementptr inbounds %struct.context, %struct.context* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %36
  store i32 0, i32* %3, align 4
  br label %79

47:                                               ; preds = %41
  %48 = load %struct.context*, %struct.context** %4, align 8
  %49 = getelementptr inbounds %struct.context, %struct.context* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.context*, %struct.context** %5, align 8
  %52 = getelementptr inbounds %struct.context, %struct.context* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %47
  %56 = load %struct.context*, %struct.context** %4, align 8
  %57 = getelementptr inbounds %struct.context, %struct.context* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.context*, %struct.context** %5, align 8
  %60 = getelementptr inbounds %struct.context, %struct.context* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %55
  %64 = load %struct.context*, %struct.context** %4, align 8
  %65 = getelementptr inbounds %struct.context, %struct.context* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.context*, %struct.context** %5, align 8
  %68 = getelementptr inbounds %struct.context, %struct.context* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load %struct.context*, %struct.context** %4, align 8
  %73 = load %struct.context*, %struct.context** %5, align 8
  %74 = call i64 @mls_context_cmp(%struct.context* %72, %struct.context* %73)
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %71, %63, %55, %47
  %77 = phi i1 [ false, %63 ], [ false, %55 ], [ false, %47 ], [ %75, %71 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %76, %46, %33
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i64 @mls_context_cmp(%struct.context*, %struct.context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
