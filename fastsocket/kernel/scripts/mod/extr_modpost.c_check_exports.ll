; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_check_exports.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_check_exports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i8*, i32, %struct.symbol* }
%struct.symbol = type { i32, i32, %struct.module*, %struct.symbol* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module*)* @check_exports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_exports(%struct.module* %0) #0 {
  %2 = alloca %struct.module*, align 8
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca i8*, align 8
  store %struct.module* %0, %struct.module** %2, align 8
  %6 = load %struct.module*, %struct.module** %2, align 8
  %7 = getelementptr inbounds %struct.module, %struct.module* %6, i32 0, i32 2
  %8 = load %struct.symbol*, %struct.symbol** %7, align 8
  store %struct.symbol* %8, %struct.symbol** %3, align 8
  br label %9

9:                                                ; preds = %63, %1
  %10 = load %struct.symbol*, %struct.symbol** %3, align 8
  %11 = icmp ne %struct.symbol* %10, null
  br i1 %11, label %12, label %67

12:                                               ; preds = %9
  %13 = load %struct.symbol*, %struct.symbol** %3, align 8
  %14 = getelementptr inbounds %struct.symbol, %struct.symbol* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.symbol* @find_symbol(i32 %15)
  store %struct.symbol* %16, %struct.symbol** %4, align 8
  %17 = load %struct.symbol*, %struct.symbol** %4, align 8
  %18 = icmp ne %struct.symbol* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load %struct.symbol*, %struct.symbol** %4, align 8
  %21 = getelementptr inbounds %struct.symbol, %struct.symbol* %20, i32 0, i32 2
  %22 = load %struct.module*, %struct.module** %21, align 8
  %23 = load %struct.module*, %struct.module** %2, align 8
  %24 = icmp eq %struct.module* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %12
  br label %63

26:                                               ; preds = %19
  %27 = load %struct.module*, %struct.module** %2, align 8
  %28 = getelementptr inbounds %struct.module, %struct.module* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @strrchr(i8* %29, i8 signext 47)
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  br label %40

36:                                               ; preds = %26
  %37 = load %struct.module*, %struct.module** %2, align 8
  %38 = getelementptr inbounds %struct.module, %struct.module* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %5, align 8
  br label %40

40:                                               ; preds = %36, %33
  %41 = load %struct.module*, %struct.module** %2, align 8
  %42 = getelementptr inbounds %struct.module, %struct.module* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %40
  %46 = load %struct.symbol*, %struct.symbol** %4, align 8
  %47 = getelementptr inbounds %struct.symbol, %struct.symbol* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = load %struct.symbol*, %struct.symbol** %4, align 8
  %51 = getelementptr inbounds %struct.symbol, %struct.symbol* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @check_for_gpl_usage(i32 %48, i8* %49, i32 %52)
  br label %54

54:                                               ; preds = %45, %40
  %55 = load %struct.symbol*, %struct.symbol** %4, align 8
  %56 = getelementptr inbounds %struct.symbol, %struct.symbol* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = load %struct.symbol*, %struct.symbol** %4, align 8
  %60 = getelementptr inbounds %struct.symbol, %struct.symbol* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @check_for_unused(i32 %57, i8* %58, i32 %61)
  br label %63

63:                                               ; preds = %54, %25
  %64 = load %struct.symbol*, %struct.symbol** %3, align 8
  %65 = getelementptr inbounds %struct.symbol, %struct.symbol* %64, i32 0, i32 3
  %66 = load %struct.symbol*, %struct.symbol** %65, align 8
  store %struct.symbol* %66, %struct.symbol** %3, align 8
  br label %9

67:                                               ; preds = %9
  ret void
}

declare dso_local %struct.symbol* @find_symbol(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @check_for_gpl_usage(i32, i8*, i32) #1

declare dso_local i32 @check_for_unused(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
