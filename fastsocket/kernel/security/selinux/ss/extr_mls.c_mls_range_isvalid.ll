; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_mls.c_mls_range_isvalid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_mls.c_mls_range_isvalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i32 }
%struct.mls_range = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mls_range_isvalid(%struct.policydb* %0, %struct.mls_range* %1) #0 {
  %3 = alloca %struct.policydb*, align 8
  %4 = alloca %struct.mls_range*, align 8
  store %struct.policydb* %0, %struct.policydb** %3, align 8
  store %struct.mls_range* %1, %struct.mls_range** %4, align 8
  %5 = load %struct.policydb*, %struct.policydb** %3, align 8
  %6 = load %struct.mls_range*, %struct.mls_range** %4, align 8
  %7 = getelementptr inbounds %struct.mls_range, %struct.mls_range* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = call i64 @mls_level_isvalid(%struct.policydb* %5, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = load %struct.policydb*, %struct.policydb** %3, align 8
  %14 = load %struct.mls_range*, %struct.mls_range** %4, align 8
  %15 = getelementptr inbounds %struct.mls_range, %struct.mls_range* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = call i64 @mls_level_isvalid(%struct.policydb* %13, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %12
  %21 = load %struct.mls_range*, %struct.mls_range** %4, align 8
  %22 = getelementptr inbounds %struct.mls_range, %struct.mls_range* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load %struct.mls_range*, %struct.mls_range** %4, align 8
  %26 = getelementptr inbounds %struct.mls_range, %struct.mls_range* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = call i64 @mls_level_dom(i32* %24, i32* %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %20, %12, %2
  %32 = phi i1 [ false, %12 ], [ false, %2 ], [ %30, %20 ]
  %33 = zext i1 %32 to i32
  ret i32 %33
}

declare dso_local i64 @mls_level_isvalid(%struct.policydb*, i32*) #1

declare dso_local i64 @mls_level_dom(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
